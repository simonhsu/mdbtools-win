@echo off


@REM WSUJ 一定要放英文路徑名稱的資料夾才找得到，好煩
@REM 要先修改筠電腦上的微笑出帳名稱 先改為英文名字

@REM 先用 mdbtools-win.exe , export WSUJ.MDB 內的所有需要的 table, 然後轉成 5 個 json 檔案


"C:\Users\randy\mdbtools-win\mdb-json.exe" "C:\Users\randy\smile-data\WSUJ.MDB" tab50 > raw-tab50.txt

"C:\Program Files\Git\usr\bin\sed.exe" "1s/^/[/;$!s/$/,/;$s/$/]/" raw-tab50.txt > raw-tab50.json



"C:\Users\randy\mdbtools-win\mdb-json.exe" "C:\Users\randy\smile-data\WSUJ.MDB" tab71 | "C:\Program Files\Git\usr\bin\iconv.exe" -f "utf-8" -t "cp1252" | "C:\Program Files\Git\usr\bin\iconv.exe" -f "BIG5-2003" -t "utf-8" > raw-tab71.txt 

"C:\Program Files\Git\usr\bin\sed.exe" "1s/^/[/;$!s/$/,/;$s/$/]/" raw-tab71.txt > raw-tab71.json



"C:\Users\randy\mdbtools-win\mdb-json.exe" "C:\Users\randy\smile-data\WSUJ.MDB" tab73 | "C:\Program Files\Git\usr\bin\iconv.exe" -f "utf-8" -t "cp1252" | "C:\Program Files\Git\usr\bin\iconv.exe" -f "BIG5-2003" -t "utf-8" > raw-tab73.txt 

"C:\Program Files\Git\usr\bin\sed.exe" "1s/^/[/;$!s/$/,/;$s/$/]/" raw-tab73.txt > raw-tab73.json



"C:\Users\randy\mdbtools-win\mdb-json.exe" "C:\Users\randy\smile-data\WSUJ.MDB" tab75 | "C:\Program Files\Git\usr\bin\iconv.exe" -f "utf-8" -t "cp1252" | "C:\Program Files\Git\usr\bin\iconv.exe" -f "BIG5-2003" -t "utf-8" > raw-tab75.txt 

"C:\Program Files\Git\usr\bin\sed.exe" "1s/^/[/;$!s/$/,/;$s/$/]/" raw-tab75.txt > raw-tab75.json



"C:\Users\randy\mdbtools-win\mdb-json.exe" "C:\Users\randy\smile-data\WSUJ.MDB" tab76 | "C:\Program Files\Git\usr\bin\iconv.exe" -f "utf-8" -t "cp1252" | "C:\Program Files\Git\usr\bin\iconv.exe" -f "BIG5-2003" -t "utf-8" > raw-tab76.txt 

"C:\Program Files\Git\usr\bin\sed.exe" "1s/^/[/;$!s/$/,/;$s/$/]/" raw-tab76.txt > raw-tab76.json


@REM 將所有產出的 json copy 到 smile project 內的資料夾


COPY *.json "C:\Users\randy\smile-project"

@REM 切換到 smile project 目錄，準備篩選月份，及整合成一個大的 json 檔案

CD "C:\Users\randy\smile-project"

"C:\Users\randy\AppData\Local\Programs\Python\Python312\python.exe" filter_json.py


@REM 複製產出的檔案到查詢系統內


COPY output-smiledata.json "C:\Users\randy\ys-dashboard-test\src\assets\csv\"


pause