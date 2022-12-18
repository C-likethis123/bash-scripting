#!/usr/local/bin/bash

# Author: Chow Jia Ying <chowjiaying211@gmail.com>
# Date created: 18 Dec 2022
# Last modified: 18 Dec 2022
# Description: Presents users with a menu to choose scripts they want to run. cruft_remover.sh and folder_organisation.sh must be present in the current directory.
# Usage: `./toolkit.sh`

select script in cruft_remover.sh folder_organisation.sh; do
  case "$script" in
    cruft_remover.sh) $(./cruft_remover.sh) ;;
    folder_organisation.sh) ./folder_organisation.sh;;
    *) echo "script does not exist!";;
  esac
  break
done

exit 0
