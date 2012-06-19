include_recipe "libruby::1.9.1"

packages = Array.new

case node[:lsb][:codename]
when "lucid", "precise"
  packages |= %w/
    ruby1.9.1
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
