module Xeroizer
  module ApplicationHttpProxy

    def self.included(base)
      base.send :include, InstanceMethods
    end

    module InstanceMethods

      # URL end-point for this model.
      def url
        @application.xero_url + '/' + api_controller_name
      end

      def http_get(extra_params = {})
        application.http_get(application.client, url, extra_params)
      end

      def http_put(xml, extra_params = {})
# REMOVED
#        application.http_put(application.client, url, xml, extra_params)

# ADDED
        if extra_params.has_key?('url')
          request_url = @application.xero_url + '/' + extra_params.delete('url')
        else
          request_url = url
        end
        application.http_put(application.client, request_url, xml, extra_params)
#
      end

      def http_post(xml, extra_params = {})
        application.http_post(application.client, url, xml, extra_params)
      end

    end

  end
end
