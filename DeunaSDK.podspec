Pod::Spec.new do |s|
    s.name             = 'DeunaSDK'
    s.version          = '2.8.9'
    s.summary          = 'SDK de Deuna para iOS'
    s.description      = <<-DESC
      SDK oficial de Deuna para integrar pagos y funcionalidades en aplicaciones iOS.
    DESC
  
    s.homepage         = 'https://github.com/darwin-morocho/deuna-sdk-ios.git'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'catalanseb' => 'email@example.com' }
    s.source           = { :git => 'https://github.com/darwin-morocho/deuna-sdk-ios.git', :tag => s.version.to_s }
  
    s.ios.deployment_target = '11.0'
    s.swift_versions   = ['5.0']
    
    # Archivos fuente
    s.source_files     = 'Sources/DeunaSDK/**/*.{h,m,swift}'
  
    # Declarar la dependencia a DEUNAClient
    s.dependency 'DEUNAClient'
  end