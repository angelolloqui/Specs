Pod::Spec.new do |s|
  s.name         = "PayPalMPL"
  s.version      = "2.1.2"
  s.summary      = "PayPal MPL Payment library for iOS."
  s.homepage     = "http://paypal.com"
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright (c) 2013 PayPal
      LICENSE
  }
  s.author       = "PayPal"
  file_name = 'PayPalMPL_2-1-2_iPhone_DevelopersPackage'
  internal_dir = 'PayPalMPL_iPhone_DevelopersPackage'
  s.source       = { :http => "https://github.com/paypal/sdk-packages/raw/gh-pages/MPL/#{file_name}.zip"}
  s.platform     = :ios, '5.0'
  s.source_files = "#{internal_dir}/Library/*.h"
  s.preserve_paths = "#{internal_dir}/Library/*.a"
  # s.frameworks = 'Security'
  # s.weak_frameworks = 'PassKit'
  s.libraries   = 'PayPalMPL', 'xml2', 'iconv', 'z'
  s.xcconfig  =  {'LIBRARY_SEARCH_PATHS' => "$(PODS_ROOT)/PayPalMPL/#{internal_dir}/Library"}
  # s.requires_arc = true 

end
