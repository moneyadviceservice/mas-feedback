module MAS
  module Feedback
    class ZendeskTab
      attr_reader :helper, :config, :locale

      def initialize(helper, config, locale)
        @helper, @config, @locale = helper, config[locale], locale
      end

      def to_tag(tag_type=:div)
        helper.content_tag tag_type, id: 'feedback-tab' do
          feedback_link do
            image_tag 
          end
        end
      end

      def feedback_link(&block)
        helper.link_to url, 
            onClick: "script: Zenbox.show(); return false;", &block
      end

      def image_tag
        helper.image_tag "mas/feedback/feedback-#{locale}.png", alt: helper.t('feedback.zendesk.open')
      end

      def url
        "#{config[:url]}/account/dropboxes/#{config[:id]}"
      end
    end
  end
end