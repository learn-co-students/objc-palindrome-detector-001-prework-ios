# Code-Along: Palindrome Detector

## Objectives

1. Declare methods in the `.h` header file using proper syntax.
2. Define methods in the `.m` implementation file using proper syntax.
3. Engage a problem to be solved in code by breaking the approach down into smaller steps.
4. Solve each step sequentially in increasing levels of complexity.
5. Check your code's behavior periodically with `NSLog()` as you progress in your solution.
6. Call another method in the same file by using the `self` keyword.

### Optional 
7. Memorize some palindromes that you can use to impress your friends.

## Introduction

A [palindrome](https://en.wikipedia.org/wiki/Palindrome) is a word, phrase, or sentence whose letters are exactly mirrored around the center letter. Some examples include:

*racecar*  
*Bob*  
*Kanakanak*  (a city in Alaska)  
*Aibohphobia*  (the fear of palindromes)   
*never odd or even*  
*I prefer pi*  
*Flee to me, remote elf.*  
*Norma is as selfless as I am, Ron.*  
*No sir! Away! A papaya war is on.*

The qualification of a palindrome typically ignores spaces, punctuation, and capitalization, judging only the order of the letters themselves. Essentially, when a palindrome is reversed, its letters fall into the same order.

In this code-along we're going to write a method that can judge whether or not a particular string qualifies as a palindrome. We're going to start with judging a single all-lowercase word, and then add complexity to allow the method to handle capitalization, spaces, and punctuation. We'll call this method `stringIsPalindrome:`.

The easiest way to judge a palindrome is simply to compare it to its reverse. However, there is no string reversal method built into the Objective-C language so we'll have to write this functionality ourselves. We'll accomplish this by writing another method called `stringByReversingString:` that we can call from within the `stringIsPalindrome` method by using the `self` keyword as the recipient object.

## Instructions

Fork and clone this lab. 

### I. Declare Methods In The Header File

Open the `objc-palindrome-detector.xcodeproj` file and navigate to the `FISAppDelegate.h` header file. You should see the following code:

```objc
//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 
 * Declare your methods here.
 
 */

@end
```
Declare two methods inside the `@interface` section, between the `@property` statement and the `@end` statement:

* `stringIsPalindrome:` which takes one `NSString` argument called `string` and returns a `BOOL`, and
* `stringByReversingString:` which takes one `NSString` argument called `string` and returns an `NSString`.

After declaring these methods, your `FISAppDelegate.h` header file should look something like this:

```objc
//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (BOOL)stringIsPalindrome:(NSString *)string;

- (NSString *)stringByReversingString:(NSString *)string;

@end
```
Great!

### II. Define Method Implementations

Now, navigate to the `FISAppDelegate.m` implementation file. *Below* the ending curly brace of the `application:didFinishLaunchingWithOptions:` method, but *above* the `@end` statement, use autocomplete to define both methods with default returns:

* `stringIsPalindrome:` should `return NO;`, and
* `stringByReversingString:` should `return nil;`.

Your `FISAppDelegate.m` file should now look something like this:

```objc
//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /**
     
     * Write your check code here.
     
     */

    // do not alter
    return YES;  //
}   ///////////////

/**
 
 * Implement your methods here.
 
 */

- (BOOL)stringIsPalindrome:(NSString *)string {
   return NO;
}

- (NSString *)stringByReversingString:(NSString *)string {
    return nil;
}

@end
```

### III. Reversing a String

Because the logic of our `stringIsPalindrome:` method depends on our ability to reverse a string, let's start by writing out the `stringByReversingString:` method that we declared. Our goal is take whatever string variable is passed into the `string` argument (also "parameter") and return its exact reverse at the end of the method.

How would we approach this goal with a word or sentence written on paper? Couldn't we simply start at the end of the word or sentence, moving backwards while copying each letter onto a new line? Of course we could!

How could we represent this process in code? Well, we already know that strings are made up of individual characters that are arranged by index. So, could we simply start with the character at the string's highest index and work backwards, copying each character into a new string? Of course we could!

**Advanced:** *There are more efficient ways to reverse a string, but this is perhaps the simplest one to understand.*

One possible implementation of this process in Objective-C is written below:

```objc
- (NSString *)stringByReversingString:(NSString *)string {

    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    
    return result;
}
```

Let's walk through what this method is doing:

1. Creating a new `NSString` variable called `result` that will be the container for the reversed string that will get assembled one character at a time.
2. Declaring a `for` loop whose counter begins at the size of the string's length and counts down (decrements) to `1` (*remember that the length will always be one more than the maximum index*).
3. Defines an integer called `index` that is one less than the current value of `i`. This is to solve the off-by-one difference between the value of the string's `length` and the value of its highest index.
4. Finds the next character (`unichar c`) to be copied by using the `index` integer to call the `characterAtIndex:` method on the argument `string`.
5. Appends that character (`c`) to the end of the `result` string. This uses the `unichar` format specifier (`%C`) to interpolate the character variable `c` into a string that can be appended normally.
6. After the loop counts down to `1`, the `result` string should be complete, and it is returned at the end of the method.

Once you have a conceptual understanding of this implementation, copy it into your code.

### IV. Checking a Method Return

Let's check that our new `stringByReversingString:` method works by calling it from the `application:didFinishLaunchingWithOptions:` method and `NSLog()`ing the return! We can call our new method from within the same file by sending a message to the `self` keyword.

1. Inside `application:didFinishLaunchingWithOptions:`, create an `NSString` variable called `palindrome` and set it to the string literal `@"palindrome"`:
  * `NSString *palindrome = @"palindrome";`
2. Now create another `NSString` variable called `reversed` and use it to capture the return of calling `stringByReversingString:` on `self` with `palindrome` submitted as the method argument:
  * `NSString *reversed = [self stringByReversingString:palindrome];`
3. Finally, print `palindrome` and `reversed` to the console to inspect the method:
  * `NSLog(@"%@ : %@", palindrome, reversed);`

This should print: `palindrome : emordnilap`.

Hooray! Our first method works!

### V. Detecting a Palindrome

Now that we've verified that our string reversal method works, we can get to work on the implementation of our `stringIsPalindrome:` method.

In our first pass at this method, let's use the simplest case for our first example: an all-lowercase single word such as "*racecar*". We'll add complexity to our method later. For now, let's just make sure we can get the core of the logic down.

Let's conceptualize the steps we need to take:

* We need to get the reverse of the string we're testing,
* then we can compare the original string to its reverse,
* then we can return the result of that comparison, which will be a `BOOL`.

That sounds like a solid plan! Now let's write the implementation:

1. Create a new `NSString` variable called `reverse` and use it to capture the return of calling `stringByReversingString:` on `self` with the `string` argument variable submitted as the method argument:
  * `NSString *reverse = [self stringByReversingString:string];`
2. Create a new `BOOL` variable called `stringIsEqualToReverse` and use it to capture the return of calling the `isEqualToString:` method on `string` with `reverse` submitted as the argument:
  * `BOOL stringIsEqualToReverse = [string isEqualToString:reverse];`
3. Return the `stringIsEqualToReverse` variable to end the method implementation:
  * `return stringIsEqualToReverse;`

Your method implementation should look something like this:

```objc
- (BOOL)stringIsPalindrome:(NSString *)string {
       
    NSString *reverse = [self stringByReversingString:string];
    
    BOOL stringIsEqualToReverse = [string isEqualToString:reverse];
    
    return stringIsEqualToReverse;
}
```

### VI. Check The Implementation

Just like we checked the `stringByReversingString:` method before, let's use local variables and an `NSLog()` within the `application:didFinishLaunchingWithOptions:` method to check that our method can handle the case of "*racecar*".

1. Move up to the `application:didFinishLaunchingWithOptions:` method. Create a new `NSString` variable called `racecar` and assign it to the string literal `@"racecar"`:
  * `NSString *racecar = @"racecar";`
2. Now, create a new `BOOL` variable called `racecarIsPalindrome` and use it to capture the return of calling `stringIsPalindrome:` on `self` with `racecar` submitted as the method argument:
  * `BOOL racecarIsPalindrome = [self stringIsPalindrome:racecar];`
3. Finally, `NSLog()` the variables together to view the result:
  * `NSLog(@"%d : %@", racecarIsPalindrome, racecar);`

This should print: `1 : racecar`, meaning that "*racecar*" **is** a palindrome.

Now, let's check a string that **isn't** a palindrome. Reuse the `palindrome` string to verify that `stringIsPalindrome:` returns "NO" for a string that doesn't match its reverse.

1. Create a new `BOOL` variable called `palindromeIsPalindrome` and use it to capture the return of calling `stringIsPalindrome:` on `self` with `palindrome` submitted as the method argument:
  * `BOOL palindromeIsPalindrome = [self stringIsPalindrome:palindrome];`
2. Now, `NSLog()` these variables together to view the result:
  * `NSLog(@"%d : %@", palindromeIsPalindrome, palindrome);`

This should print: `0 : palindrome`, meaning that "*palindrome*" is **not** a palindrome (`BOOL ironic = YES;`).

## Adding Complexity

### VII. Ignoring Typecase

Let's improve our `stringIsPalindrome:` method to allow it to handle uppercase letters in strings. Right now, evaluating the actual palindromes "*Bob*", "*Kanakanak*", and "*Aibohphobia*" will all return "NO" because they contain a capital letter. Verify this by adding these checks into the `application:didFinishLaunchingWithOptions:` method in the same style as evaluating "*racecar*":

**Note:** *We suggest you get the practice of typing these lines out manually. Use the code block below as a guide without copy/pasting from it.*

```objc
// within application:didFinishLaunchingWithOptions:

// single word, with uppercase
NSString *bob = @"Bob";
BOOL bobIsPalindrome = [self stringIsPalindrome:bob];
NSLog(@"%d : %@", bobIsPalindrome, bob);
    
NSString *kanakanak = @"Kanakanak";
BOOL kanakanakIsPalindrome = [self stringIsPalindrome:kanakanak];
NSLog(@"%d : %@", kanakanakIsPalindrome, kanakanak);
    
NSString *aibohphobia = @"Aibohphobia";
BOOL aibohphobiaIsPalindrome = [self stringIsPalindrome:aibohphobia];
NSLog(@"%d : %@", aibohphobiaIsPalindrome, aibohphobia);
```
Running the program now should print these three lines with zeroes:

```
0 : Bob
0 : Kanakanak
0 : Aibohphobia
```
The implementation of handling these additional cases in `stringIsPalindrome:` is relatively simple: we just need to lowercase the `string` argument before we evaluate it, right? Let's try it:

1 — Insert a statement that creates a new `NSString` variable called `lowercase` use to capture the return of calling the `lowercase` method on the `string` argument. Then refactor the string comparison to evaluate `lowercase` against `reverse`:

```objc
- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSString *reverse = [self stringByReversingString:string];
    
    NSString *lowercase = [string lowercaseString];

    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    
    return stringIsEqualToReverse;
}
```
Now, run the program again. It will still print our three palindromes with zeroes:

```
0 : Bob
0 : Kanakanak
0 : Aibohphobia
```
What did we do wrong? Let's add an `NSLog()` right before the comparison to inspect the strings:

```objc
- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSString *reverse = [self stringByReversingString:string];
    
    NSString *lowercase = [string lowercaseString];

    NSLog(@"lowercase: %@, reverse: %@", lowercase, reverse);
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    
    return stringIsEqualToReverse;
}
```
Running the program will cause this to print:

```
lowercase: bob, reverse: boB
0 : Bob
lowercase: kanakanak, reverse: kanakanaK
0 : Kanakanak
lowercase: aibohphobia, reverse: aibohphobiA
0 : Aibohphobia
```
It looks like we reversed the string *before* we lowercased it, which means that we're comparing the lowercased version to a reversed version that contains an uppercase letter in it. This causes the comparison to fail.

To fix this, we should be move the statement creating `lowercase` to above the statement creating the `reverse` string, and refactor `reverse`'s assignment to use `lowercase` as its method argument instead of `string`:

```objc
- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSString *lowercase = [string lowercaseString];
    
    NSString *reverse = [self stringByReversingString:lowercase];
    
    NSLog(@"lowercase: %@, reverse: %@", lowercase, reverse);
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    
    return stringIsEqualToReverse;
}
```
Now running the program should be able to handle the checks with our capitalized strings, and print them with `1`s:

```
lowercase: bob, reverse: bob
1 : Bob
lowercase: kanakanak, reverse: kanakanak
1 : Kanakanak
lowercase: aibohphobia, reverse: aibohphobia
1 : Aibohphobia
```
Awesome! Now we can handle proper nouns properly! Delete the `NSLog()` from the method before moving on; we don't need it anymore.

### VIII. Removing Spaces

Since phrases can qualify as a palindromes, let's improve our `stringIsPalindrome:` method to evaluate strings that contain spaces. Let's start by adding some new checks to the `application:didFinishLaunchingWithOptions:` method for the phrases "*this is not a palindrome*" (as a control check), "*never odd or even*", and "*I prefer pi*":

**Note:** *We suggest you get the practice of typing these lines out manually. Use the code block below as a guide without copy/pasting from it.*

```objc
//within application:didFinishLaunchingWithOptions:

NSString *notAPalindrome = @"this is not a palindrome";
BOOL notAPalindromeIsPalindrome = [self stringIsPalindrome:notAPalindrome];
NSLog(@"%d : %@", notAPalindromeIsPalindrome, notAPalindrome);
    
NSString *neverOdd = @"never odd or even";
BOOL neverOddIsPalindrome = [self stringIsPalindrome:neverOdd];
NSLog(@"%d : %@", neverOddIsPalindrome, neverOdd);
    
NSString *iPreferPi = @"I prefer pi";
BOOL iPreferPiIsPalindrome = [self stringIsPalindrome:iPreferPi];
NSLog(@"%d : %@", iPreferPiIsPalindrome, iPreferPi);
```

Running the program should print all three phrases with zeroes:

```
0 : this is not a palindrome
0 : never odd or even
0 : I prefer pi
```
Now let's edit our `stringIsPalindrome:` method again by adding logic at the top that removes the spaces. We can accomplish this by using the `stringByReplacingOccurrencesOfString:withString:` (say that 10 times fast).

Create a new `NSString` variable called `spaceless` and use it to capture the return of calling `stringByReplacingOccurrencesOfString:withString:` on the `string` argument variable; the first method argument should be a string literal containing a single space (`@" "`) and the second method argument should be an empty string literal (`@""`).

Refactor the rest of the method implementation to use `spaceless` instead of `string` (this should only affect one statement):

```objc
- (BOOL)stringIsPalindrome:(NSString *)string {
       
    NSString *spaceless = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *lowercase = [spaceless lowercaseString];
    
    NSString *reverse = [self stringByReversingString:lowercase];
    
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    
    return stringIsEqualToReverse;
}
```
Now let's run the program again. Our palindrome phrases should now print with `1`s:

```
0 : this is not a palindrome
1 : never odd or even
1 : I prefer pi
```

### IX. Removing Punctuation

For our final trick, let's add the functionality to our `stringIsPalindrome:` method so that can accommodate palindromes that are full sentences. (That means punctuation!) Let's start by adding some checks by utilizing the palindrome sentences "*Flee to me, remote elf.*", "*Norma is as selfless as I am, Ron.*", and "*No sir! Away! A papaya war is on.*":

**Note:** *We suggest you get the practice of typing these lines out manually. Use the code block below as a guide without copy/pasting from it.*

```objc
//within application:didFinishLaunchingWithOptions:

// full sentences with punctuation and capitalization
NSString *fleeToMe = @"Flee to me, remote elf.";
BOOL fleeToMeIsPalindrome = [self stringIsPalindrome:fleeToMe];
NSLog(@"%d : %@", fleeToMeIsPalindrome, fleeToMe);
    
NSString *norma = @"Norma is as selfless as I am, Ron.";
BOOL normaIsPalindrome = [self stringIsPalindrome:norma];
NSLog(@"%d : %@", normaIsPalindrome, norma);
    
NSString *papayaWar = @"No sir! Away! A papaya war is on.";
BOOL papayaWarIsPalindrome = [self stringIsPalindrome:papayaWar];
NSLog(@"%d : %@", papayaWarIsPalindrome, papayaWar);
```
Running the program now should print these sentences with zeroes:

```
0 : Flee to me, remote elf.
0 : Norma is as selfless as I am, Ron.
0 : No sir! Away! A papaya war is on.
```

We can remove the punctuation characters from the `string` argument variable by using `stringByReplacingOccurrencesOfString:withString:` again. If we collect our punctuation characters into an array, we can iterate over each punctuation string with a `for` loop, replacing every punctuation character in the string with an empty string instead. Let's do this now at the top of the `stringIsPalindrome:` method implementation:

1. Create a new `NSArray` called `punctuations` and assign it to an array literal containing the string literals for the six common punctuation characters `.`, `,`, `!`, `?`, `:`, and `;` (period, comma, exclamation point, question mark, colon, and semicolon):
  * `NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];`
2. Create a new `NSString` variable called `withoutPunctuation` and assign to a copy of the `string` argument variable:
  * `NSString *withoutPunctuation = [string copy];`
3. Start a `for` loop that iterates over the `punctuations` array:
  * `for (NSUInteger i = 0; i < [punctuations count]; i++) {...}`
4. Within the `for` loop, create new `NSString` variable called `punctuation` and assign it to the subscript of the `punctuations` array using the current value of `i`:
  * `NSString *punctuation = punctuations[i];`
5. Still within the `for` loop, reassign the `withoutPunctuation` variable to capture a call of the `stringByReplacingOccurrencesOfString:withString:` method on the `withoutPunctuation` variable (itself). The first argument should be the `punctuation` string variable, and the second argument should be an empty string literal (`@""`):
  * `withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];`
6. Refactor the creation of the `spaceless` variable to use `withoutPunctuation` instead of the `string` argument variable:
  * `NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];`
 
The `stringIsPalindrome:` should now look something like this:

```objc
- (BOOL)stringIsPalindrome:(NSString *)string {
    
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];
    NSString *withoutPunctuation = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
        
    NSString *lowercase = [spaceless lowercaseString];
    
    NSString *reverse = [self stringByReversingString:lowercase];
    
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    
    return stringIsEqualToReverse;
}
```
Run the program to see how well our method handles the palindrome sentences. It should print all three of them now with `1`s:

```
1 : Flee to me, remote elf.
1 : Norma is as selfless as I am, Ron.
1 : No sir! Away! A papaya war is on.
```

### X. Memorize Some Palindromes (optional)

Because [palindromes are cool](https://www.youtube.com/watch?v=vPGTizdGwSc) (like bowties).
<p data-visibility='hidden'>View <a href='https://learn.co/lessons/objc-palindrome-detector' title='Code-Along: Palindrome Detector'>Code-Along: Palindrome Detector</a> on Learn.co and start learning to code for free.</p>

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/objc-palindrome-detector'>Code-Along: Palindrome Detector</a> on Learn.co and start learning to code for free.</p>
