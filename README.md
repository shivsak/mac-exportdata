# mac-exportdata

Bash script to export the following sensitive mac data to a folder or zip file on your Desktop.

• Messages

• Safari

• Google Chrome

• iOS Backups

• WhatsApp

## Usage
Open Terminal, navigate to this directory and run `./exportdata.sh [chrome] [ios] [messages] [safari] [whatsapp] [zip]`.

To export data as a zip file, run the script with the `zip` option. Keep in mind that zipping the files takes more time.

The script will write the export data to a folder called "exportdata" on your Desktop.

So, the export data script can be used in 2 ways:

- `./exportdata.sh [chrome] [ios] [messages] [safari] [whatsapp] [zip]`

- `./exportdata.sh all [zip]`
