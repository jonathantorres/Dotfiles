import json

json_path = r'/Users/jonathantorres/Library/Application Support/Sublime Text 3/Packages/User/Package Control.sublime-settings'

json_file = open(json_path)
packages_data = json.load(json_file)
installed_packages = packages_data['installed_packages']
json_file.close()

output = '# Installed Packages on Sublime Text 3\n'
output += 'List of the packages currently installed on my copy of Sublime Text 3.\n';

for package in installed_packages:
    output += '- ' + package + '\n'

output_path = '/Users/jonathantorres/dev/dotfiles/st/installed_packages.md'
output_file = open(output_path, 'w')
output_file.write(output)
output_file.close()

print('Saved installed packages into a md file')
