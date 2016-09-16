#!/bin/bash

#This script list all missing videos on kodi library
now=$(date +"%Y-%m-%d_%H-%M-%S");
grep "does not exist" -i ~/.kodi/temp/kodi.log | cut -d"'" -f2 > ~/.kodi/temp/missing.$now.lst
grep "does not exist" -i ~/.kodi/temp/kodi.old.log | cut -d"'" -f2 > ~/.kodi/temp/missing_old.$now.lst
echo "";
echo "Missing videos in this session ~/.kodi/temp/missing.$now.lst";
echo "";
echo "Missing videos in the last session ~/.kodi/temp/missing_old.$now.lst";
echo "";

