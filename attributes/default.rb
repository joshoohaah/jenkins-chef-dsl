# Suffix of the recipe that implements your auth.
# Eg: github, ldap, etc
default['jenkins-chef']['auth']                  = 'github' #eg: 'github', 'basic'
default['jenkins-chef']['AuthorizationStrategy'] = 'FullControlOnceLoggedInAuthorizationStrategy' #eg: 'FullControlOnceLoggedInAuthorizationStrategy'

# Github auth example:
#  Create a 'Developer Application' on Github.
#  https://github.com/settings/applications
#  Works for Github Enteprise too!
default['jenkins-chef']['github']['site']         = 'https://github.com'
default['jenkins-chef']['github']['api_endpoint'] = 'https://api.github.com'
default['jenkins-chef']['github']['API_KEY']      = '2001819b76ae294309d9'
default['jenkins-chef']['github']['API_SECRET']   = '88c53c57912629e3d954d7e3c5af4dcb874a8022'

# SCM details
default['jenkins-chef']['git']['name']  = 'jenkins'
default['jenkins-chef']['git']['email'] = 'jenkins@example.com'

# Ruby manager
default['jenkins-chef']['ruby-manager'] = 'rvm' #eg: rvm. TODO: Rbenv

# Oracle JDKs
# default['java']['oracle']['accept_oracle_download_terms'] = true
default['java']['install_flavor']              = 'openjdk'
default['java']['jdk_version']                 = '7'
default['java']['accept_license_agreement'] = true
default['java']['set_default']                 = true

default['jenkins']['port'] = 8080
override['jenkins']['master']['version'] = '1.658-1.1'

default['jenkins']['master']['install_method'] = 'package'

# Install chefdk?
default['jenkins-chef']['chefdk'] = true
