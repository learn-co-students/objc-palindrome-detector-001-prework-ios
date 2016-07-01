//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

- (BOOL) stringIsPalindrome: (NSString *)string;
- (NSString *) stringByReversingString: (NSString *)string;

@property (strong, nonatomic) UIWindow *window;

/**
 
 * Declare your methods here.
 
 */

@end
