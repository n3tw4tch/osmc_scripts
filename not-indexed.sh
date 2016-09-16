#!/bin/bash

#This script list all not indexed videos on kodi library
now=$(date +"%Y-%m-%d_%H-%M-%S");
grep "won't be added" -i ~/.kodi/temp/kodi.log | cut -d"'" -f2 > ~/.kodi/temp/not_indexed.$now.lst
grep "won't be added" -i ~/.kodi/temp/kodi.old.log | cut -d"'" -f2 > ~/.kodi/temp/not_indexed_old.$now.lst
echo "";
echo "Not indexed videos in this session ~/.kodi/temp/not_indexed.$now.lst";
echo "";
echo "Not indexed videos in the last session ~/.kodi/temp/not_indexed_old.$now.lst";
echo "";

