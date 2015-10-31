//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (BOOL)stringsInPalindrome:(NSString *)string;

- (NSString *)stringsByReversingString:(NSString *)string;


@end
