#!/usr/bin/ruby -w

require './git_cmds.rb'

cmd = EmojiGitCmd.new(ARGV[0])
cmd.execute
