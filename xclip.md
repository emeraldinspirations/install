xclip
=====

The problem:
------------
I wanted to be able to insert a unix timestamp at the current cursor via a
keyboard combination.  I settled for being able to copy the timestamp to the
clipboard and paste it at the current cursor.

What the program does:
----------------------
Allows me to pipe to the clipboard.

Example:
```shell
exec date +%s | tr -d '\n' | xclip -selection c
```

Alternatives Considered:
------------------------
*N/A*

Installation Instructions:
--------------------------
> Note: This step is unnecessary as the program is installed in my
  [i3](https://github.com/emeraldinspirations/install/tree/i3) instructions
```shell
sudo apt-get install xclip
```

Configuration Instructions:
---------------------------
*N/A*
