require 'rails_helper'

RSpec.describe Lifechart, type: :model do
  # This test assumes there is already a user registered
  current_user = User.first_or_create!(email: 'test@example.com', password: 'testte', password_confirmation: 'testte',)

  it 'has a name' do
    lifechart = Lifechart.new(
      name: '',
      birthday: '3 June 1980',
      body_freq: 2,
      mind_freq: 2,
      love_freq: 2,
      money_freq: 2,
      play_freq: 2,
      work_freq: 2,
      user: current_user
    )

    expect(lifechart).to_not be_valid
    lifechart.name = "Has a name"
    expect(lifechart).to be_valid
  end

  it 'has a birthday' do  
  end
end