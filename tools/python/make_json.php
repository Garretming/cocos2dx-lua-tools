<?php
include_once 'common.php';
ini_set('date.timezone','Asia/Shanghai');

$SORUCE = "$CURRENT_DIR/../../json";

$DEST_WINDOW = _convertStr($SORUCE);

_rmdir($DEST_WINDOW);



_copy("$CURRENT_DIR/../../cocosstudio/json","$DEST_WINDOW", false);
?>