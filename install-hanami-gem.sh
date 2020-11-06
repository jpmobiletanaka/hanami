#!/bin/bash

echo "INSTALLING JAPANESE TRANSLITERATION GEM [hanami]"
HANAMI="hanami-gem"
MECAB="mecab"

git clone https://github.com/taku910/mecab.git $MECAB
cd $MECAB/mecab
./configure --with-charset=utf8 --enable-utf8-only
make
sudo make install
cd ../..

git clone https://github.com/jpmobiletanaka/hanami.git $HANAMI
cd $HANAMI

tar -C dic/ -zxvf dic/dic.tar.gz
gem build hanami.gemspec
sudo gem install hanami-0.0.2.gem
