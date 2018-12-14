cd /var/www/vhosts/gruene-kampagne.de/
cd httpdocs
rm -rf .[^.] .??*
cd ..
rm -R httpdocs/*
git clone https://github.com/grapedevelopment/grape httpdocs
git clone https://github.com/grapedevelopment/grape_theme_grapefruit-mobile httpdocs/grape-themes/grapefruit-mobile
git clone https://github.com/grapedevelopment/grape_module_canvassing httpdocs/grape-modules/canvassing
ln -s /var/simplesaml/www/ httpdocs/simplesaml
cp grape-config.php httpdocs/
chown -R gruenestgt:psaserv httpdocs/
