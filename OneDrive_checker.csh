#!/usr/bin/env tcsh -f

set CHK_SEC = 10
set SOFT = "/Applications/OneDrive.app/Contents/MacOS/OneDrive"

while (1)
    set chk = `ps aux | grep $SOFT | grep -v grep | wc -l`

    if ($chk == 0) then
	echo "############################"
	echo "# OneDrive isn't running\!\! #"
	echo "############################"
	date '+%Y/%m/%d(%a) %H:%M:%S'
	open -a OneDrive
	echo ""
    endif
    
    sleep $CHK_SEC
end
