#!/bin/bash

#########################
#                       #
#   Simple FUNGuild     #
#  Database Downloader  #
#     December 2021     #
#########################


download_date=$( date '+%b-%Y' )
wget 'https://mycoportal.org/fdex/services/api/db_return.php?dbReturn=Yes&pp=1' -O FUNguild_db_mycoportal.$download_date.json
