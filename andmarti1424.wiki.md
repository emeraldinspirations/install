# Ubuntu with XLSX import & export
> Source: <https://github.com/andmarti1424/sc-im/wiki/Ubuntu-with-XLSX-import-%26-export/_edit>

Start by installing all required dependencies.

```
$ sudo apt-get install bison libncurses5-dev libncursesw5-dev libxml2-dev libzip-dev

$ git clone https://github.com/jmcnamara/libxlsxwriter.git
$ cd libxlsxwriter/
$ make
$ sudo make install
```

At this point, it is important to refresh the dynamic link library cache:
```
$ sudo ldconfig
```

Proceed with downloading and compiling sc-im.
```
$ cd ..
$ git clone https://github.com/andmarti1424/sc-im.git
$ cd sc-im/src
$ make
$ sudo make install
```

Type `sc-im` at the command line prompt to run the program.

For legacy `.xls` file reading support, please refer to [this wiki page](https://github.com/andmarti1424/sc-im/wiki/Ubuntu-16.04.1-with-libxlsreader).

## Configuration

The file `~/.scimrc` contains configuration data. Here is an example.

    set autocalc
    set numeric
    set numeric_decimal=0
    set overlap
    set xlsx_readformulas
    
Other configuration variables are listed in the [help file](https://raw.githubusercontent.com/andmarti1424/sc-im/freeze/src/doc).
