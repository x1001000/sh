clear
read -p "Name a new project: " PROJECT
echo
echo Here we go...
echo
sudo apt-get update
sudo apt-get install mysql-server php5-gd drush -y
sudo service apache2 restart
curl https://raw.githubusercontent.com/x1001000/sh/master/reset-mysql-root.sh | bash
cd ~/Web
drush dl drupal --drupal-project-rename=$PROJECT -y
cd $PROJECT
drush si standard --account-pass=12345 --db-url=mysql://root:1234@localhost/$PROJECT --site-name="My Drupal" --clean-url=0 -y
chmod a+w sites/default/files
cd profiles/standard/translations
wget http://ftp.drupal.org/files/translations/7.x/drupal/drupal-7.31.zh-hant.po
drush en locale -y
drush dl drush_language -y
clear
echo Localization may take 3 minutes... :\)
drush language-add zh-hant
drush language-default zh-hant
drush dl bootstrap
drush en bootstrap -y
drush dl jquery_plugin
drush en jquery_plugin -y
drush dl jquery_update
drush en jquery_update -y
drush vset theme_default bootstrap
drush vset admin_theme bootstrap
clear
echo Your Drupal is ready: $USER.koding.io/$PROJECT
echo Your Drupal username: admin
echo Your Drupal password: 12345
