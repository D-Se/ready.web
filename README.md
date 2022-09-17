<center>
# ![](site/images/R-logo.svg){width="70"}eady  
learn how to **do things** with R.
</center>

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![code size](https://img.shields.io/github/languages/code-size/D-Se/ready.svg)](https://github.com/D-Se/ready)
<!-- badges: end -->

* [Get started][]
* [Documentation][]
* [Frequently asked questions][GitHub Discussions]

## :package: Installation

The package and website are currently **under construction :construction:**. 

1. Install all necessary dependencies

   ```r
   remotes::install_github("D-Se/ready.web", dependencies = TRUE)
   ```
1. Install [quarto](https://quarto.org/docs/get-started/)

1. To build the site, run one of the following commands:

### Using `bash`

   ```bash
   # HTML
   quarto.cmd render site/ --to html

   # PDF
   quarto.cmd render site/ --to pdf
   ```
### Using a local server
Alternatively, you "serve" the site via a local server:

```bash
quarto.cmd preview site/
```

The command above starts a service which automatically (re-)compiles the book sources in the background whenever a file is modified. The server can be closed via <kbd>Ctrl</kbd> + <kbd>C</kbd>.

### Using Makefile

Alternatively, you can use the provided `Makefile` (c.f. see `make help`).
This way, you can

- install dependencies
- build the HTML site -> `make html`
- build the PDF site -> `make pdf`


[Get started]: https://google.com
[Documentation]: https://google.com
[new-issue]: https://github.com/D-Se/ready/issues/new/choose
[FAQ]: https://google.com
[GitHub Discussions]: https://github.com/D-Se/ready/discussions
