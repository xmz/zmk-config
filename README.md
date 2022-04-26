# Setup

Running in a new .devcontainer:
```
west init -l app/
west update
```


## Use split-encoder-branch

``` 
git remote add infused-kim https://github.com/infused-kim/zmk.git
git checkout -b my-changes/split-encoder remotes/infused-kim/my-changes/split-encoder
git rebase origin/main
```


# Layers

## Base

```
|  ESC  |   Q   |   W   |   E   |   R   |   T   |                                        |   Y   |   U   |   I   |   O   |   P   |  MUTE |
|  TAB  |   A   |   S   |   D   |   F   |   G   |                                        |   H   |   J   |   K   |   L   |   Ö   |   Ä   |
|  CTRL |   Z   |   X   |   C   |   V   |   B   | SYM/  | SHIFT |        | SHIFT/|  RET  |   N   |   M   |   ,   |   .   |   -   |  CTRL |
                        |  SYM  |  ALT  |  NUM  | SPACE | BSPC  |        | SPACE |  RET  |  DEL  |  WIN  |  ALT  |
```

## Symbols

```
|  ESC  |   "   |   /   |   \   |   (   |   )   |                                        | PG_UP | HOME  |   UP  |  END  |  INS  |  PLAY |
|  TAB  |   '   |   @   |   |   |   {   |   }   |                                        | PG_DN | LEFT  |  DOWN | RIGHT |   *   |   Å   |
|  CTRL |       |   <   |   >   |   [   |   ]   | SYM/  | SHIFT |        | SHIFT/|  RET  |   =   |   &   |   ?   |   !   |       |  CTRL |
                        |  SYM  |  ALT  |  NUM  | SPACE | BSPC  |        | SPACE |  RET  |  DEL  |  WIN  | R-ALT |

```

## Numbers/FN

```
|   1   |   2   |   3   |   4   |   5   |   6   |                                        |   7   |   8   |   9   |   0   |   +   |  MUTE |
|  F1   |  F2   |  F3   |  F4   |  F5   |  F6   |                                        |  F7   |  F8   |  F9   |  F10  |  F11  |  F12  |
|  CTRL |       |       |       |       |       | SYM/  | SHIFT |        | SHIFT/|  RET  |       |       |       |       |       |  CTRL |
                        |  SYM  |  ALT  |  NUM  | SPACE | BSPC  |        | SPACE |  RET  |  DEL  |  WIN  | R-ALT |
```

## Command

```
|  XXX  |  BT 1 |  BT 2 | BT 3  | BT 4  | BT 5  |                                        |       |       |       |       |       |       |
| BT CLR|       |       |       |       |       |                                        |       |       |       |       |       |       |
|  USB  |       |       |       |       |       |EXT PWR|       |        |       |       |       |       |       |       |       |       |
                        |       |       |       |  TOG  |       |        |       |       |       |       |       |
```