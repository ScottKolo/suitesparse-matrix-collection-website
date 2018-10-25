SimpleCov.start 'rails' do
  add_filter "/features/"
  add_filter "/spec/"
  add_filter "/lib/"
  add_filter "/config/"
  use_merging true
end