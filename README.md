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
