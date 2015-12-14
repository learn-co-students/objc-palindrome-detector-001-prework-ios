//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

// declare public methods:

- (BOOL)stringIsPalandrome:(NSString *)string;

-(NSString *)stringByReversingString:(NSString *)string;

@end
