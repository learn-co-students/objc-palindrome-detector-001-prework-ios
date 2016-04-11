//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    /**
     
     * Write your check code here.
     
     */
    
    // Checking a Method Return.
    NSString *palindrome = @"palindrome";
    NSString *reversed = [self stringByReversingString:palindrome];
    NSLog(@"%@ : %@", palindrome, reversed);
    
    // Check the "Detecting Palindrome" Implementation.
    NSString *racecar = @"racecar";
    BOOL racecarIsPalindrome = [self stringIsPalindrome:racecar];
    NSLog(@"%d : %@", racecarIsPalindrome, racecar);
    
    BOOL palindromIsPalindrome = [self stringIsPalindrome:palindrome];
    NSLog(@"%d : %@", palindromIsPalindrome, palindrome);
    
    NSString *bob = @"Bob";
    BOOL bobIsPalindrome = [self stringIsPalindrome:bob];
    NSLog(@"%d : %@", bobIsPalindrome, bob);
    
    NSString *kanakanak = @"Kanakanak";
    BOOL kanakanakIsPalindrome = [self stringIsPalindrome:kanakanak];
    NSLog(@"%d : %@", kanakanakIsPalindrome, kanakanak);
    
    NSString *aibohphobia = @"Aibohphobia";
    BOOL aibohphobiaIsPalindrome = [self stringIsPalindrome:aibohphobia];
    NSLog(@"%d : %@", aibohphobiaIsPalindrome, aibohphobia);
    
    NSString *thisIsNotAPalindrome = @"this is not a palindrome";
    BOOL thisIsNotAPalindromeIsPalindrome = [self stringIsPalindrome:thisIsNotAPalindrome];
    NSLog(@"%d : %@", thisIsNotAPalindromeIsPalindrome, thisIsNotAPalindrome);
    
    NSString *neverOddOrEven = @"never odd or even";
    BOOL neverOddOrEvenIsPalindrome = [self stringIsPalindrome:neverOddOrEven];
    NSLog(@"%d : %@", neverOddOrEvenIsPalindrome, neverOddOrEven);
    
    NSString *iPreferPi = @"I prefer pi";
    BOOL iPreferPiIsPalindrome = [self stringIsPalindrome:iPreferPi];
    NSLog(@"%d : %@", iPreferPiIsPalindrome, iPreferPi);
    
    NSString *fleeToMeRemoteElf = @"Flee to me, remote elf.";
    BOOL fleeToMeRemoteElfIsPalindrome = [self stringIsPalindrome:fleeToMeRemoteElf];
    NSLog(@"%d : %@", fleeToMeRemoteElfIsPalindrome, fleeToMeRemoteElf);
    
    NSString *normaIsAsSelflessAsIamRon = @"Norma is as selfless as I am, Ron.";
    BOOL normaIsAsSelflessAsIamRonIsPalindrome = [self stringIsPalindrome:normaIsAsSelflessAsIamRon];
    NSLog(@"%d : %@", normaIsAsSelflessAsIamRonIsPalindrome, normaIsAsSelflessAsIamRon);
    
    NSString *noSirAwayApapayaWarIsOn = @"No sir! Away! A papaya war is on.";
    BOOL noSirAwayApapayaWarIsOnIsPalindrome = [self stringIsPalindrome:normaIsAsSelflessAsIamRon];
    NSLog(@"%d : %@", noSirAwayApapayaWarIsOnIsPalindrome, noSirAwayApapayaWarIsOn);
    
    // do not alter
    return YES;  //
}   ///////////////

/**
 
 * Implement your methods here.
 
 */

// Detecting Palindrome.
- (BOOL)stringIsPalindrome:(NSString *)string {
   
    // Removing punctuation. 
    NSArray *punctuations = @[@".", @",", @"!", @"?", @":", @";"];
    NSString *withoutPunctuation = [string copy];
    for (NSUInteger i=0; i<[punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    // Removing spaces.
    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *lowercase = [spaceless lowercaseString];
    NSString *reverse = [self stringByReversingString:lowercase];
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    
    return stringIsEqualToReverse;
}

- (NSString *)stringByReversingString:(NSString *)string {
    
    NSString *result = @"";
    for (NSUInteger i = [string length]; i>0; i--) {
        NSUInteger index = i-1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    
    return result;
}

@end
