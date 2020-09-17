With this recipe you will be able to build a new near version and run it automatically:

To run the recipe:
ansible-playbook -b -K build_binary.yml

to restart the node:
ansible-playbook -b -K rolling_restart.yml


To run the auto-update:
./autoupdate.sh


Install the autoupdate in the cron to run automatically.

