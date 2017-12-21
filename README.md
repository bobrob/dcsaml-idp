# dcsaml-idp
source dockerfile and files for dcsaml-idp test IDP

based on the SimpleSamlPHP docker image from https://hub.docker.com/r/kristophjunge/test-saml-idp/

Sample command to create an image (also see makeimage.bat):

```
docker run --name=docker-saml -p 8080:80 -p 8443:443 \
-e SIMPLESAMLPHP_SP_ENTITY_ID=dockersaml.localhost \
-e SIMPLESAMLPHP_SP_ASSERTION_CONSUMER_SERVICE=https://dockersaml.localhost:8443/api/saml/SSO/alias/dockersaml.localhost \
-e SIMPLESAMLPHP_SP_SINGLE_LOGOUT_SERVICE=https://dockersaml.localhost:8443/api/saml/SingleLogout/alias/dockersaml.localhost \
-d bobrob/dcsaml-idp
```

where "dockersaml" is your organization's virtual host.


