require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensure name  precense' do
      user = User.new(nom: 'Nom',email: 'sanple@example.com').save
      expect(user).to eq(false)
  end
  it 'ensure nom precense' do
    user = User.new(name: 'Name',email: 'sanple@example.com').save
    expect(user).to eq(false)
    end
    it 'ensure email precense' do
      user = User.new(name: 'Name',nom: 'Nom').save
      expect(user).to eq(false)
    end
    it 'no blanc precense' do
      user = User.new(name: '',nom: '',email: '').save
      user2 = User.new(name: '    ',nom: '    ',email:'     ').save
      expect(user).to eq(false)
      expect(user2).to eq(false)
    end
    it 'ensures there is not 2 similar emails' do
       user1 = User.new(name: 'Arthur', nom: 'Lazarus', email: 'sameemail@test.com', password_digest: 'fille').save
       user2 = User.new(name: 'Bob', nom: 'fischer', email: 'sameemail@test.com', password_digest: 'garcon').save
       expect(user2).to eq(false)
     end
     it 'ensures password presence' do
       user = User.new(name: 'Arthur', nom: 'Lazarus', email: 'test3@test.com').save
       expect(user).to eq(false)
     end
    it 'should save successfully' do
      user = User.new(name: 'Name'  ,nom: 'Nom',email: 'sanple@example.com').save
      expect(user).to eq(false)
    end
end
    context 'scope tests' do
    end
     end
