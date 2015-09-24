<?php
// HTTP
define('HTTP_SERVER', 'http://saints-gimalca.rhcloud.com/');

// HTTPS
define('HTTPS_SERVER', 'http://saints-gimalca.rhcloud.com/');

$rhcroot = getenv('OPENSHIFT_HOMEDIR');
// DIR
define('DIR_APPLICATION', dirname(__FILE__).'/catalog/');
define('DIR_SYSTEM', dirname(__FILE__).'/system/');
define('DIR_DATABASE', dirname(__FILE__).'/system/database/');
define('DIR_LANGUAGE', dirname(__FILE__).'/catalog/language/');
define('DIR_TEMPLATE', dirname(__FILE__).'/catalog/view/theme/');
define('DIR_CONFIG', dirname(__FILE__).'/system/config/');
define('DIR_IMAGE', dirname(__FILE__).'/image/');
define('DIR_CACHE', dirname(__FILE__).'/system/cache/');
define('DIR_DOWNLOAD', dirname(__FILE__).'/download/');
define('DIR_LOGS', dirname(__FILE__).'/system/logs/');

$dbhost = getenv('OPENSHIFT_MYSQL_DB_HOST');
$dbuser = getenv('OPENSHIFT_MYSQL_DB_USERNAME');
$dbpass = getenv('OPENSHIFT_MYSQL_DB_PASSWORD');
$dbname = getenv('OPENSHIFT_APP_NAME');
// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', $dbhost);
define('DB_USERNAME', $dbuser);
define('DB_PASSWORD', $dbpass);
define('DB_DATABASE', $dbname);
define('DB_PREFIX', 'oc_');
?>