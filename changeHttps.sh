#!/bin/bash
grep -rl "http:\/\/" . | xargs sed -i "" 's/http:\/\//https:\/\//g'