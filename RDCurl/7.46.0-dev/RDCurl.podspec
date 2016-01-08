Pod::Spec.new do |s|
  s.name         = "RDCurl"
  s.version      = "7.46.0-dev"
  s.summary      = "libcurl"
  s.homepage     = "http://www.curl.haxx.se"
  s.license      = "MIT License"
  s.author       = { "Daniel Stenberg" => "daniel@haxx.se" }
  s.source       = { :git => "https://github.com/serjepatoff/curl", :commit => "448eb9b2a59f8c75902d4f40f83dca57ba41355a" }

  s.platform     = :ios, "8.0"
  s.requires_arc = false
 
  s.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'BUILDING_LIBCURL CURL_STATICLIB HAVE_CONFIG_H'}
  s.source_files = "lib/**/*.{h,c}", "include/**/*.{h}"
  s.public_header_files = 'include/**/*.{h}'
  s.header_mappings_dir = 'include'
end