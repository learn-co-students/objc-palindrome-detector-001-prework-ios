//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    NSString *palindrome = @"palindrome";
    
    NSString *reversed = [self stringsByReversingString:palindrome];
    
    NSLog(@"%@:%@", palindrome, reversed);
    
    NSString *racecar = @"racecar";
    
    BOOL raceCarIsPalindrome = [self stringIsPalindrome:racecar];
    
    BOOL palindromeIsPalindrome = [self stringIsPalindrome:palindrome];
    
    NSLog(@"%d:%@", raceCarIsPalindrome, racecar);
    
    NSLog(@"%d:%@", palindromeIsPalindrome, palindrome);
    
    NSString *bob = @"Bob";
    BOOL bobIsPalindrome = [self stringIsPalindrome:bob];
    NSLog(@"%d:%@", bobIsPalindrome, bob);
    
    NSString *kanakanak = @"Kanakanak";
    BOOL kanakanakIsPalindrome = [self stringIsPalindrome:kanakanak];
    NSLog(@"%d:%@", kanakanakIsPalindrome, kanakanak);
    
    NSString *aibohphobia = @"Aibohphobia";
    BOOL aibophobiaIsPalindrome = [self stringIsPalindrome:aibohphobia];
    NSLog(@"%d:%@", aibophobiaIsPalindrome, aibohphobia);
    
    
    
    // do not alter
    return YES;  //
}   ///////////////

- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSString *reverse = [self stringsByReversingString:string];
    
    BOOL stringIsEqualToReverse = [string isEqualToString:reverse];
    
    return stringIsEqualToReverse;
}

- (NSString *)stringsByReversingString:(NSString *)string {
    
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    
    return result;
}

@end
