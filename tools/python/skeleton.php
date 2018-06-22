<?php

include_once 'common.php';

$base = "$CURRENT_DIR/../../Resources/";

$files = array();
parsedir($base . 'monster', $files);
parsedir($base .'skills', $files);
parsedir($base .'hero', $files);
parsedir($base .'effects', $files);

$out = <<<STR
--自动生成,size将会保存上次的结果
module('battle.config.SkeletonConfig');

Skeleton = 
STR;

$filename = "$CURRENT_DIR/tmp_file_SkeletonConfig.json";

$data = file_get_contents($filename);

$data = json_decode($data, true);

$array = array();
foreach ($files as $key => $value) {
	$pathinfo = pathinfo($value);

	if ($pathinfo['extension'] == 'json' && $pathinfo['filename'] != '_skeleton') {
		$value1 = substr($value, strlen($base));
		$list = split("/", $value1);
		array_pop($list);

		$key1 = $list[0];
		$key2 = $list[1];
		$key3 = $list[2];


		if (!array_key_exists($key1, $array)) {
			$array[$key1] = array();
		}

		if (!array_key_exists($key2, $array[$key1])) {
			$array[$key1][$key2] = array();
		}


		if ($key3)
		{
			if (!array_key_exists($key3, $array[$key1][$key2])) {
				$array[$key1][$key2][$key3] = array();
				$array[$key1][$key2][$key3]['animations'] = array();
			}
		}
		else
		{
			$array[$key1][$key2]['animations'] = array();
		}


		$content = file_get_contents($value);
		$content = json_decode($content, true);

		foreach ($content['animations'] as $k1 => $v1) 
		{
			if ($key3) {
				$array[$key1][$key2][$key3]['animations'][$k1] = array();
			}
			else
			{
				$array[$key1][$key2]['animations'][$k1] = array();
			}

			if (array_key_exists('events', $v1)) {
				foreach ($v1['events'] as $k2 => $v2) 
				{
					$event_name = $v2['name'];
					if ($key3) {
						if (!array_key_exists($event_name, $array[$key1][$key2][$key3]['animations'][$k1])) {
							$array[$key1][$key2][$key3]['animations'][$k1][$event_name] = array();
						}
						$tmp = ['time'=>$v2['time']];
						if (array_key_exists('int', $v2)) {
							$tmp['int'] = $v2['int'];
						}
						if (array_key_exists('float', $v2)) {
							$tmp['float'] = $v2['float'];
						}
						if (array_key_exists('string', $v2)) {
							$tmp['string'] = $v2['string'];
						}
						$array[$key1][$key2][$key3]['animations'][$k1][$event_name][] = $tmp;
					}
					else
					{
						if (!array_key_exists($event_name, $array[$key1][$key2]['animations'][$k1])) {
							$array[$key1][$key2]['animations'][$k1][$event_name] = array();
						}
						$tmp = ['time'=>$v2['time']];
						if (array_key_exists('int', $v2)) {
							$tmp['int'] = $v2['int'];
						}
						if (array_key_exists('float', $v2)) {
							$tmp['float'] = $v2['float'];
						}
						if (array_key_exists('string', $v2)) {
							$tmp['string'] = $v2['string'];
						}
						$array[$key1][$key2]['animations'][$k1][$event_name][] = $tmp;
					}
				}
			}
			else
			{
				// if ($key3) {
				// 	$array[$key1][$key2][$key3]['animations'][$k1][] = 0;
				// }
				// else
				// {
				// 	$array[$key1][$key2]['animations'][$k1][] = 0;
				// }
				
			}
			
		}

		if ($key3) 
		{
			// if (array_key_exists($key1, $data) && 
			// 	array_key_exists($key2, $data[$key1]) && 
			// 	array_key_exists($key3, $data[$key1][$key2]) &&
			// 	array_key_exists('size', $data[$key1][$key2][$key3]) ) {
			// 	$array[$key1][$key2][$key3]['size'] = $data[$key1][$key2][$key3]['size'];
			// }
			// else
			{
				$array[$key1][$key2][$key3]['size'] = ['width'=>$content['skeleton']['width'], 'height'=>$content['skeleton']['height']];

				foreach ($content['bones'] as $key4 => $value4) {
					if ($value4['name'] == 'root') {
						if ($value4['scaleX'] == null) {
							$value4['scaleX'] = 1;
						}
						if ($value4['scaleY'] == null) {
							$value4['scaleY'] = 1;
						}
						$array[$key1][$key2][$key3]['scale'] = [$value4['scaleX'],$value4['scaleY']];
					}
				}
			}

			$array[$key1][$key2][$key3]['action'] = substr($pathinfo['dirname'] . "/" . $pathinfo['filename'], strlen($base));
		}
		else
		{
			// if (array_key_exists($key1, $data) && 
			// 	array_key_exists($key2, $data[$key1]) && 
			// 	array_key_exists('size', $data[$key1][$key2])) {
			// 	$array[$key1][$key2]['size'] = $data[$key1][$key2]['size'];
			// }
			// else
			{
				$array[$key1][$key2]['size'] = ['width'=>$content['skeleton']['width'], 'height'=>$content['skeleton']['height']];
				foreach ($content['bones'] as $key4 => $value4) {
					if ($value4['name'] == 'root') {
						if ($value4['scaleX'] == null) {
							$value4['scaleX'] = 1;
						}
						if ($value4['scaleY'] == null) {
							$value4['scaleY'] = 1;
						}
						$array[$key1][$key2]['scale'] = [$value4['scaleX'],$value4['scaleY']];
					}
				}

			}

			$array[$key1][$key2]['action'] = substr($pathinfo['dirname'] . "/" . $pathinfo['filename'], strlen($base));
		}
		
	}

	elseif ($pathinfo['extension'] == 'png') {
		$value1 = substr($value, strlen($base));
		
		$list = split("/", $value1);
		array_pop($list);

		$key1 = $list[0];
		$key2 = $list[1];
		$key3 = $list[2];



		// if (count($list) < 3) {
		// 	continue;
		// }

		if (!array_key_exists($key1, $array)) {
			$array[$key1] = array();
		}

		if (!array_key_exists($key2, $array[$key1])) {
			$array[$key1][$key2] = array();
		}

		if ($key3) {
			if (!array_key_exists($key3, $array[$key1][$key2])) {
				$array[$key1][$key2][$key3] = array();
				$array[$key1][$key2][$key3]['texture'] = array();
			}
		}
		else
		{
			$array[$key1][$key2]['texture'] = array();
		}

		if ($key3) {
			$array[$key1][$key2][$key3]['texture'][] = $value1;
		}
		else
		{
			$array[$key1][$key2]['texture'][] = $value1;
		}

	}

}


foreach ($array as $key => $value) {
	foreach ($value as $key1 => $value1) {
// 		if (count($value1) == 1) {
// 			unset($array[$key][$key1]);
// 		}
	}
}

file_put_contents($filename, json_encode($array,true));

?>