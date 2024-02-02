!#/bin/bash
# Grab the version of Minecraft that is currently running
ls minecraft* | awk -F"." 'OFS="." {print $2,$3,$4}'