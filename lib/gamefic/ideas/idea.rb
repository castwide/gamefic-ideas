# frozen_string_literal: true

module Gamefic
  module Ideas
    # A pseudo-entity for queryable abstract ideas.
    #
    # An Idea can have a name, description, and synonyms, but it does not have
    # a parent or children.
    #
    class Idea
      include Gamefic::Describable

      def initialize **args
        args.each_pair { |k, v| send "#{k}=", v }
      end

      def parent
        nil
      end

      def children
        []
      end

      def flatten
        []
      end

      def parent=
        raise RuntimeError, 'Ideas cannot have parents'
      end
    end
  end
end

Idea = Gamefic::Ideas::Idea
