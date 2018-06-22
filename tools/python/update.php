<?php
ini_set('date.timezone','Asia/Shanghai');
include_once 'common.php';
include_once 'fix.php';

while (true) {
	fwrite(STDOUT, "===========================================\n");
	fwrite(STDOUT, _convertStr("输入更新前的资源版本号(12位 YYMMDDHHMMSS):"));
	$oldVersion = trim(fgets(STDIN));

	if (!_file_exists("$CURRENT_DIR/../update/$oldVersion.json")) {
		_print_log("更新前的资源版本号不存在\n");
		continue;
	}
	if (strlen($oldVersion) == 12) {
		break;
	}
}


$oldMD5Values = file_get_contents(_convert2CurrentSysPath("$CURRENT_DIR/../update/$oldVersion.json"));
$oldMD5Values = json_decode($oldMD5Values, true);

$input = "$CURRENT_DIR/../../ResourcesPackage";
parsedir($input,$files);
$start = strlen($input) + 1;

$md5Values = array();

if (!_file_exists("$CURRENT_DIR/../out_update/update")) {
	mkdir("$CURRENT_DIR/../out_update/update");
}

$isUpdate = false;
foreach ($files as $key => $value) {
	$_key = substr($value, $start);
	$old = null;
	if (array_key_exists($_key, $oldMD5Values)) 
	{
		$old = $oldMD5Values[$_key];
	}

	$new = md5_file($value);
	$md5Values[$_key] = $new;

	if ($old == null || $old != $new) {
		$isUpdate = true;
		$list = split("/", $_key);
		if (count($list) == 1) {
			copy($value, "$CURRENT_DIR/../out_update/update/$_key");
		}
		else
		{
			$filename = array_pop($list);
			$outDir = "$CURRENT_DIR/../out_update/update/" . join("/", $list);
			if (!_file_exists($outDir)) {
				_mkdir($outDir);
			}
			copy($value, $outDir . "/$filename");
		}
	}
}

$showtime=date("ymdHis");
if ($isUpdate) {

	$outDir = "$CURRENT_DIR/../out_update/update/version/";
	_mkdir($outDir);
	file_put_contents("$outDir/current_assets_version.ugod", $showtime);


	$zip = new ZipArchive();
	$res = $zip->open("$CURRENT_DIR/../out_update/update.zip", ZIPARCHIVE::CREATE); 

	if ($res === TRUE) { 
		$files = array();
	 	parsedir("$CURRENT_DIR/../out_update/update",$files);
	 	foreach ($files as $key => $value) 
	 	{
	 		$localPath = substr($value, strlen("$CURRENT_DIR/../out_update") + 1);
	 		$zip->addFile($value, $localPath);
	 	}
	} 
	else 
	{ 
	    //输出出错的代码 
	    echo 'failed, code:' . $res; 
	} 
	$zip->close(); 

	rename("$CURRENT_DIR/../out_update/update.zip", "$CURRENT_DIR/../out_update/$showtime.zip");
	file_put_contents("$CURRENT_DIR/../update/$showtime.json", json_encode($md5Values));
	system("rm -rf $CURRENT_DIR/../out_update/update");
}



// //删除基于相同版本号的更新文件
// $list = array();
// if (_file_exists("$CURRENT_DIR/../out_update/update.json")) 
// {
// 	$list = file_get_contents("$CURRENT_DIR/../out_update/update.json");
// 	$list = json_decode($list, true);
// }
// $list[$oldVersion] = "$showtime.zip";

// file_put_contents("$CURRENT_DIR/../out_update/update.json", json_encode($list));

// $files = array();
// parsedir("$CURRENT_DIR/../out_update",$files);
// foreach ($files as $key => $value) 
// {
// 	$pathinfo = pathinfo($value);
// 	$filename = $pathinfo['basename'];

// 	if (!in_array($filename, $list) && $pathinfo['extension'] == 'zip') {
// 		_rmdir($value);
// 	}
	
// }

// _rmdir("$CURRENT_DIR/../out_update/update");
?>

