source 'https://cdn.cocoapods.org/'

platform :ios, '9.0'
use_frameworks!

workspace 'BraintreeDropIn.xcworkspace'
project 'NewDropInDemo/NewDropInDemo.xcodeproj'


#target 'DropInDemo' do
#  pod 'InAppSettingsKit'
#
#  pod "BraintreeDropIn", :path => "./"
#
#  pod 'Braintree/Apple-Pay'
#  pod 'Braintree/PayPal'
#  pod 'Braintree/Venmo'
#  pod 'Braintree/PaymentFlow'
#end

target 'NewDropInDemo' do
  project 'NewDropInDemo/NewDropInDemo'

  pod 'InAppSettingsKit', :inhibit_warnings => true
  pod 'Braintree/Apple-Pay'
  pod 'Braintree/PayPal'
  pod 'Braintree/Venmo'
  pod 'Braintree/PaymentFlow'
end

#abstract_target 'Tests' do
#  pod 'Specta', :inhibit_warnings => true
#  pod 'Expecta', :inhibit_warnings => true
#  pod 'OCMock', :inhibit_warnings => true
#  pod 'OHHTTPStubs', :inhibit_warnings => true
#  pod 'xcbeautify', :inhibit_warnings => true
#
#  target 'UnitTests'
#  target 'UITests'
#end
