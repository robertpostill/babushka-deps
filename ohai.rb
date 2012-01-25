dep 'ohai installed' do
  met? { `which ohai` =~ /ohai/ }
  meet { `gem install ohai` }
end

dep 'ohai' do
  requires 'ohai installed'
  met? { `which ohai` =~ /ohai/ }
  meet { `ohai` }
end

