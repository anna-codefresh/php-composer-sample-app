# Transferring a Php Application via FTP
![codefresh](flat-logo.png)

This is a simple application that displays a Php timer.  The purpose of this sample application is to guide you on the process of transferring your applications via ftp using a Codefresh pipeline.

## Prerequisites

- A [free Codefresh account](https://codefresh.io/docs/docs/getting-started/create-a-codefresh-account/)
- A remote machine with an ftp server and ssh setup (ensure that your ftp directory, I.e., `/srv/ftp/pub` has the proper write permissions for the ftp user) 

## Build Locally

`composer install --ignore-platform-reqs --no-interaction --no-plugins --no-scripts --prefer-dist`

## Build in Codefresh

Example pipeline:

* [Simple pipeline](codefresh.yml)

Read https://codefresh.io/docs//docs/yaml-examples/examples/transferring-php-ftp/ for more details.



