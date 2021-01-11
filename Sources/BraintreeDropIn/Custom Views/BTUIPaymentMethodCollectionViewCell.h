#import <UIKit/UIKit.h>

#if __has_include(<BraintreeDropIn/BTUIKPaymentOptionCardView.h>)
#import <BraintreeDropIn/BTUIKPaymentOptionCardView.h>
#else
#import <BraintreeUIKit/BTUIKPaymentOptionCardView.h>
#endif

#if __has_include("BTPaymentMethodNonce.h")
#import "BTPaymentMethodNonce.h"
#else
#import <BraintreeCore/BTPaymentMethodNonce.h>
#endif

@interface BTUIPaymentMethodCollectionViewCell : UICollectionViewCell
@property (nonatomic, strong) BTUIKPaymentOptionCardView* paymentOptionCardView;
@property (nonatomic, strong) UILabel* titleLabel;
@property (nonatomic, strong) UILabel* descriptionLabel;
@property (nonatomic, strong) BTPaymentMethodNonce* paymentMethodNonce;

@end
