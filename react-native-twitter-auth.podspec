require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name        = 'react-native-twitter-auth'
  s.version     = package['version']
  s.summary     = package['description']
  s.homepage    = package['homepage']
  s.license     = package['license']
  s.author      = 'Justin Nguyen'
  s.platform    = :ios, "9.0"
  s.source      = { :git => "https://github.com/LuisAcerv/react-native-twitter-auth.git", :tag => "#{s.version}" }

  s.source_files  = "ios/*.{h,m}"

  s.dependency "React"
  s.dependency "TwitterKit5"
end
