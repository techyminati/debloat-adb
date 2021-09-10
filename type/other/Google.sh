#!/bin/bash

#
# This Script is by A2L5E0X1 + Razuuu
#

# Get Variables and Functions
. $(dirname "$(readlink -f "$0")")/../../scripts/variables_and_functions.sh

echo "### Google Debloat Script
### by A2L5E0X1 + Razuuu"
sleep 1

red_message "LAST WARNING: THIS SCRIPT WILL REMOVE GOOGLE SERVICES AND PARTS AT DEFAULT!
TO AVOID THIS, EDIT THE SCRIPT!

[!] If you are actually going to uninstall Google Services, you have to disable all device administrator entries by Google else it will fail uninstalling them!"

Press ENTER to continue. Press CTRL+C to exit."
read

bloatware=(
	# Google Apps

	# DANGER Zone
	"com.google.android.gms"				#Play Services
	"com.google.android.gsf"				#Service Framework
	"com.google.android.gsf.login"				#Google Login Service
	"com.google.android.feedback"				#Market Feedback
	"com.google.android.tts"				#Google TTS
	"com.google.android.apps.pixelmigrate"			#Google Restore
	"com.google.android.backupuses"				#Google Backuptransport
	"com.google.android.backuptransport"
	"com.google.android.syncadapters.contacts"		#Google Contacts Syncadapter
	"com.google.android.syncadapters.calendar"		#Google Calendar Syncadapter
	"com.google.android.gmsintegration"			#Play Services Integration
	"com.google.android.modulemetadata"			#MainComponents
	"com.google.android.setupwizard"			#Setup
	# DANGER Zone end

	"com.android.chrome"					#Google Chrome
	"com.google.android.apps.photos"			#Google Photos
	"com.google.android.gm"					#Gmail
	"com.google.android.googlequicksearchbox"		#Google App
	"com.google.android.apps.maps"				#Maps
	"com.google.android.music"				#Play Music
	"com.google.android.videos"				#Play Videos
	"com.google.android.youtube"				#YouTube
	"com.android.vending"					#Play Store
	"com.google.android.apps.docs"				#Drive
	"com.google.android.apps.tachyon"			#Duo
	"com.google.android.apps.docs.editors.docs"		#Google Docs
	"com.google.android.apps.docs.editors.sheets"		#Google Sheets
	"com.google.android.apps.docs.editors.slides"		#Google Slides
	"com.google.android.keep"				#Notes
	"com.google.android.apps.googleassistant"		#Google Assistant
	"com.google.android.street"				#StreetView
	"com.google.android.apps.cloudprint"			#Google CloudPrint
	"com.google.android.apps.magazines"			#Magazines
	"com.google.android.apps.books"				#Books
	"com.google.android.apps.plus"				#Google+
	"com.google.android.play.games"				#Play Games
	"com.google.android.talk"				#Hangouts
	"com.google.android.apps.messaging"			#Google Messaging
	"com.google.android.marvin.talkback"			#Google Talkback
	"com.google.android.apps.wellbeing"			#Google Wellbeing
	"com.google.android.printservice.recommendation"	#Google Print Service
	"com.google.android.apps.calc"				#Google Calculator
	"com.google.android.calendar"				#Google Calendar
	"com.google.android.ar.lens"				#Google Lens
	"com.google.android.apps.translate"			#Google Translator
	"com.google.android.apps.fitness"			#Google Fit
	"com.google.android.apps.wallpaper"			#Google Wallpaper
	"com.google.android.apps.enterprise.dmagent"		#Google Apps Device Policy
	"com.google.android.apps.kids.familylink"		#Google Family Link
	"com.google.android.projection.gearhead"		#Android Car
	"com.google.android.ims"				#Carrier Services
	"com.google.ar.core"					#Google AR Core
	"com.google.android.apps.genie.geniewidget"		#NewsAndWeather
	"com.google.android.gms.location.history"		#LocationHistory
	"com.google.ar.core"					#ARCore
	"com.google.android.apps.turbo"				#DeviceHealthService
	"com.google.android.as"					#DevicePersonalizationServices
	"com.android.hotwordenrollment.okgoogle"		#OKGoogleHotword
	"com.android.hotwordenrollment.xgoogle"			#XGoogleHotword
	"com.google.android.apps.youtube.music"			#YTMusic
)

for app in ${bloatware[@]}
do
	$adb_location shell pm uninstall --user 0 $app
	$adb_location shell pm uninstall $app
done

