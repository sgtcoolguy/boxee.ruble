require 'ruble'

command 'Open Boxee' do |cmd|
  cmd.input = :none
  cmd.output = :discard
  cmd.key_binding = 'CONTROL+SHIFT+B'
  cmd.invoke do |context|
    # FIXME Launch boxee on all platforms!
    IO.popen('/Applications/Boxee.app/Contents/MacOS/Boxee &')
    nil
  end
end