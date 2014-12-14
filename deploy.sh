#!/bin/bash
git add -A
read -p "Commit Message : " desc
git commit -m "$desc"
git push deploy master
git push origin master
