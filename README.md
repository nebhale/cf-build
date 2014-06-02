# `cf-build`
[![Build Status](https://travis-ci.org/nebhale/cf-build.svg)](https://travis-ci.org/nebhale/cf-build)

`cf-build` is a [cfenv](https://github.com/nebhale/cfenv) plugin that provides an `cfenv create` command to create different Cloud Foundry environments on UNIX-like systems.

## Installation

### Installing as a `cfenv` plugin (recommended)

Installing `cf-build` as an `cfenv` plugin will give you access to the `cfenv create` command.

    git clone https://github.com/nebhale/cf-build.git ~/.cfenv/plugins/cf-build

This will install the latest development version of `cf-build` into the `~/.cfenv/plugins/cf-build` directory. From that directory, you can check out a specific release tag. To update `cf-build`, run `git pull` to download the
latest changes.

### Installing with Homebrew (for OS X users)

Mac OS X users can install `cf-build` with the [Homebrew](http://brew.sh) package manager. If you have `cfenv` installed, you will be able to use the `cfenv create` command.

*This is the recommended method of installation if you installed `cfenv` with Homebrew.*

    brew tap nebhale/personal
    brew install cf-build

Or, if you would like to install the latest development release:

    brew install --HEAD cf-build


## Usage

### Using `cfenv create` with `cfenv`

To create a Cloud Foundry environment for use with `cfenv`, run `cfenv create` with the exact name of the environment you want to create. For example,

    cfenv create development

Cloud Foundry environments will be created in a directory of the same name under `~/.cfenv/environments`.

### License

(The MIT License)

Copyright (c) 2014 Ben Hale

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
