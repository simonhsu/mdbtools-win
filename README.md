

./mdb-json WSUJ.MDB tab50 > raw-tab50.txt ; sed '1s/^/[/;$!s/$/,/;$s/$/]/' raw-tab50.txt > raw-tab50.json
./mdb-json WSUJ.MDB tab71 | iconv -f utf-8 -t cp1252 | iconv -f BIG5-2003 -t utf-8 > raw-tab71.txt ; sed '1s/^/[/;$!s/$/,/;$s/$/]/' raw-tab71.txt > raw-tab71.json


# MDBTools built for 32-bit Windows using MSYS2

_Thanks to <https://github.com/lsgunth/mdbtools-win> for getting this started!_

## Compiling Notes

_I had the biggest struggles trying to figure out how to get this to compile, so if anyone has a better process using MSYS2 directly, please let me know._

**This is what finally worked: <https://github.com/mdbtools/mdbtools/issues/107#issuecomment-815174567>**

- Read <https://github.com/mdbtools/mdbtools/blob/dev/README.md>
- Clone <https://github.com/git-for-windows/git-sdk-64>
- Clone <https://github.com/mdbtools/mdbtools> into `git-sdk-64` folder
- Launch MinGW32 (I just ran `mingw32` from the `git-sdk-64` folder)

```sh
cd mdbtools
autoreconf -i -f
./configure
make all
make install    # may not actually be necessary
```

- Test some of the commands inside MinGW32 to make sure they function; `mdb-ver -M` is a reasonable one

## Collecting Relevant Files

_Still in MingW32 for this_

```sh
cd
mkdir /mdbtools-win
cp -p /mdbtools/src/COPYING* /mdbtools-win/
cp -p /mdbtools/src/util/.libs/*.exe /mdbtools-win/
cp -p /mdbtools/src/sql/.libs/*.dll /mdbtools-win/
cp -p /mdbtools/src/libmdb/.libs/*.dll /mdbtools-win/
cp -p /mingw32/bin/libgcc*.dll /mdbtools-win/
cp -p /mingw32/bin/libiconv*.dll /mdbtools-win/
cp -p /mingw32/bin/libreadline*.dll /mdbtools-win/
cp -p /mingw32/bin/libtermcap*.dll /mdbtools-win/
cp -p /mingw32/bin/libwinpthread*.dll /mdbtools-win/
```

Copy to where you want and use for good.



./mdb-json WSUJ.MDB tab50 > raw-tab50.txt ; sed '1s/^/[/;$!s/$/,/;$s/$/]/' raw-tab50.txt > raw-tab50.json


./mdb-json WSUJ.MDB tab71 | iconv -f utf-8 -t cp1252 | iconv -f BIG5-2003 -t utf-8 > raw-tab71.txt ; sed '1s/^/[/;$!s/$/,/;$s/$/]/' raw-tab71.txt > raw-tab71.json


"C:\Program Files\Git\usr\bin\iconv.exe"



---

範例的 bat

@echo off

CD C:\Users\simon\ys-dashboard\downloadcsv




"C:\Program Files\Git\mingw64\bin\wget.exe" "https://docs.google.com/spreadsheets/d/e/2PACX-1vQWtQXnkGEqIvkfQtzJjfG04aEoBEEX9UrBnuAYTc7o2r7PjeDahhI2lbKx_IFCcyDo1GwrUUYVCucQ/pub?gid=0&single=true&output=csv" -O "allcars.csv"


"C:\Program Files\Git\mingw64\bin\wget.exe" "https://docs.google.com/spreadsheets/d/e/2PACX-1vSGooecTQaPb3-JrGJUvZWVSaSQn2bUwfwT30PNqhOk0iiTmFkACRQmcfyF5xLqyMSFFI9seIZgj006/pub?gid=0&single=true&output=csv" -O "carinsurance.csv"


"C:\Program Files\Git\mingw64\bin\wget.exe" "https://docs.google.com/spreadsheets/d/e/2PACX-1vRlZMp9eMH0r7zva4GFZRUDxmrREwULZGVPU_icxpH2SYK4ZA5hIbSTV1537IiczSX94fiXk0MKIPYB/pub?gid=0&single=true&output=csv" -O "checkdesk.csv"


"C:\Program Files\Git\mingw64\bin\wget.exe" "https://docs.google.com/spreadsheets/d/e/2PACX-1vT0qnaulrS0_Cln5fNWx70xh8Azb2IrVCXPWdWZVljy043jNGQfnvUKBQcB1eGjLQ-VncXIz0hmIJRh/pub?gid=751335063&single=true&output=csv" -O "checkinvoice.csv"


"C:\Program Files\Git\mingw64\bin\wget.exe" "https://docs.google.com/spreadsheets/d/e/2PACX-1vRhymumykVDxO_WmB8jKj_t1I14faufVnzHAw9rxMzYiXpF1CuV1AWeuwixrnmnOeL4Y7_xt9fiAqrw/pub?gid=1868011144&single=true&output=csv" -O "checkloan.csv"


"C:\Program Files\Git\mingw64\bin\wget.exe" "https://docs.google.com/spreadsheets/d/e/2PACX-1vSpquKHN5drHnFTAASuKaHnIa7jfTApOQ9Je4dVSZmGQmgHbMi7LrcRZF7VC1YyMQJbOOqD7bgRTh5O/pub?gid=0&single=true&output=csv" -O "generalcontacts.csv"


COPY *.csv "../src/assets/csv"



DIR "../src/assets/csv" > "../src/assets/csv/updates.log"
