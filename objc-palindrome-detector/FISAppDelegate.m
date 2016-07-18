//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    /**
     
     * Write your check code here.
     
     */
    
    NSString * palindrome=@"palindrome";
    
    NSString *reversed=[self stringByReversingString:palindrome];
    
    NSLog(@"%@ : %@", palindrome, reversed);
    
    // Check Implementation Practice
    
    NSString * racecar=@"racecar";

    BOOL racecarIsPalindrome = [self stringIsPalindrome:racecar];
    
    NSLog(@"%d : %@", racecarIsPalindrome, racecar); // racecar is a palindrome

    BOOL palindromeIsPalindrome=[self stringIsPalindrome:palindrome];
    
    NSLog(@"%d : %@", palindromeIsPalindrome, palindrome);
    
    // Ignoring Typecase Practice
    
    NSString * bob =@"Bob";
    BOOL bobIsPalindrome=[self stringIsPalindrome:bob];
    NSLog(@"%d : %@", bobIsPalindrome, bob);
    
    NSString * kanakanak=@"Kanakanak";
    BOOL kanakanakIsPalindrome=[self stringIsPalindrome:kanakanak];
    NSLog(@"%d : %@", kanakanakIsPalindrome, kanakanak);
    
    NSString *aibohphobia=@"Aibohphobia";
    BOOL aibohphobiaIsPalindrome=[self stringIsPalindrome:aibohphobia];
    NSLog(@"%d : %@", aibohphobiaIsPalindrome, aibohphobia);
    
    // Removing Spaces Practice
    
    NSString *notAPalindrome =@"this is not a palindrome";
    BOOL notAPalindromeIsPalindrome= [self stringIsPalindrome:notAPalindrome];
    NSLog(@"%d : %@", notAPalindromeIsPalindrome, notAPalindrome);
    
    NSString *neverOdd= @"never odd or even";
    BOOL neverOddIsPalindrome= [self stringIsPalindrome:neverOdd];
    NSLog(@"%d : %@", neverOddIsPalindrome, neverOdd);
    
    NSString *iPreferPi =@"I prefer pi";
    BOOL iPreferPiIsPalindrome = [self stringIsPalindrome:iPreferPi];
    NSLog(@"%d : %@", iPreferPiIsPalindrome, iPreferPi);
    
    // Removing Punctuation Practice
    
    NSString *fleeToMe =@"Flee to me, remote elf.";
    BOOL fleeToMeIsPalindrome = [self stringIsPalindrome:fleeToMe];
    NSLog(@"%d : %@", fleeToMeIsPalindrome, fleeToMe);
    
    NSString *norma=@"Norma is as selfless as I am, Ron.";
    BOOL normaIsPalindrome = [self stringIsPalindrome:norma];
    NSLog(@"%d: %@", normaIsPalindrome, norma);
    
    NSString *papayaWar=@"No sir! Away! A papaya war is on.";
    BOOL papayaWarIsPalindrome=[self stringIsPalindrome:papayaWar];
    NSLog(@"%d : %@", papayaWarIsPalindrome, papayaWar);
    
    // do not alter
    return YES;  //
  ///////////////
}
/**
 
 * Implement your methods here.
 
 */

-(BOOL)stringIsPalindrome: (NSString * )string {
   //return NO;
    NSArray *punctuations= @[ @".", @",", @"!", @"?", @":", @";" ];
    
    NSString * withoutPunctuation =[string copy];
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    NSString * spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    // Detecting a Palindrome Practice
    
    NSString *lowercase =[spaceless lowercaseString];
    
    NSString *reverse=[self stringByReversingString: lowercase]; // return of calling the lowercase method on the string argument

   //NSLog(@"lowercase: %@, reverse: %@", lowercase, reverse); // Add NSLog to inspect strings
    
    BOOL stringIsEqualToReverse= [lowercase isEqualToString:reverse];
    
    return stringIsEqualToReverse;

}

-(NSString *)stringByReversingString:(NSString *)string {
 //  return nil;
    

    // Reversing a String Practice
    
    NSString * result = @""; // blank space
    
    for (NSUInteger i=[string length]; i>0; i--) { // decrement i
        NSUInteger index=i-1; // index is always one less
        unichar c= [string characterAtIndex:index];
        result = [result stringByAppendingFormat: @"%C", c]; // append c at end of result
        
        
    }
    
    return result;

}
@end
