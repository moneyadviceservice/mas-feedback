module MAS
  module Feedback
    module ApplicationHelper
      def feedback_tab(url, key)
        content_tag :li, id: 'feedback-tab' do
          feedback_link(url, key) do
            image_tag "budget_planner/feedback-#{I18n.locale}.png", alt: t('feedback.zendesk.open')
          end
        end
      end

      def feedback_link(url, key, &block)
        link_to "#{url}/account/dropboxes/#{key}",
            onClick: "script: Zenbox.show(); return false;", &block
      end
    end
  end
end