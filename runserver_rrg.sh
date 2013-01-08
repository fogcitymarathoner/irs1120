#!/bin/bash
rvm use 1.9.3
rvm gemset use irs1120
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/pgsql910/lib
rails server -p 3334
