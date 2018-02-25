cask 'emacs-pretest' do
  version '26.0.91-1'
  sha256 'f6b2c64be15806f153913e2d6f2c6e526c9f596d63438c044bafcf34abba1942'

  url "https://emacsformacosx.com/emacs-builds/Emacs-pretest-#{version}-universal.dmg"

  name 'Emacs Pretest'
  homepage 'https://emacsformacosx.com/'

  conflicts_with formula: ['emacs', 'ctags', 'emacs-plus']

  app 'Emacs.app'
  binary "#{appdir}/Emacs.app/Contents/MacOS/Emacs", target: 'emacs'
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/ctags"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/ebrowse"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/emacsclient"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/etags"

  zap trash: [
               '~/Library/Caches/org.gnu.Emacs',
               '~/Library/Preferences/org.gnu.Emacs.plist',
               '~/Library/Saved Application State/org.gnu.Emacs.savedState',
             ]
end
