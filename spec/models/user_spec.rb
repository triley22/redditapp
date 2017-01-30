require 'rails_helper'

describe User do 
  let (:user) {create(:user, name: "John")}

  it { should validate_presence_of (:name) }
  it { should validate_presence_of (:email) }
  it { should validate_presence_of (:password) }


  describe '#name' do 
    it 'returns name of user' do 
      expect(user.name).to eq('John')
    end
  end
end