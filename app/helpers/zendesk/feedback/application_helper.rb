module Zendesk
  module Feedback
    module ApplicationHelper
      def zenbox_feedback_tag(config)
        render 'mas/feedback/zendesk', config: config
      end

      def feedback_tab(url, key, tag_type=:li)
        content_tag tag_type, id: 'feedback-tab' do
          feedback_link(url, key) do
            image_tag "mas/feedback/feedback-#{I18n.locale}.png", alt: t('feedback.zendesk.open')
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