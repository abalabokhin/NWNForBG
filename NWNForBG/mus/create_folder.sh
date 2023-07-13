#!/bin/bash

for x in ./*.mus; do
  mkdir "${x%.*}"
done
