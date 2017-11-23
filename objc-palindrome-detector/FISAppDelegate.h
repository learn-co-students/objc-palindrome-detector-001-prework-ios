//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

// I. DECLARE METHODS IN THE HEADER FILE
- (BOOL) stringIsPalindrom: (NSString *)string;
- (NSString *) stringByReversingString: (NSString *)string;

@end
