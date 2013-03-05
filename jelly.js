(function() {
  var CELL_SIZE, Jelly, JellyCell, Stage, Wall, i, level, levelPicker, levels, moveToCell, option, stage, _ref,
    __indexOf = Array.prototype.indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  levels = [
    ["xxxxxxxxxxxxxx", "x            x", "x            x", "x      r     x", "x      xx    x", "x  g     r b x", "xxbxxxg xxxxxx", "xxxxxxxxxxxxxx"], ["xxxxxxxxxxxxxx", "x            x", "x            x", "x            x", "x     g   g  x", "x   r r   r  x", "xxxxx x x xxxx", "xxxxxxxxxxxxxx"], ["xxxxxxxxxxxxxx", "x            x", "x            x", "x   bg  x g  x", "xxx xxxrxxx  x", "x      b     x", "xxx xxxrxxxxxx", "xxxxxxxxxxxxxx"], ["xxxxxxxxxxxxxx", "x            x", "x       r    x", "x       b    x", "x       x    x", "x b r        x", "x b r      b x", "xxx x      xxx", "xxxxx xxxxxxxx", "xxxxxxxxxxxxxx"], ["xxxxxxxxxxxxxx", "x            x", "x            x", "xrg  gg      x", "xxx xxxx xx  x", "xrg          x", "xxxxx  xx   xx", "xxxxxx xx  xxx", "xxxxxxxxxxxxxx"], ["xxxxxxxxxxxxxx", "xxxxxxx      x", "xxxxxxx g    x", "x       xx   x", "x r   b      x", "x x xxx x g  x", "x         x bx", "x       r xxxx", "x   xxxxxxxxxx", "xxxxxxxxxxxxxx"], [
      ["xxxxxxxxxxxxxx", "x            x", "x          r x", "x          x x", "x     b   b  x", "x     x  rr  x", "x         x  x", "x r  bx x x  x", "x x  xx x x  x", "xxxxxxxxxxxxxx"], [
        {
          x: 2,
          y: 7,
          dir: 'down'
        }, {
          x: 5,
          y: 7,
          dir: 'down'
        }
      ]
    ], [
      ["xxxxxxxxxxxxxx", "xxxx x  x xxxx", "xxx  g  b  xxx", "xx   x  x   xx", "xx   b  g   xx", "xxg        bxx", "xxxg      bxxx", "xxxx      xxxx", "xxxxxxxxxxxxxx"], [
        {
          x: 5,
          y: 4,
          dir: 'up'
        }, {
          x: 8,
          y: 4,
          dir: 'up'
        }
      ]
    ], [
      ["xxxxxxxxxxxxxx", "x            x", "x            x", "x          rbx", "x    x     xxx", "xb        00xx", "xx  rx  x xxxx", "xxxxxxxxxxxxxx"], [
        {
          x: 4,
          y: 6,
          dir: 'down'
        }
      ]
    ], [
      ["xxxxxxxxxxxxxx", "x   gr       x", "x   00 1     x", "x    x x xxxxx", "x            x", "x  x  x      x", "x        x  rx", "xx   x     gxx", "x          xxx", "xxxxxxxxxxxxxx"], [
        {
          x: 11,
          y: 7,
          dir: 'down'
        }, {
          x: 12,
          y: 6,
          dir: 'down'
        }
      ]
    ], [
      ["xxxxxxxxxxxxxx", "x      g00g gx", "x       xxx xx", "x           gx", "x11         xx", "xxx          x", "x       g    x", "x   x xxx   gx", "x   xxxxxx xxx", "xxxxxxxxxxxxxx"], [
        {
          x: 12,
          y: 7,
          dir: 'down'
        }, {
          x: 7,
          y: 1,
          dir: 'right'
        }, {
          x: 10,
          y: 1,
          dir: 'left'
        }
      ]
    ], [
      ["xxxxxxxxxxxxxx", "xxr rr  rr rxx", "xxx  x  x  xxx", "x            x", "xb          bx", "xx          xx", "x            x", "x            x", "x   xxxxxx   x", "xxxxxxxxxxxxxx"], [
        {
          x: 12,
          y: 4,
          dir: 'down'
        }
      ]
    ], ["xxxxxxxxxxxxxx", "xxxxxxxxxxxxxx", "xxxxx gr xxxxx", "xxxxx rb xxxxx", "xxxxx gr xxxxx", "xxxxx bg xxxxx", "xxxxxxxxxxxxxx", "xxxxxxxxxxxxxx"], [
      ["xxxxxxxxxxxxxx", "xxxxxxxxx   rx", "xxxxxxxxx   gx", "xxxxxxxxx   gx", "x1122       gx", "x1122       gx", "x0033      xxx", "x0033      xxx", "xxr x gxxx xxx", "xxxxxxxxxxxxxx"], [
        {
          x: 2,
          y: 8,
          dir: 'down'
        }, {
          x: 6,
          y: 8,
          dir: 'down'
        }
      ]
    ], [
      ["xxxxxxxxxxxxxx", "xr r r      rx", "xg x x      gx", "xb          bx", "xxxxx     xxxx", "xxxxxx   xxxxx", "xxxxxx   xxxxx", "xxxxxx   xxxxx", "xxxxxxgggxxxxx", "xxxxxxxxxxxxxx"], [
        {
          x: 1,
          y: 3,
          dir: 'down'
        }, {
          x: 6,
          y: 8,
          dir: 'left'
        }, {
          x: 8,
          y: 8,
          dir: 'right'
        }
      ]
    ], [
      ["xxxxxxxxxxxxxx", "xx   0001233rx", "xx   0411233xx", "xx   444122xxx", "xx     xxxxxxx", "xr     xxxxxxx", "xx     xxxxxxx", "xx     xxxxxxx", "xx     xxxxxxx", "xxxxxxxxxxxxxx"], [
        {
          x: 1,
          y: 5,
          dir: 'up'
        }
      ]
    ], [
      ["xxxxxxxxxxxxxx", "xxxx000xxxgb x", "xxxx0     bg x", "xxxx0    11xxx", "xxxx000xxxxxxx", "x 222  xxxxxxx", "xxxx     xxgxx", "xxxx   g    bx", "xxxx   x     x", "xxxxxxxxxxxxxx"], [
        {
          x: 11,
          y: 6,
          dir: 'up'
        }, {
          x: 12,
          y: 7,
          dir: 'up'
        }
      ]
    ], [
      ["xxxxxxxxxxxxxx", "x            x", "xb01         x", "xb0gg     g  x", "xb023     g4bx", "xxxxx g   xxxx", "xxxxx gg  xxxx", "xxxxx ggg xxxx", "xxxxx ggggxxxx", "xxxxxxxxxxxxxx"], [
        {
          x: 12,
          y: 4,
          dir: 'down'
        }
      ]
    ], [
      ["xxxxxxxxxxxxxx", "xg0    g1gx  x", "x 3g    1 x  x", "x444    2 x  x", "xg g   ggg   x", "xxx     xxx  x", "xxx     xxx  x", "xxx     xxx  x", "xxx          x", "xxxxxxxxxxxxxx"], [
        {
          x: 1,
          y: 1,
          dir: 'right'
        }, {
          x: 3,
          y: 2,
          dir: 'left'
        }, {
          x: 1,
          y: 4,
          dir: 'up'
        }, {
          x: 3,
          y: 4,
          dir: 'up'
        }, {
          x: 8,
          y: 4,
          dir: 'up'
        }, {
          x: 7,
          y: 1,
          dir: 'right'
        }, {
          x: 9,
          y: 1,
          dir: 'left'
        }
      ]
    ], [
      ["xxxxxxxxxxxxxx", "xrrrr   rggxxx", "xxxb    xxxxxx", "xxxx       xbx", "xx           x", "xx           x", "xx     x     x", "xx x         x", "xx        x  x", "xxxxxxxxxxxxxx"], [
        {
          x: 12,
          y: 3,
          dir: 'up'
        }
      ]
    ]
  ];

  CELL_SIZE = 48;

  moveToCell = function(dom, x, y) {
    dom.style.left = x * CELL_SIZE + 'px';
    return dom.style.top = y * CELL_SIZE + 'px';
  };

  Stage = (function() {

    function Stage(dom, map) {
      var anchors, event, maybeSwallowEvent, _i, _len, _ref,
        _this = this;
      this.dom = dom;
      this.jellies = [];
      anchors = [];
      if (map[0] instanceof Array) {
        anchors = map[1];
        map = map[0];
      }
      this.num_monochromatic_blocks = 0;
      this.num_colors = 0;
      this.loadMap(map, anchors);
      this.busy = false;
      maybeSwallowEvent = function(e) {
        e.preventDefault();
        if (_this.busy) return e.stopPropagation();
      };
      _ref = ['contextmenu', 'click', 'touchstart', 'touchmove'];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        event = _ref[_i];
        this.dom.addEventListener(event, maybeSwallowEvent, true);
      }
      this.checkForMerges();
    }

    Stage.prototype.loadMap = function(map, anchors) {
      var cell, classname, color, colors, jelly, row, table, td, tr, x, y;
      table = document.createElement('table');
      this.dom.appendChild(table);
      colors = {};
      this.cells = (function() {
        var _ref, _results;
        _results = [];
        for (y = 0, _ref = map.length; 0 <= _ref ? y < _ref : y > _ref; 0 <= _ref ? y++ : y--) {
          row = map[y].split(/(?:)/);
          tr = document.createElement('tr');
          table.appendChild(tr);
          _results.push((function() {
            var _ref2, _results2;
            _results2 = [];
            for (x = 0, _ref2 = row.length; 0 <= _ref2 ? x < _ref2 : x > _ref2; 0 <= _ref2 ? x++ : x--) {
              color = null;
              classname = 'transparent';
              cell = null;
              td = document.createElement('td');
              switch (row[x]) {
                case 'x':
                  classname = 'cell wall';
                  cell = new Wall(td);
                  break;
                case 'r':
                  color = 'red';
                  break;
                case 'g':
                  color = 'green';
                  break;
                case 'b':
                  color = 'blue';
                  break;
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                  color = 'black' + row[x];
              }
              td.className = classname;
              tr.appendChild(td);
              if (color) {
                cell = new JellyCell(color);
                jelly = new Jelly(this, cell, x, y);
                this.dom.appendChild(jelly.dom);
                this.jellies.push(jelly);
                this.num_monochromatic_blocks += 1;
                if (!(color in colors)) this.num_colors += 1;
                colors[color] = 1;
              }
              _results2.push(cell);
            }
            return _results2;
          }).call(this));
        }
        return _results;
      }).call(this);
      this.addBorders();
      this.placeAnchors(anchors);
    };

    Stage.prototype.placeAnchors = function(anchors) {
      var anchor, arrow, classname, colors, directions, dx, dy, jelly, me, other, property, _i, _len;
      directions = {
        'left': [-1, 0, 'leftarrow', 'borderRightColor'],
        'right': [1, 0, 'rightarrow', 'borderLeftColor'],
        'up': [0, -1, 'uparrow', 'borderBottomColor'],
        'down': [0, 1, 'downarrow', 'borderTopColor']
      };
      colors = {
        'red': 'hsl(0, 100%, 75%)',
        'green': 'hsl(120, 100%, 45%)',
        'blue': 'hsl(216, 100%, 70%)'
      };
      for (_i = 0, _len = anchors.length; _i < _len; _i++) {
        anchor = anchors[_i];
        dx = directions[anchor.dir][0];
        dy = directions[anchor.dir][1];
        classname = directions[anchor.dir][2];
        property = directions[anchor.dir][3];
        me = this.cells[anchor.y][anchor.x];
        other = this.cells[anchor.y + dy][anchor.x + dx];
        me.mergeWith(other, anchor.dir);
        arrow = document.createElement('div');
        arrow.style[property] = colors[me.color];
        arrow.className = classname;
        other.dom.appendChild(arrow);
      }
      return this.jellies = (function() {
        var _j, _len2, _ref, _results;
        _ref = this.jellies;
        _results = [];
        for (_j = 0, _len2 = _ref.length; _j < _len2; _j++) {
          jelly = _ref[_j];
          if (jelly.cells) _results.push(jelly);
        }
        return _results;
      }).call(this);
    };

    Stage.prototype.addBorders = function() {
      var attr, border, cell, dx, dy, edges, other, x, y, _i, _len, _ref, _ref2, _ref3, _ref4, _ref5;
      for (y = 0, _ref = this.cells.length; 0 <= _ref ? y < _ref : y > _ref; 0 <= _ref ? y++ : y--) {
        for (x = 0, _ref2 = this.cells[0].length; 0 <= _ref2 ? x < _ref2 : x > _ref2; 0 <= _ref2 ? x++ : x--) {
          cell = this.cells[y][x];
          if (!(cell instanceof Wall)) continue;
          border = 'solid 1px #777';
          edges = [['borderBottom', 0, 1], ['borderTop', 0, -1], ['borderLeft', -1, 0], ['borderRight', 1, 0]];
          for (_i = 0, _len = edges.length; _i < _len; _i++) {
            _ref3 = edges[_i], attr = _ref3[0], dx = _ref3[1], dy = _ref3[2];
            if (!((0 <= (_ref4 = y + dy) && _ref4 < this.cells.length))) continue;
            if (!((0 <= (_ref5 = x + dx) && _ref5 < this.cells[0].length))) {
              continue;
            }
            other = this.cells[y + dy][x + dx];
            if (!(other instanceof Wall)) cell.dom.style[attr] = border;
          }
        }
      }
    };

    Stage.prototype.waitForAnimation = function(cb) {
      var end, name, names, _i, _len,
        _this = this;
      names = ['transitionend', 'webkitTransitionEnd'];
      end = function() {
        var name, _i, _len;
        for (_i = 0, _len = names.length; _i < _len; _i++) {
          name = names[_i];
          _this.dom.removeEventListener(name, end);
        }
        return setTimeout(cb, 0);
      };
      for (_i = 0, _len = names.length; _i < _len; _i++) {
        name = names[_i];
        this.dom.addEventListener(name, end);
      }
    };

    Stage.prototype.trySlide = function(jelly, dir) {
      var jellies,
        _this = this;
      jellies = [jelly];
      if (this.checkFilled(jellies, dir, 0)) return;
      this.busy = true;
      this.move(jellies, dir, 0);
      return this.waitForAnimation(function() {
        return _this.checkFall(function() {
          _this.checkForMerges();
          return _this.busy = false;
        });
      });
    };

    Stage.prototype.move = function(jellies, dx, dy) {
      var cell, jelly, x, y, _i, _j, _k, _l, _len, _len2, _len3, _len4, _len5, _m, _ref, _ref2, _ref3, _ref4;
      for (_i = 0, _len = jellies.length; _i < _len; _i++) {
        jelly = jellies[_i];
        _ref = jelly.cellCoords();
        for (_j = 0, _len2 = _ref.length; _j < _len2; _j++) {
          _ref2 = _ref[_j], x = _ref2[0], y = _ref2[1], cell = _ref2[2];
          this.cells[y][x] = null;
        }
      }
      for (_k = 0, _len3 = jellies.length; _k < _len3; _k++) {
        jelly = jellies[_k];
        jelly.updatePosition(jelly.x + dx, jelly.y + dy);
      }
      for (_l = 0, _len4 = jellies.length; _l < _len4; _l++) {
        jelly = jellies[_l];
        _ref3 = jelly.cellCoords();
        for (_m = 0, _len5 = _ref3.length; _m < _len5; _m++) {
          _ref4 = _ref3[_m], x = _ref4[0], y = _ref4[1], cell = _ref4[2];
          this.cells[y][x] = cell;
        }
      }
    };

    Stage.prototype.checkFilled = function(jellies, dx, dy) {
      var cell, done, jelly, next, x, y, _i, _j, _len, _len2, _ref, _ref2, _ref3;
      done = false;
      while (!done) {
        done = true;
        for (_i = 0, _len = jellies.length; _i < _len; _i++) {
          jelly = jellies[_i];
          if (jelly.immovable) return true;
          _ref = jelly.cellCoords();
          for (_j = 0, _len2 = _ref.length; _j < _len2; _j++) {
            _ref2 = _ref[_j], x = _ref2[0], y = _ref2[1], cell = _ref2[2];
            next = this.cells[y + dy][x + dx];
            if (!next) continue;
            if (!next.jelly) return true;
            if (_ref3 = next.jelly, __indexOf.call(jellies, _ref3) >= 0) continue;
            jellies.push(next.jelly);
            done = false;
            break;
          }
        }
      }
      return false;
    };

    Stage.prototype.checkFall = function(cb) {
      var jelly, jellyset, moved, try_again, _i, _len, _ref;
      moved = false;
      try_again = true;
      while (try_again) {
        try_again = false;
        _ref = this.jellies;
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          jelly = _ref[_i];
          jellyset = [jelly];
          if (!this.checkFilled(jellyset, 0, 1)) {
            this.move(jellyset, 0, 1);
            try_again = true;
            moved = true;
          }
        }
      }
      if (moved) {
        this.waitForAnimation(cb);
      } else {
        cb();
      }
    };

    Stage.prototype.checkForMerges = function() {
      var merged;
      merged = false;
      while (this.doOneMerge()) {
        merged = true;
      }
      if (merged) this.checkForCompletion();
    };

    Stage.prototype.checkForCompletion = function() {
      if (this.num_monochromatic_blocks <= this.num_colors) {
        alert("Congratulations! Level completed.");
      }
    };

    Stage.prototype.doOneMerge = function() {
      var cell, dir, dx, dy, jelly, other, x, y, _i, _j, _k, _len, _len2, _len3, _ref, _ref2, _ref3, _ref4, _ref5;
      _ref = this.jellies;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        jelly = _ref[_i];
        _ref2 = jelly.cellCoords();
        for (_j = 0, _len2 = _ref2.length; _j < _len2; _j++) {
          _ref3 = _ref2[_j], x = _ref3[0], y = _ref3[1], cell = _ref3[2];
          _ref4 = [[1, 0, 'right'], [0, 1, 'down']];
          for (_k = 0, _len3 = _ref4.length; _k < _len3; _k++) {
            _ref5 = _ref4[_k], dx = _ref5[0], dy = _ref5[1], dir = _ref5[2];
            other = this.cells[y + dy][x + dx];
            if (!(other && other instanceof JellyCell)) continue;
            if (cell['merged' + dir]) continue;
            if (other.color !== cell.color) continue;
            if (jelly !== other.jelly) {
              this.jellies = this.jellies.filter(function(j) {
                return j !== other.jelly;
              });
            }
            if (cell.color_master !== other.color_master) {
              this.num_monochromatic_blocks -= 1;
            }
            cell.mergeWith(other, dir);
            cell['merged' + dir] = true;
            return true;
          }
        }
      }
      return false;
    };

    return Stage;

  })();

  Wall = (function() {

    function Wall(dom) {
      this.dom = dom;
    }

    return Wall;

  })();

  JellyCell = (function() {

    function JellyCell(color) {
      this.color = color;
      this.dom = document.createElement('div');
      this.dom.className = 'cell jelly ' + color;
      this.x = 0;
      this.y = 0;
      this.color_master = this;
      this.color_mates = [this];
    }

    JellyCell.prototype.mergeWith = function(other, dir) {
      var borders, cell, other_master, _i, _len, _ref;
      borders = {
        'left': ['borderLeft', 'borderRight'],
        'right': ['borderRight', 'borderLeft'],
        'up': ['borderTop', 'borderBottom'],
        'down': ['borderBottom', 'borderTop']
      };
      this.dom.style[borders[dir][0]] = 'none';
      other.dom.style[borders[dir][1]] = 'none';
      if (other instanceof Wall) this.jelly.immovable = true;
      if (other instanceof JellyCell && this.color === other.color && this.color_master !== other.color_master) {
        other_master = other.color_master;
        _ref = other_master.color_mates;
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          cell = _ref[_i];
          cell.color_master = this.color_master;
        }
        this.color_master.color_mates = this.color_master.color_mates.concat(other_master.color_mates);
      }
      if (other instanceof JellyCell && this.jelly !== other.jelly) {
        return this.jelly.merge(other.jelly);
      }
    };

    return JellyCell;

  })();

  Jelly = (function() {

    function Jelly(stage, cell, x, y) {
      var _this = this;
      this.x = x;
      this.y = y;
      this.dom = document.createElement('div');
      this.updatePosition(this.x, this.y);
      this.dom.className = 'cell jellybox';
      cell.jelly = this;
      this.cells = [cell];
      this.dom.appendChild(cell.dom);
      this.dom.addEventListener('contextmenu', function(e) {
        return stage.trySlide(_this, 1);
      });
      this.dom.addEventListener('click', function(e) {
        return stage.trySlide(_this, -1);
      });
      this.dom.addEventListener('touchstart', function(e) {
        return _this.start = e.touches[0].pageX;
      });
      this.dom.addEventListener('touchmove', function(e) {
        var dx;
        dx = e.touches[0].pageX - _this.start;
        if (Math.abs(dx) > 10) {
          dx = Math.max(Math.min(dx, 1), -1);
          return stage.trySlide(_this, dx);
        }
      });
      this.immovable = false;
    }

    Jelly.prototype.cellCoords = function() {
      var cell, _i, _len, _ref, _results;
      _ref = this.cells;
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        cell = _ref[_i];
        _results.push([this.x + cell.x, this.y + cell.y, cell]);
      }
      return _results;
    };

    Jelly.prototype.updatePosition = function(x, y) {
      this.x = x;
      this.y = y;
      return moveToCell(this.dom, this.x, this.y);
    };

    Jelly.prototype.merge = function(other) {
      var cell, dx, dy, _i, _len, _ref;
      dx = other.x - this.x;
      dy = other.y - this.y;
      _ref = other.cells;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        cell = _ref[_i];
        this.cells.push(cell);
        cell.x += dx;
        cell.y += dy;
        cell.jelly = this;
        moveToCell(cell.dom, cell.x, cell.y);
        this.dom.appendChild(cell.dom);
      }
      if (other.immovable) this.immovable = true;
      other.cells = null;
      other.dom.parentNode.removeChild(other.dom);
    };

    return Jelly;

  })();

  level = parseInt(location.search.substr(1), 10) || 1;

  stage = new Stage(document.getElementById('map'), levels[level - 1]);

  window.stage = stage;

  levelPicker = document.getElementById('level');

  for (i = 1, _ref = levels.length; 1 <= _ref ? i <= _ref : i >= _ref; 1 <= _ref ? i++ : i--) {
    option = document.createElement('option');
    option.value = i;
    option.appendChild(document.createTextNode("Level " + i));
    levelPicker.appendChild(option);
  }

  levelPicker.value = level;

  levelPicker.addEventListener('change', function() {
    return location.search = '?' + levelPicker.value;
  });

  document.getElementById('reset').addEventListener('click', function() {
    stage.dom.innerHTML = '';
    return stage = new Stage(stage.dom, levels[level - 1]);
  });

}).call(this);
