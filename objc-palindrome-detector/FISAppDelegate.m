//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

//    NSString *palindrome = @"palindrome";
//
//    NSString *reversed = [self stringByReversingString:palindrom];
//    
//    NSLog(@"%@ : %@", palindrom, reversed);
//    
//    NSString *racecar = @"racecar";
    
//    BOOL racecarIsPalindrome = [self stringIsPalindrom:racecar];
//    
//    NSLog(@"%d : %@", racecarIsPalindrome, racecar);
//    
    
//    BOOL palindromeIsPalindrome = [self stringIsPalindrom:palindrome];
    
//    NSLog(@"%d : %@", palindromeIsPalindrome, palindrome);
    
    //Checks for single word with uppercase
    
//    NSString *bob = @"Bob";
//    BOOL bobIsPalindrome = [self stringIsPalindrom:bob];
//    NSLog(@"%d : %@", bobIsPalindrome, bob);
//    
//    NSString *kanakanak = @"Kanakanak";
//    BOOL kanakanakIsPalindrome = [self stringIsPalindrom:kanakanak];
//    NSLog(@"%d : %@", kanakanakIsPalindrome, kanakanak);
//    
//    NSString *aibohphobia = @"Aibohphobia";
//    BOOL aibohphobiaIsPalindrom = [self stringIsPalindrom:aibohphobia];
//    NSLog(@"%d : %@", aibohphobiaIsPalindrom, aibohphobia);
//    
    
//    NSString *notAPalindrome = @"this is not a palindrome";
//    BOOL notAPalindromeIsPalindome = [self stringIsPalindrom:notAPalindrome];
//    NSLog(@"%d : %@", notAPalindromeIsPalindome, notAPalindrome);
//    
//    NSString *neverOdd = @"never odd or even";
//    BOOL neverOddIsPalindrome = [self stringIsPalindrom:neverOdd];
//    NSLog(@"%d : %@", neverOddIsPalindrome, neverOdd);
//    
//    NSString *iPreferPi = @"I prefer pi";
//    BOOL iPreferPiIsPalindrome = [self stringIsPalindrom:iPreferPi];
//    NSLog(@"%d : %@", iPreferPiIsPalindrome, iPreferPi);
//    
    
    NSString *fleeToMe = @"Flee to me, remote elf.";
    BOOL fleeToMeIsPalindrome = [self stringIsPalindrom:fleeToMe];
    NSLog(@"%d : %@", fleeToMeIsPalindrome, fleeToMe);
    
    NSString *norma = @"Norma is as selfless as I am, Ron.";
    BOOL normaIsPalindrome = [self stringIsPalindrom:norma];
    NSLog(@"%d : %@", normaIsPalindrome, norma);
    
    NSString *papayaWar = @"No sir! Away! A papaya war is on.";
    BOOL papayaWarIsPalendrome = [self stringIsPalindrom:papayaWar];
    NSLog(@"%d : %@", papayaWarIsPalendrome, papayaWar);
    
    
    
    
    // do not alter
    return YES;  //
}   ///////////////

-(BOOL)stringIsPalindrom:(NSString *)string {
    
    NSArray *punctuations = @[@".", @",", @"!",@"?", @";", @":"];
    
    NSString *withoutPunctuation = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
        
    }
    
    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *lowercase = [spaceless lowercaseString];
    
    NSString *reverse = [self stringByReversingString:lowercase];
    
    // NSLog(@"lowercase: %@, reverse: %@", lowercase, reverse);
    
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    
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
