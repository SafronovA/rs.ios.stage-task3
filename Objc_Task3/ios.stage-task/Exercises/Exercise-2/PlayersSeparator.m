#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    int count = 0;
    if (ratingArray.count > 2) {
        for (int i = 0; i < ratingArray.count - 2; ++i) {
            for (int j = i + 1; j < ratingArray.count - 1; ++j) {
                for (int k = j + 1; k < ratingArray.count; ++k) {
                    int iValue = [ratingArray[i] intValue];
                    int jValue = [ratingArray[j] intValue];
                    int kValue = [ratingArray[k] intValue];
                    if ((iValue > jValue && jValue > kValue) || (iValue < jValue && jValue < kValue)){
                        count++;
                    }
                }
            }
        }
    }
    return count;
}

@end
