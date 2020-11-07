require 'rails_helper'

RSpec.describe Book, type: :model do

  	context 'データが正しく表示される' do
  		before do
  			@book = Book.new
  			@book.title = "題名"
  			@book.body = "本文"
  			@book.save
  		end
  		it "全て入力してあるので保存される" do
  			expect(@book).to be_valid
  		end
  	end
  	context 'データが正しく保存されない' do
  		before do
  			@book = Book.new
  			@book.title = ""
  			@book.body = "本文"
  			@book.save
  		end
  		it 'titleが入力されていないので保存されない' do
  			expect(@book).to be_invalid
  			expect(@book.errors[:title]).to include("can't be blank")
  		end
  	end

end
