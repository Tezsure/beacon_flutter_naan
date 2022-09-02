#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint beacon.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'beacon'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin.'
  s.description      = <<-DESC
A new Flutter plugin.
                       DESC
  s.homepage         = 'https://github.com/TalaoDAO/beacon'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Altme' => 'bibashshrestha@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'BeaconBlockchainSubstrate', '3.1.0'
  s.dependency 'BeaconBlockchainTezos', '3.1.0'
  s.dependency 'BeaconClientWallet', '3.1.0'
  s.dependency 'BeaconCore', '3.1.0'
  s.dependency 'BeaconTransportP2PMatrix', '3.1.0'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
