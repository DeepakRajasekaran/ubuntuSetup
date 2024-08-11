import os

# Define the file path
zshrc_path = os.path.expanduser('~/.zshrc')

# Read the .zshrc file
with open(zshrc_path, 'r') as file:
    lines = file.readlines()

# Update the plugins line
for i, line in enumerate(lines):
    if line.startswith('plugins='):
        # Replace the content within the parentheses
        lines[i] = 'plugins=(git zsh-autosuggestions zsh-syntax-highlighting)\n'
        break

# Alias block to add
alias_block = """
# alias for using apt as nala
alias apt="nala"

# alias for using apt later
alias dapt="apt"

# Enable alias with sudo
alias sudo="sudo "

# alias nano zshrc
alias nzsh="nano ~/.zshrc"
"""

# Find the line to insert aliases after
for i, line in enumerate(lines):
    if line.strip() == "# For a full list of active aliases, run `alias`.":
        lines.insert(i + 1, alias_block + '\n')
        break

# Write the changes back to the .zshrc file
with open(zshrc_path, 'w') as file:
    file.writelines(lines)

print("Plugins and aliases updated successfully!")

