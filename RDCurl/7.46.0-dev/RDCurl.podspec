Pod::Spec.new do |s|
  s.name         = "RDCurl"
  s.version      = "7.46.0-dev"
  s.summary      = "libcurl"
  s.homepage     = "http://www.curl.haxx.se"
  s.license      = "MIT License"
  s.author       = { "Daniel Stenberg" => "daniel@haxx.se" }
  s.source       = { :git => "https://github.com/serjepatoff/curl", :commit => "9c70f51711644f50aa12028c6f6539a0a9e524d9" }

  s.platform     = :ios, "8.0"
  s.requires_arc = false
 
  s.source_files = "lib/**/*.{h,c}", "include/**/*.{h}"
  s.public_header_files = 'include/**/*.{h}'
  s.header_mappings_dir = 'include'
end