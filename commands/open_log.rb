require 'ruble'

command 'Open Log' do |cmd|
  cmd.input = :none
  cmd.output = :discard
  cmd.key_binding = 'CONTROL+SHIFT+B'
  cmd.invoke do |context|
    log = nil
    if Ruble.platforms.include? :linux
      # Linux: /tmp/<username>-boxee.log
      log = "tmp/#{ENV['user']}-boxee.log"
    elsif Ruble.is_mac?      
      # Mac/ATV: ~/Library/Logs/boxee.log
      log = "#{ENV['HOME']}/Library/Logs/boxee.log"
    elsif Ruble.is_windows_xp?
      # Windows XP: C:\Documents and Settings\<your windows user name>\Application Data\BOXEE\boxee.log
      log = "C:\Documents and Settings\#{ENV['user']}\Application Data\BOXEE\boxee.log"
    elsif Ruble.is_windows?
      # Windows Vista: C:\Users\<your windows user name>\AppData\Roaming\BOXEE\boxee.log
      log = "C:\Users\#{ENV['user']}\AppData\Romaing\BOXEE\boxee.log"
    end
    
    Ruble::Editor.open(log) if log
    nil
  end
end