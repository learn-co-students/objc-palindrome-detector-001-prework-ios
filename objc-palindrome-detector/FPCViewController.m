//
//  FPCViewController.m
//  objc-palindrome-detector
//
//  Created by Federico Paliotta on 14/12/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FPCViewController.h"
#import "FISAppDelegate.h"

@interface FPCViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputString;
@property (weak, nonatomic) IBOutlet UILabel *outputString;

@end

@implementation FPCViewController

- (IBAction)reverse {
    
    NSString * input = [[_inputString.text lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        input = [input stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    FISAppDelegate * appDeleg = (FISAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    if ([appDeleg stringIsPalindrome: input]) {
        _outputString.textColor = [UIColor colorWithRed:0 green:127 blue:0 alpha:1];
    } else {
        _outputString.textColor = [UIColor colorWithRed:179 green:0 blue:0 alpha:1];
    }
    
    _outputString.text = [appDeleg stringByReversingString: input];
}

@end
