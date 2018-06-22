<?php
include_once 'common.php';
ini_set('date.timezone','Asia/Shanghai');
$showtime=date("m-d@H-i");
$SORUCE_WINDOW = "$CURRENT_DIR/../../project/proj.win32/Debug.win32";
// $DEST_WINDOW = "$CURRENT_DIR/../../../dragon_windows-{$showtime}";




// fwrite(STDOUT, "===========================================\n");
// // fwrite(STDOUT, _convertStr("是否加密(1.加密 2.不加密):"));
// // $type = trim(fgets(STDIN));

$type = 1;
$DEST_WINDOW = _convertStr("$CURRENT_DIR/../../../../../ugod/common/【魔龙战争】/dragon_windows");

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


if ($type == 2) {
	_copy("$CURRENT_DIR/../../scripts", "$DEST_WINDOW/Resources/scripts", false);
}
else if ($type == 1)
{
	_copy("$CURRENT_DIR/../../scriptsPackage/xxtea/scripts", "$DEST_WINDOW/Resources/scripts", false);
}

_copy("$CURRENT_DIR/../../uires", "$DEST_WINDOW/Resources/uires", false);
_copy("$CURRENT_DIR/../../pb", "$DEST_WINDOW/Resources/pb", false);

_rmdir("$DEST_WINDOW/Resources/.svn");


$content = file_get_contents("$DEST_WINDOW/Resources/version/config.plist");
if(preg_match_all("/<key>url<\\/key>[\\s]*<string>(.+?)<\\/string>/is", $content, $matches))
{
	$s = $matches[1][0];
	$content = str_replace($s, "http://192.168.2.252:9997", $content);
}


$content = preg_replace("/<key>lua_encrypt<\\/key>[\\s]*<false\\/>/is", "<key>lua_encrypt</key>\n\t\t<true/>", $content);

file_put_contents("$DEST_WINDOW/Resources/version/config.plist", $content);



?>