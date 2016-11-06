mv .git ..
rm -fr *
mv ../.git .
mv .git/* .
rmdir .git 
git config --bool core.bare true
