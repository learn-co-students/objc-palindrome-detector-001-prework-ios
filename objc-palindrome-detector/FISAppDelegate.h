//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

// 1. declare methods in the header file

- (BOOL)stringIsPalindrome:(NSString *)string;
- (NSString *)stringByReversingString:(NSString *)string;

@end
