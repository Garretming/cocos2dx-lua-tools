<?php
namespace Tinify;

require_once("lib/Tinify/Exception.php");
require_once("lib/Tinify/ResultMeta.php");
require_once("lib/Tinify/Result.php");
require_once("lib/Tinify/Source.php");
require_once("lib/Tinify/Client.php");
require_once("lib/Tinify.php");
include_once 'common.php';
include_once 'fix.php';



$key1 = 'xTJXtkR9oJzOlrVx1JVvUcyIk5raITXy';
$key2 = 'RkoczqavMW1TjFrlhFE9WakzGCYmc2Rh';
$key3 = 'Q3X6gvLkI6L5dJNPhnFr3nap3BZK3B6o';

setKey($key1);

$files = array();


$files = array();

$dir = "$CURRENT_DIR/../../Resources";
$tiny_dir = "$CURRENT_DIR/../../tinypng";
$md5_file = "md5_file.txt";

parsedir($dir, $files);


$md5_value = array();

if (_file_exists("$tiny_dir/$md5_file")) {
    $md5_value = json_decode(file_get_contents(_convert2CurrentSysPath("$tiny_dir/$md5_file")),true);
}

foreach ($files as $key => $value) {
	$pathinfo = pathinfo($value);
	if ($pathinfo['extension'] == 'png' || $pathinfo['extension'] == 'jpg' || $pathinfo['extension'] == 'jpeg') {
		$tmp = substr($pathinfo['dirname'], strlen($dir) + 1);
		$key = substr($value, strlen($dir) + 1);
		$key = str_replace("\\", "/", $key);
		$md5 = md5_file($value);
		$out_file = _convert2CurrentSysPath("$tiny_dir/$tmp/".$pathinfo['basename']);


		if (!array_key_exists($key, $md5_value) || $md5_value[$key] != $md5) {

			var_dump("tinypng file>>>>".$value);
			if (!_file_exists("$tiny_dir/$tmp")) {
				_mkdir("$tiny_dir/$tmp", 0777, true);
			}
			try {
				$source = fromBuffer(file_get_contents($value));
				$source->toFile($out_file);
				$md5_value[$key] = $md5;

				file_put_contents(_convert2CurrentSysPath("$tiny_dir/$md5_file"), json_encode($md5_value,true));
			} catch (Exception $e) {
				var_dump($e->getTraceAsString());
			}

		}
	}
}


?>