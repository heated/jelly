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

  # "Growers" are a new type of jelly that need to be
  # interacted with before they appear on the map.
  # A jelly of the same color needs to come in contact
  # with the "grower" spawning a new jelly in the given
  # direction, and pushing the old one.
  # "No touching! No touching!"
  # We use a format similar to anchored jellies and
  # specify coordinates, direction and color of the new spawn.
  [ [ "xxxxxxxxxxxxxx",
      "x      x     x",
      "x      x     x",
      "x      x     x",
      "x      g     x",
      "x        gb  x",
      "xxxx     xx  x",
      "xxxr b     r x",
      "xxxx xxxxxxxxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:7, y:4, dir:'up' },
    ],
    [
      { x:7, y:8, dir:'up', color:'red' },
    ],
  ],
  

  [ [ "xxxxxxxxxxxxxx",
      "x            x",
      "x            x",
      "x            x",
      "x            x",
      "x    g  bgr  x",
      "x x xx  xxx xx",
      "xbx          x",
      "xxxxxxxxxxxxxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:6, y:7, dir:'down' },
    ],
    [
      { x:6, y:8, dir:'up', color:'red' },
    ],
  ],
  
  [ [ "xxxxxxxxxxxxxx",
      "x            x",
      "x            x",
      "x    g       x",
      "x    b       x",
      "x    x    r  x",
      "x        xx  x",
      "x b          x",
      "xxxx r xxx xgx",
      "xxxxxxxxxxxxxx", ],
    [
    ],
    [
      { x:8, y:8, dir:'up', color:'red' },
    ],
  ],
  
  [ [ "xxxxxxxxxxxxxx",
      "xg   b     xxx",
      "xr   g     xxx",
      "xy   b y   yxx",
      "xx   x x   xxx",
      "xxxx       xxx",
      "xxxx       xxx",
      "xxxxxx xxxxxxx",
      "xxxxxxgxxxxxxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:1, y:3, dir:'down' },
      { x:6, y:8, dir:'down' },
      { x:9, y:6, dir:'down' },
    ],
    [
      { x:4, y:7, dir:'up', color:'green' },
      { x:9, y:7, dir:'up', color:'red' },
    ],
  ],
  
  # Level 25
  [ [ "xxxxxxxxxxxxxx",
      "xxxxxxxx  x  x",
      "xxxxxxxx  r  x",
      "xxxxxxxx     x",
      "xxxxx     r  x",
      "xx111    222 x",
      "x 111    222 x",
      "x g        x x",
      "xxxxxxxxxxxxxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:10, y:2, dir:'up' },
    ],
    [
      { x:4, y:8, dir:'up', color:'green' },
      { x:7, y:8, dir:'up', color:'green' },
      { x:10, y:8, dir:'up', color:'green' },
    ],
  ],
  
  [ [ "xxxxxxxxxxxxxx",
      "xx        xxxx",
      "xx  r     xxxx",
      "xx11111111xxxx",
      "xx     r   xxx",
      "xx22222222 xxx",
      "xx  r      xxx",
      "xx33333333xxxx",
      "xx     r  xxxx",
      "xxxxxxxxxxxxxx", ],
    [
    ],
    [
      { x:7, y:3, dir:'up', color:'red' },
      { x:4, y:5, dir:'up', color:'red' },
      { x:7, y:7, dir:'up', color:'red' },
      { x:4, y:9, dir:'up', color:'red' },
    ],
  ],
  
  [ [ "xxxxxxxxxxxxxx",
      "xxxxxgxyxrxxxx",
      "xxxxx     xxxx",
      "xbyg2     r  x",
      "xxxxx     xx x",
      "xxxxx11111xx x",
      "xxxxx11111 x x",
      "xxxx 11111bx x",
      "xxxx   b     x",
      "xxxxxxxxxxxxxx", ],
    [
      { x:5, y:1, dir:'up' },
      { x:7, y:1, dir:'up' },
      { x:9, y:1, dir:'up' },
      { x:10, y:7, dir:'left' },
    ],
    [
      { x:6, y:9, dir:'up', color:'blue' },
      { x:8, y:9, dir:'up', color:'blue' },
    ],
  ],
  
  [ [ "xxxxxxxxxxxxxx",
      "xxxx x  x xxxx",
      "xxx gb  gb xxx",
      "xx  xx  xx  xx",
      "xx   b  g   xx",
      "xx          xx",
      "xxx        xxx",
      "xxxxg    bxxxx",
      "xxxxxxxxxxxxxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:5, y:4, dir:'up' },
      { x:8, y:4, dir:'up' },
      { x:5, y:7, dir:'down' },
      { x:8, y:7, dir:'down' },
    ],
    [
      { x:5, y:8, dir:'up', color:'blue' },
      { x:8, y:8, dir:'up', color:'green' },
    ],
  ],

  [  "xxxxxxxxxxxxxx",
     "xxxx yyrr xxxx",
     "xxxx yyrr xxxx",
     "xxx  bbgg  xxx",
     "xxx  bbgg  xxx",
     "xxx  ggbb  xxx",
     "xxx  ggbb  xxx",
     "xxxx rryy xxxx",
     "xxxx rryy xxxx",
     "xxxxxxxxxxxxxx", ],
     
  # Level 30
  [ [ "xxxxxxxxxxxxxx",
      "xr    xxxxxxxx",
      "xxx        xxx",
      "xxxx       xxx",
      "xxxx       xxx",
      "xxxx       xxx",
      "xxxx       xxx",
      "xrrr       xxx",
      "xxr        bxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:1, y:1, dir:'up' },
    ],
    [
      { x:5, y:9, dir:'up', color:'blue' },
      { x:6, y:9, dir:'up', color:'blue' },
      { x:7, y:9, dir:'up', color:'blue' },
      { x:8, y:9, dir:'up', color:'blue' },
      { x:9, y:9, dir:'up', color:'blue' },
      { x:10, y:9, dir:'up', color:'blue' },
      { x:11, y:7, dir:'left', color:'blue' },
      { x:11, y:6, dir:'left', color:'blue' },
      { x:11, y:5, dir:'left', color:'blue' },
      { x:11, y:4, dir:'left', color:'blue' },
      { x:11, y:3, dir:'left', color:'blue' },
      { x:11, y:2, dir:'left', color:'blue' },
    ],
  ],
     
  [ [ "xxxxxxxxxxxxxx",
      "xxb xxxxxx bxx",
      "xxx  r  r  xxx",
      "xx   xxxx   xx",
      "xx xxxxxxxx xx",
      "x g   xx   g x",
      "xx11      22xx",
      "xx11      22xx",
      "xxxxxr  rxxxxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:5, y:8, dir:'down' },
      { x:8, y:8, dir:'down' },
      { x:4, y:6, dir:'left' },
      { x:9, y:6, dir:'right' },
    ],
    [
      { x:3, y:6, dir:'right', color:'green' },
      { x:10, y:6, dir:'left', color:'green' },
      { x:2, y:2, dir:'right', color:'blue' },
      { x:11, y:2, dir:'left', color:'blue' },
    ],
  ],

  [ [ "xxxxxxxxxxxxxx",
      "xg   y   xr0bx",
      "x1   2    y3gx",
      "xb   r44    xx",
      "xx   xxx   xxx",
      "x           xx",
      "x       xx  xx",
      "xx          xx",
      "xxx        xxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:1, y:1, dir:'down' },
      { x:1, y:3, dir:'up' },
      { x:5, y:1, dir:'down' },
      { x:5, y:3, dir:'up' },
      { x:10, y:1, dir:'right' },
      { x:12, y:1, dir:'left' },
      { x:10, y:2, dir:'right' },
      { x:12, y:2, dir:'left' },
    ],
  ],
  
  [ [ "xxxxxxxxxxxxxx",
      "xx1144    xxxx",
      "xr1224    xxxx",
      "xx3225    xxxx",
      "xx3355    xxxx",
      "xxxxxx    xxrx",
      "xx           x",
      "xxx          x",
      "xx     xx  x x",
      "xxxxxxxxxxxxxx", ],
    [
      { x:12, y:5, dir:'up' },
    ],
    [
      { x:1, y:6, dir:'right', color:'red' },
    ],
  ],

  [ [ "xxxxxxxxxxxxxx",
      "xb      r12rxx",
      "xx      1122 x",
      "xx      3344xx",
      "x       r34rxx",
      "x       xxxxxx",
      "xx     gxxxxxx",
      "xx     xxxxxxx",
      "xx     xxxxxxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:1, y:4, dir:'left' },
      { x:8, y:1, dir:'right' },
      { x:8, y:1, dir:'down' },
      { x:11, y:1, dir:'left' },
      { x:11, y:1, dir:'down' },
      { x:8, y:4, dir:'right' },
      { x:8, y:4, dir:'up' },
      { x:11, y:4, dir:'left' },
      { x:11, y:4, dir:'up' },
    ],
    [
      { x:0, y:4, dir:'right', color:'blue' },
      { x:13, y:2, dir:'left', color:'blue' },
      { x:4, y:9, dir:'up', color:'green' },
    ],
  ],
  
  # Level 35
  [ [ "xxxxxxxxxxxxxx",
      "x00    bbbbbrx",
      "x0b        byx",
      "x00        byx",
      "xxxyyy     byx",
      "xxr1b1     xxx",
      "xx 111     xxx",
      "xxxxx      xxx",
      "xxxxxxxx   xxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:2, y:2, dir:'left' },
      { x:2, y:2, dir:'up' },
      { x:2, y:2, dir:'down' },
      { x:2, y:5, dir:'up' },
      { x:4, y:5, dir:'down' },
      { x:4, y:5, dir:'left' },
      { x:4, y:5, dir:'right' },
    ],
  ],
  
  [ [ "xxxxxxxxxxxxxx",
      "x    brgrbg  x",
      "x  xx111111xxx",
      "x  xx1y11r1xxx",
      "x    111122  x",
      "x    112222  x",
      "x    222222  x",
      "x    222222  x",
      "x    222222  x",
      "xxxxxxxxxxxxxx", ],
    [
    ],
    [
      { x:4, y:9, dir:'up', color:'red' },
    ],
  ],
  
  [ [ "xxxxxxxxxxxxxx",
      "xrr  rrr  rryx",
      "xxx    x   xxx",
      "x           gx",
      "x  rrr    rrrx",
      "xx  1        x",
      "xxx 1        x",
      "xx  1        x",
      "xxx 1       xx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:12, y:4, dir:'right' },
    ],
    [
      { x:0, y:3, dir:'right', color:'yellow' },
      { x:0, y:4, dir:'right', color:'green' },
    ],
  ],
  
  [ [ "xxxxxxxxxxxxxx",
      "xgggxxybr    x",
      "x   xxbyb    x",
      "xgggxxxxxxx  x",
      "x111xx       x",
      "xx1xxx       x",
      "xx      xx xxx",
      "xx       xxxxx",
      "xxxxx xxxxxxxx",
      "xxxxxxxxxxxxxx", ],
    [
      { x:1, y:1, dir:'up' },
      { x:2, y:1, dir:'up' },
      { x:3, y:1, dir:'up' },
      { x:1, y:3, dir:'down' },
      { x:2, y:3, dir:'down' },
      { x:3, y:3, dir:'down' },
    ],
    [
      { x:2, y:8, dir:'up', color:'red' },
    ],
  ],
  
  [ [ "xxxxxxxxxxxxxx",
      "xxxxx    xxxxx",
      "xxxx  1111xxxx",
      "xxxxx    xxxxx",
      "xxrx      xgxx",
      "xxb        bxx",
      "xyr        gyx",
      "xxxx      xxxx",
      "xxxxx xx xxxxx",
      "xxxxxxxxxxxxxx", ],
    [
    ],
    [
      { x:3, y:7, dir:'up', color:'green' },
      { x:10, y:7, dir:'up', color:'red' },
    ],
  ],
  
  # Level 40
  [ [ "xxxxxxxxxxxxxx",
      "x      r r r x",
      "xx1yxxxx x x x",
      "xx11r  x x r x",
      "xxry y x x x x",
      "xx22 x x x r x",
      "xx22       x x",
      "xx2          x",
      "xxxx     x   x",
      "xxxxxxxxxxxxxx", ],
    [
      { x:4, y:3, dir:'up' },
    ],
    [
      { x:3, y:8, dir:'up', color:'yellow' },
    ],
  ],

  ]

CELL_SIZE = 48

moveToCell = (dom, x, y) ->
  dom.style.left = x * CELL_SIZE + 'px'
  dom.style.top = y * CELL_SIZE + 'px'
  
directions = {
  'left' : { x:-1, y: 0 },
  'right': { x: 1, y: 0 },
  'up'   : { x: 0, y:-1 },
  'down' : { x: 0, y: 1 },
}

style_colors = {
  'black' : 'hsl(0,     0%,  0%)'
  'red'   : 'hsl(0,   100%, 75%)'
  'green' : 'hsl(120, 100%, 45%)'
  'blue'  : 'hsl(216, 100%, 70%)'
  'yellow': 'hsl(60,  100%, 50%)'
}

class Stage
  constructor: (@dom, map) ->
    @jellies = []
    @history = []
    @anchored_cells = []
    @growers = []
    @delayed_anchors = []
    if map[0] instanceof Array
      growers = map[2]
      anchors = map[1]
      map = map[0]
    @num_monochromatic_blocks = 0
    @num_colors = 0
    @loadMap(map)
    @placeAnchors(anchors, growers) if anchors
    @placeGrowers(growers) if growers
    @current_cell = null

    # Capture and swallow all click events during animations.
    @busy = false
    maybeSwallowEvent = (e) =>
      e.preventDefault()
      e.stopPropagation() if @busy
    for event in ['contextmenu', 'click', 'touchstart', 'touchmove']
      @dom.addEventListener(event, maybeSwallowEvent, true)
    document.addEventListener 'keydown', (e) =>
      return if @busy
      switch e.keyCode
        when 37 then @trySlide(@current_cell, -1)
        when 39 then @trySlide(@current_cell, 1)

    @checkForMerges()

  loadMap: (map) ->
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
          when 'y' then color = 'yellow'
          when '0','1','2','3','4','5','6','7','8','9'
            color = 'black' + row[x]
        td.className = classname
        tr.appendChild(td)
        if color
          cell = new JellyCell(color)
          jelly = new Jelly(this, cell, x, y)
          @dom.appendChild(jelly.dom)
          @jellies.push jelly
          @num_monochromatic_blocks += 1
          @num_colors +=1 unless color of colors
          colors[color] = 1
        cell
    @addBorders()

  placeAnchors: (anchors, growers) ->
    style = {
      'left' : [ 'leftarrow' , 'borderRightColor'  ],
      'right': [ 'rightarrow', 'borderLeftColor'   ],
      'up'   : [ 'uparrow'   , 'borderBottomColor' ],
      'down' : [ 'downarrow' , 'borderTopColor'    ],
    }

    for anchor in anchors
      dx = directions[anchor.dir].x
      dy = directions[anchor.dir].y
      classname = style[anchor.dir][0]
      property = style[anchor.dir][1]
      
      me = @cells[anchor.y][anchor.x]
      other = @cells[anchor.y + dy][anchor.x + dx]
      arrow_color = 'black'
      
      # We allow yet-to-be-grown jellies to be anchored in advance,
      # and we create the visual element, but there is nothing to anchor yet,
      # so we put it in a special place for future reference.
      if (me is null) or (anchor.delayed)
        @delayed_anchors.push [anchor, other]

        # We use the growers array to figure out the color of the anchor.
        for grower in growers
          if (grower.x == anchor.x + dx) and (grower.y == anchor.y + dy)            
            arrow_color = grower.color
            break
      else
        # Save the cells we anchored for undo functionality
        @anchored_cells.push [me, anchor.dir]
        arrow_color = me.color
        me.mergeWith(other, anchor.dir)

      # Create the overlapping anchoring triangle.
      arrow = document.createElement('div')
      arrow.style[property] = style_colors[arrow_color]
      arrow.className = classname
      @addElement(arrow, other)

    @jellies = (jelly for jelly in @jellies when jelly.cells)
    return

  placeGrowers: (growers) ->
    style = {
      'left' : [ 'leftgrower' , 'borderLeftColor'   ],
      'right': [ 'rightgrower', 'borderRightColor'  ],
      'up'   : [ 'upgrower'   , 'borderTopColor'    ],
    }
    
    for grower in growers
      classname = style[grower.dir][0]
      property = style[grower.dir][1]
      
      me = @cells[grower.y][grower.x]
      
      # Create the visual representation of a grower
      grower_div = document.createElement('div')
      grower_div.style[property] = style_colors[grower.color]
      grower_div.className = classname      
      @addElement(grower_div, me)

      @growers.push [me, grower, grower_div]
      
      # We treat each grower as a future block,
      # requiring it to be activated for level completion.
      @num_monochromatic_blocks += 1
      
    return
  
  # Adds overlapping visual elements to the table;
  # given that now we can have both anchor and grower in the same cell,
  # and to fix the way firefox displays absolute div in td cell,
  # we don't add the elements to the dom directly, but make sure we have
  # a container div with position relative, and add our elements to it.
  addElement: (element, cell) ->
    if cell.dom.firstChild
      cell.dom.firstChild.appendChild(element)
    else
      div_container = document.createElement('div')
      div_container.style.position = 'relative'
      div_container.style.height = '100%'
      div_container.style.width = '100%'
      div_container.appendChild(element)
      cell.dom.appendChild(div_container)
    return
  

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
    return unless jelly
    jellies = [jelly]
    return if @checkFilled(jellies, dir, 0)
    @busy = true
    @saveForUndo()
    @move(jellies, dir, 0)
    @waitForAnimation () =>
      @checkFall =>
        @checkForMerges()
        @checkForGrows()

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
  
  checkForGrows: ->
    if @doOneGrow()
      setTimeout => 
        @checkForGrows()
      , 200
    else
      @busy = false
    return
    
  doOneGrow: ->
    for [cell, grower, grower_div] in @growers
      i = i+1 or 0
      dx = directions[grower.dir].x
      dy = directions[grower.dir].y
      if cell instanceof Wall
        new_y = grower.y + dy
        new_x = grower.x + dx
      else
        new_y = cell.y + cell.jelly.y + dy
        new_x = cell.x + cell.jelly.x + dx
      activator = @cells[new_y][new_x]
      
      continue unless activator instanceof JellyCell
      continue unless activator.color == grower.color
      jellies = [activator.jelly]
      if @checkFilled(jellies, dx, dy)
        continue if cell instanceof Wall
        # If our grower is not inside a wall, we can activate the jelly
        # not only by moving the activator away from it, but the other way
        # around, by moving the jelly with the grower away (level 31).
        dx = -dx
        dy = -dy
        jellies = [activator.jelly]
        continue if @checkFilled(jellies, dx, dy)
        # Remove the activator itself from the list.
        jellies.splice(0,1)
        new_x += dx
        new_y += dy
        
      @move(jellies, dx, dy)
      new_cell = new JellyCell(grower.color)
      jelly = new Jelly(this, new_cell, new_x, new_y)
      @cells[new_y][new_x] = new_cell
      @dom.appendChild(jelly.dom)
      @jellies.push jelly
      @growers.splice(i, 1)
      cell.dom.firstChild.removeChild(grower_div)
      
      @checkGrownAnchored(new_cell)
      
      @jellies = (jelly for jelly in @jellies when jelly.cells)      
      @checkForMerges()
      return true
    return false
    
  checkGrownAnchored: (cell) ->
    for [anchor, other] in @delayed_anchors
      i = i+1 or 0
      
      if other instanceof Wall
        check_x = anchor.x
        check_y = anchor.y
      else
        check_x = other.x + other.jelly.x - directions[anchor.dir].x
        check_y = other.y + other.jelly.y - directions[anchor.dir].y
        
      if (check_x == cell.x + cell.jelly.x) and
         (check_y == cell.y + cell.jelly.y)
        cell.mergeWith(other, anchor.dir)
        @delayed_anchors.splice(i, 1)
        @anchored_cells.push [cell, anchor.dir]
        break
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

  # Undo functionality is implemented via deconstruction of the available
  # data structures to get the initial configuration as listed in [levels].
  saveForUndo: ->
    map     = @saveForUndoMap()
    anchors = @saveForUndoAnchors()
    growers = @saveForUndoGrowers()
    
    @history.push [map, anchors, growers]
    
    # The original game limits undo to last 3 moves, so replicate that
    if @history.length > 3
      [abc...,x,y,z] = @history
      @history = [x,y,z]
    return
      

  saveForUndoMap: ->
    map = []
    # We run over all the cells and revert it to
    # the original textual representation.
    for y in [0...@cells.length]
      row = ""
      for x in [0...@cells[0].length]
        cell = @cells[y][x]
        row += "x" if cell instanceof Wall
        row += " " if cell is null
        if cell instanceof JellyCell
          switch cell.color
            when "red" then row += "r"
            when "green" then row += "g"
            when "blue" then row += "b"
            when "yellow" then row += "y"
            when "black0","black1","black2","black3","black4","black5","black6","black7","black8","black9"
              row += cell.color[5..]
      map.push row
    return map
    
  saveForUndoAnchors: ->
    anchors = []    
    # Add anchors from the cells they were attached to
    for [anchored_cell, direction] in @anchored_cells
      anchor = {
        'x': anchored_cell.x + anchored_cell.jelly.x,
        'y': anchored_cell.y + anchored_cell.jelly.y,
        'dir': direction
      }
      anchors.push anchor
      
    # Add delayed anchors that aren't attached yet
    for [anchor, other] in @delayed_anchors
      new_anchor = anchor
      unless other instanceof Wall
        new_anchor = {
          'x': other.x + other.jelly.x - directions[anchor.dir].x,
          'y': other.y + other.jelly.y - directions[anchor.dir].y,
          'dir': anchor.dir
        }
      new_anchor.delayed = true
      anchors.push new_anchor
    return anchors
    
  saveForUndoGrowers: ->
    growers = []
    # Add growers that weren't activated yet,
    # otherwise they are simple cells already listed
    for [cell, grower, grower_div] in @growers
      new_y = grower.y
      new_x = grower.x
      unless cell instanceof Wall
        new_y = cell.y + cell.jelly.y
        new_x = cell.x + cell.jelly.x
      new_grower = {
        'x':new_x,
        'y':new_y,
        'dir':grower.dir,
        'color':grower.color
      }
      growers.push new_grower
    return growers
      
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
        dir = dx > 0 ? 1 : -1
        stage.trySlide(this, dir)
    @dom.addEventListener 'mouseover', (e) =>
      stage.current_cell = this
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
  
document.getElementById('undo').addEventListener 'click', ->
  return if stage.busy
  history = stage.history
  return if history[0] not instanceof Array
  stage.dom.innerHTML = ''
  stage = new Stage(stage.dom, history.pop())
  stage.history = history
