require 'rails_helper'

RSpec.describe "Homes", type: :request do

	describe 'Home画面' do
		context 'Home画面が表示される' do
			before do
				get root_path
			end
			it 'リクエストは200 OKとなること' do
				expect(response.status).to eq 200
			end
		end
	end
end
