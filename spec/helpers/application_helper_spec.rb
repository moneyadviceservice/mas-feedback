require 'spec_helper'

module Zendesk
  module Feedback

    describe ApplicationHelper do
      let(:config)      { double(:[] => { id: 1, url: 2 }) }

      describe '#zenbox_feedback_tag' do
        
        subject(:output)  { helper.zendesk_feedback_tag(config) }
        
        it 'includes the dropbox id' do
          expect(output).to match(/dropboxID\:\s*"1"/)
        end

        it 'includes the dropbox url' do
          expect(output).to match(/url\:\s*"2"/)
        end
      end

      describe '#feedback_tab' do
        subject(:output)  { helper.feedback_tab(config) }

        before(:each) do
          output.singleton_class.send(:define_method, :has_tag?) do |tag|
            Capybara::RSpecMatchers::HaveSelector.new(tag)
          end
        end
        
        it 'should' do
          output.should have_tag(:li)
        end
      end
    end
  end
end