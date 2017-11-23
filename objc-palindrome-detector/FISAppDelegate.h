//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (BOOL)stringIsPalidrome:(NSString *)string;
- (NSString *)stringByReversingString:(NSString *)string;

/**
 
 * Declare your methods here.
 
 */

@end
