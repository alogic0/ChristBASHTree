# ChristBASHTree

You know, a Christmas tree on Bash :)

Cloned from the [sergiolepore repository](https://github.com/sergiolepore/ChristBASHTree)

![Screenshot](./screen.gif?raw=true)

# Usage

```
wget https://raw.githubusercontent.com/alogic0/ChristBASHTree/master/christmas.sh
bash christmas.sh
```
Git clone and execute:

```
git clone https://github.com/alogic0/ChristBASHTree.git && cd ./ChristBASHTree && bash christmas.sh
```

Docker:
```
docker pull alogic0/christbashtree:latest
docker run -it alogic0/christbashtree:latest
```

__Enjoy!__

# FAQ

## How can I stop it?

Strike `Ctrl+c`.

## License?

[Do what you want with it](./LICENSE) license.

## Will it run under _whatever-OS_?

Only GNU/Linux and Unix flavors.

## What OS are you using?

Ubuntu 

## And your color palette?

Custom, based on Atom's "One Dark" theme.

## Can I make it larger/shorter?

Yes. Change `tHeight` parameter inside the script.

## How to create animated screenshot?

1. Start grabbing the screen
   ```
   ffmpeg -video_size 800x568 -framerate 25 -f x11grab -i :0.0+300,75 output.mp4
   ```
2. Run `christmas.sh`. Stop grabbing the screen, by hitting `Ctrl+c`, when you ready.
3. Determine start and stop point where to cut video (using `ffplay`), then cut.
   ```
   ffmpeg -i output.mp4 -ss 00:00:12.20 -to 00:00:53.0 -c copy screen.mp4
   ```
4. Create _.gif_ file   
   ```
   ffmpeg -y -i screen.mp4 -vf fps=10,scale=800:-1:flags=lanczos,palettegen palette.png
   ffmpeg -i screen.mp4 -i palette.png -filter_complex "fps=10,scale=800:-1:flags=lanczos[x];[x][1:v]paletteuse" screen.gif
   ```

## Contributors

[Here](https://github.com/alogic0/ChristBASHTree/graphs/contributors)

## Notes

http://subinsb.com/bash-animated-christmas-tree/

