Pod::Spec.new do |spec|
  spec.name = 'KSView'
  spec.version = '0.2.0'
  spec.license = 'MIT'
  spec.summary = 'The missing extension for NSView'
  spec.homepage = 'https://github.com/kaunteya/KSView'
  spec.authors = { 'Kaunteya Suryawanshi' => 'k.suryawanshi@gmail.com' }
  spec.source = { :git => 'https://github.com/kaunteya/KSView.git', :tag => spec.version }

  spec.platform = :osx, '10.10'
  spec.requires_arc = true

  spec.source_files = 'KSView.swift'
end
