
Pod::Spec.new do |s|
  s.name         = "RNPoolCueSkillsLore"
  s.version      = "1.0.0"
  s.summary      = "RNPoolCueSkillsLore"
  s.description  = <<-DESC
                  RNPoolCueSkillsLore
                   DESC
                   s.homepage     = "https://github.com/dorislynch/PoolCueSkillsLore"
                   s.license      = "MIT"
                   # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
                   s.author             = { "author" => "author@domain.cn" }
                   s.platform     = :ios, "7.0"
                   s.source       = { :git => "https://github.com/dorislynch/PoolCueSkillsLore.git", :tag => "master" }
                   s.source_files  = "ios/**/*.{h,m}"
                   s.requires_arc = true
                 
                 
                   s.dependency "React"
                   s.dependency 'CocoaSecurity'
                   s.dependency 'JJException'
  #s.dependency "others"

end

  