Pod::Spec.new do |s|
  s.name             = "AEPSampleExtension"
  s.version          = "0.0.1"
  s.summary          = "AEPSampleExtension"
  s.description      = <<-DESC
AEPSampleExtension
                        DESC
  s.homepage         = "https://github.com/adobe/aepsdk-core-ios"
  s.license          = 'Apache V2'
  s.author       = "Adobe Experience Platform SDK Team"
  s.source           = { :git => "https://github.com/adobe/aepsdk-core-ios", :tag => s.version.to_s }

  s.requires_arc          = true

  s.ios.deployment_target = '10.0'

  s.swift_version = '5.0'

  s.source_files          = 'AEPSampleExtension/AEPSampleExtension/**/*.swift'

    s.dependency 'AEPServices'
    s.dependency 'AEPEventhub'

end
