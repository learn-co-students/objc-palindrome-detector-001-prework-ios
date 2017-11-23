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
    
    BOOL racecarIsPalindrome = [self stringIsPalindrome:racecar];
    
    NSLog(@"%d : %@", racecarIsPalindrome, racecar);
    
    palindrome = @"notapalindrome";
    
    BOOL notAPalindrome = [self stringIsPalindrome:palindrome];
    
    NSLog(@"%d : %@",notAPalindrome, palindrome);
    
    // adding complexity
    
    NSString *bob = @"Bob";
    NSString *kanakanak = @"Kanakanak";
    NSString *aibohphobia = @"Aibohphobia";
    
    BOOL bobIsPalindrome = [self stringIsPalindrome:bob];
    BOOL kanakanakIsPalindrome = [self stringIsPalindrome:kanakanak];
    BOOL aibohphobiaIsPalindrome = [self stringIsPalindrome:aibohphobia];
    
    NSLog(@"%d : %@", bobIsPalindrome, bob);
    NSLog(@"%d : %@", kanakanakIsPalindrome, kanakanak);
    NSLog(@"%d : %@", aibohphobiaIsPalindrome, aibohphobia);
    
    NSString *thisIsNotAPalindrome = @"This is not a palindrome";
    NSString *neverOddOrEven = @"Never odd or even";
    NSString *iPreferPi = @"I prefer pi";
    
    BOOL notApalindromeIsPalindrome = [self stringIsPalindrome:thisIsNotAPalindrome];
    BOOL oddOrEvenIsPalindrome = [self stringIsPalindrome:neverOddOrEven];
    BOOL preferPiIsPalindrome = [self stringIsPalindrome:iPreferPi];
    
    NSLog(@"%d : %@",notApalindromeIsPalindrome, thisIsNotAPalindrome);
    NSLog(@"%d : %@",oddOrEvenIsPalindrome, neverOddOrEven);
    NSLog(@"%d : %@",preferPiIsPalindrome, iPreferPi);
    
    NSString *fleeToMe = @"Flee to me, remote elf.";
    NSString *norma = @"Norma is as selfless as I am, Ron.";
    NSString *papayaWar = @"No sir! Away! A papaya war is on.";
    
    BOOL fleeToMeIsPalindrome = [self stringIsPalindrome:fleeToMe];
    BOOL normaIsPalindrome = [self stringIsPalindrome:norma];
    BOOL papayaWarIsPalindrome = [self stringIsPalindrome:papayaWar];
    
    NSLog(@"%d : %@", fleeToMeIsPalindrome, fleeToMe);
    NSLog(@"%d : %@", normaIsPalindrome, norma);
    NSLog(@"%d : %@", papayaWarIsPalindrome, papayaWar);
    
    


    
    // do not alter
    return YES;  //
}   ///////////////

/**
 
 * Implement your methods here.
 
 */

- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSArray *punctuations = @[@".", @",", @"!", @"?", @":", @";"];
    
    NSString *withoutPunctuation = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++)
    {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    NSString *lowercase = [withoutPunctuation lowercaseString];
    
    NSString *spaceless = [lowercase stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *reverse = [self stringByReversingString:spaceless];
    
    BOOL stringIsEqualToReverse = [spaceless isEqualToString:reverse];
    
    return stringIsEqualToReverse;
    
}

- (NSString *)stringByReversingString:(NSString *)string {
    
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    
    return result;
}

@end
