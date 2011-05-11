require 'ruble'

command 'Create Debug Log' do |cmd|
  cmd.input = :none
  cmd.output = :discard
  cmd.key_binding = 'CONTROL+SHIFT+B'
  cmd.invoke do |context|
    file = nil
    if Ruble.platforms.include? :linux
      # Linux: ~/.boxee/UserData/advancedsettings.xml
      file = "#{ENV['HOME']}/.boxee/UserData/advancedsettings.xml"
    elsif Ruble.is_mac?      
      # Mac/ATV: ~/Library/Application Support/BOXEE/UserData/advancedsettings.xml
      file = "#{ENV['HOME']}/Library/Application Support/BOXEE/UserData/advancedsettings.xml"
    elsif Ruble.is_windows_xp?
      # Windows XP: C:\Documents and Settings\<your windows user name>\Application Data\BOXEE\userdata\advancedsettings.xml
      file = "C:\Documents and Settings\#{ENV['user']}\Application Data\BOXEE\userdata\advancedsettings.xml"
    elsif Ruble.is_windows?
      # Windows Vista: C:\Users\<windows user name>\AppData\Roaming\BOXEE\userdata\advancedsettings.xml
      file = "C:\Users\#{ENV['user']}\AppData\Roaming\BOXEE\userdata\advancedsettings.xml"
    end
    # TODO Check if file already exists!
    contents = "<advancedsettings>\n  <loglevel>0</loglevel>\n</advancedsettings>"
    popen(file, 'w') {|io| io << contents} if file

    nil
  end
end