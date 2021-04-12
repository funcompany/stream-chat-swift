Pod::Spec.new do |spec|
  spec.name = "StreamChat"
  spec.version = "3.1.5"
  spec.summary = "StreamChat iOS Client"
  spec.description = "stream-chat-swift is the official Swift client for Stream Chat, a service for building chat applications."

  spec.homepage = "https://getstream.io/chat/"
  spec.license = { :type => "BSD-3", :file => "LICENSE" }
  spec.author = { "getstream.io" => "support@getstream.io" }
  spec.social_media_url = "https://getstream.io"
  spec.swift_version = "5.2"
  spec.platform = :osx, "10.13"
  spec.source = { :git => "https://github.com/funcompany/stream-chat-swift.git" }
  spec.requires_arc = true

  spec.source_files  = "Sources/StreamChat/**/*.swift"
  spec.exclude_files = ["Sources/StreamChat/**/*_Tests.swift", "Sources/StreamChat/**/*_Mock.swift"]
  spec.resource_bundles = { "StreamChat" => ["Sources/StreamChat/**/*.xcdatamodeld"] }

  spec.framework = "Foundation"

  spec.dependency "Starscream", "~> 4.0"
  spec.dependency 'DifferenceKit/AppKitExtension', :git => 'https://github.com/funcompany/DifferenceKit.git', :branch => 'travel-fixes', :commit => '85b244f6fbbbafce19965d3a2b24712ac2f31d79'
end
