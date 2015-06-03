##
# Set up the Lawn Chair Studios development environment
##

# Exit if any subcommand fails
set -e

# Install Flow, Node, and nvm
echo "Installing Homebrew packages..."
brew install flow

# If Ataom Editor is installed, then install Atom Editor packages
echo "Installing Atom Editor packages..."
apm install linter linter-eslint

# Install npm dependencies
echo "Installing npm dependencies..."
sudo npm i -g eslint

# MTFBWY.
