#import "BTUIKRightChevronArtView.h"

@implementation BTUIKRightChevronArtView

- (void)drawArt {
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(261.5, 180.5)];
    [bezierPath addLineToPoint: CGPointMake(427.5, 352.5)];
    [bezierPath addLineToPoint: CGPointMake(261.5, 515.5)];
    [bezierPath addLineToPoint: CGPointMake(293.5, 549.5)];
    [bezierPath addLineToPoint: CGPointMake(490.5, 352.5)];
    [bezierPath addLineToPoint: CGPointMake(293.5, 149.5)];
    [bezierPath addLineToPoint: CGPointMake(261.5, 180.5)];
    [bezierPath addLineToPoint: CGPointMake(261.5, 180.5)];
    [bezierPath closePath];
    [UIColor.blackColor setFill];
    [bezierPath fill];
    [UIColor.blackColor setStroke];
    bezierPath.lineWidth = 1;
    [bezierPath stroke];
}

@end
