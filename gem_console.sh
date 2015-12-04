#!/bin/bash

gem uninstall email_munger
bin/setup
bin/console
