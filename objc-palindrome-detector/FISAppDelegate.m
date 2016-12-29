//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSArray *stringsToTest = @[@"Bob", @"Kanakanak", @"Aibohphobia", @"this is not a palindrome",
                               @"never odd or even", @"I prefer pi", @"Flee to me, remote elf.",
                               @"Norma is as selfless as I am, Ron", @"No sir! Away! A papaya war is on.",
                               @"A man, a plan, a canal: Panama"];
    
    NSUInteger stringsCount = [stringsToTest count];
    
    for(NSUInteger i = 0; i < stringsCount; i++){
        NSLog(@"%d : %@", [self stringIsPalindrome:stringsToTest[i]], stringsToTest[i]);
    }
    
    // do not alter
    return YES;  //
}   ///////////////

// Return YES if string is equal to its reverse, NO otherwise.

- (BOOL)stringIsPalindrome:(NSString *)string{
    
    string = [self removeUnwantedChars:[string lowercaseString]];
    
    NSString *reversed = [self stringByReversingString:string];
    //NSLog(@"reversed: %@", reversed);
    
    return [reversed isEqualToString:string];
}

// Reverse the characters in string and return the resulting string.

- (NSString *)stringByReversingString:(NSString *)string{
    
    NSUInteger len = [string length];
    NSString *reversed = @"";
    
    for (NSUInteger i = len; i > 0; i--){
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        reversed = [reversed stringByAppendingFormat:@"%C", c];
    }
    
    
    return reversed;
    
}

//Strip punctuation and spaces from string and return the resulting string.

- (NSString *)removeUnwantedChars:(NSString *)string{
    NSArray *unwantedChars = @[ @".", @",", @"!", @"?", @":", @";", @" " ];
    
    NSUInteger numUnwantedChars = [unwantedChars count];
    
    for(NSUInteger i = 0; i < numUnwantedChars; i++){
        NSString *unwanted = unwantedChars[i];
        string = [string stringByReplacingOccurrencesOfString:unwanted withString:@""];
    }
    
    return string;
}

@end
