<?php

include_once 'common.php';

$files = array();
$paths = array();



$base_dir = "$CURRENT_DIR/../..";



$files = array();
parsedir("{$base_dir}/cocosstudio/cocosstudio", $files);

foreach ($files as $key => $value) {
	$pathinfo = pathinfo($value);
	if ($pathinfo['extension'] == 'csd') {
		$content = file_get_contents($value);

		// if (preg_match_all('/Path="uires\\/pulic\\/sheet\\/(.+?)\"[\\s]*Plist=\"uires\\/public\\/sheet\\/sheet.plist"/', $content, $matches)) {

		// 	var_dump($value);
		// 	foreach ($matches[0] as $k0 => $v0) {
				
		// 		$replace = "Path=\"uires/public/sheet/{$matches[1][$k0]}\" Plist=\"uires/public/sheet/sheet.plist\"";

		// 		$content = str_replace($v0, $replace, $content);
		// 	}
			
		// }

		if (preg_match_all('/Path="uires\\/public\\/sheet\\/(fontImg.+?)\"[\\s]*Plist=\"uires\\/public\\/sheet\\/sheet.plist"/', $content, $matches)) {

			var_dump($value);
			foreach ($matches[0] as $k0 => $v0) {
				
				$replace = "Path=\"uires/public/font/{$matches[1][$k0]}\" Plist=\"uires/public/font/sheet.plist\"";

				$content = str_replace($v0, $replace, $content);
			}
			
		}
		file_put_contents($value, $content);
	}

}




?>