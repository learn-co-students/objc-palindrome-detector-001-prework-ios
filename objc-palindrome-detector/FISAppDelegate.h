//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
// stringIsPalindrome takes on NSString argument called string and returns BOOL.
// stringBy ReversingString takes on NSString argument called string and returns NSString.

- (BOOL)stringIsPalindrome:(NSString *)string;
- (NSString *)stringByReversingString: (NSString *)string;


@end
