cask 'nautilus-lifeline' do
  version :latest
  sha256 :no_check

  url 'http://updates.nautiluslifeline.com/Lifeline-Setup.dmg'
  name 'Nautilus Lifeline'
  homepage 'http://www.nautiluslifeline.com/'

  auto_updates true

  app 'NautilusLifeline.app'
end
