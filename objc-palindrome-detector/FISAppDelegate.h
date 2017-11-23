//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 
 * Declare your methods here.
 
 */

// stringIsPalindrome takes one NSString argument called string and returns a BOOL.
- (BOOL)stringIsPalindrome: (NSString *)string;
// stringByReverseString takes on NSString argument called string and returns an NSString.
- (NSString *)stringByReversingString:(NSString *)string;

@end
