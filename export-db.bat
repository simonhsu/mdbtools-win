@echo off

CD C:\Users\randy\mdbtools-win

"C:\Users\randy\mdbtools-win\mdb-json.exe" WSUJ.MDB tab76 | iconv -f utf-8 -t cp1252 | iconv -f BIG5-2003 -t utf-8 > raw-tab76.txt ; sed '1s/^/[/;$!s/$/,/;$s/$/]/' raw-tab76.txt > raw-tab76.json

./mdb-json WSUJ.MDB tab50 > raw-tab50.txt ; sed '1s/^/[/;$!s/$/,/;$s/$/]/' raw-tab50.txt > raw-tab50.json ; ./mdb-json WSUJ.MDB tab71 | iconv -f utf-8 -t cp1252 | iconv -f BIG5-2003 -t utf-8 > raw-tab71.txt ; sed '1s/^/[/;$!s/$/,/;$s/$/]/' raw-tab71.txt > raw-tab71.json ; ./mdb-json WSUJ.MDB tab73 | iconv -f utf-8 -t cp1252 | iconv -f BIG5-2003 -t utf-8 > raw-tab73.txt ; sed '1s/^/[/;$!s/$/,/;$s/$/]/' raw-tab73.txt > raw-tab73.json ; ./mdb-json WSUJ.MDB tab75 | iconv -f utf-8 -t cp1252 | iconv -f BIG5-2003 -t utf-8 > raw-tab75.txt ; sed '1s/^/[/;$!s/$/,/;$s/$/]/' raw-tab75.txt > raw-tab75.json ; ./mdb-json WSUJ.MDB tab76 | iconv -f utf-8 -t cp1252 | iconv -f BIG5-2003 -t utf-8 > raw-tab76.txt ; sed '1s/^/[/;$!s/$/,/;$s/$/]/' raw-tab76.txt > raw-tab76.json