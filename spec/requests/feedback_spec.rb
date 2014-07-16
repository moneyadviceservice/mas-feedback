require 'spec_helper'

describe 'Feedback', type: :request do
  context 'when config is present' do
    it 'includes dropbox id' do
      get '/en/frontend/with_config'
      expect(response.body).to match(/dropboxID\:\s*"1"/)
    end

    it 'includes the dropbox url' do
      get '/en/frontend/with_config'
      expect(response.body).to match(/url\:\s*"2"/)
    end
  end

  context "config is blank" do
    it 'does not include script' do
      get '/en/frontend/without_config'
      expect(response.body).to_not include('script')
    end
  end

  context 'called twice' do
    it 'should not initialize twice' do
      get '/en/frontend/called_twice'

      expect(response.body).to_not match(/dropboxID\:\s*"1".*dropboxID\:\s*"1"/)
      expect(response.body).to_not match(/url\:\s*"2".*url\:\s*"2"/)
    end
  end
end
