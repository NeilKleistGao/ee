#!/usr/bin/ruby -w

require './git_cmds.rb'

cmd = GitCmd.new(ARGV[0])
cmd.execute
