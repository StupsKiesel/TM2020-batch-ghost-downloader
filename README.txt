TM.io Ghost Batch downloading Script

Usage:

1. 	open a map on trackmania.io 
	Example: https://trackmania.io/#/leaderboard/a1BD0mndUVhvDZtmmL1phiIvHsa
	
2.	Click "Load more..." till you see the number of ghost's you want.
3. 	Right click on the "ghost download" button from WorldRecord time.
4.	Open Page Inspector (Firefox)
5.	hoover over "tbody" till the whole list of records light up.
6. 	right click it, copy, internal HTML
7.	open: https://beautifytools.com/html-to-multi-line-data-converter.php
8. 	Paste the HTML code in and convert it to a multiline text. "Beautify html"
9. 	Copy multiline text and and save it in "tmio-code.txt"

10.	Execute "create_list.bat"
	- two new txt files will apeare in your folder.
	- a temp.txt (ignore it)
	- a ID-list.txt (important for downloading process)
	
11.	After "create_list.bat" is finished, execute "downloader.bat"
	- a folder will be created in wich all ghost.gbx files will be stored
	- the first ghost download needs a bit more time till a conection is made.
	
12. (OPTIONAL) After "downloader.bat" is finished, execute "rename2number.bat"
	- this will rename all ghost files from "087a3b53-3f1f-4d80-8ece-960539c0e89e" to 1,2,3,4,5,6,7,8,9,.....
	- "Ghost 1.ghost.gbx" will not be WR Ghost!!!