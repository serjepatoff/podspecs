Pod::Spec.new do |s|
  s.name         = "RDCurl"
  s.version      = "7.46.0-dev"
  s.summary      = "libcurl"
  s.homepage     = "http://www.curl.haxx.se"
  s.license      = "MIT License"
  s.author       = { "Daniel Stenberg" => "daniel@haxx.se" }
  s.source       = { :git => "https://github.com/serjepatoff/curl", :commit => "3548096ea232e939d4c7dc249cfd0ea97cee9ac2" }

  s.platform     = :ios, "8.0"
  s.default_subspec = "common"
  s.requires_arc = false
 
  s.source_files = "lib/**/*.{h,c}", "include/**/*.{h}"
  s.public_header_files = 'include/**/*.{h}'
  s.common.header_mappings_dir = 'include'
end