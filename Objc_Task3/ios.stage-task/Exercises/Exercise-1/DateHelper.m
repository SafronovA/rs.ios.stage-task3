#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    if (NSLocationInRange(monthNumber, NSMakeRange(1, 12))) {
        NSDateFormatter *dateFormatter = [NSDateFormatter alloc];
        return [[dateFormatter monthSymbols] objectAtIndex:(monthNumber-1)];
    } else {
        return nil;;
    }
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss'Z'";
    NSDate *dateObj = [dateFormatter dateFromString:date];
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    return [calendar component:NSCalendarUnitDay fromDate:dateObj];
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.dateStyle = NSDateFormatterMediumStyle;
    dateFormatter.timeStyle = NSDateFormatterNoStyle;
    dateFormatter.locale = [NSLocale localeWithLocaleIdentifier:@"ru_RU"];
    dateFormatter.dateFormat = @"EEE";
    return [dateFormatter stringFromDate:date];
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponent = [calendar components:(NSCalendarUnitWeekOfYear | NSCalendarUnitYear) fromDate:date];
    NSDateComponents *todayDateComponent = [calendar components:(NSCalendarUnitWeekOfYear | NSCalendarUnitYear) fromDate:[NSDate now]];
    return [todayDateComponent isEqual:dateComponent];
}

@end
