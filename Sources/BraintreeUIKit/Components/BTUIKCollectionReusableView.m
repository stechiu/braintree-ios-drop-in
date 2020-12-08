#import "BTUIKCollectionReusableView.h"

#if __has_include(<BraintreeDropIn/BraintreeUIKit.h>)
#import <BraintreeDropIn/BTUIKAppearance.h>
#else
#import <BraintreeUIKit/BTUIKAppearance.h>
#endif

@implementation BTUIKCollectionReusableView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.label = [[UILabel alloc] init];
        self.label.translatesAutoresizingMaskIntoConstraints = NO;
        self.label.textAlignment = NSTextAlignmentCenter;
        self.label.font = [[BTUIKAppearance sharedInstance].font fontWithSize:12];
        self.label.textColor = [BTUIKAppearance sharedInstance].secondaryTextColor;
        [self addSubview:self.label];
        
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[label]|"
                                                                                 options:0
                                                                                 metrics:nil
                                                                                   views:@{@"label":self.label}]];
        
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[label]|"
                                                                                 options:0
                                                                                 metrics:nil
                                                                                   views:@{@"label":self.label}]];
        
    }
    return self;
}

@end
