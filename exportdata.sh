#!/bin/bash
# Export Data script
# Created by Shiv Sakhuja

echo ""
echo ""
echo "Beginning export.";

# Create exportdata directory
[ -d ~/"Desktop/exportdata" ] && echo "exportdata directory exists." || (echo "exportdata directory does not exist." && mkdir ~/"Desktop/exportdata" && echo "Created Directory ~/Desktop/exportdata")
echo ""
echo ""


# iMessage
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



# Safari
echo "------------------------------"
echo ""
echo -e "\033[36m SAFARI \033[0m"
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


# Google Chrome
echo "------------------------------"
echo ""
echo -e "\033[36m GOOGLE CHROME \033[0m"
echo ""
echo "Checking if Safari backup exists"

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


#Zip
#!/bin/bash
if [ "$1" == "zip" ]; then
  echo ""
  echo ""
  echo -e "\033[36m Zipping Files \033[0m"
  echo ""
  zip -r ~/"Desktop/exportdata.zip" ~/"Desktop/exportdata/"
fi
