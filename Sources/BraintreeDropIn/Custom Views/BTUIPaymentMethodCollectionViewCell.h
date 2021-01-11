#import <UIKit/UIKit.h>

#ifdef COCOAPODS
#import <BraintreeDropIn/BTUIKPaymentOptionCardView.h>
#import <Braintree/BTPaymentMethodNonce.h>
#else
#import <BraintreeUIKit/BTUIKPaymentOptionCardView.h>
#import <BraintreeCore/BTPaymentMethodNonce.h>
#endif

@interface BTUIPaymentMethodCollectionViewCell : UICollectionViewCell
@property (nonatomic, strong) BTUIKPaymentOptionCardView* paymentOptionCardView;
@property (nonatomic, strong) UILabel* titleLabel;
@property (nonatomic, strong) UILabel* descriptionLabel;
@property (nonatomic, strong) BTPaymentMethodNonce* paymentMethodNonce;

@end
