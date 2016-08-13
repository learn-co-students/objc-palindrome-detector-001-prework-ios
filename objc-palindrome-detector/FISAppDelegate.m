//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    NSString *palindrome = @"palindrome";
    NSString *reversed = [self stringByReversingString:palindrome];
    BOOL palindromeIsPalindrome = [self stringIsPalindrome:palindrome];
    NSLog(@"%d : %@ - %@", palindromeIsPalindrome, palindrome, reversed);
    
    
    NSString *racecar = @"racecar";
    NSString *reversed1 = [self stringByReversingString:racecar];
    BOOL racecarIsPalindrome = [self stringIsPalindrome:racecar];
    NSLog(@"%d : %@ - %@", racecarIsPalindrome, racecar, reversed1);
    
    
    NSString *bob = @"Bob";
    BOOL bobIsBob = [self stringIsPalindrome:bob];
    NSLog(@"%d : %@", bobIsBob, bob);
    
    NSString *kanakanak = @"Kanakanak";
    BOOL kanakIsKanak = [self stringIsPalindrome:kanakanak];
    NSLog(@"%d : %@", kanakIsKanak, kanakanak);
    
    NSString *aibohphobia = @"Aibohphobia";
    BOOL aibohphobiaIsAibohphbia = [self stringIsPalindrome:aibohphobia];
    NSLog(@"%d : %@", aibohphobiaIsAibohphbia, aibohphobia);
    
    
    NSString *notAPalindrome = @"this is not an palindrome";
    BOOL notAPalindromIsAPalindrome = [self stringIsPalindrome:notAPalindrome];
    NSLog(@"%d : %@", notAPalindromIsAPalindrome, notAPalindrome);
    
    NSString *neverOdd = @"never odd or even";
    BOOL neverOddIsPalindrome = [self stringIsPalindrome:neverOdd];
    NSLog(@"%d : %@", neverOddIsPalindrome, neverOdd);
    
    NSString *iPreferPi = @"I prefer pi";
    BOOL iPreferPiIsPalindrome = [self stringIsPalindrome:iPreferPi];
    NSLog(@"%d : %@", iPreferPiIsPalindrome, iPreferPi);
    
    NSString *fleeToMe = @"Flee to me, remote elf!";
    BOOL fleeToMeIsPalindrome = [self stringIsPalindrome:fleeToMe];
    NSLog(@"%d : %@", fleeToMeIsPalindrome, fleeToMe);
    
    NSString *norma = @"Norma is as selfless as I am, Ron.";
    BOOL normaIsPalindrome = [self stringIsPalindrome:norma];
    NSLog(@"%d : %@", normaIsPalindrome, norma);
    
    NSString *papayaWar = @"No Sir! Away! A papaya war is on!";
    BOOL papayaIsPalindrome = [self stringIsPalindrome:papayaWar];
    NSLog(@"%d : %@", papayaIsPalindrome, papayaWar);
    
    
    
    
    
    
    
    
    
    
    


    
    // do not alter
    return YES;  //
}   ///////////////




- (BOOL)stringIsPalindrome:(NSString *)string; {
    
    NSArray *punctuations = @[ @".", @"?", @",", @"!", @":", @";"];
    
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



- (NSString *)stringByReversingString:(NSString *)string; {
    
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        
        NSUInteger index = i - 1;
        
        unichar c = [string characterAtIndex:index];
        
        result = [result stringByAppendingFormat:@"%C", c];
    }
    
    return result;
}

@end
