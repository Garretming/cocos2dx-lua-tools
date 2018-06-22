
<?php

include_once 'common.php';

function parseButton(&$array, $Text)
{
	$Scale9Enable = 'false';
    if (array_key_exists('Scale9Enable', $array)) {
        $Scale9Enable = 'true';
    }

    $size = "{width = {$array['Size']['X']}, height = {$array['Size']['Y']}}";

	$isPlist = isPlist($array['NormalFileData']);
	$name = "'{$array['NormalFileData']['Path']}'";
	if ($isPlist == 'false') {	
		// $name = getImageSuffix($name);
	}
	$normal = "{image = $name, isPlist = $isPlist, png9 = $Scale9Enable, size = $size}";

	$isPlist = isPlist($array['PressedFileData']);
	$name = "'{$array['PressedFileData']['Path']}'";
	if ($isPlist == 'false') {	
		// $name = getImageSuffix($name);
	}
	$selected = "{image = $name, isPlist = $isPlist, png9 = $Scale9Enable}";

	if ($array['PressedFileData']['Path'] == 'Default/Button_Press.png') {
		$selected = 'nil';
	}

	$isPlist = isPlist($array['DisabledFileData']);
	$name = "'{$array['DisabledFileData']['Path']}'";
	if ($isPlist == 'false') {	
		// $name = getImageSuffix($name);
	}
	$disabled = "{image = $name, isPlist = $isPlist, png9 = $Scale9Enable}";

	if ($array['DisabledFileData']['Path'] == 'Default/Button_Disable.png') {
		$disabled = 'nil';
	}

	$ttf = 'false';
	$fontName = "'Helvetica'";

	if (array_key_exists('FontResource', $array) && $array['FontResource']['Path'] != '' ) {
		$ttf = 'true';
		$fontName = "'{$array['FontResource']['Path']}'";
	}
	$textColor = getColor3String($array['TextColor']);

    if ($Text == null || $Text == '' || $Text == '[[]]')
    {
    	return [$normal,$selected,$disabled,'nil'];
    }

    $param4 = "{text = $Text, fontName = $fontName, ttf = $ttf, textColor = $textColor, fontSize = {$array['FontSize']}}";
	return [$normal,$selected,$disabled,$param4];
}


function parseCheckBox(&$array)
{
	$isPlist = isPlist($array['NormalBackFileData']);
	$name = "'{$array['NormalBackFileData']['Path']}'";
	if ($isPlist == 'false') {	
		// $name = getImageSuffix($name);
	}
	$Normal = "{image = $name, isPlist = $isPlist}";

	$isPlist = isPlist($array['PressedBackFileData']);
	$name = "'{$array['PressedBackFileData']['Path']}'";
	if ($isPlist == 'false') {	
		// $name = getImageSuffix($name);
	}
	$Selected = "{image = $name, isPlist = $isPlist}";

	$isPlist = isPlist($array['DisableBackFileData']);
	$name = "'{$array['DisableBackFileData']['Path']}'";
	if ($isPlist == 'false') {	
		// $name = getImageSuffix($name);
	}
	$Disabled = "{image = $name, isPlist = $isPlist}";


	$isPlist = isPlist($array['NodeNormalFileData']);
	$name = "'{$array['NodeNormalFileData']['Path']}'";
	$normal_check = "{image = $name, isPlist = $isPlist}";

	if ($array['NodeNormalFileData']['Path'] == 'Default/CheckBoxNode_Normal.png') {
		$normal_check = 'nil';
	}
	return [$Normal, $Selected, $Disabled, $normal_check];
}


?>

