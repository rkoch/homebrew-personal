cask 'multideco' do
  version '4.14.0'
  sha256 '697321e2448e06d60d1029d5421164c5a83b5bb560c2d549d08b6ba67697ca25'

  url do
    require 'open-uri'
    # No known stable URL; fetching disposable URL from landing site
    open('https://www.hhssoftware.com/multideco/download.php') do |landing_page|
      content = landing_page.read
      URI.extract(content, /https/).find{|s| s.include?("mac_intel")}.tr('\'', '') + "&file=multideco_#{version}_i386.dmg"
    end
  end


  name 'MultiDeco'
  homepage 'https://www.hhssoftware.com/multideco'

  pkg 'MultiDeco_i386.pkg'

  uninstall pkgutil: 'com.hhssoftware.multideco.MultiDeco.pkg'

  zap delete: '~/Saved Application State/com.hhssoftware.multideco.savedState',
      trash:  [
                '~/Library/Preferences/com.hhssoftware.multideco.plist',
                '~/Library/MultiDeco',
              ]
end
