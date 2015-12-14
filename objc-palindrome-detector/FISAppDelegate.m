//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    /**
     
     * Write your check code here.
     
     */
    
    // do not alter
    return YES;  //
}   ///////////////

- (BOOL)stringIsPalindrome:(NSString *)string {
    if (string.length < 2) {
        return YES;
    } else {
        BOOL match = [string substringToIndex:1] == [string substringFromIndex:string.length -1] ? YES : NO;
        return match && [self stringIsPalindrome:[[string substringFromIndex:1] substringToIndex:string.length - 2]];
    }
}

- (NSString *)stringByReversingString:(NSString *)string {
    return [self stringByReversingString:string recursively:NO];
}

- (NSString *)stringByReversingString:(NSString *)string recursively:(BOOL)option{
    // A recursive implementation. Although, to use the stack would likely not be the most efficent way to just reverse a string... But it's rather fancy 😎
    if (option) {
        if (string.length == 1) {
            return string;
        } else {
            //NSLog(@"%@", string);
            return [[string substringFromIndex: string.length - 1] stringByAppendingString: [self stringByReversingString: [string substringToIndex: string.length - 1]]];
        }
    } else {
        NSString *result = @"";
        for (NSUInteger z = string.length; z > 0; z--) {
            NSUInteger index = z - 1;
            unichar c = [string characterAtIndex:index];
            result = [result stringByAppendingFormat:@"%C", c];
        }
        return result;
    }
}


@end
