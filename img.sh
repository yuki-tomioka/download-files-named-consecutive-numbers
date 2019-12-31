#!/bin/sh

# そのままだとhttps://example.com/pc/hoge/img_1.jpgからhttps://example.com/pc/hoge/img_10.jpgまでをDLします

# 対象とするドメインを指定
url="https://example.com"
# 対象とするディレクトリを指定
dir="/pc/hoge/"
# 対象とするファイル名を指定
file="img_"
# 対象とするファイル名の連番の開始数値を指定
start=1
# 対象とするファイル名の連番の終了数値を指定
end=10
# 対象とするファイル形式を指定
ex=".jpg"

cd images

while [ $start -le $end ]
  do
  curl -O $url$dir$file$start$ex
  start=`expr $start + 1`
done
