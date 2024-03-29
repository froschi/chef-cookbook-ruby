include_recipe "libruby::1.8"

packages = Array.new

case node[:lsb][:codename]
when "lucid", "precise"
  packages |= %w/
    ruby1.8
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
