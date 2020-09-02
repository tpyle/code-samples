#!/bin/bash

echo $@ | tr ' ' '\n' | tac | tr '\n' ' '
