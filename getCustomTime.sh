#!/bin/bash
  weekdayNum=$(date '+%w');
  if [ $weekdayNum '==' '0' ]; then
    weekdayAbbr='U'
  elif [ $weekdayNum '==' '1' ]; then
    weekdayAbbr='M'
  elif [ $weekdayNum '==' '2' ]; then
    weekdayAbbr='T'
  elif [ $weekdayNum '==' '3' ]; then
    weekdayAbbr='W'
  elif [ $weekdayNum '==' '4' ]; then
    weekdayAbbr='H'
  elif [ $weekdayNum '==' '5' ]; then
    weekdayAbbr='F'
  elif [ $weekdayNum '==' '6' ]; then
    weekdayAbbr='S'
  fi

  monthNum=$(date '+%m');
  if [ $monthNum  '==' '01' ]; then
    monthAbbr='♒'
  elif [ $monthNum '==' '02' ] ; then
    monthAbbr='♓'
  elif [ $monthNum '==' '03' ] ; then
    monthAbbr='♈'
  elif [ $monthNum '==' '04' ] ; then
    monthAbbr='♉'
  elif [ $monthNum '==' '05' ] ; then
    monthAbbr='♊'
  elif [ $monthNum '==' '06' ] ; then
    monthAbbr='♋'
  elif [ $monthNum '==' '07' ] ; then
    monthAbbr='♌'
  elif [ $monthNum '==' '08' ] ; then
    monthAbbr='♍'
  elif [ $monthNum '==' '09' ] ; then
    monthAbbr='♎'
  elif [ $monthNum '==' '10' ] ; then
    monthAbbr='♏'
  elif [ $monthNum '==' '11' ] ; then
    monthAbbr='♐'
  elif [ $monthNum '==' '12' ] ; then
    monthAbbr='♑'
  fi

  monthdayNum=$(date '+%d');
  utcmodayNum=$(date --utc '+%d');

  utcDayOffset='+0T'
  if [ $monthdayNum '!=' $utcmodayNum ]; then
    utcDayOffset='+1T'
  fi

  weekNum=$(date '+%V');
  timeFormatted=$(date '+%H%M:%S');
  iso8601=$(date --utc '+%HZ');
  
  echo "${utcDayOffset}${iso8601} ${weekNum}${weekdayAbbr}${monthdayNum}${monthAbbr} ${timeFormatted}"