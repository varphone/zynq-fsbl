Zynq FSBL
=========

Fist stage boot loader for Zynq 7000 SoC.

Project Layout
--------------

* `board` - Folder to store all board spec files.
* `src` - Folder to store the fsbl source files.

Building
--------

Use `BOARD` to specified which board to build, available boards:

* `zylaser` -  Zylaser Production.
* `zylaser-ax7z02` - Zylaser Development on AX7Z02.

```sh
make BOARD=... all
```

When build completed, the executable binary will output to `src/executable.elf`.
