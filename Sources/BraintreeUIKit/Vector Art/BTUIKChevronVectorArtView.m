#ifdef COCOAPODS
#import <BraintreeDropIn/BTUIKAppearance.h>
#import <BraintreeDropIn/BTUIKChevronVectorArtView.h>
#import <BraintreeDropIn/BTUIKViewUtil.h>
#else
#import <BraintreeUIKit/BTUIKAppearance.h>
#import <BraintreeUIKit/BTUIKChevronVectorArtView.h>
#import <BraintreeUIKit/BTUIKViewUtil.h>
#endif

@implementation BTUIKChevronVectorArtView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.artDimensions = CGSizeMake(40.0f, 40.0f);
        self.opaque = NO;
    }
    return self;
}

- (void)drawArt {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];

    if (BTUIKViewUtil.isLanguageLayoutDirectionRightToLeft) {
        [bezierPath moveToPoint: CGPointMake(34, 11.71)];
        [bezierPath addLineToPoint: CGPointMake(19.43, 24.57)];
        [bezierPath addLineToPoint: CGPointMake(34, 38.29)];
        [bezierPath addLineToPoint: CGPointMake(32.29, 40)];
        [bezierPath addLineToPoint: CGPointMake(16, 24.57)];
        [bezierPath addLineToPoint: CGPointMake(32.29, 10)];
        [bezierPath addLineToPoint: CGPointMake(34, 11.71)];
    } else {
        [bezierPath moveToPoint: CGPointMake(15.5, 12.21)];
        [bezierPath addLineToPoint: CGPointMake(30.07, 25.07)];
        [bezierPath addLineToPoint: CGPointMake(15.5, 38.79)];
        [bezierPath addLineToPoint: CGPointMake(17.21, 40.5)];
        [bezierPath addLineToPoint: CGPointMake(33.5, 25.07)];
        [bezierPath addLineToPoint: CGPointMake(17.21, 10.5)];
        [bezierPath addLineToPoint: CGPointMake(15.5, 12.21)];
    }

    [bezierPath closePath];
    [BTUIKAppearance.sharedInstance.lineColor setFill];
    [bezierPath fill];
}

@end
