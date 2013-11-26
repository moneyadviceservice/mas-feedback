require 'spec_helper'

module Zendesk
  module Feedback

    describe ApplicationHelper do


      describe '#zenbox_feedback_tab' do
        subject(:output)  { helper.zendesk_feedback_tab(config) }

        context 'config present' do
          let(:config) { double(:[] => { id: 1, url: 2 }) }

          it 'includes the dropbox id' do
            expect(output).to match(/dropboxID\:\s*"1"/)
          end

          it 'includes the dropbox url' do
            expect(output).to match(/url\:\s*"2"/)
          end
        end

        describe 'config missing' do
          ["", nil, [], {}].each do |missing|
            context "blank with #{missing.inspect}" do
              let(:config)  { missing }

              it 'returns blank' do
                expect(output).to be_blank
              end
            end
          end
        end
      end
    end
  end
end