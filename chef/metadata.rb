name             'ghost-install'
maintainer       'David Balderston'
license          'MIT'
description      'Install Ghost Blog'
version          '0.0.1'

%w{ apt nginx }.each do |cookbook|
  depends cookbook
end

supports 'ubuntu'