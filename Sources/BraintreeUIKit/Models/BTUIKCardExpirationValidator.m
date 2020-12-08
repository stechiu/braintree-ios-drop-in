#if __has_include(<BraintreeDropIn/BraintreeUIKit.h>)
#import <BraintreeDropIn/BTUIKCardExpirationValidator.h>
#else
#import <BraintreeUIKit/BTUIKCardExpirationValidator.h>
#endif

#ifdef __IPHONE_8_0
#define kBTNSGregorianCalendarIdentifier NSCalendarIdentifierGregorian
#else
#define kBTNSGregorianCalendarIdentifier NSGregorianCalendar
#endif

@implementation BTUIKCardExpirationValidator

+ (BOOL)month:(NSUInteger)month year:(NSUInteger)year validForDate:(NSDate *)date {
    // Creating NSCalendar is expensive, so cache it!
    static NSCalendar *gregorianCalendar;
    if (!gregorianCalendar) {
        gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:kBTNSGregorianCalendarIdentifier];
    }

    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    dateComponents.calendar = gregorianCalendar;
    dateComponents.year = ((year % 2000) + 2000) ;
    dateComponents.month = month;
    NSInteger newMonth = (dateComponents.month + 1);
    if (newMonth > 12) {
        dateComponents.month = newMonth % 12;
        dateComponents.year += 1;
    } else {
        dateComponents.month = newMonth;
    }
    BOOL expired = [date compare:dateComponents.date] != NSOrderedAscending;
    if (expired) {
        return NO;
    }

    NSDate *farFuture = [date dateByAddingTimeInterval:3600 * 24 * 365.25 * kBTUIKCardExpirationValidatorFarFutureYears]; // roughly years in the future
    BOOL tooFarInTheFuture = [farFuture compare:dateComponents.date] != NSOrderedDescending;

    return !tooFarInTheFuture;
}




@end
