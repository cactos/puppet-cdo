# Class: cactos_cdo
# ===========================
#
# Parameters
# ----------
#
# * `mysql_root_pw`
# MYSQL root password for the CDO database
#
# * `mysql_cdo_pw`
# MYSQL password for the $mysql_cdo_username user
#
# * `mysql_cdo_username`
# MYSQL username for the cdo database
#
# Examples
# --------
#
# @example
#    class { 'cactos_cdo':
#      mysql_root_pw      = 'secretpass'
#      mysql_cdo_pw       = 'alsosecret'
#      mysql_cdo_username = 'cdo'
#    }
#
# Authors
# -------
#
# Simon Volpert <simon.volpert@uni-ulm.de>
#
class cactos_cdo (

  String $mysql_root_pw      = $cactos_cdo::params::mysql_root_pw,
  String $mysql_cdo_pw       = $cactos_cdo::params::mysql_root_pw,
  String $mysql_cdo_username = $cactos_cdo::params::mysql_cdo_username,

) inherits cactos_cdo::params {

  contain cactos_cdo::install
  contain cactos_cdo::config
  contain cactos_cdo::service
  
  Class['::mysql::server']->
  Class['::cactos_cdo::install']->
  Class['::cactos_cdo::config']->
  Class['::cactos_cdo::service']



}
