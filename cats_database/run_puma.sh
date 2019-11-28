#!/bin/bash

rails s -b 'ssl://0.0.0.0:3000?cert=/home/jl/.acme.sh/racer.vmin.cz/fullchain.cer&&key=/home/jl/.acme.sh/racer.vmin.cz/racer.vmin.cz.key'
