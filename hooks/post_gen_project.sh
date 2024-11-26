#!/bin/sh

git init
{{cookiecutter.build_tool}} install

git add -A
git commit -m "Initial commit"
