//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    //NSString *palindrome = @"palindrome";
    //NSString *reversed = [self stringByReversingString:palindrome];
    
    // Check method return
    //NSLog(@"%@: %@", palindrome, reversed);
    
    
    
    // single word, with uppercase
    NSString *bob = @"Bob";
    BOOL bobIsPalindrome = [self stringIsPalindrome:bob];
    NSLog(@"%d : %@", bobIsPalindrome, bob);
    
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
    
    
    
    // full sentences with punctuation and capitalization
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
    
    NSArray *punctuations = @[@".",@",",@"/",@"?",@"!",@":",@";",@"-",@"_"];
    NSString *withoutPunctuations = [string copy];
    
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuations = [withoutPunctuations stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    // No Spaces
    NSString *noSpaceString = [withoutPunctuations stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    
    // Case sensitivity
    NSString *lowercaseString = [noSpaceString lowercaseString];
    
    // Reverse order
    NSString *reversedString = [self stringByReversingString:lowercaseString];
    
    
    // BOOL
    BOOL result = [lowercaseString isEqualToString:reversedString];
    return result;
    
}

- (NSString *)stringByReversingString:(NSString *)string {
    NSString *reversedString = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar stringChar = [string characterAtIndex:index];
        reversedString = [reversedString stringByAppendingFormat:@"%C", stringChar];
        
    }
    
    return reversedString;
}

@end
