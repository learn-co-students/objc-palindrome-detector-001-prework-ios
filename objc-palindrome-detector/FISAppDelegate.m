//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    /**
     
     * Write your check code here.
     
     */
    NSString *palindrome = @"palindrome";
    NSString *reverse = [self stringByReversingString:palindrome];

    NSLog(@"%@ %@", palindrome, reverse);
    
    NSString *racecar = @"racecar";
    BOOL racecarIsPalindrome = [self stringIsPalindrome:racecar];
    NSLog(@"%d %@", racecarIsPalindrome, racecar);
    
    BOOL palindromeIsPalindrome = [self stringIsPalindrome: palindrome];
    NSLog(@"%d %@", palindromeIsPalindrome, palindrome);
    
    NSString *bob = @"Bob";
    BOOL bobIsPalindrome = [self stringIsPalindrome: bob];
    NSLog(@"%d %@", bobIsPalindrome, bob);
    
    NSString *notAPalindrome = @"This is not a Palindrome";
    BOOL notAPalindromeIsPalindrome = [self stringIsPalindrome:notAPalindrome];
    NSLog(@"%d %@", notAPalindromeIsPalindrome, notAPalindrome);
    
    NSString *aPalindrome = @"I prefer pi";
    BOOL aPalindromeIsPalindrome = [self stringIsPalindrome:aPalindrome];
    NSLog(@"%d %@", aPalindromeIsPalindrome, aPalindrome);
    
    NSString *firstPalindrome = @"Flee to me, remote elf.";
    BOOL firstPalindromeBool = [self stringIsPalindrome: firstPalindrome];
    NSLog(@"%d %@", firstPalindromeBool, firstPalindrome);
    
    NSString *secondPalindrome = @"Norma is as selfless as I am, Ron.";
    BOOL secondPalindromeBool = [self stringIsPalindrome: secondPalindrome];
    NSLog(@"%d %@", secondPalindromeBool, secondPalindrome);
    
    NSString *thirdPalindrome = @"No sir! Away! A papaya war is on.";
    BOOL thirdPalindromeBool = [self stringIsPalindrome: thirdPalindrome];
    NSLog(@"%d %@", thirdPalindromeBool, thirdPalindrome);

    
    
    // do not alter
    return YES;  //
}   ///////////////

/**
 
 * Implement your methods here.
 
 */

- (BOOL)stringIsPalindrome:(NSString *)string;
{
    NSArray *punctuations = @[@".", @",", @"!", @"?", @":", @";"];
    NSString *withoutPunctuations = [string copy];
    for (NSUInteger i = 0; i < [punctuations count]; i++)
    {
        //NSString *punctuation = punctuations[i];
        withoutPunctuations = [withoutPunctuations stringByReplacingOccurrencesOfString:punctuations[i] withString: @""];
        //NSString *punct = [withoutPunctuations stringByReplacingOccurrencesOfString: punctuations[i] withString:@""];
    }
    
    NSString *spaceless = [withoutPunctuations stringByReplacingOccurrencesOfString: @" " withString: @""];
    NSString *lowercase = [spaceless lowercaseString];
    NSString *reverse = [self stringByReversingString:lowercase];

    
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    
    
    return stringIsEqualToReverse;
    
}

- (NSString *)stringByReversingString:(NSString *)string;
{
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--)
    {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex: index];
        result = [result stringByAppendingFormat: @"%C", c];
    }
    
    
    return result;
}




@end
