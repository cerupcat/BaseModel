Pod::Spec.new do |s|
  s.name     = 'BaseModel'
  s.version  = '2.6.4'
  s.license  = 'zlib'
  s.summary  = 'BaseModel provides a base class for building model objects for your iOS or Mac OS projects.'
  s.homepage = 'https://github.com/cerupcat/BaseModel'
  s.authors  = { 'Mattt Thompson' => 'm@mattt.me' }
  s.source   = { :git => 'https://github.com/cerupcat/BaseModel.git', :tag => s.version, :submodules => true }
  s.requires_arc = true
  s.source_files = 'BaseModel'
  
  pch_AF = <<-EOS
#ifndef TARGET_OS_IOS
  #define TARGET_OS_IOS TARGET_OS_IPHONE
#endif
#ifndef TARGET_OS_WATCH
  #define TARGET_OS_WATCH 0
#endif
#ifndef TARGET_OS_TV
  #define TARGET_OS_TV 0
#endif
EOS
  s.prefix_header_contents = pch_AF
  s.ios.deployment_target = '8.0'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
end
