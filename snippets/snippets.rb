require 'ruble'

with_defaults :scope => 'text.xml' do
  
  snippet 'app' do |s|
    s.trigger = 'app'
    s.expansion = "<app>
  <id>${TM_PROJECT_NAME}</id>
  <name>THRU YOU</name>
  <version>1.0</version>
  <description>THRU YOU | Kutiman mixes YouTube</description>
  <thumb>http://dir.boxee.tv/apps/${TM_PROJECT_NAME}/thumb.png</thumb>
  <repository>http://dir.boxee.tv/apps</repository>
  <media>${1:video/pictures/music}</media>
  <copyright>${TM_FULL_NAME}</copyright>
  <email>${2:support@boxee.tv}</email>
  <type>${3:skin/rss/plugin}</type>
  <startWindow>14000</startWindow>
  <platform>${4:all/win/mac/atv/linux}</platform>
  <minversion>0.9.12</minversion>
 </app>"
  end
  
  snippet 'window' do |s|
    s.trigger = 'wi'
    s.expansion = "<window type=\"window\" id=\"${1:14000}\">
  <defaultcontrol always=\"true\">120</defaultcontrol>
  <allowoverlay>${2:no/yes}</allowoverlay>
  <onload>$3</onload>
  <onunload>$4</onunload>
  <controls>
    co${0}
  </controls>
</window>"
  end
  
  snippet 'label control' do |s|
    s.trigger = 'co'
    s.expansion = "<control type=\"label\" id=\"${1:110}\">
   <posx>280</posx>
   <posy>100</posy>
   <width>250</width>
   <height>40</height>
   <label>Some text goes here</label>
</control>"
  end

end