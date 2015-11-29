//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

   NSString *palindrome = @"palindrome";
   NSString *reversed = [self stringByReversingString:palindrome];
   
    NSLog(@"%@ : %@", palindrome, reversed);
    
   NSString *racecar = @"racecar";
   BOOL racecarIsPalindrome = [self stringIsPalindrome:racecar];
   BOOL palindromeIsPalindrome = [self stringIsPalindrome:palindrome];
    
    NSLog(@"%d : %@", racecarIsPalindrome, racecar);
    NSLog(@"%d : %@", palindromeIsPalindrome, palindrome);
    
   //single word, with uppercase
   NSString *bob = @"Bob";
   BOOL bobIsPalindrome = [self stringIsPalindrome:bob];
    NSLog(@"%d : %@", bobIsPalindrome, bob);
    
   NSString *kanakanak = @"Kanakanak";
   BOOL kanakanakIsPalindrome = [self stringIsPalindrome:kanakanak];
    NSLog(@"%d : %@", kanakanakIsPalindrome, kanakanak);
    
   NSString *aibohphobia = @"Aibohphobia";
   BOOL aibohphobiaIsPalindrome = [self stringIsPalindrome:aibohphobia];
    NSLog(@"%d : %@", aibohphobiaIsPalindrome, aibohphobia);
    
   
    
    
    
    // do not alter
    return YES;  //
}   ///////////////

- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSString *lowercase = [string lowercaseString];
    
    NSString *reverse = [self stringByReversingString:lowercase];
    
    NSLog(@"lowercase: %@, reverse: %@", lowercase, reverse);
    
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    
    return stringIsEqualToReverse;
}

- (NSString *)stringByReversingString:(NSString *)string {

    NSString *result = @"";

    for (NSUInteger i = [string length]; i > 0; i--) {
    
        NSUInteger index = i - 1;
        unichar c =[string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c ];
    }
        return result;
}


@end
