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
|TAB/LSH|   A   |   S   |   D   |   F   |   G   |                                        |   H   |   J   |   K   |   L   |   Ö   |  Ä/Å  |
|CTRL/< |   Z   |   X   |   C   |   V   |   B   | SHIFT | SYM/  |        |  RET  | SHIFT/|   N   |   M   |   ,   |   .   |   -   |  CTRL |
                        |  SYM  |  ALT  |  NUM  | BSPC  | SPACE |        |  RET  | SPACE |DEL/SYM|  WIN  |  ALT  |
```

## Game

```
|  ESC  |   T   |   Q   |   C   |   E   |   R   |                                        |       |       |   UP  |       |       |       |
| LSHIFT|   G   |   A   |   W   |   D   |   F   |                                        |       | RIGHT |  DOWN |  LEFT |       |       |
|  CTRL |   Z   |   X   |   S   |   V   |   B   |       |  RET  |        |  RET  |       |       |       |       |       |       |       |
                        |       |       | SPACE | SPACE |  RET  |        |  RET  |       |       |       |       |
```

## Symbols

```
|  TAB  |   \   |   /   |   "   |   (   |   )   |                                        | PG_UP | HOME  |   UP  |  END  |  INS  |  PLAY |
| SHIFT |   @   |   `   |   '   |   {   |   }   |                                        | PG_DN | LEFT  |  DOWN | RIGHT |   *   |   ~   |
|  CTRL |   |   |   <   |   >   |   [   |   ]   | SHIFT | SYM/  |        |  RET  | SHIFT/|   =   |   &   |   ?   |   !   |   +   |   ^   |
                        |  SYM  |  ALT  |  NUM  | BSPC  | SPACE |        |  RET  | SPACE |DEL/SYM|  WIN  |  ALT  |
```

## Numbers/FN

```
|   1   |   2   |   3   |   4   |   5   |   6   |                                        |   7   |   8   |   9   |   0   |   +   |  MUTE |
|  F1   |  F2   |  F3   |  F4   |  F5   |  F6   |                                        |  F7   |  F8   |  F9   |  F10  |  F11  |  F12  |
|  CTRL |       |       |       |       |       | SHIFT | SYM/  |        |  RET  | SHIFT/|       |       |       |       |       |  CTRL |
                        |  SYM  |  ALT  |  NUM  | BSPC  | SPACE |        |  RET  | SPACE |DEL/SYM|  WIN  |  ALT  |
```

## Command

```
|  XXX  |  BT 1 |  BT 2 | BT 3  | BT 4  | BT 5  |                                        |  STD  | SVORAK| COLEM | WORKM |       |       |
| BT CLR|       |       |       |       |       |                                        |  GAME |       |       |       |       |       |
|  USB  |       |       |       |       |       |EXT PWR|       |        |       |       |       |       |       |       |       |       |
                        |       |       |       |  TOG  |       |        |       |       |       |       |       |
```