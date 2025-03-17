<?php

namespace BrainGames\Cli;

function greeting () {
	echo "Welcome to the Brain Games!\n";
	echo "May I have your name? ";

	$name = trim(fgets(STDIN));

	echo "Hello, $name!\n";
}
