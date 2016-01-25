//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    /**
     
     * Write your check code here.
     
     */
    
    NSString *palindrome = @"palindrome";
    NSString *reversed = [self stringByReversingString:palindrome];
    
    NSLog(@"%@ : %@", palindrome, reversed);
    
    NSString *racecar = @"racecar";
    BOOL racecarIsPalindrome = [self stringIsPalidrome:racecar];
    NSLog(@"%d: %@", racecarIsPalindrome, racecar);
    
    BOOL palindromIsPalindrome = [self stringIsPalidrome:palindrome];
    NSLog(@"%d: %@", palindromIsPalindrome, palindrome);
    
    NSString *bob = @"Bob";
    BOOL bobIsPalindrome = [self stringIsPalidrome:bob];
    NSLog(@"%d: %@", bobIsPalindrome, bob);
    
    NSString *kanakanak = @"Kanakanak";
    BOOL kanakanakIsPalindrome = [self stringIsPalidrome:kanakanak];
    NSLog(@"%d: %@", kanakanakIsPalindrome, kanakanak);
    
    NSString *aibohphobia = @"Aibohphobia";
    BOOL aibohphobiaIsPalindrome = [self stringIsPalidrome:aibohphobia];
    NSLog(@"%d: %@", aibohphobiaIsPalindrome, aibohphobia);
    
    NSString *notAPalindrome = @"this is not a palindrome";
    BOOL notAPalindromeIsPalindrome = [self stringIsPalidrome:notAPalindrome];
    NSLog(@"%d: %@", notAPalindromeIsPalindrome, notAPalindrome);
    
    NSString *neverOdd = @"never odd or even";
    BOOL neverOddIsPalindrome = [self stringIsPalidrome:neverOdd];
    NSLog(@"%d: %@", neverOddIsPalindrome, neverOdd);
    
    NSString *iPreferPi = @"I prefer pi";
    BOOL iPreferPiIsPalindrome = [self stringIsPalidrome:iPreferPi];
    NSLog(@"%d: %@", iPreferPiIsPalindrome, iPreferPi);
    
    NSString *fleeToMe = @"Flee to me, remote elf.";
    BOOL fleeToMeIsPalindrome = [self stringIsPalidrome:fleeToMe];
    NSLog(@"%d: %@", fleeToMeIsPalindrome, fleeToMe);
    
    NSString *norma = @"Norma is as selfless as I am, Ron.";
    BOOL normaIsPalindrome = [self stringIsPalidrome:norma];
    NSLog(@"%d: %@", normaIsPalindrome, norma);
    
    NSString *papayaWar = @"No sir! Away! A papaya war is on.";
    BOOL papayaWarIsPalindrome = [self stringIsPalidrome:papayaWar];
    NSLog(@"%d: %@", papayaWarIsPalindrome, papayaWar);
    
    // do not alter
    return YES;  //
}   ///////////////

/**
 
 * Implement your methods here.
 
 */

-(BOOL)stringIsPalidrome:(NSString *)string {
    
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];
    
    NSString *withoutPunctuation = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];

        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *lowercase = [spaceless lowercaseString];
    
    NSString *reverse = [self stringByReversingString:lowercase];
    
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    
    return stringIsEqualToReverse;
}

-(NSString *)stringByReversingString:(NSString *)string {
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    return result;
}

@end
