module SulStyles
  module CurrentUser
    extend ActiveSupport::Concern

    included do
      helper_method :current_user
    end

    def current_user
      @current_user ||= CurrentUser.new(remote_user_id, remote_privgroups)
    end

    private

    def remote_user_id
      if request.env['REMOTE_USER'].present?
        request.env['REMOTE_USER']
      elsif Rails.env.development? && ENV['REMOTE_USER']
        ENV['REMOTE_USER']
      end
    end

    def remote_privgroups
      return webauth_privgroups if webauth_privgroups.present?

      shibboleth_privgroups
    end

    def webauth_privgroups
      groups('WEBAUTH_LDAPPRIVGROUP', '|')
    end

    def shibboleth_privgroups
      groups('eduPersonEntitlement', ';')
    end

    def groups(key, delimiter)
      if request.env[key]
        request.env[key].split(delimiter)
      elsif Rails.env.development? && ENV[key]
        ENV[key].split(delimiter)
      else
        []
      end
    end
  end
end
