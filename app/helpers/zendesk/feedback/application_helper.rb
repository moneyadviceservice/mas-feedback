module Zendesk
  module Feedback
    module ApplicationHelper
      def zendesk_feedback_tab(config, header=:head)
        render('mas/feedback/zendesk', 
          config: config,
          header: header) +
          MAS::Feedback::ZendeskTab.new(self, config, I18n.locale).to_tag
      end
    end
  end
end