require 'active_support/concern'
require 'devise'

#module Devise
module DeviseDkNemid
  mattr_accessor :dk_nemid_environment
  @@dk_nemid_environment = 'ocesii_danid_env_prod'

  mattr_accessor :dk_nemid_certificate_path
  @@dk_nemid_certificate_path = 'nemid'

  mattr_accessor :dk_nemid_certificate_password
  @@dk_nemid_certificate_password

  mattr_accessor :dk_nemid_allowed
  @@dk_nemid_allowed = ['otp', 'software', 'digitalsignatur']

  mattr_accessor :dk_nemid_cpr_service
  @@dk_nemid_cpr_service = :none

  mattr_accessor :dk_nemid_cpr_failures
  @@dk_nemid_cpr_failures = 5

  mattr_accessor :dk_nemid_request_issuer_id
  @@dk_nemid_request_issuer_id = ''

  mattr_accessor :dk_nemid_cpr_pid_spid
  @@dk_nemid_cpr_pid_spid = ''

  mattr_accessor :dk_nemid_cpr_rid_spid
  @@dk_nemid_cpr_rid_spid = ''

  mattr_accessor :dk_nemid_proxy
  @@dk_nemid_proxy = nil

  mattr_accessor :dk_nemid_test_mode
  @@dk_nemid_test_mode = nil

  mattr_accessor :dk_nemid_test_pid
  @@dk_nemid_test_pid = nil

  mattr_accessor :dk_nemid_test_cpr
  @@dk_nemid_test_cpr = nil

end

Devise.add_module(:dk_nemid,
  :route => :dk_nemid,
  :strategy => true,
  :controller => :dk_nemid_sessions,
  :model => 'dk_nemid/models/dk_nemid'
)

require 'dk_nemid/routes'
require 'dk_nemid/models/dk_nemid'
require 'dk_nemid/engine' if defined?(Rails)
require 'dk_nemid/strategies/dk_nemid'
require 'dk_nemid/savon_ssl'
require "dk_nemid/version"

