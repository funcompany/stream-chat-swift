Pod::Spec.new do |spec|
  spec.name = "StreamChatCore"
  spec.version = "2.2.3"
  spec.summary = "Stream iOS Chat Core"
  spec.description = "stream-chat-swift is the official Swift client for Stream Chat, a service for building chat applications."

  spec.homepage = "https://getstream.io/chat/"
  spec.license = { :type => "BSD-3", :file => "LICENSE" }
  spec.author = { "Alexey Bukhtin" => "alexey@getstream.io" }
  spec.social_media_url = "https://getstream.io"
  spec.swift_version = "5.1"
  spec.platform = :osx, "10.13"
  spec.source = { :git => "https://github.com/funcompany/stream-chat-swift.git" }
  spec.requires_arc = true

  spec.source_files  = "Sources/Core/**/*.swift"

  spec.framework = "Foundation"
  
  spec.dependency "StreamChatClient"
  spec.dependency "RxSwift", "~> 5.1"
  spec.dependency "RxCocoa", "~> 5.1"
end
