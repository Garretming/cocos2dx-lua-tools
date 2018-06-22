<?php
include_once 'common.php';
ini_set('date.timezone','Asia/Shanghai');
$showtime=date("m-d@H-i");
$SORUCE_WINDOW = "$CURRENT_DIR/../../project/proj.win32/Debug.win32";
// $DEST_WINDOW = "$CURRENT_DIR/../../../dragon_windows-{$showtime}";

$DEST_WINDOW = _convertStr("$CURRENT_DIR/../../../dragon_windows");

_mkdir($DEST_WINDOW);

$files = array();
parsedir($SORUCE_WINDOW, $files);
foreach ($files as $key => $value) {
	$pathinfo = pathinfo($value);
	if ($pathinfo['extension'] == 'dll') {
		_copy($value, "$DEST_WINDOW/{$pathinfo['basename']}");
	}
}

_copy("$SORUCE_WINDOW/dragon.exe", "$DEST_WINDOW/dragon.exe");
_copy("$SORUCE_WINDOW/window.txt", "$DEST_WINDOW/window.txt");


$paths = scandir(_convert2CurrentSysPath("$CURRENT_DIR/../../Resources"));
foreach ($paths as $key => $value) {
	if ($value != '.' && $value != '..' && $value != 'pb' && $value != 'uires' && $value != 'scripts') 
	{
		_copy("$CURRENT_DIR/../../Resources/$value", "$DEST_WINDOW/Resources/$value", false);
	}
}

_copy("$CURRENT_DIR/../../uires", "$DEST_WINDOW/Resources/uires", false);
_copy("$CURRENT_DIR/../../scripts", "$DEST_WINDOW/Resources/scripts", false);
_copy("$CURRENT_DIR/../../../pb", "$DEST_WINDOW/Resources/pb", false);
?>