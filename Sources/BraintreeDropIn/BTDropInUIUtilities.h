#import <UIKit/UIKit.h>
#if __has_include(<BraintreeDropIn/BraintreeUIKit.h>)
#import <BraintreeDropIn/BraintreeUIKit.h>
#else
#import <BraintreeUIKit/BraintreeUIKit.h>
#endif

@interface BTDropInUIUtilities : NSObject

+ (UIView *)addSpacerToStackView:(UIStackView*)stackView beforeView:(UIView*)view size:(float)size;
+ (UIStackView *)newStackView;
+ (UIStackView *)newStackViewForError:(NSString*)errorText;

@end
