#import <UIKit/UIKit.h>
#import <BraintreeDropIn/BTDropInRequest.h>

#ifdef COCOAPODS
#import <Braintree/BraintreeCore.h>
#else
#import <BraintreeCore/BraintreeCore.h>
#endif

NS_ASSUME_NONNULL_BEGIN

/// The base UIViewController for the sub UIViewControllers using in Drop-In
@interface BTDropInBaseViewController : UIViewController 

/// Initialize a new Drop-in view controller.
///
/// @param apiClient A BTAPIClient used for communicating with Braintree servers. Required.
///
/// @return A new Drop-in view controller that is ready to be presented.
- (instancetype)initWithAPIClient:(BTAPIClient *)apiClient request:(BTDropInRequest *)request;

/// The API Client used for communication with Braintree servers.
@property (nonatomic, strong) BTAPIClient *apiClient;

/// The BTConfiguration, set during loadConfiguration.
@property (nonatomic, strong, nullable) BTConfiguration *configuration;

/// Subclasses should override this method to be notified when the configuration is loaded
- (void)configurationLoaded:(__unused BTConfiguration *)configuration error:(__unused NSError *)error;

/// Load the configuration and then call `configurationLoaded:error:`
- (void)loadConfiguration;

/// The BTDropInRequest that defines the Drop-in experience.
///
/// The properties of this payment request are used to customize Drop-in.
@property (nonatomic, strong, nullable) BTDropInRequest *dropInRequest;

/// Displays an overlay loading screen
///
/// @param show Modifies the hidden property of the overlay
- (void)showLoadingScreen:(BOOL)show;

@end

NS_ASSUME_NONNULL_END
