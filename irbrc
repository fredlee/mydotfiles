# Make gems available
require 'rubygems'

# Automatic Indentation
IRB.conf[:AUTO_INDENT] = true

# Remove the annoying irb(main):001:0 and replace with >>
IRB.conf[:PROMPT_MODE] = :SIMPLE

# Save History between irb sessions
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 100
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

# Bond is on a mission to improve irb’s autocompletion.
# http://github.com/cldwalker/bond
require 'bond'
Bond.start

# Awesome Print is Ruby library that pretty prints Ruby objects in full color 
# exposing their internal structure with proper indentation.
# http://github.com/michaeldv/awesome_print
require "ap"
IRB::Irb.class_eval do
  def output_value
    ap @context.last_value
  end
end

# Draw ASCII tables
require 'hirb'
require 'hirb/import_object'
Hirb.enable
extend Hirb::Console
