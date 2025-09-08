<?php
require 'userAgentGenerator/userAgent.php';

$agent = new userAgent();
$userAgent = $agent->generate('chrome');

echo $userAgent;

