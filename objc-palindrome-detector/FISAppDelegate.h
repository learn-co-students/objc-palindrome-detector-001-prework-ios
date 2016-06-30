//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


//Return YES if string is equal to its reverse, NO otherwise.
- (BOOL)stringIsPalindrome:(NSString *)string;

//Reverse the characters in string and return the resulting string.
- (NSString *)stringByReversingString:(NSString *)string;

//Strip punctuation characters and spaces from string and return the resulting string.
- (NSString *)removeUnwantedChars:(NSString *)string;


@end
