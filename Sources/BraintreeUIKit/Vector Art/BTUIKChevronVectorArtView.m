#import "BTUIKChevronVectorArtView.h"

#ifdef COCOAPODS
#import <BraintreeDropIn/BTUIKAppearance.h>
#else
#import <BraintreeUIKit/BTUIKAppearance.h>
#endif

@implementation BTUIKChevronVectorArtView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.artDimensions = CGSizeMake(45.0f, 29.0f);
        self.opaque = NO;
    }
    return self;
}

- (void)drawArt {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(15.5, 12.21)];
    [bezierPath addLineToPoint: CGPointMake(30.07, 25.07)];
    [bezierPath addLineToPoint: CGPointMake(15.5, 38.79)];
    [bezierPath addLineToPoint: CGPointMake(17.21, 40.5)];
    [bezierPath addLineToPoint: CGPointMake(33.5, 25.07)];
    [bezierPath addLineToPoint: CGPointMake(17.21, 10.5)];
    [bezierPath addLineToPoint: CGPointMake(15.5, 12.21)];
    [bezierPath closePath];
    [BTUIKAppearance.sharedInstance.lineColor setFill];
    [bezierPath fill];
}

@end
