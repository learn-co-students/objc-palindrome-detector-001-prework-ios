//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSString *notAPalindrome = @"this is not a palindrome";
    BOOL notAPalindromeIsPalindrome = [self stringIsPalindrome:notAPalindrome];
    NSLog(@"%d : %@", notAPalindromeIsPalindrome, notAPalindrome);
    
    NSString *neverOdd = @"never odd or even";
    BOOL neverOddIsPalindrome = [self stringIsPalindrome:neverOdd];
    NSLog(@"%d : %@", neverOddIsPalindrome, neverOdd);
    
    NSString *iPreferPi = @"I prefer pi";
    BOOL iPreferPiIsPalindrome = [self stringIsPalindrome:iPreferPi];
    NSLog(@"%d : %@", iPreferPiIsPalindrome, iPreferPi);
    
    
    NSString *norma = @"Norma is as selfless as I am, Ron.";
    BOOL normaIsPalindrome = [self stringIsPalindrome:norma];
    NSLog(@"%d : %@", normaIsPalindrome, norma);
    
    NSString *papayaWar = @"No sir! Away! A papaya war is on.";
    BOOL papayaWarIsPalindrome = [self stringIsPalindrome:papayaWar];
    NSLog(@"%d : %@", papayaWarIsPalindrome, papayaWar);
    
    NSString *madam = @"Madam, I'm Adam.";
    BOOL madamIsPalindrome = [self stringIsPalindrome:madam];
    NSLog(@"%d : %@", madamIsPalindrome, madam);
    
    
   /** NSString *palindrome = @"palindrome";
    NSString *reversed = [self stringByReversingString:palindrome];
    
    NSLog(@"%@: %@", palindrome, reversed);
    
    
    
    NSString *racecar = @"racecar";
    BOOL racecarIsPalindrome = [self stringIsPalindrome:racecar];
    
    NSLog(@"%d : %@", racecarIsPalindrome, racecar);
    
    BOOL palidromeIsPalindrome = [self stringIsPalindrome:palindrome];
    
    NSLog(@"%d : %@", palidromeIsPalindrome, palindrome);
    
    
    NSString *kanakanak = @"Kanakanak";
    BOOL kanakanakIsPalindrome = [self stringIsPalindrome:kanakanak];
    NSLog(@"%d : %@", kanakanakIsPalindrome, kanakanak);
    
    NSString *aibohphobia = @"Aibohphobia";
    BOOL aibohphobiaIsPalindrome = [self stringIsPalindrome:aibohphobia];
    NSLog(@"%d : %@", aibohphobiaIsPalindrome, aibohphobia); **/
    
    
    
    // do not alter
    return YES;  //
}   ///////////////

/**
 
 * Implement your methods here.
 
 */

- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";", @"'" ];
    NSString *withoutPunctuation = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *lowercase = [spaceless lowercaseString];
    
    NSString *reverse = [self stringByReversingString: lowercase];
    
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    
    
    return stringIsEqualToReverse;
}

- (NSString *)stringByReversingString:(NSString *)string {
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i --) {
            NSUInteger index = i-1;
            unichar c = [string characterAtIndex:index];
            result = [result stringByAppendingFormat:@"%C", c];
    }
    
    return result;
}

@end