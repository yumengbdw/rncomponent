
require 'json'

Pod::Spec.new do |spec|
spec.name = 'Yoga'
spec.version = "0.54.0"
spec.license =  { :type => 'BSD' }
spec.homepage = 'https://facebook.github.io/yoga/'
spec.documentation_url = 'https://facebook.github.io/yoga/docs/api/c/'

spec.summary = 'Yoga is a cross-platform layout engine which implements Flexbox.'
spec.description = 'Yoga is a cross-platform layout engine enabling maximum collaboration within your team by implementing an API many designers are familiar with, and opening it up to developers across different platforms.'

spec.authors = 'Facebook'
spec.source  = { :git => "https://github.com/facebook/react-native.git", :tag => "v#{spec.version}" }

spec.module_name = 'yoga'
spec.requires_arc = false
spec.compiler_flags = [
'-fno-omit-frame-pointer',
'-fexceptions',
'-Wall',
'-Werror',
'-std=c++1y',
'-fPIC'
]

spec.platform = :ios, "8.0"
source_files = 'yoga/**/*.{cpp,h}'

spec.source_files = 'ReactCommon/yoga/yoga/*.{c,h}'

end
