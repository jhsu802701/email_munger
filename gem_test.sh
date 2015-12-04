#!/bin/bash

gem uninstall email_munger
bin/setup
echo '-----------------'
echo 'BEGIN TESTING gem'
rake
echo 'FINISHED TESTING gem'
echo '--------------------'
