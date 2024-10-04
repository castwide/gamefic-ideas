# frozen_string_literal: true

require 'gamefic'
require 'gamefic/ideas/version'
require 'gamefic/ideas/idea'

module Gamefic
  # A Gamefic extension for queryable abstract ideas.
  #
  module Ideas
    extend Gamefic::Scriptable

    respond :think, anywhere(Idea) do |actor, idea|
      actor.tell idea.description
    end
    interpret 'consider :idea', 'think :idea'
    interpret 'ponder :idea', 'think :idea'
    interpret 'remember :idea', 'think :idea'
    interpret 'think about :idea', 'think :idea'
    interpret 'think of :idea', 'think :idea'
    interpret 'think on :idea', 'think :idea'
    interpret 'wonder :idea', 'think :idea'
    interpret 'wonder about :idea', 'think :idea'
  end
end
