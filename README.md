# Chrome Headless Container

A container for headless front-end Javascript testing.

This container aims to provide a testing environment similar to what [Google outlined][1] when it initially announced Chrome Headless.


It also provides several other tools related, including:

- [karma-chrome-launcher][2]
- `google-closure-compiler-js`
- `babel`
- `gulp`
- `grunt`
- `istanbul`
- `nyc`


## Usage

The primary use-case I'm solving for is within GitLab CI, wherein containers
are mainly used to establish a tooling environment, rather than running specific tasks or services inherent to the container (i.e. entrypoints are irrelevant). As such, this container really just installs tools appropriately.


## Contributions

All contributions are welcome, especially in the way of updating the container to keep current with new releases of the tooling. Please file issues and/or Pull Requests accordingly.


[1]: https://developers.google.com/web/updates/2017/06/headless-karma-mocha-chai
[2]: https://github.com/karma-runner/karma-chrome-launcher