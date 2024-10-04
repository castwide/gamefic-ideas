# frozen_string_literal: true

RSpec.describe Gamefic::Ideas do
  let(:klass) { Class.new(Gamefic::Plot) { include(Gamefic::Ideas) } }

  it 'has a version number' do
    expect(Gamefic::Ideas::VERSION).not_to be nil
  end

  it 'responds to think commands' do
    plot = klass.new
    plot.make Idea, name: 'food', description: 'Food!'
    player = plot.introduce
    player.perform 'think about food'
    expect(player.messages).to include('Food!')
  end
end
