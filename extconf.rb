require 'mkmf'

dir_config("geoip", '/opt/local/')

if have_library('GeoIP', 'GeoIP_record_by_ipnum') and have_header('GeoIPCity.h')
  create_makefile('geoip')
else
  abort("you must have geoip c library installed!")
end
