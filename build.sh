#!/bin/sh
# 由 ../纏繞畫步驟示範.html 產生 GitHub Pages 用的 index.html
SRC="$(dirname "$0")/../纏繞畫步驟示範.html"
OUT="$(dirname "$0")/index.html"
{
  printf '%s\n' '<!doctype html>' '<html lang="zh-Hant">' '<head>' '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">' \
    '<meta name="description" content="纏繞畫一步一步的動作示範：方形、圓形、A4 各 12 課，13 個圖樣練習，老師可自己設計步驟動畫，下載影片與 A4 學習單。">' \
    '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%}</style>' \
    '</head>' '<body>'
  grep -v -e '^<meta charset="utf-8">$' -e '^<meta name="viewport"' "$SRC"
  printf '%s\n' '</body>' '</html>'
} > "$OUT"
