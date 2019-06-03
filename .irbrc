# This file configures IRB used by Ruby

require 'irb/ext/save-history';
IRB.conf[:SAVE_HISTORY] = 200;
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history";
