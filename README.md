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
|  ESC  |  Q  |  W  |  E   |  R   |  T   |                                          |  Y   |  U    |  I    |  O   |   P  |      |
|  TAB  |  A  |  S  |  D   |  F   |  G   |                                          |  H   |  J    |  K    |  L   |   Ö  |   Ä  |
| SHIFT |  Z  |  X  |  C   |  V   |  B   |  SPACE  | L SHIFT |  |  SHIFT/ |   RET   |  N   |  M    |  ,    |  .   |   -  | CTRL |
                    | SYM  | ALT  | NUM  |  SPACE  |  BSPC   |  |  SPACE  |   RET   | DEL  |  WIN  | R-ALT |
```

## Symbols

```
|  ESC  |  "  |  /  |  (  |  )  |  \  |                                          | PG_UP| HOME |  UP  |  END  |  INS | PLAY |
|  TAB  |  A  |  S  |  {  |  }  |  G  |                                          | PG_DN| LEFT | DOWN | RIGHT |   Ö  |   *  |
| SHIFT |  Z  |  X  |  [  |  ]  |  B  |  SPACE  | L SHIFT |  |  SHIFT/ |   RET   |  N   |  M    |  ,    |  .   |   /   | CTRL |
                    | SYM | ALT | NUM |  SPACE  |  BSPC   |  |  SPACE  |   RET   | DEL  |  WIN  | R-ALT |
```