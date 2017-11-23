//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    NSString *dougie = @"Dougie";
    NSString *output = [self stringByReversingString: dougie];
    NSLog(@"%@: %@",dougie,output);
    
    NSString *racecar = @"Race? car.";
    BOOL isPalindrome = [self stringIsPalindrome: racecar];
    NSLog(@"%@: %d",racecar, isPalindrome);
    
    // do not alter
    return YES;  //
}   ///////////////

- (BOOL)stringIsPalindrome:(NSString *)string {
    NSArray *punctuations = @[@".", @",", @"!", @"?", @":", @";" ];
    
    NSString *forwardProcessed = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        forwardProcessed = [forwardProcessed stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    forwardProcessed = [forwardProcessed lowercaseString];
    forwardProcessed = [forwardProcessed stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *reversed = [self stringByReversingString: [forwardProcessed lowercaseString]];
    
    return [reversed isEqualToString:forwardProcessed];
}

- (NSString*) stringByReversingString:(NSString *)string {
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat: @"%C", c];
    }
    
    return result;
}

@end
