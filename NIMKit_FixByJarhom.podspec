Pod::Spec.new do |s| 
  s.name = 'NIMKit_FixByJarhom' 
  s.version = '2.7.8' 
  s.summary = 'Netease IM UI Kit' 
  s.homepage = 'http://netease.im' 
  s.license = { :'type' => 'Copyright', :'text' => ' Copyright 2017 Netease '} 
  s.authors = 'Netease IM Team'  
  s.source  = { :git => 'https://github.com/JarhomChen/NIM_iOS_UIKit.git', :tag => '2.7.8' }  
  s.platform = :ios, '8.0' 
  s.frameworks = 'CoreText', 'SystemConfiguration', 'AVFoundation', 'CoreTelephony', 'AudioToolbox', 'CoreMedia' , 'VideoToolbox' 
  s.libraries  = 'sqlite3.0', 'z', 'c++' 
  s.subspec 'Full' do |cs|	
    cs.source_files = 'NIMKit/NIMKit/**/*.{h,m}' 
    cs.dependency 'NIMKit_FixByJarhom/Core' 
    cs.dependency 'NIMSDK', '~> 5.0.1' 
  end 

  s.subspec 'Lite' do |cs|  
    cs.source_files = 'NIMKit/NIMKit/**/*.{h,m}'  
    cs.dependency 'NIMKit_FixByJarhom/Core'
    cs.dependency 'NIMSDK_LITE', '~> 5.0.1'  
  end  

  s.subspec 'Core' do |os|     
    os.resources = 'NIMKit/Resources/*.*'   
    os.dependency 'SDWebImage', '~> 4.3.3'  
    os.dependency 'Toast', '~> 3.0'         
    os.dependency 'M80AttributedLabel', '~> 1.6.3'       
    os.dependency 'TZImagePickerController','~> 3.0.7'
  end   

  s.default_subspec = 'Lite'  

end 
