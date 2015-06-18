Heroku buildpack: add-files
===========================

This is a [Heroku buildpack][buildpack] that adds files to the build (e.g. required libraries), and is meant to be used as a [multi-buildpack][multi].

[buildpack]: http://devcenter.heroku.com/articles/buildpacks
[multi]: https://github.com/ddollar/heroku-buildpack-multi

The buildpack sources the scripts in /conf, which should copy the files in /files to their desired location, and export any environment variables.
