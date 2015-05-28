<?php
// HTTP
define('HTTP_SERVER', 'http://saints-gimalca.rhcloud.com/');

// HTTPS
define('HTTPS_SERVER', 'http://saints-gimalca.rhcloud.com/');

$rhcroot = getenv('OPENSHIFT_HOMEDIR');
// DIR
define('DIR_APPLICATION', $rhcroot.'catalog/');
define('DIR_SYSTEM', $rhcroot.'system/');
define('DIR_DATABASE', $rhcroot.'system/database/');
define('DIR_LANGUAGE', $rhcroot.'catalog/language/');
define('DIR_TEMPLATE', $rhcroot.'catalog/view/theme/');
define('DIR_CONFIG', $rhcroot.'system/config/');
define('DIR_IMAGE', $rhcroot.'image/');
define('DIR_CACHE', $rhcroot.'system/cache/');
define('DIR_DOWNLOAD', $rhcroot.'download/');
define('DIR_LOGS', $rhcroot.'system/logs/');

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