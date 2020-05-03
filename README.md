# Personal Wiki

Personal wiki for keeping notes on various things.

## Development Workflow

The wiki uses [mdbook](1) to build html from markdown files. The recommended workflow is:

```shell
# Assume in root directory of the repo

mdbook serve # book should have hot-reload at localhost:3000, can start editting now
```

NOTE: Strongly recommend using private tab since the webpage caches a lot of things(like the theme the user chooses on previous build)

## Syntax Highlighting Notes

Mdbook uses ```highlight.js``` for syntax highlighting, the default bundle may not contain languages such as ```CMake``` so go [here](2) to download the newest zip release(it should support all languages), then run the ```update_highlight_js.sh``` script with the path to the zip file to update ```highlight.js```.

```shell
./update_highlight_js.sh ~/Downloads/highlight.js-10.0.1.zip
```

[1]: https://github.com/rust-lang/mdBook
[2]: https://github.com/highlightjs/highlight.js/releases
