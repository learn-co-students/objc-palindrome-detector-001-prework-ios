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
    
    // Adding some checks for punctuation
    NSString *bob = @"Bob";
    BOOL bobIsPalindrome = [self stringIsPalindrome:bob];
    NSLog(@"%d:%@", bobIsPalindrome, bob);
    
    NSString *kanakanak = @"Kanakanak";
    BOOL kanakanakIsPalindrome = [self stringIsPalindrome:kanakanak];
    NSLog(@"%d:%@", kanakanakIsPalindrome, kanakanak);
    
    NSString *aibohphobia = @"Aibohphobia";
    BOOL aibophobiaIsPalindrome = [self stringIsPalindrome:aibohphobia];
    NSLog(@"%d:%@", aibophobiaIsPalindrome, aibohphobia);
    
    // Adding some checks for spaces
    NSString *notAPalindrome = @"this is not a palindrome";
    BOOL notAPalindromeIsPalindrome = [self stringIsPalindrome:notAPalindrome];
    NSLog(@"%d : %@", notAPalindromeIsPalindrome, notAPalindrome);
    
    NSString *neverOdd = @"never odd or even";
    BOOL neverOddIsPalindrome = [self stringIsPalindrome:neverOdd];
    NSLog(@"%d : %@", neverOddIsPalindrome, neverOdd);
    
    NSString *iPreferPi = @"I prefer pi";
    BOOL iPreferPiIsPalindrome = [self stringIsPalindrome:iPreferPi];
    NSLog(@"%d : %@", iPreferPiIsPalindrome, iPreferPi);
    
    // Adding some checks for punctuation
    NSString *fleeToMe = @"Flee to me, remote elf.";
    BOOL fleeToMeIsPalindrome = [self stringIsPalindrome:fleeToMe];
    NSLog(@"%d : %@", fleeToMeIsPalindrome, fleeToMe);
    
    NSString *norma = @"Norma is as selfless as I am, Ron.";
    BOOL normaIsPalindrome = [self stringIsPalindrome:norma];
    NSLog(@"%d : %@", normaIsPalindrome, norma);
    
    NSString *papayaWar = @"No sir! Away! A papaya war is on.";
    BOOL papayaWarIsPalindrome = [self stringIsPalindrome:papayaWar];
    NSLog(@"%d : %@", papayaWarIsPalindrome, papayaWar);
    
    
    
    // do not alter
    return YES;  //
}   ///////////////

- (BOOL)stringIsPalindrome:(NSString *)string {
    
    // create array of basic punctuations
    NSArray *punctuations = @[ @".", @",", @";", @"!", @"?", @":"];
    
    // copy original input string
    NSString *withoutPunctuation = [string copy];
    
    // loop over punctuations and replace them in the new copied withoutPunc string
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    // remove spaces
    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    // create lowercase version of modified string
    NSString *lowercase = [spaceless lowercaseString];
    
    // flip it and reverse (or just reverse)
    NSString *reverse = [self stringsByReversingString:lowercase];
    
    // determine if input is equal to reverse
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    
    // return value
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
