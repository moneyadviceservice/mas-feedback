# Rails expects module names in non-caps
module Mas
  module Feedback
    module ApplicationHelper
      def zendesk_feedback_tab(config, header=:head)
        return if config.blank?
        zendesk_initialize(config, header) + zendesk_feedback_tag(config)
      end

    private

      def zendesk_initialize(config, header=:head)
        return "" if @__zendesk_initialized
        @__zendesk_initialized = true
        render('mas/feedback/zendesk', config: config, header: header)
      end

      def zendesk_feedback_tag(config)
        MAS::Feedback::ZendeskTab.new(self, config, I18n.locale).to_tag
      end
    end
  end
end
