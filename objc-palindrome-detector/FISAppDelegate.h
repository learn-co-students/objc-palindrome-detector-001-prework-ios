//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (BOOL) stringIsPalindrome:(NSString *)string;

- (NSString *)stringByReversingString:(NSString *)string;



@end
