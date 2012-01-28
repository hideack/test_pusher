<?php
require('../lib/php/Pusher.php');
require('pusher-setting.php');		// pusher settings

$pusher = new Pusher(PUSHER_KEY, PUSHER_SECRET, PUSHER_APPID);
$pusher->trigger('test_channel', 'test_event', 'hello pussher!!');

printf("trigger called.");

