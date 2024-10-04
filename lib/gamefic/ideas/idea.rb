# frozen_string_literal: true

class Idea
  include Gamefic::Describable

  def initialize **args
    args.each_pair { |k, v| send "#{k}=", v }
  end

  def children
    []
  end

  def flatten
    []
  end
end
