Pod::Spec.new do |s|
  s.name         = "RDCurl"
  s.version      = "7.46.0.-dev"
  s.summary      = "libcurl"
  s.homepage     = "http://www.curl.haxx.se"
  s.license      = "MIT License"
  s.author       = { "Daniel Stenberg" => "daniel@haxx.se" }
  s.source       = { :git => "https://github.com/serjepatoff/curl", :commit => "071ea4ffc419097edc6dee01c4ef3d3de028be9e" }

  s.platform     = :ios
  s.default_subspec = "common"
  s.requires_arc = false
  
  s.subspec 'common' do |common|
    common.platform = :ios, "8.0"
    common.source_files = "lib/*.{h,c}", "lib/vtls/*.{h,c}", "include/curl/*.{h}", "projects/iOS/libcurlStaticLib/gen-include/**.{h}"
    common.public_header_files = 'include/**.{h}'
  end
end