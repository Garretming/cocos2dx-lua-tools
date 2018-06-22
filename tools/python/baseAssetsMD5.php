<?php

include_once 'common.php';
include_once 'fix.php';

while (true) {
	fwrite(STDOUT, "===========================================\n");
	fwrite(STDOUT, _convertStr("输入基础版本号(12位 YYMMDDHHMMSS):"));
	$version = trim(fgets(STDIN));
	if (strlen($version) == 12) {
		break;
	}
}

$out = "$CURRENT_DIR/../update/$version.json";

$input = "$CURRENT_DIR/../../ResourcesPackage";
parsedir($input,$files);

$md5Values = array();
$start = strlen($input) + 1;
foreach ($files as $key => $value) {
	$_key = substr($value, $start);
	$md5Values[$_key] = md5_file($value);
}

file_put_contents($out, json_encode($md5Values));
?>