default['pw_chefdk']['chefdk']['url'] = 'https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.7.0-1_amd64.deb'
default['pw_chefdk']['chefdk']['sha256'] = '58b2e95768427f479b2114e02c924af1c51ed6b98fce829b439cc90692c3ca64'

default['pw_chefdk']['kitchen']['os_url'] = "http://localhost/foo"
default['pw_chefdk']['kitchen']['os_user'] = "demo"
default['pw_chefdk']['kitchen']['os_pass'] = "demo"
default['pw_chefdk']['kitchen']['os_keyname'] = "demo"
default['pw_chefdk']['kitchen']['os_img'] = 'pingworks/docker-ws-baseimg:0.2'
default['pw_chefdk']['kitchen']['os_flavor'] = 'default'

default['pw_chefdk']['kitchen']['user'] = 'ubuntu'
default['pw_chefdk']['kitchen']['group'] = 'ubuntu'
default['pw_chefdk']['kitchen']['userhome'] = '/home/ubuntu'
