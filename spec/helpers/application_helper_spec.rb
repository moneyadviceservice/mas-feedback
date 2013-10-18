require 'spec_helper'

module Zendesk
  module Feedback

    describe ApplicationHelper do
      let(:config)      { double(:[] => { id: 1, url: 2 }) }

      describe '#zenbox_feedback_tab' do
        
        subject(:output)  { helper.zendesk_feedback_tab(config) }
        
        it 'includes the dropbox id' do
          expect(output).to match(/dropboxID\:\s*"1"/)
        end

        it 'includes the dropbox url' do
          expect(output).to match(/url\:\s*"2"/)
        end
      end
    end
  end
end