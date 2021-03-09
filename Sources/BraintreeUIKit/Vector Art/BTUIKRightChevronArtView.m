#import "BTUIKRightChevronArtView.h"

@interface BTUIKRightChevronArtView ()

@property (nonatomic, copy, nullable) UIColor *color;

@end

@implementation BTUIKRightChevronArtView

- (id)init {
    self = [super init];
    if (self) {
        self.artDimensions = CGSizeMake(40.0f, 25.0f);
        self.opaque = NO;
    }
    return self;
}

- (instancetype)initWithColor:(UIColor *)color {
    self = [super init];
    if (self) {
        self.artDimensions = CGSizeMake(40.0f, 25.0f);
        self.opaque = NO;
        self.color = color;
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
    [self.color setFill];
    [bezierPath fill];

}

@end
