#!/bin/bash

#########################
#                       #
#   Simple FUNGuild     #
#  Database Downloader  #
#     December 2021     #
#########################


download_date=$( date '+%b-%Y' )

# Database used in FUNGuild.py script
wget 'https://mycoportal.org/fdex/services/api/db_return.php?dbReturn=Yes&pp=1' -O FUNguild_db_mycoportal.$download_date.json

# Database used in Guilds_v1.1.py
wget 'http://www.stbates.org/funguild_db_2.php' -O FUNguild_db_stbates.$download_date.json
grep "taxon" FUNguild_db_stbates.$download_date.json > FUNguild_db_stbates.$download_date.json.temp
rm FUNguild_db_stbates.$download_date.json
mv FUNguild_db_stbates.$download_date.json.temp FUNguild_db_stbates.$download_date.json
sed -i 's/<\/body>//g' FUNguild_db_stbates.$download_date.json
