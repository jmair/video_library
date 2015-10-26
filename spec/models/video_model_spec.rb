require 'rails_helper'

RSpec.describe Video, type: :model do

  it 'creates a new video' do
    Video.create!(title: 'Video1', description: 'This is a test')

    expect(Video.all.count).to eq(1)
    expect(Video.first.title).to eq('Video1')
    expect(Video.first.description).to eq('This is a test')
  end

end