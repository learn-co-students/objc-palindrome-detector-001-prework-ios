//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/*stringIsPalindrome: which takes one NSString argument called string and returns a BOOL, and
 stringByReversingString: which takes one NSString argument called string and returns an NSString*/

- (BOOL)stringIsPalindrome:(NSString *)string;
- (NSString *)stringByReversingString:(NSString *)string;


@end
