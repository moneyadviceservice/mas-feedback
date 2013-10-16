module Zendesk
  module Feedback
    module ApplicationHelper
      def zendesk_feedback_tag(config)
        render 'mas/feedback/zendesk', config: config
      end

      def feedback_tab(config, tag_type=:li)
        content_tag tag_type, id: 'feedback-tab' do
          feedback_link(config[:url], config[:id]) do
            image_tag "mas/feedback/feedback-#{I18n.locale}.png", alt: t('feedback.zendesk.open')
          end
        end
      end

      def feedback_link(url, id, &block)
        link_to "#{url}/account/dropboxes/#{id}",
            onClick: "script: Zenbox.show(); return false;", &block
      end
    end
  end
end