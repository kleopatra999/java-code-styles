#!/bin/bash
# Installs Mapzen's IntelliJ configs into your user configs.

echo "Installing Mapzen code style configs..."

for i in $HOME/.IntelliJIdea*/config/codestyles \
         $HOME/.IdeaIC*/config/codestyles \
         $HOME/.AndroidStudio*/config/codestyles
do
  cp -frv $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/configs/* $i 2> /dev/null
done

echo "Done."
echo ""
echo "Restart IntelliJ and/or AndroidStudio, go to preferences, and apply 'Mapzen' or 'MapzenAndroid'."
