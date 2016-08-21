#!/bin/bash
# Export Data script
# Created by Shiv Sakhuja

# Check arguments
if [ $# -gt 5 ]; then
  echo "Usage: $0 [chrome] [ios] [messages] [safari] [whatsapp]"
  exit 1
fi

# Echo beginning export text
echo ""
echo ""
echo "Beginning export.";

# Create exportdata directory
[ -d ~/"Desktop/exportdata" ] && echo "exportdata directory exists." || (echo "exportdata directory does not exist." && mkdir ~/"Desktop/exportdata" && echo "Created Directory ~/Desktop/exportdata")
echo ""
echo ""


# iMessage
if [ "$1" == "messages" ] || [ "$2" == "messages" ] || [ "$3" == "messages" ] || [ "$4" == "messages" ] || [ "$5" == "messages" ]; then
  echo "------------------------------"
  echo -e "\033[36m MESSAGES \033[0m"
  echo ""
  echo "Checking if iMessage backup exists"

  MESSAGES=~/"Library/Messages"
  DESKTOP=~/"Desktop"

  if [ ! -d $MESSAGES ]
  then
    echo "directory " $MESSAGES " does not exist.";
  else
    echo "directory " $MESSAGES " exists.";
    cp -a $MESSAGES ~/"Desktop/exportdata"
    echo "$MESSAGES copied to ~/Desktop/exportdata";
    echo ""
    echo -e "\033[32mDone! \033[0m"
  fi

  echo ""
fi



# Safari
if [ "$1" == "safari" ] || [ "$2" == "safari" ] || [ "$3" == "safari" ] || [ "$4" == "safari" ] || [ "$5" == "safari" ]; then
  echo "------------------------------"
  echo ""
  echo -e "\033[36m Safari \033[0m"
  echo ""
  echo "Checking if Safari backup exists"

  SAFARI=~/"Library/Safari"

  if [ ! -d $SAFARI ]
  then
    echo "directory " $SAFARI " does not exist.";
  else
    echo "directory " $SAFARI " exists.";
    cp -a $SAFARI ~/"Desktop/exportdata"
    echo "$SAFARI copied to ~/Desktop/exportdata";
    echo ""
    echo -e "\033[32mDone! \033[0m"
  fi

  echo ""
fi


# Google Chrome
if [ "$1" == "chrome" ] || [ "$2" == "chrome" ] || [ "$3" == "chrome" ] || [ "$4" == "chrome" ] || [ "$5" == "chrome" ]; then
  echo "------------------------------"
  echo ""
  echo -e "\033[36m Google Chrome \033[0m"
  echo ""
  echo "Checking if Chrome backup exists"

  CHROME=~/"Library/Application Support/Google/Chrome/"

  if [ ! -d $CHROME ]
  then
    echo "directory " $CHROME " does not exist.";
  else
    echo "directory " $CHROME " exists.";
    cp -a "$CHROME" ~/"Desktop/exportdata/Chrome"
    echo "$CHROME copied to ~/Desktop/exportdata";
    echo ""
    echo -e "\033[32mDone! \033[0m"
  fi

  echo ""
fi



# WhatsApp
if [ "$1" == "whatsapp" ] || [ "$2" == "whatsapp" ] || [ "$3" == "whatsapp" ] || [ "$4" == "whatsapp" ] || [ "$5" == "whatsapp" ]; then
  echo "------------------------------"
  echo ""
  echo -e "\033[36m WhatsApp \033[0m"
  echo ""
  echo "Checking if WhatsApp backup exists"

  WHATSAPP=~/"Library/Application Support/WhatsApp/"

  if [ ! -d $WHATSAPP ]
  then
    echo "directory " $WHATSAPP " does not exist.";
  else
    echo "directory " $WHATSAPP " exists.";
    cp -a "$WHATSAPP" ~/"Desktop/exportdata/WhatsApp"
    echo "$WHATSAPP copied to ~/Desktop/exportdata";
    echo ""
    echo -e "\033[32mDone! \033[0m"
  fi

  echo ""
fi



# iOS Backups
if [ "$1" == "ios" ] || [ "$2" == "ios" ] || [ "$3" == "ios" ] || [ "$4" == "ios" ] || [ "$5" == "ios" ]; then
  echo "------------------------------"
  echo ""
  echo -e "\033[36m iOS Backups \033[0m"
  echo ""
  echo "Checking if iOS backups exist"

  IOS=~/"Library/Application Support/MobileSync/Backup"

  if [ ! -d $IOS ]
  then
    echo "directory " $IOS " does not exist.";
  else
    echo "directory " $IOS " exists.";
    cp -a "$IOS" ~/"Desktop/exportdata/iOS"
    echo "$IOS copied to ~/Desktop/exportdata";
    echo ""
    echo -e "\033[32mDone! \033[0m"
  fi

  echo ""
fi


# Zip exportdata Folder

if [ "$1" == "zip" ] || [ "$2" == "zip" ] || [ "$3" == "zip" ] || [ "$4" == "zip" ] || [ "$5" == "zip" ] || [ "$6" == "zip" ]; then
  echo ""
  echo ""
  echo -e "\033[36m Zipping Files \033[0m"
  echo ""
  zip -r ~/"Desktop/exportdata.zip" ~/"Desktop/exportdata/"
fi
