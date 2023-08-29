#!/bin/bash


git clone https://github.com/lsst-it/lsst-control.git

ruby -r "./assesmentSolved.rb" -e "Language.new.languages './lsst-control'"

open result.txt

ruby -r "./unitTest.rb" -e "UnTest.new.unit_test1 './lsst-control'"
