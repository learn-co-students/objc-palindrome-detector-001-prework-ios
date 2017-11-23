//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    NSString *testStringForPalindrome = @"No sir! Away! A papaya war is on.";
    if ([self stringIsPalindrome:testStringForPalindrome]) {
        NSLog(@"Yes. \"%@\" is a palindrome!", testStringForPalindrome);
    }
    else {
        NSLog(@"No, \"%@\" is not a palindrome :-(", testStringForPalindrome);
    }
    
    // do not alter
    return YES;  //
}   ///////////////


// implementation of the stringIspalindrome method
- (BOOL)stringIsPalindrome:(NSString *)string {
    //lets get rid of all the space and punctuation of string
    NSString *lowerCaseString = [string lowercaseString];
    NSString *stringWithoutPanctuation = [lowerCaseString copy];
    NSArray *panctuationCharacters = @[@" ",@".", @",", @"!", @"?", @":", @";"];
    
    for (NSUInteger i =0; i < [panctuationCharacters count]; i++) {
        stringWithoutPanctuation = [stringWithoutPanctuation stringByReplacingOccurrencesOfString:panctuationCharacters[i] withString:@""];
    }
    NSString *reverseString = [self stringByReversingString:stringWithoutPanctuation];
    if ([reverseString isEqualToString:stringWithoutPanctuation]) {
        return YES;
    }
    return NO;
}

// implementation of the stringByReversingString method
- (NSString *)stringByReversingString:(NSString *)string {
    
    NSString *reversedString = @"";
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        reversedString = [reversedString stringByAppendingFormat:@"%C",[string characterAtIndex:index]];
    }
    return reversedString;
}

@end
