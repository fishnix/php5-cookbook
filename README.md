# Description

Installs and configures PHP5.

### Notes:
* This was not meant for sharing, I plan to move to the community cookbook


# Supported Platforms

CentOS 5.x/6.x

# Requirements

## Cookbooks:
* apache2
 
# Attributes

#### session handler (set to "memcache" to use memcached)
    default[:php5][:session_handler] = 'files'
    default[:php5][:session_save_path] = '/var/lib/php/session'
    default[:php5][:memcache_session_save_path] = 'tcp://localhost:11211?persistent=1&weight=1&timeout=1&retry_interval=15'
    
### maximums and limits
    default[:php5][:post_max_size]
    default[:php5][:upload_max_filesize]
    default[:php5][:max_execution_time]
    default[:php5][:max_input_time]
    default[:php5][:memory_limit]

# Usage

## Recipes

#### php5::default

Include `php5` in your node's `run_list` to get:

* "php5::module_mysql"
* "php5::module_apc"
* "php5::module_gd"
* "php5::module_memcache"
 
#### php5::module_mysql

Installs the mysql php module

#### php5::module_apc

Installs the apc php module

#### php5::module_gd

Installs the gd php module

#### php5::module_memcache

Installs the memcache php module

#### php5::module_varnish

Installs the varnish php module

#### php5::module_xml

Installs the xml php module

# Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

# License and Authors

Author:: E Camden Fisher (<fish@fishnix.net>)

