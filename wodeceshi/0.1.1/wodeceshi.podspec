
            Pod::Spec.new do |s|
                s.name             = "wodeceshi"
                s.version          = "0.1.1"
                s.summary          = "全网列表"

                s.description      = <<-DESC
                    全网列表
                    DESC

                s.homepage         = "http://192.168.106.113/yumeng/wodeceshi.git"
                s.license          = "MIT"
                s.author           = { "yumeng" => "yumeng@quando.com.cn" }
                s.source           = { :git => "http://192.168.106.113/yumeng/wodeceshi.git", :tag => s.version.to_s }

                s.ios.deployment_target = '8.0'
                s.resources = ['bundle/*.jsbundle','bundle/*.rnjson']

            end
        
