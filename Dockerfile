# Dockerfile for the DC Specific SAML IDP Testing setup using SimpleSamlPHP
# You can change the username/passwords for the server in src/authsources.php

FROM kristophjunge/test-saml-idp

COPY src/authsources.php /var/www/simplesamlphp/config/authsources.php