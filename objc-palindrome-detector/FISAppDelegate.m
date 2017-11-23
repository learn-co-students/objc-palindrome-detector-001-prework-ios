//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    /**
     
     * Write your check code here.
     
     */
    
    NSString *palindrome = @"palindrome";
    
    NSString *reversed = [self stringByReverseString:palindrome];
    
    NSLog(@"%@ %@", palindrome, reversed);
    
    NSString *racecar = @"racecar";
    
    BOOL racecareIsPalindrome = [self stringIsPalindrome:racecar];
    
    BOOL palindromeIsPalindrome = [self stringIsPalindrome:palindrome];
    
    NSLog(@"%d : %@", racecareIsPalindrome, racecar);
    
    NSLog(@"%d : %@", palindromeIsPalindrome, palindrome);
    
    NSString *bob = @"Bob";
    NSString *kanakanak = @"Kanakanak";
    NSString *aibohphobia = @"Aibohphobia";
    
    BOOL bobIsPalindrome = [self stringIsPalindrome:bob];
    BOOL kanakanakIsPalindrome = [self stringIsPalindrome:kanakanak];
    BOOL aibophobiaIsPalindrome = [self stringIsPalindrome:aibohphobia];
    
    NSLog(@"%d : %@", bobIsPalindrome, bob);
    NSLog(@"%d : %@", kanakanakIsPalindrome, kanakanak);
    NSLog(@"%d : %@", aibophobiaIsPalindrome, aibohphobia);
    
    NSString *notAPalindrome = @"this is not a palindrome";
    BOOL notAPalindromeIsNotAPalindrome = [self stringIsPalindrome:notAPalindrome];
    NSLog(@"%d : %@", notAPalindromeIsNotAPalindrome, notAPalindrome);
    
    NSString *neverEven = @"never odd or even";
    BOOL neverOddIsPalindrome = [self stringIsPalindrome:neverEven];
    NSLog(@"%d : %@", neverOddIsPalindrome, neverEven);
    
    NSString *iPreferPi = @"I prefer pi";
    BOOL iPreferPiIsPalindrome = [self stringIsPalindrome:iPreferPi];
    NSLog(@"%d : %@", iPreferPiIsPalindrome, iPreferPi);
    
    NSString *fleeToMe = @"Flee to me, remote elf";
    BOOL fleeToMeIsPalindrome = [self stringIsPalindrome:fleeToMe];
    NSLog(@"%d : %@", fleeToMeIsPalindrome, fleeToMe);
    
    NSString *normaIs = @"Norma is as selfless as I am, Ron.";
    BOOL normaIsPalindrome = [self stringIsPalindrome:normaIs];
    NSLog(@"%d : %@", normaIsPalindrome, normaIs);
    
    NSString *papayaWar = @"No sir! Away! A papaya war is on.";
    BOOL papayaWarPalindrome = [self stringIsPalindrome:papayaWar];
    NSLog(@"%d : %@", papayaWarPalindrome, papayaWar);
    
    // do not alter
    return YES;  //
}   ///////////////

/**
 
 * Implement your methods here.
 
 */

-(BOOL)stringIsPalindrome:(NSString *)string;{
    NSArray *punctuations = @[@".", @",", @"!", @"?", @":", @";"];
    NSString *withoutPunctuation = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++){
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [spaceless lowercaseString];
    NSString *reverse = [self stringByReverseString:lowercase];
    
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    
    return stringIsEqualToReverse;
}

-(NSString *)stringByReverseString:(NSString *)string;{
    
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    
    return result;
}

@end
