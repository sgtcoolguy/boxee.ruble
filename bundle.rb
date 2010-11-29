require 'ruble'

bundle 'Boxee' do |bundle|
  bundle.author = 'Christopher Williams'
  bundle.copyright = '(c) Copyright 2010 Christopher Williams. Distributed under MIT license.'
  bundle.description = 'This is a bundle to help create boxee apps'
  bundle.repository = 'git://github.com/sgtcoolguy/boxee.ruble.git'

  bundle.menu 'Boxee' do |m|
    m.command 'Open Boxee'
    m.command 'Copy App to Boxee'
    m.command 'Open Log'
    m.command 'Create Debug Log'
  end
end
