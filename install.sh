#!/bin/bash
echo "*******************"
PS3='Select an option and press Enter: '
options=("apache" "named" "sendmail")
select opt in "${options[@]}"
do
  case $opt in
        "apache")
          date
          ;;
        "named")
          echo "test"
          ;;
        "sendmail")
          echo "test 2"
          ;;
        *)
           echo "git clone -b ${opt} --single-branch git@github.com:emeraldinspirations/install.git -o GitHub ~/Install/${opt}";;
  esac
done
echo "*********************"
