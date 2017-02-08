# Windows Bash Starter

This repository contains a `.cmd` (Windows Batch) file which makes it easy
to invoke a bash script in Windows (given bash is installed somehow).

The file is: `run-bash.cmd`

It is suppose to be a template to you *copy* into (and adapt to) your own project.
It's suppose to work out of the box - without requiring the user to setup 
environment variables or the like.

One of the main purposes for this is to be able to provide a "shared" script
between Windows and Linux/macOS - like `mytools.cmd` and `mytools.sh`.

Currently supported bash "packages":

* [Git for Windows](https://git-for-windows.github.io/) (easy to install)
* Bash on `%PATH%`
