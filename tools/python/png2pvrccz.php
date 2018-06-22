<?php

include_once 'common.php';
include_once 'fix.php';

assert($argc >= 4,_convertStr('路径配置错误，make_png2pvrccz'));

$files = array();

$input = $argv[1];
$out = $argv[2];
$base = $argv[3];
$md5_file_name = $argv[4];


$md5Values = array();
if (_file_exists($md5_file_name)) {
    $md5Values = json_decode(file_get_contents($md5_file_name),true);
}



parsedir($input,$files);


//用来保存文件转成pvr.ccz格式是不是RGBA8888
$png_type = array();

$png_type_file_name = "$CURRENT_DIR/md5/png_type.txt";

if (_file_exists($png_type_file_name)) {
	$png_type = json_decode(file_get_contents($png_type_file_name),true);
}


foreach ($files as $key => $value) {
	$pathinfo = pathinfo($value);
	if ($pathinfo['extension'] == 'png') {
		$is_rgba8888 = is_rgba8888(substr($value, strlen($base)));

		if(pathinfo($pathinfo['dirname'])['filename'] == 'sheet8')
		{
			$is_rgba8888 = true;
		}
		//如果文件改变了，或者转化成pvr.ccz的格式变化了，则重新生成
		if (_isMd5Change($md5Values, $value) || $png_type[$value] != $is_rgba8888) {
			_print_log(">>>>>>>>处理png $value\n");
			if ($is_rgba8888) {
				_convert($pathinfo['dirname'], $value, 'RGBA5551', $pathinfo['filename'], $out . "/" . substr($pathinfo['dirname'], strlen($base)));
			}
			else
			{
				_convert($pathinfo['dirname'], $value, 'RGBA4444', $pathinfo['filename'], $out . "/" . substr($pathinfo['dirname'], strlen($base)));
			}	
		}

		$png_type[$value] = $is_rgba8888;
	}
}


function _convert($input, $input_png, $texture_format, $filename, $out) 
{
	if (!_file_exists($out)) {
		_mkdir($out);
	}



	$TexturePacker = getenv('TEXTURE_PACKER');

	$cmd  = "$TexturePacker --smart-update ";
	$cmd .= "--texture-format pvr2ccz ";
	$cmd .= _convert2CurrentSysPath("--data $out/$filename.plist ");
	$cmd .= _convert2CurrentSysPath("--sheet $out/$filename.pvr.ccz ");
	$cmd .= "--maxrects-heuristics best ";
	$cmd .= "--scale 1 ";
	$cmd .= "--disable-rotation ";
	$cmd .= "--border-padding 0 ";
	$cmd .= "--shape-padding 0 ";
	$cmd .= "--max-size 2048 ";
	$cmd .= "--opt $texture_format ";
	$cmd .= "--content-protection 08ff07a4a50ace837373695fb1b060c6 ";
	$cmd .= "--size-constraints AnySize ";
	$cmd .= "--trim-mode None ";
	$cmd .= "$input_png";
	$ret = -1;
	system($cmd, $ret);

	_rmdir("$out/$filename.plist");
	if ($ret != 0) {
		_print_log(">>>>>>导出错误,$input/$filename.png");
		die();
		return;
	}
}

file_put_contents($png_type_file_name, json_encode($png_type));



?>