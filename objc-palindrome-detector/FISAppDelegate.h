//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

    -(BOOL)stringIsPalindrome:(NSString *)string;

    -(NSString *)stringByReverseString:(NSString *)string;

@end
