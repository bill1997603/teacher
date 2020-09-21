require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validation' do
    it 'phone not exist' do
      user = User.new(name: 'test')
      expect(user.valid?).to be_falsey
    end

    it 'phone exist' do
      user = User.new(name: 'test', phone: '18828072450')
      expect(user.valid?).to be_truthy
    end

    it 'phone exist and format failed' do
      user = User.new(name: 'test', phone: '000000')
      expect(user.valid?).to be_falsey
    end

    it 'email exist and format failed' do
      user = User.new(name: 'test', phone: '000000', email: '123123')
      expect(user.valid?).to be_falsey
    end

    it 'email exist and format success' do
      user = User.new(name: 'test', phone: '000000', email: '123123@qq.com')
      expect(user.valid?).to be_truthy
    end

    it 'name not exist' do
      user = User.new(phone: '18828072450')
      expect(user.valid?).to be_falsey
    end

    it 'name exist' do
      user = User.new(name: 'test', phone: '18828072450')
      expect(user.valid?).to be_truthy
    end
  end
end
