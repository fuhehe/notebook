#!/bin/sh
find /home/fuhehe/project/server -name "*.h" -o -name "*.c" -o -name "*.cpp" > cscope.files
cscope -bkq -i cscope.files
ctags -f tags -L cscope.files
