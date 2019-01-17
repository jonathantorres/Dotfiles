<?php

$json_path = '/Users/jonathantorres/Library/Application Support/Sublime Text 3/Packages/User/Package Control.sublime-settings';
$contents = file_get_contents($json_path);

if (!$contents) {
    echo 'Error: The file could not be read' . PHP_EOL;
    exit(1);
}

$packages = json_decode($contents, true);
$output = '# Installed Packages on Sublime Text 3' . PHP_EOL;
$output .= 'List of the packages currently installed on my copy of Sublime Text 3.' . PHP_EOL;

foreach ($packages['installed_packages'] as $i => $package) {
    $output .= '- ' . $package . PHP_EOL;
}

$output_path = '/Users/jonathantorres/dev/dotfiles/st/installed_packages.md';
$output_file = fopen($output_path, 'w');
fwrite($output_file, $output);
fclose($output_file);

echo 'Saved installed packages into a md file' . PHP_EOL;

?>
