# scratch exploration platformer
A somewhat advanced platformer written in the very simple programming
language aimed at children, [Scratch][scratch].

Scratch uses visual blocks to code, and has a lot of other limitations
and performance problems, so I tried writing a game using real-world
game development techniques such as a Game Loop, update and render
functions, and a camera. After I made a mini-engine, I wrote a
2D Platformer with a large map (384x32 tiles, but width is expandable),
and many stars hidden that you can try to collect (SMB64-style, but
less effects). There's also an external level editor, by using a
plain text file and a NodeJS program to convert it's format into
something the scratch program can read, and also handles partial
auto-tiling. The game can be played [here][GAME]

Written for the "Hack the Northeast" Hackathon. It was originally in
a team of four but no one else did anything; that is why I (Dave) do
not currently own the repository.

[scratch]: https://en.wikipedia.org/wiki/Scratch_(programming_language)
[GAME]: https://scratch.mit.edu/projects/402547160

## dependencies used
- scratch
- nodejs
- bash scripting

All the art, code, and (lack of) music was created by Dave Caruso.

## how to develop with
- Be on UNIX (Mac or Linux) or Windows WSL
- Run `./pack.sh` to pack src to an sb3 file.
- Run `./unpack.sh` to unpack an sb3 file back to src.
- Don't touch source manually unless merging or something.

As a shortcut, you can use `./import-downloads.sh` to copy project.sb3
from your ~/Downloads folder and run `./pack.sh`.

## how to leveledit
- Edit level.txt
- Run `./level-edit.js pack` to pack the level.raw, which can be loaded via the Tilemap Sprite.

You can also unpack raw level codes, by using the export function in the Tilemap Sprite.
- Put the raw code in level.raw
- Run `./level-edit.js unpack` to do the reverse of pack

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

| Checkpoint Column

r Inactive Red Block
R Active Red Block
f Red Switch (remember this as key under R)
g Inactive Green Block
G Active Green Block
b Green Switch (remember this as key under B)

O Star
```

## future work
It would be cool to have a larger level with more things to explore,
and do more stuff with onscreen sprite clones; Right now it's only
the player sprite clone.

I'd also like to look into more git compatibility with scratch. This
system works, but I'm not sure how merges will happen, I never was
able to test the conflict.

The final thing that would be cool to look at would be the file format
of Scratch 3. I see that each sprite, variable, event, costume, gets
a unique id that is kind of unreadable, especially for image and audio
filenames. It would be cool to have a "deobfuscation tool" to rename
all the long ids of assets to what they are in the actual project, and
get a nicer source view.
