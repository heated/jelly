levels = [
  # Level 1
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

  # Level 5
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

  # Anchored jellies are specified separately after the
  # level map. Instead of [row, row, row...in the presence of
  # anchors the level specification is: 
  # [ [row,row,row...], [ anchor, anchor, anchor...] ].
  # Each anchor starts from a colored non-black jelly's
  # coordinates and specifies the direction in which it's "held".
  [ [ "xxxxxxxxxxxxxx",
      "x            x",
      "x          r x",
      "x          x x",
      "x     b   b  x",
      "x     x  rr  x",
      "x         x  x",
      "x r  bx x x  x",
      "x x  xx x x  x",
      "xxxxxxxxxxxxxx", ],
    [
      { x:2, y:7, dir:'down' },
      { x:5, y:7, dir:'down' },
    ]                    
  ],

  [ [ "xxxxxxxxxxxxxx", 
      "xxxx x  x xxxx",
      "xxx  g  b  xxx",
      "xx   x  x   xx",
      "xx   b  g   xx",
      "xxg        bxx",
      "xxxg      bxxx",
      "xxxx      xxxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:5, y:4, dir:'up' },
      { x:8, y:4, dir:'up' },
    ]
  ],

  [ [ "xxxxxxxxxxxxxx",
      "x            x",
      "x            x",
      "x          rbx",
      "x    x     xxx",
      "xb        00xx",
      "xx  rx  x xxxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:4, y:6, dir:'down' },
    ],
  ],

  # Level 10
  [ [ "xxxxxxxxxxxxxx",
      "x   gr       x",
      "x   00 1     x",
      "x    x x xxxxx",
      "x            x",
      "x  x  x      x",
      "x        x  rx",
      "xx   x     gxx",
      "x          xxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:11, y:7, dir:'down' },
      { x:12, y:6, dir:'down' },
    ],
  ],

  [ [ "xxxxxxxxxxxxxx",
      "x      g00g gx",
      "x       xxx xx",
      "x           gx",
      "x11         xx",
      "xxx          x",
      "x       g    x",
      "x   x xxx   gx",
      "x   xxxxxx xxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:12, y:7, dir:'down' },
      { x:7, y:1, dir:'right' },
      { x:10, y:1, dir:'left' },
    ],
  ],
  
  [ [ "xxxxxxxxxxxxxx",
      "xxr rr  rr rxx",
      "xxx  x  x  xxx",
      "x            x",
      "xb          bx",
      "xx          xx",
      "x            x",
      "x            x",
      "x   xxxxxx   x",
      "xxxxxxxxxxxxxx", ],
    [
      { x:12, y:4, dir:'down' },
    ],
  ],

  [ "xxxxxxxxxxxxxx",
    "xxxxxxxxxxxxxx",
    "xxxxx gr xxxxx",
    "xxxxx rb xxxxx",
    "xxxxx gr xxxxx",
    "xxxxx bg xxxxx",
    "xxxxxxxxxxxxxx",
    "xxxxxxxxxxxxxx", ],

  [ [ "xxxxxxxxxxxxxx",
      "xxxxxxxxx   rx",
      "xxxxxxxxx   gx",
      "xxxxxxxxx   gx",
      "x1122       gx",
      "x1122       gx",
      "x0033      xxx",
      "x0033      xxx",
      "xxr x gxxx xxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:2, y:8, dir:'down' },
      { x:6, y:8, dir:'down' },
    ],
  ],

  # Level 15
  [ [ "xxxxxxxxxxxxxx",
      "xr r r      rx",
      "xg x x      gx",
      "xb          bx",
      "xxxxx     xxxx",
      "xxxxxx   xxxxx",
      "xxxxxx   xxxxx",
      "xxxxxx   xxxxx",
      "xxxxxxgggxxxxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:1, y:3, dir:'down' },
      { x:6, y:8, dir:'left' },
      { x:8, y:8, dir:'right' },
    ],
  ],

  [ [ "xxxxxxxxxxxxxx",
      "xx   0001233rx",
      "xx   0411233xx",
      "xx   444122xxx",
      "xx     xxxxxxx",
      "xr     xxxxxxx",
      "xx     xxxxxxx",
      "xx     xxxxxxx",
      "xx     xxxxxxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:1, y:5, dir:'up' },
    ],
  ],

  [ [ "xxxxxxxxxxxxxx",
      "xxxx000xxxgb x",
      "xxxx0     bg x",
      "xxxx0    11xxx",
      "xxxx000xxxxxxx",
      "x 222  xxxxxxx",
      "xxxx     xxgxx",
      "xxxx   g    bx",
      "xxxx   x     x",
      "xxxxxxxxxxxxxx", ],
    [
      { x:11, y:6, dir:'up' },
      { x:12, y:7, dir:'up' },
    ],
  ],

  [ [ "xxxxxxxxxxxxxx",
      "x            x",
      "xb01         x",
      "xb0gg     g  x",
      "xb023     g4bx",
      "xxxxx g   xxxx",
      "xxxxx gg  xxxx",
      "xxxxx ggg xxxx",
      "xxxxx ggggxxxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:12, y:4, dir:'down' },
    ],
  ],

  [ [ "xxxxxxxxxxxxxx",
      "xg0    g1gx  x",
      "x 3g    1 x  x",
      "x444    2 x  x",
      "xg g   ggg   x",
      "xxx     xxx  x",
      "xxx     xxx  x",
      "xxx     xxx  x",
      "xxx          x",
      "xxxxxxxxxxxxxx", ],
    [
      { x:1, y:1, dir:'right' },
      { x:3, y:2, dir:'left' },
      { x:1, y:4, dir:'up' },
      { x:3, y:4, dir:'up' },
      { x:8, y:4, dir:'up' },
      { x:7, y:1, dir:'right' },
      { x:9, y:1, dir:'left' },
    ],
  ],

  # Level 20
  [ [ "xxxxxxxxxxxxxx",
      "xrrrr   rggxxx",
      "xxxb    xxxxxx",
      "xxxx       xbx",
      "xx           x",
      "xx           x",
      "xx     x     x",
      "xx x         x",
      "xx        x  x",
      "xxxxxxxxxxxxxx", ],
    [
      { x:12, y:3, dir:'up' },
    ],
  ],

  ]

CELL_SIZE = 48

moveToCell = (dom, x, y) ->
  dom.style.left = x * CELL_SIZE + 'px'
  dom.style.top = y * CELL_SIZE + 'px'

class Stage
  constructor: (@dom, map) ->
    @jellies = []
    anchors = []
    if map[0] instanceof Array
      anchors = map[1]
      map = map[0]
    @num_monochromatic_blocks = 0
    @num_colors = 0
    @loadMap(map, anchors)

    # Capture and swallow all click events during animations.
    @busy = false
    maybeSwallowEvent = (e) =>
      e.preventDefault()
      e.stopPropagation() if @busy
    for event in ['contextmenu', 'click', 'touchstart', 'touchmove']
      @dom.addEventListener(event, maybeSwallowEvent, true)

    @checkForMerges()

  loadMap: (map, anchors) ->
    table = document.createElement('table')
    @dom.appendChild(table)
    colors = {}
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
          when '0','1','2','3','4','5','6','7','8','9'
            color = 'black' + row[x]
        td.className = classname
        tr.appendChild(td)
        if color
          cell = new JellyCell(color)
          jelly = new Jelly(this, cell, x, y)
          @dom.appendChild(jelly.dom)
          @jellies.push jelly
          @num_monochromatic_blocks += 1;
          @num_colors +=1 unless color of colors
          colors[color] = 1
        cell
    @addBorders()
    @placeAnchors(anchors)
    return

  placeAnchors: (anchors) ->
    directions = {
      'left':  [-1,  0, 'leftarrow', 'borderRightColor'],
      'right': [ 1,  0, 'rightarrow', 'borderLeftColor'],
      'up':    [ 0, -1, 'uparrow', 'borderBottomColor'],
      'down':  [ 0,  1, 'downarrow', 'borderTopColor'],
    }
    colors = {
      'red'  : 'hsl(0, 100%, 75%)'
      'green': 'hsl(120, 100%, 45%)'
      'blue' : 'hsl(216, 100%, 70%)'
    }
    for anchor in anchors
      dx = directions[anchor.dir][0]
      dy = directions[anchor.dir][1]
      classname = directions[anchor.dir][2]
      property = directions[anchor.dir][3]
      
      me = @cells[anchor.y][anchor.x]
      other = @cells[anchor.y + dy][anchor.x + dx]
      me.mergeWith(other, anchor.dir)

      # Create the overlapping anchoring triangle.
      arrow = document.createElement('div')
      arrow.style[property] = colors[me.color]
      arrow.className = classname
      other.dom.appendChild(arrow)
    @jellies = (jelly for jelly in @jellies when jelly.cells)

  addBorders: ->
    for y in [0...@cells.length]
      for x in [0...@cells[0].length]
        cell = @cells[y][x]
        continue unless cell instanceof Wall
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
          cell.dom.style[attr] = border unless other instanceof Wall
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
    try_again = true
    while try_again
      try_again = false
      for jelly in @jellies
        jellyset = [jelly]
        if not @checkFilled(jellyset, 0, 1)
          @move(jellyset, 0, 1)
          try_again = true
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
    if @num_monochromatic_blocks <= @num_colors
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
          continue if cell['merged' + dir]
          continue unless other.color == cell.color
          if jelly != other.jelly
            @jellies = @jellies.filter (j) -> j != other.jelly
          if cell.color_master != other.color_master
            @num_monochromatic_blocks -= 1
          cell.mergeWith other, dir
          cell['merged' + dir] = true
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
    @color_master = this
    @color_mates = [this]

  mergeWith: (other, dir) ->
    borders = {
      'left':  ['borderLeft',   'borderRight'],
      'right': ['borderRight',  'borderLeft'],
      'up':    ['borderTop',    'borderBottom'],
      'down':  ['borderBottom', 'borderTop']
    }
    # Remove internal borders, whether merging with other jelly or wall.
    @dom.style[borders[dir][0]] = 'none'
    other.dom.style[borders[dir][1]] = 'none'

    # If merging with wall, jelly becomes immovable.
    @jelly.immovable = true if other instanceof Wall

    # If merging with jelly, unify the jellies and color mates' lists.
    if other instanceof JellyCell and @color == other.color and @color_master != other.color_master
      other_master = other.color_master
      for cell in other_master.color_mates
        cell.color_master = @color_master
      @color_master.color_mates =
        @color_master.color_mates.concat(other_master.color_mates)  
    if other instanceof JellyCell and @jelly != other.jelly
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
  option.appendChild(document.createTextNode("Level #{i}"));
  levelPicker.appendChild(option)
levelPicker.value = level
levelPicker.addEventListener 'change', () ->
  location.search = '?' + levelPicker.value

document.getElementById('reset').addEventListener 'click', ->
  stage.dom.innerHTML = ''
  stage = new Stage(stage.dom, levels[level-1])
