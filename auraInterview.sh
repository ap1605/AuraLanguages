#!/bin/bash

mkdir -r prj

gem install github-linguist

git clone https://github.com/lsst-it/lsst-control.git

cd lsst-control


github-linguistic > ../results.txt

ruby assessment.rb

open result.txt