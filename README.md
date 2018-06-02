# Common Lisp Makefile Template

This is a simple Makefile template for creating a standalone
executable Common Lisp image.

## Getting Started

Copy the Makefile to your project folder, then set the value of the
`SYSNAME` variable in the Makefile to be the name of the ASDF system
your wish to build, for example:

``` makefile
SYSNAME = your-project-system-name
```

To build the image, simple invoke the Makefile:

``` shell
$ make
```

You can change the name of the image by changing the `TARGET`
variable. Also, the name of the entry/top-level function (the default
being `main`) can be changed via the `ENTRYFUNC` variable.

## Dependencies

* [SBCL](http://www.sbcl.org)
* [Quicklisp](https://www.quicklisp.org)
* [Buildapp](https://www.xach.com/lisp/buildapp/)

## Author & Maintainer

Smith Dhumbumroong (<zodmaner@gmail.com>)

## License

Public Domain
