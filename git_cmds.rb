# frozen_string_literal: true

class GitCmd
  def initialize(branch_name)
    @branch_name = branch_name
  end

  def execute
    `git checkout -b #{self.get_branch_name}`
  end

  protected

  def get_branch_name
    @branch_name
  end

end


class EmojiGitCmd < GitCmd
  def initialize(branch_name)
    super(branch_name)
  end

  private
  EmojiRanges = Array[
    (0x1F600..0x1F64F).to_a,
    (0x1F300..0x1F5FF).to_a,
    (0x1F680..0x1F6FF).to_a,
    (0x1F900..0x1F9FF).to_a
  ]

  protected

  def gen_emoji
    range = EmojiRanges.sample
    emoji = range.sample
    emoji.chr(Encoding::UTF_8)
  end

  def get_branch_name
    super + gen_emoji
  end
end
