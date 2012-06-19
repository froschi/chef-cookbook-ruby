maintainer       "Thorsten Fischer"
maintainer_email "thorsten@froschi.org"
license          "Apache 2.0"
description      "Installs/Configures ruby"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w/ubuntu/.each { |os| supports os }

recipe           "ruby::1.8", ""
recipe           "ruby::1.9.1", ""

depends          "libruby", ">= 0.0.1"
