Pod::Spec.new do |s|
  s.name             = "TPSMKDropdownMenu"
  s.version          = "1.3.1"
  s.summary          = "Dropdown Menu for iOS"
  s.description      = <<-DESC
Dropdown Menu for iOS with many customizable parameters to suit any needs.
                       DESC

  s.homepage         = "https://github.com/tipsi/MKDropdownMenu"
  s.screenshots      = "https://raw.github.com/maxkonovalov/MKDropdownMenu/master/Screenshots/MKDropdownMenu.png"
  s.license          = 'MIT'
  s.author           = "Max Konovalov"
  s.source           = { :git => "https://github.com/tipsi/MKDropdownMenu.git", :tag => "tipsi_1.3.1" }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'MKDropdownMenu/*'
end
