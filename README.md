# WIP: This is readme driven development in progress. They tool may not yet do what the readme says.

Vagrant based development environment that allows you to develop multiple projects in one VM.

It autodetects dependencies a bit like heroku, uses docker for services (like postgres) and can cache
both code and data for quicker installs.

## Setting up your organizations devbox repo

Set up your devbox repo.

    mkdir devbox && cd devbox && git clone git@github.com:joakimk/devbox_tools.git && devbox_tools/bootstrap
    
Then:

* Customize "Vagrantfile" if needed (change box image, etc). The base box must have docker support. See http://www.vagrantbox.es/.
* Customize TOOLS\_VERSION in "start" (if you want to lock down the devbox_tools version)

And finally:

    ./start

If it works as intended, you can now push your devbox repo somewhere so you can install it on other computers.

## Running the VM on other computers

    git clone git@github.com:YOUR\_ORG/devbox.git && cd devbox && ./start.sh

## Daily workflow inside the VM

When you enter a project devbox\_tools will attempt to setup correct environment variables.

    cd /path/to/project
    dev # install dependencies
    # go develop

If a project is setup, cd-ing into it will scope you to that projects dependencies. Things should just work.

    cd /path/to/project
    # go develop

## Developing devbox\_tools

Change things, run tests, send pull request.

    ./test

## Credits and license

By [Joakim Kolsjö](https://github.com/joakimk) under the MIT license:

>  Copyright © 2015 Joakim Kolsjö
>
>  Permission is hereby granted, free of charge, to any person obtaining a copy
>  of this software and associated documentation files (the "Software"), to deal
>  in the Software without restriction, including without limitation the rights
>  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
>  copies of the Software, and to permit persons to whom the Software is
>  furnished to do so, subject to the following conditions:
>
>  The above copyright notice and this permission notice shall be included in
>  all copies or substantial portions of the Software.
>
>  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
>  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
>  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
>  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
>  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
>  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
>  THE SOFTWARE.
