# Rails expects module names in non-caps
module Mas
  module Feedback
    module ApplicationHelper
      def zendesk_feedback_tab(config, header=:head)
        return if config.blank?

        render('mas/feedback/zendesk',
          config: config,
          header: header) +
          MAS::Feedback::ZendeskTab.new(self, config, I18n.locale).to_tag
      end
    end
  end
end