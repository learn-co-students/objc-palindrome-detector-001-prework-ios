//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    /**
     
     * Write your check code here.
     
     */
    
    NSString *test = @"I prefer pi";
    NSLog(@"%d: %@", [self stringIsPalingrome:test], test);
    
    // do not alter
    return YES;  //
}   ///////////////

/**
 
 * Implement your methods here.
 
 */

- (NSString *)stringByReversingString:(NSString *)string {

    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    
    return result;
}

- (BOOL)stringIsPalingrome:(NSString *)string {
    string = [[string lowercaseString] stringByReplacingOccurrencesOfString:@" "
                                                                 withString:@""];
    NSString *reverse = [self stringByReversingString:string];
    return [reverse isEqualToString:string];
}

@end
