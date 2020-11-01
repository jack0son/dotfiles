


# Merge file specified with paths relative to source directory

# Adding a / to the source changes the relative path spec for the filter file
# eg rsync jack my/dest
#   - jack/folder will be listed
# vs rsync jack/ my/dest
#   - folder will be listed

# Simple pipeline to check if correct dirs are being excluded

# -a, archive mode: Useful defaults recursive, links etc
# -A, preserve permissions

# trailing "dir_name/***" will match both the directory (as if "dir_name/" had been specified) and everything in the directory (as if "dir_name/**" had been specified).  This behavior was added in version 2.6.7

# Order of includes and excludes is important

# Dry run
rsync -n -aA --filter="merge /home/jack/rsync-merge_filter.txt" --verbose /home/jack/ /media/jack/My\ Passport/Backups/kotys/archive-201101/jack | cut -d'/' -f-2 | sort | uniq -c

rsync -n -aA --filter="merge /home/jack/rsync-merge_filter.txt" --verbose /home/jack/ /media/jack/My\ Passport/Backups/kotys/archive-201101/jack | grep node_mod

# Final
rsync -aA --filter="merge /home/jack/rsync-merge_filter.txt" --info=progress2 /home/jack/ /media/jack/My\ Passport/Backups/kotys/archive-201101/jack 
