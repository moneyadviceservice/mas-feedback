require 'spec_helper'

module MAS
  module Feedback
    describe ZendeskTab do
      let(:config) { double(:[] => { id: 1, url: 2 }) }

      describe '#url' do
        context 'basic config hash' do
          let(:config) { { en: { id: 1, url: 'examplish.com' } } }

          subject(:tab) { ZendeskTab.new(double, config, :en)}

          it 'generates the correct URL' do
            expect(tab.url).to eql("examplish.com/account/dropboxes/1")
          end
        end
      end

      describe '#to_tag' do
        let(:helper)  { FakeHelper.new }
        let(:tab) { ZendeskTab.new(helper, config, :en)}
        subject   { tab.to_tag }
        it 'has a wrapper element' do
          expect(subject).to have_tag('div#feedback-tab')
        end
        it 'embeds an image in the link' do
          expect(subject).to have_tag('a img')
        end
      end

    end
  end
end