//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//declaring the function that returns boolean by testing whether the string is a palindrome
- (BOOL)stringIsPalindrome:(NSString *)string;
//declaring the function that is called by the stringIspalindrome function to reverse the given string
- (NSString *)stringByReversingString:(NSString *)string;

@end
