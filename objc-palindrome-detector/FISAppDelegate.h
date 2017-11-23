//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


// method type > return type in paren > methodName: > arg variable type in paren > arg name...

  - (BOOL)stringIsPalindrome:(NSString *)string;

  - (NSString *)stringByReversingString:(NSString *)string;



@end
