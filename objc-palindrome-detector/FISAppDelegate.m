//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    NSString *racecar = @"racecar";
    NSString *palindrome = @"palindrome";
    NSString *bob = @"Bob";
    NSString *kanakanak = @"Kanakanak";
    NSString *aibohphobia = @"Aibohphobia";
    NSString *reversed = [self stringByReversingString:palindrome];
    NSString *notAPalindrome = @"this is not a palindrome";
    NSString *neverOdd = @"never odd or even";
    NSString *iPreferPi = @"I prefer pi";
    NSString *fleeToMe = @"Flee to me, remote elf.";
    NSString *norma = @"Norma is as selfless as I am, Ron.";
    NSString *papayaWar = @"No sir! Away! A papaya war is on.";
    
    NSLog(@"%@: %@", palindrome, reversed);
    
    BOOL racecarIsPalindrome = [self stringIsPalindrome:racecar];
    NSLog(@"%d: %@", racecarIsPalindrome,racecar);
    
    BOOL palindromeIsPalindrome = [self stringIsPalindrome:palindrome];
    NSLog(@"%d: %@",palindromeIsPalindrome, palindrome);
    
    BOOL bobIsPalindrome = [self stringIsPalindrome:bob];
    NSLog(@"%d : %@", bobIsPalindrome, bob);
    
    BOOL kanakanakIsPalindrome = [self stringIsPalindrome:kanakanak];
    NSLog(@"%d : %@", kanakanakIsPalindrome, kanakanak);
   
    BOOL aibohphobiaIsPalindrome = [self stringIsPalindrome:aibohphobia];
    NSLog(@"%d : %@", aibohphobiaIsPalindrome, aibohphobia);
    
    BOOL notAPalindromeIsPalindrome = [self stringIsPalindrome:notAPalindrome];
    NSLog(@"%d : %@", notAPalindromeIsPalindrome, notAPalindrome);
   
    BOOL neverOddIsPalindrome = [self stringIsPalindrome:neverOdd];
    NSLog(@"%d : %@", neverOddIsPalindrome, neverOdd);
   
    BOOL iPreferPiIsPalindrome = [self stringIsPalindrome:iPreferPi];
    NSLog(@"%d : %@", iPreferPiIsPalindrome, iPreferPi);
    
    BOOL fleeToMeIsPalindrome = [self stringIsPalindrome:fleeToMe];
    NSLog(@"%d : %@", fleeToMeIsPalindrome, fleeToMe);
    
    BOOL normaIsPalindrome = [self stringIsPalindrome:norma];
    NSLog(@"%d : %@", normaIsPalindrome, norma);
    
    BOOL papayaWarIsPalindrome = [self stringIsPalindrome:papayaWar];
    NSLog(@"%d : %@", papayaWarIsPalindrome, papayaWar);
    
    
    // do not alter
    return YES;  //
}   ///////////////

/**
 
 * Implement your methods here.
 
 */

-(BOOL)stringIsPalindrome:(NSString *)string {
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];
    NSString *withoutPunctuation = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }

    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [spaceless lowercaseString];
    NSString *reverse = [self stringByReversingString:lowercase];
//    NSLog(@"lowercase: %@, reverse: %@", lowercase, reverse);
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    
    return stringIsEqualToReverse;
}

-(NSString *)stringByReversingString:(NSString *)string {
    
    NSString *result = @"";
    for  (NSUInteger i = [string length]; i>0; i --) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    
    return result;
    
}


@end
