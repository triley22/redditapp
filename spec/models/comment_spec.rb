require 'rails_helper'

describe Comment do
  let(:comment) { create(:comment) }

  it { should validates_presence_of (:user_name) }

end