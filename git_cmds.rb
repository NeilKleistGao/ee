# frozen_string_literal: true

class GitCmd
  def initialize(branch_name)
    @branch_name = branch_name
  end

  def execute
    `git checkout -b #{@branch_name}`
  end
end
