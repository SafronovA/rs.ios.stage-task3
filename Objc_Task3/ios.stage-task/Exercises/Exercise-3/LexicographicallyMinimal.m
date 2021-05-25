#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    NSMutableString *mutString1 = [NSMutableString stringWithString:string1];
    NSMutableString *mutString2 = [NSMutableString stringWithString:string2];
    NSMutableString *resString = [NSMutableString new];
    while ((mutString1.length != 0) && (mutString2.length != 0)) {
        if ([mutString1 characterAtIndex:0] <= [mutString2 characterAtIndex:0]) {
            [resString appendFormat:@"%c", [mutString1 characterAtIndex:0]];
            [mutString1 deleteCharactersInRange:NSMakeRange(0, 1)];
        } else {
            [resString appendFormat:@"%c", [mutString2 characterAtIndex:0]];
            [mutString2 deleteCharactersInRange:NSMakeRange(0, 1)];
        }
    }
    mutString1.length == 0? [resString appendString:mutString2] : [resString appendString:mutString1];
    return resString;
}

@end
