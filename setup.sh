##
# Set up the Lawn Chair Studios development environment
##

# Exit if any subcommand fails
set -e

# Check for Homebrew
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log
fi

# Install Flow, Node, and nvm
echo "Installing Homebrew packages..."
brew install\
  postgres\
  redis\
  mongodb\
  elasticsearch\
  flow\
  node\
  nvm\

# If Ataom Editor is installed, then install Atom Editor packages
echo "Installing Atom Editor packages..."
apm install linter linter-eslint

# Install npm dependencies
echo "Installing npm dependencies..."
sudo npm i -g eslint

exit 0
# MTFBWY.
