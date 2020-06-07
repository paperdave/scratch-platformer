# scratch-test-htne
possibly the submission for htne or just a space for us to experiment with collaboration
 
 :)

## how to develop on scratch
- Run `./pack.sh` to pack src to an sb3 file
- Run `./unpack.sh` to unpack an sb3 file back to src
- Don't touch source manually unless merging

## how to leveledit
- Edit level.txt
- Run `node level-edit.js pack` to pack the level.raw, which can be loaded via the Tilemap Sprite.

### level editor symbols
```
_ Blank Space

# Solid
^ One Way Solid (Up)
< One Way Solid (Left)
> One Way Solid (Right)
v One Way Solid (Down)

x Death Floor
X Death Block
```
