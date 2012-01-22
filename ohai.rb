dep 'ohai' do
  met? { `which ohai` =~ /ohai/ }
  meet { `gem install ohai` }
end
