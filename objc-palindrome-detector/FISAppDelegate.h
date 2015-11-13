//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(BOOL)stringIsPalindrom: (NSString *) string;

-(NSString *)stringByReversingString: (NSString *) string;

@end
