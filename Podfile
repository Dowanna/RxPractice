# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'RxPractice' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for RxPractice
  pod 'RxCocoa'
  pod 'RxSwift'

  target 'RxPracticeTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'RxPracticeUITests' do
    inherit! :search_paths
    # Pods for testing
  end
end


# Necessary to use RxSwift in Playground
# otherwise causes error
# https://forums.raywenderlich.com/t/playground-does-not-execute-on-first-chapter/41341/27
post_install do |installer|

    installer.pods_project.build_configurations.each do |config|
        config.build_settings.delete('CODE_SIGNING_ALLOWED')
        config.build_settings.delete('CODE_SIGNING_REQUIRED')
    end

    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CONFIGURATION_BUILD_DIR'] = '$PODS_CONFIGURATION_BUILD_DIR'
        end
    end
end
