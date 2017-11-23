//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    NSString *palindrome = @"palindrome";
    NSString *reversed = [self stringByReversingString:palindrome];
    NSLog(@"%@ : %@", palindrome, reversed);
    
    /*   //string variable called palindrome set to the string literal
    NSString *palindrome = @"palindrome";
    //string variable called reverse, capturing string reversed on itself with palindrome as the method argument
    NSString *reversed = [self stringByReversingString:palindrome];
    //print
    NSLog(@"%@ : %@", palindrome, reversed);*/
    
    
    NSString *racecar = @"racecar";
    BOOL racecarIsPalindrome = [self stringIsPalindrome:racecar];
    NSLog(@"%d : %@", racecarIsPalindrome, racecar);
    
    /*   //string variable called racecar set to the string literal
    NSString *racecar = @"racecar";
    // BOOL variable used to capture stringIsPalindrome on self with racecar as the method argument
    BOOL racecarIsPalindrome = [self stringIsPalindrome:racecar];
    //Print 1 or 0 to confirm
    NSLog(@"%d : %@", racecarIsPalindrome, racecar);*/
    
    
    BOOL palindromeIsPalindrome = [self stringIsPalindrome:palindrome];
    NSLog(@"%d : %@", palindromeIsPalindrome, palindrome);
    
    
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
    
    
    NSString *fleeToMe = @"Flee to me, remote elf.";
    BOOL fleeTomeIsPalindrome = [self stringIsPalindrome:fleeToMe];
    NSLog(@"%d : %@", fleeTomeIsPalindrome, fleeToMe);
    
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

/*- (BOOL)stringIsPalindrome:(NSString *)string {
    return NO;
}*/

- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];
    NSString *withoutPunctuation = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++){
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [spaceless lowercaseString];
    NSString *reverse = [self stringByReversingString:lowercase];
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    return stringIsEqualToReverse;
}

/*- (BOOL)stringIsPalindrome:(NSString *)string {
 
    //Create a string called reverse that captures the return of string reversing on self with string argument variable as the method argument
    NSString *reverse = [self stringByReversingString:string];
 
    //Create a BOOL variable, use it to capture return of call Is=tostring method on string with reverse submitted as the method argument
    BOOL stringIsEqualToReverse = [string isEqualToString:reverse];
 
    //return variable
    return stringIsEqualToReverse;
}*/


- (NSString *)stringByReversingString:(NSString *)string {
    
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    return result;
}

/*- (NSString *)stringByReversingString:(NSString *)string {
    
    //Create new NSSString called result
    NSString *result = @"";
    
    //Create for loop that begins at string length, counts down
    for (NSUInteger i = [string length]; i > 0; i--) {
        //Define index, one less than current i. one off difference between the string length and its highest index
        NSUInteger index = i - 1;
        //Find the next character (c) by using index integer to call characterAtIndex on the argument string
        unichar c = [string characterAtIndex:index];
        //Appends c to the end of the result string
        result = [result stringByAppendingFormat:@"%C", c];
    }
    return result;
}*/


@end
