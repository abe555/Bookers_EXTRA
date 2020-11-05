require 'rails_helper'

RSpec.describe "Books", type: :request do

	describe 'index画面' do
		context 'index画面が正しく表示される' do
			before do
				get books_path
			end
			it 'リクエストは200 OKとなること' do
				expect(response.status).to eq 200
			end
			it 'タイトルが正しく表示されること' do
				expect(response.status).to include("新規投稿")
			end
		end
	end

end
