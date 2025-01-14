Pod::Spec.new do |s|
  s.name             = 'DeunaSDK'
  s.version          = '2.8.11'
  s.summary          = 'SDK de Deuna para iOS'
  s.description      = <<-DESC
    SDK oficial de Deuna para integrar pagos y funcionalidades en aplicaciones iOS.
  DESC

  s.homepage         = 'https://github.com/deuna-developers/deuna-sdk-ios.git'
  s.license          = { :type => 'MIT', :file => 'LICENCE' }
  s.author           = { 'deuna' => 'dmorocho@deuna.com' }
  s.source           = { :git => 'https://github.com/deuna-developers/deuna-sdk-ios.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_versions   = ['5.0']
  
  s.source_files     = 'Sources/DeunaSDK/**/*.{h,m,swift}'

  s.dependency 'DEUNAClient', '~> 1.0.0'

  # Asegurar el uso correcto de frameworks
  s.vendored_frameworks = 'Frameworks/AnyCodable.framework'
  
  # Configuración de firma de código
  s.pod_target_xcconfig = {
    'CODE_SIGNING_ALLOWED' => 'YES',
    'DEFINES_MODULE' => 'YES',
    'LD_RUNPATH_SEARCH_PATHS' => '$(inherited) @executable_path/Frameworks'
  }
end
