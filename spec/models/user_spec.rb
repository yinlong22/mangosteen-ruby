require 'rails_helper'

RSpec.describe User, type: :model do
  it '有 email' do
    user = User.new email: 'yinlong@qq.com'
    expect(user.email).to eq 'yinlong@qq.com'
  end
end
