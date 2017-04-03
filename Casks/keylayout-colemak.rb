cask 'keylayout-colemak' do
  version '1.0'
  sha256 '7404831e090d0a6f1a3cd360ee9bd484987bb31e5a084c48f046bc7629b76595'

  url 'https://colemak.com/pub/mac/Colemak.keylayout'
  name 'Colemak'
  homepage 'https://colemak.com'
  license :mit

  container type: :naked

  artifact 'Colemak.keylayout', target: "#{ENV['HOME']}/Library/Keyboard Layouts/Colemak.keylayout"

  caveats do
    reboot
  end
end
