Pod::Spec.new do |s|  
  s.name             = "JDExtension"
  s.version          = "1.0.0"  
  s.summary          = "Easy to use my extension"   
  s.homepage         = "https://github.com/RunningXuFat/JDExtension"  
  s.license          = 'MIT'  
  s.author           = { "徐建东" => "xjae2012@126.com" }  
  s.source           = { :git => "https://github.com/RunningXuFat/JDExtension.git", :tag => s.version.to_s }  
  s.platform     = :ios, '8.0'  
  s.requires_arc = true  
  s.source_files = 'JDExtension/*.{h,m,swift}'
end