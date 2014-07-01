# default to using files for session
# optionally, use "memcache" and set memcache_session_save_path
# to the memcache location
default[:php5][:session_handler] = 'files'
default[:php5][:session_save_path] = '/var/lib/php/session'
default[:php5][:memcache_session_save_path] = 'tcp://localhost:11211?persistent=1&weight=1&timeout=1&retry_interval=15'
default[:php5][:post_max_size] = '10M'
default[:php5][:upload_max_filesize] = '10M'
default[:php5][:max_execution_time] = '30'
default[:php5][:max_input_time] = '60'
default[:php5][:memory_limit] = '24M'
