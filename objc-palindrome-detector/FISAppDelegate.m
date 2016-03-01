//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    NSString *palindrome = @"palindrome";
    
    NSString *reversed = [self stringByReversingString:palindrome];
    
    NSLog(@"%@ : %@", palindrome, reversed);
    
    NSString *racecar = @"racecar";
    
    BOOL racecarIsPalindrome = [self stringIsPalindrome:racecar];
    
    NSLog(@"Is %@ a palindrome? %d", racecar, racecarIsPalindrome);
    
    NSString *bob = @"Bob";
    BOOL bobIsPalindrome = [self stringIsPalindrome:bob];
    NSLog(@"%@ is a palindrome? %d", bob, bobIsPalindrome);
    
    NSString *lionoil = @"Lionoil";
    BOOL lionoilIsPalindrome = [self stringIsPalindrome:lionoil];
    NSLog(@"%@ is a palindrome? %d", lionoil, lionoilIsPalindrome);
    
    NSString *notAPalindrome = @"Not a palindrome";
    BOOL notAPalindromeIsPalindrome = [self stringIsPalindrome:notAPalindrome];
    NSLog(@"%@ is a palindrome? %d", notAPalindrome, notAPalindromeIsPalindrome);
    
    NSString *neverOddOrEven = @"Never odd or even";
    BOOL neverOddOrEvenIsPalindrome = [self stringIsPalindrome:neverOddOrEven];
    NSLog(@"%@ is a palindrome? %d", neverOddOrEven, neverOddOrEvenIsPalindrome);
    
    NSString *napoleonQuote = @"Able was I, ere I saw Elba";
    BOOL napoleonQuoteIsPalindrome = [self stringIsPalindrome:napoleonQuote];
    NSLog(@"%@ is palindrome? %d", napoleonQuote, napoleonQuoteIsPalindrome);
    
    
    return YES;  //
}   ///////////////


- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";"];
    
    NSString *withoutPunctuation = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }

    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *lowercase = [spaceless lowercaseString];
    
    NSString *reverse = [self stringByReversingString:lowercase];
    
    BOOL stringIsEqualToReverse = [lowercase isEqualToString: reverse] ;
    
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
