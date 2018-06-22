<?php
include_once 'common.php';
include_once 'fix.php';

$base = "$CURRENT_DIR/../../uires_original";


parsedir($base,$files);

$array = array();

foreach ($files as $key => $value) {
	$pathinfo = pathinfo($value);

	$basename = $pathinfo['basename'];

	if (!array_key_exists($basename, $array)) {
		$array[$basename] = [substr($value, strlen($base) + 1)];
	}
	else
	{
		$array[$basename][] = substr($value, strlen($base) + 1);
	}
}

foreach ($array as $key => $value) {
	if (count($value) > 1) {

		//如果public里面已经有了这个资源，则删掉该资源
		$ispublic = false;
		foreach ($value as $k1 => $v1) {

			if (strncmp('public', $v1, 6) == 0) {
				$ispublic = true;
				break;
			}
		}

		if ($ispublic) 
		{
			foreach ($value as $k1 => $v1) {
				if (strncmp('public', $v1, 6)) {
					_rmdir($base . "/" . $v1, true);
				}
			}
		}
	}
}
?>