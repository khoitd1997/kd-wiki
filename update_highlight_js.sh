#!/bin/bash
# expect argument to be the highlight.js source release zip file

set -e

if [ "$#" -ne 1 ]; then
    echo "You must specify the path to highlight.js zip file"
    exit 1
fi

root_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
build_dir="${root_dir}/highlight_js_build"

rm -rf ${build_dir}
mkdir -p ${build_dir}
cd ${build_dir}

unzip -o $1 -d .
cd highlight.js-*

npm install
node tools/build.js
cp build/highlight.min.js ${root_dir}/theme/highlight.js
cp src/styles/brown-paper.css ${root_dir}/theme/highlight.css