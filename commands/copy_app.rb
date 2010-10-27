require 'ruble'

command 'Copy App to Boxee' do |cmd|
  cmd.input = :none
  cmd.output = :discard
  cmd.key_binding = 'CONTROL+SHIFT+B'
  cmd.invoke do |context|
    # TODO Copy app to boxee dir!
    # FIXME Make this work for all OSes, see http://www.gonzee.tv/?p=175
    `cp -R #{context.project.to_dir} ~/Application\ Support/BOXEE/UserData/apps/`
    nil
  end
end