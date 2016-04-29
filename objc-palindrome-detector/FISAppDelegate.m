//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSString *palindrome = @"palindrome";
    NSString *reverse = [self stringByReversingString:palindrome];

    NSLog(@"Palindrome: %@, Reversed: %@", palindrome, reverse);
    
    NSString *racecar = @"racecar";
    BOOL raceCarIsPalindrome = [self stringIsPalindrome:racecar];
    
    NSLog(@"%d : %@", raceCarIsPalindrome, racecar);
    
    BOOL palindromeIsPalindrome = [self stringIsPalindrome:palindrome];
    
    NSLog(@"%d : %@", palindromeIsPalindrome, palindrome);
    
    NSString *bob = @"Bob";
    BOOL bobISPalindrome = [self stringIsPalindrome:bob];
    
    NSLog(@"%d : %@", bobISPalindrome, bob);
    
    NSString *kanakanak = @"Kanakanak";
    BOOL kanakanakIsPalindrome = [self stringIsPalindrome:kanakanak];
    NSLog(@"%d : %@", kanakanakIsPalindrome, kanakanak);
    
    NSString *aibohphobia = @"Aibohphobia";
    BOOL aibohphobiaIsPalindrome = [self stringIsPalindrome:aibohphobia];
    NSLog(@"%d : %@", aibohphobiaIsPalindrome, aibohphobia);
    
    NSString *notAPalindrome = @"this is not a palindrome";
    BOOL notAPalindromeIsPalindrome = [self stringIsPalindrome:notAPalindrome];
    NSLog(@"%d : %@", notAPalindromeIsPalindrome, notAPalindrome);
    
    NSString *neverOdd = @"never odd or even";
    BOOL neverOddIsPalindrome = [self stringIsPalindrome:neverOdd];
    NSLog(@"%d : %@", neverOddIsPalindrome, neverOdd);
    
    NSString *iPreferPi = @"I prefer pi";
    BOOL iPreferPiIsPalindrome = [self stringIsPalindrome:iPreferPi];
    NSLog(@"%d : %@", iPreferPiIsPalindrome, iPreferPi);
    
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

/**
 
 * Implement your methods here.
 
 */

- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSArray *punctuations = @[@".", @",", @"!", @"?", @":", @"\"\"", @";"];
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        string = [string stringByReplacingOccurrencesOfString:[punctuations objectAtIndex:i] withString:@""];
    }
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    string = [string lowercaseString];
    NSString *reverse = [self stringByReversingString:string];
    BOOL stringIsEqualToReverse = [string isEqualToString:reverse];
    
    
    return stringIsEqualToReverse;

}

- (NSString *)stringByReversingString:(NSString *)string {
    
    NSMutableString *reverseString = [NSMutableString string];
    NSUInteger index = [string length];
    
    while (index > 0) {
        index--;
        NSRange subStringRange = NSMakeRange(index, 1);
        [reverseString appendString:[string substringWithRange:subStringRange]];
    }
    
    return reverseString;

}

@end
