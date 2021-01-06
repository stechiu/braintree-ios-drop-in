#if __has_include(<Braintree/BraintreePayPal.h>)
#import <Braintree/BTPayPalDriver.h>
#else
#import <BraintreePayPal/BTPayPalDriver.h>
#endif

#import <AuthenticationServices/AuthenticationServices.h>
@class BTPayPalCreditFinancing;
@class BTPayPalCreditFinancingAmount;
@class BTJSON;

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
@class SFAuthenticationSession;
#pragma clang diagnostic pop

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, BTPayPalPaymentType) {
    BTPayPalPaymentTypeCheckout,
    BTPayPalPaymentTypeBillingAgreement
};

@interface BTPayPalDriver ()

/**
 Exposed for testing the approvalURL construction
*/
@property (nonatomic, strong) NSURL *approvalUrl;

/**
 Exposed for testing to get the instance of BTAPIClient after it has been copied by `copyWithSource:integration:`
*/
@property (nonatomic, strong, nullable) BTAPIClient *apiClient;

/**
 Exposed for testing the clientMetadataId associated with this request
*/
@property (nonatomic, strong) NSString *clientMetadataId;

/**
 Exposed for testing the intent associated with this request
*/
@property (nonatomic, strong) BTPayPalRequest *payPalRequest;

/**
 Exposed for testing, the ASWebAuthenticationSession instance used for the PayPal flow
 */
@property (nonatomic, strong, nullable) ASWebAuthenticationSession *authenticationSession;

/**
 Exposed for testing, for determining if ASWebAuthenticationSession was started
 */
@property (nonatomic, assign) BOOL isAuthenticationSessionStarted;

+ (nullable BTPayPalCreditFinancingAmount *)creditFinancingAmountFromJSON:(BTJSON *)amountJSON;

+ (nullable BTPayPalCreditFinancing *)creditFinancingFromJSON:(BTJSON *)creditFinancingOfferedJSON;

/**
 Exposed for testing the flow after the customer has authorized the payment in the browser
 */
- (void)handleBrowserSwitchReturnURL:(NSURL *)url paymentType:(BTPayPalPaymentType)paymentType completion:(void (^)(BTPayPalAccountNonce * _Nullable tokenizedCheckout, NSError * _Nullable error))completionBlock;

@end

NS_ASSUME_NONNULL_END
