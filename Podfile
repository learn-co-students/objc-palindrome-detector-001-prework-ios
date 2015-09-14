source 'https://github.com/CocoaPods/Specs'

platform :ios, '8.0'

# Add Application pods here


target :unit_tests, :exclusive => true do
  inhibit_all_warnings!
  link_with 'UnitTests'

  pod 'Specta', '~> 1.0'
  pod 'Expecta', '~> 1.0'
  pod 'OCMockito', '~> 1.0'
  pod 'OHHTTPStubs', '~> 4.0'
  pod 'Swizzlean', '~> 0.2'
end