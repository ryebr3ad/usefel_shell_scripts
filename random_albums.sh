# This is a loose script but works based on how I organize my Music files.
#
# Music:
# _________
# random_albums.sh
# /Artist One
# /Artist Two
# ...
#
# 
# Artist One:
# _________
# /Album One
# /Album Two
#
# Artist Two:
# _________
# /Album Foo
# /Album Bar
#
# If invoked with Music as the current working directory, this script will drill into each artist directory and collect the name of each
# album directory.  It will sort that collection randomly, then return up to the number specified as the first commnad line paramter:
#
# sh random_albums.sh 2
#
# Album Bar
# Album One
#
# If no parameter is supplied, it will default to 10 results as is the nature of the `tail` command.
#
# sh random_albums.sh
#
# Album One
# Album Two
# Album Bar
# Album Foo
#
# I own a lot of music, so I use this script to grab a random sampling of albums to put on my music player to see if I can encounter serendipity while surfing the sonic waves that I already own.

ls ./* | grep "^[^.]" | sort -R | tail -$1
