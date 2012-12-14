#!/bin/bash
rvm use ruby-1.9.2
rvm gemset use irs1120
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/pgsql921/lib
rails server -p 3334
