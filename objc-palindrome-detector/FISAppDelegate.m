//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

/*

//int x (this is a declaration)

//x = 15 (this is the definiation)
 
 public int getAge(String name) {
    if name.equals("Kachi") {
        return 27;
    } else if name.equals("Taina") {
        return 26;
    } else {
        return 0;
    }
 }
 
 
 
 - (NSInteger)getAge:(NSString *)name {
    if ([name isEqualToString:@"Kachi"]) {
        return 27;
    } else if ([name isEqualToString:@"Taina"]) {
        return 26;
    } else {
 
 }
 }
 
 */

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSString *racecar = @"racecar";
    BOOL racecarIsPalindrome = [self stringByReversingString: racecar];
    NSLog(@"%d : %@", racecarIsPalindrome, racecar);
    
    NSString *bob = @"Bob";
    BOOL bobIspalindrome = [self stringIsPalindrome:bob];
    NSLog(@"%d : %@", bobIspalindrome, bob);
    
    NSString *kanakanak =@"Kanakanak";
    BOOL kanakanakIsPalindrome = [self stringIsPalindrome:kanakanak];
    NSLog(@"%d : %@", kanakanakIsPalindrome, kanakanak);
    
    NSString *aibohphobia = @"Aibohphobia";
    BOOL aibophobiaisPalindrome = [self stringIsPalindrome:aibohphobia];
    NSLog(@"%d : %@", aibophobiaisPalindrome, aibohphobia);
    
    NSString *notAPalindrome = @"this is not a palindrome";
    BOOL notAPalindromeIsPalindrome = [self stringIsPalindrome: notAPalindrome];
    NSLog(@"%d : %@", notAPalindromeIsPalindrome, notAPalindrome);
    
    NSString *iPreferPi = @"I prefer pi";
    BOOL iPreferPiIspalindrome = [self stringIsPalindrome:iPreferPi];
    NSLog(@"%d : %@", iPreferPiIspalindrome, iPreferPi);
    
    NSString *neverOdd = @"never odd or even";
    BOOL neverOddIsPalindrome = [self stringIsPalindrome:neverOdd];
    NSLog(@"%d : %@", neverOddIsPalindrome, neverOdd);
    
    NSString *fleeToMe = @"Flee to me, remote elf.";
    BOOL fleeToMeIsPalindrome = [self stringIsPalindrome:fleeToMe];
    NSLog(@"%d : %@", fleeToMeIsPalindrome, fleeToMe);
    
    NSString *norma =@"Norma is as selfless as I am, Ron.";
    BOOL normaIsPalindrome = [self stringIsPalindrome:norma];
    NSLog(@"%d : %@", normaIsPalindrome, norma);
    
    NSString *papayaWar = @"No sir! Away! A papaya war is on.";
    BOOL papayaWarispalindrome = [self stringIsPalindrome:papayaWar];
    NSLog(@"%d : %@",papayaWarispalindrome, papayaWar);
    
    

    
    // do not alter
    return YES;  //
}   ///////////////

- (BOOL)stringIsPalindrome:(NSString *)string {
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];
    NSString *withoutPunctuation = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [spaceless lowercaseString];
    NSString *reverse = [self stringByReversingString:lowercase];
    NSLog(@"lowercase: %@, reverse: %@", lowercase, reverse);
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
