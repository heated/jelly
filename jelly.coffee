levels = [
  [ "xxxxxxxxxxxxxx",
    "x            x",
    "x            x",
    "x      r     x",
    "x      xx    x",
    "x  g     r b x",
    "xxbxxxg xxxxxx",
    "xxxxxxxxxxxxxx", ],

  [ "xxxxxxxxxxxxxx",
    "x            x",
    "x            x",
    "x            x",
    "x     g   g  x",
    "x   r r   r  x",
    "xxxxx x x xxxx",
    "xxxxxxxxxxxxxx", ],

  [ "xxxxxxxxxxxxxx",
    "x            x",
    "x            x",
    "x   bg  x g  x",
    "xxx xxxrxxx  x",
    "x      b     x",
    "xxx xxxrxxxxxx",
    "xxxxxxxxxxxxxx", ],

  [ "xxxxxxxxxxxxxx",
    "x            x",
    "x       r    x",
    "x       b    x",
    "x       x    x",
    "x b r        x",
    "x b r      b x",
    "xxx x      xxx",
    "xxxxx xxxxxxxx",
    "xxxxxxxxxxxxxx", ],

  [ "xxxxxxxxxxxxxx",
    "x            x",
    "x            x",
    "xrg  gg      x",
    "xxx xxxx xx  x",
    "xrg          x",
    "xxxxx  xx   xx",
    "xxxxxx xx  xxx",
    "xxxxxxxxxxxxxx", ],

  [ "xxxxxxxxxxxxxx",
    "xxxxxxx      x",
    "xxxxxxx g    x",
    "x       xx   x",
    "x r   b      x",
    "x x xxx x g  x",
    "x         x bx",
    "x       r xxxx",
    "x   xxxxxxxxxx",
    "xxxxxxxxxxxxxx", ],
  ]

CELL_SIZE = 48

moveToCell = (dom, x, y) ->
  dom.style.left = x * CELL_SIZE + 'px'
  dom.style.top = y * CELL_SIZE + 'px'

class Stage
  constructor: (@dom, map) ->
    @jellies = []
    @loadMap(map)

    # Capture and swallow all click events during animations.
    @busy = false
    maybeSwallowEvent = (e) =>
      e.preventDefault()
      e.stopPropagation() if @busy
    for event in ['contextmenu', 'click', 'touchstart', 'touchmove']
      @dom.addEventListener(event, maybeSwallowEvent, true)

    @checkForMerges()

  loadMap: (map) ->
    table = document.createElement('table')
    @dom.appendChild(table)
    @cells = for y in [0...map.length]
      row = map[y].split(//)
      tr = document.createElement('tr')
      table.appendChild(tr)
      for x in [0...row.length]
        color = null
        classname = 'transparent'
        cell = null
        td = document.createElement('td')
        switch row[x]
          when 'x'
            classname = 'cell wall'
            cell = new Wall(td)
          when 'r' then color = 'red'
          when 'g' then color = 'green'
          when 'b' then color = 'blue'
        td.className = classname
        tr.appendChild(td)
        if color
          cell = new JellyCell(color)
          jelly = new Jelly(this, cell, x, y)
          @dom.appendChild(jelly.dom)
          @jellies.push jelly
        cell
    @addBorders()
    return

  addBorders: ->
    for y in [0...@cells.length]
      for x in [0...@cells[0].length]
        cell = @cells[y][x]
        continue unless cell and cell.tagName == 'TD'
        border = 'solid 1px #777'
        edges = [
          ['borderBottom',  0,  1],
          ['borderTop',     0, -1],
          ['borderLeft',   -1,  0],
          ['borderRight',   1,  0],
        ]
        for [attr, dx, dy] in edges
          continue unless 0 <= (y+dy) < @cells.length
          continue unless 0 <= (x+dx) < @cells[0].length
          other = @cells[y+dy][x+dx]
          cell.style[attr] = border unless other and other.tagName == 'TD'
    return

  waitForAnimation: (cb) ->
    names = ['transitionend', 'webkitTransitionEnd']
    end = () =>
      @dom.removeEventListener(name, end) for name in names
      # Wait one call stack before continuing.  This is necessary if there
      # are multiple pending end transition events (multiple jellies moving);
      # we want to wait for them all here and not accidentally catch them
      # in a subsequent waitForAnimation.
      setTimeout(cb, 0)
    @dom.addEventListener(name, end) for name in names
    return

  trySlide: (jelly, dir) ->
    jellies = [jelly]
    return if @checkFilled(jellies, dir, 0)
    @busy = true
    @move(jellies, dir, 0)
    @waitForAnimation () =>
      @checkFall =>
        @checkForMerges()
        @busy = false

  move: (jellies, dx, dy) ->
    @cells[y][x] = null for [x, y, cell] in jelly.cellCoords() for jelly in jellies
    jelly.updatePosition(jelly.x+dx, jelly.y+dy) for jelly in jellies
    @cells[y][x] = cell for [x, y, cell] in jelly.cellCoords() for jelly in jellies
    return

  checkFilled: (jellies, dx, dy) ->
    done = false
    while not done
      done = true
      for jelly in jellies
        return true if jelly.immovable
        for [x, y, cell] in jelly.cellCoords()
          next = @cells[y + dy][x + dx]
          continue unless next           # empty space
          return true unless next.jelly  # wall
          continue if next.jelly in jellies
          jellies.push next.jelly
          done = false
          break
    return false

  checkFall: (cb) ->
    moved = false
    didOneMove = true
    while didOneMove
      didOneMove = false
      for jelly in @jellies
        if not @checkFilled([jelly], 0, 1)
          @move([jelly], 0, 1)
          didOneMove = true
          moved = true
    if moved
      @waitForAnimation cb
    else
      cb()
    return

  checkForMerges: ->
    merged = false
    while @doOneMerge()
      merged = true
    @checkForCompletion() if merged
    return

  checkForCompletion: ->
    colors = {}
    colors[cell.color] = 1 for [x,y,cell] in jelly.cellCoords() for jelly in @jellies
    if Object.keys(colors).length == @jellies.length
      alert("Congratulations! Level completed.")
    return

  doOneMerge: ->
    for jelly in @jellies
      for [x, y, cell] in jelly.cellCoords()
        # Only look right and down; left and up are handled by that side
        # itself looking right and down.
        for [dx, dy, dir] in [[1, 0, 'right'], [0, 1, 'down']]
          other = @cells[y + dy][x + dx]
          continue unless other and other instanceof JellyCell
          continue unless other.jelly != jelly
          continue unless other.color == cell.color
          @jellies = @jellies.filter (j) -> j != other.jelly
          cell.mergeWith other, dir
          return true
    return false

class Wall
  constructor: (@dom) ->

class JellyCell
  constructor: (@color) ->
    @dom = document.createElement('div')
    @dom.className = 'cell jelly ' + color
    @x = 0
    @y = 0

  mergeWith: (other, dir) ->
    borders = {
      'left': ['borderLeft', 'borderRight'],
      'right': ['borderRight', 'borderLeft'],
      'up': ['borderTop', 'borderBottom'],
      'down': ['borderBottom', 'borderTop']
    }
    # Remove internal borders, whether merging with other jelly or wall.
    @dom.style[borders[dir][0]] = 'none'
    other.dom.style[borders[dir][1]] = 'none'

    # If merging with wall, jelly becomes immovable.
    @jelly.immovable = true if other instanceof Wall

    # If merging with jelly, unify the jellies.
    if other instanceof JellyCell
      @jelly.merge(other.jelly)


class Jelly
  constructor: (stage, cell, @x, @y) ->
    @dom = document.createElement('div')
    @updatePosition(@x, @y)
    @dom.className = 'cell jellybox'
    cell.jelly = this
    @cells = [cell]
    @dom.appendChild(cell.dom)

    @dom.addEventListener 'contextmenu', (e) =>
      stage.trySlide(this, 1)
    @dom.addEventListener 'click', (e) =>
      stage.trySlide(this, -1)

    @dom.addEventListener 'touchstart', (e) =>
      @start = e.touches[0].pageX
    @dom.addEventListener 'touchmove', (e) =>
      dx = e.touches[0].pageX - @start
      if Math.abs(dx) > 10
        dx = Math.max(Math.min(dx, 1), -1)
        stage.trySlide(this, dx)
    @immovable = false

  cellCoords: ->
    [@x + cell.x, @y + cell.y, cell] for cell in @cells

  updatePosition: (@x, @y) ->
    moveToCell @dom, @x, @y

  merge: (other) ->
    # Reposition other's cells as children of this jelly.
    dx = other.x - this.x
    dy = other.y - this.y
    for cell in other.cells
      @cells.push cell
      cell.x += dx
      cell.y += dy
      cell.jelly = this
      moveToCell cell.dom, cell.x, cell.y
      @dom.appendChild(cell.dom)

    @immovable = true if other.immovable
    # Delete references from/to other.
    other.cells = null
    other.dom.parentNode.removeChild(other.dom)
    return

level = parseInt(location.search.substr(1), 10) or 1
stage = new Stage(document.getElementById('map'), levels[level-1])
window.stage = stage

levelPicker = document.getElementById('level')
for i in [1..levels.length]
  option = document.createElement('option')
  option.value = i
  option.innerText = "Level #{i}"
  levelPicker.appendChild(option)
levelPicker.value = level
levelPicker.addEventListener 'change', () ->
  location.search = '?' + levelPicker.value

document.getElementById('reset').addEventListener 'click', ->
  stage.dom.innerHTML = ''
  stage = new Stage(stage.dom, levels[level-1])
