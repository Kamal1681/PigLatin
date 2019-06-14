//
//  NSString+Piglatin.m
//  Piglatin
//
//  Created by Kamal Maged on 2019-06-11.
//  Copyright © 2019 Kamal Maged. All rights reserved.
//

#import "NSString+Piglatin.h"

@implementation NSString (Piglatin)
-(NSString *)stringByPigLatinization {
    
   // NSString * consonants = @"BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz";
    NSString * vowels = @"AEIOUaeiou";
    NSCharacterSet * vowelSet = [NSCharacterSet characterSetWithCharactersInString:vowels];
    NSCharacterSet * whiteSpace = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSArray * tokenizedWords = [self componentsSeparatedByCharactersInSet:whiteSpace];
    NSMutableArray * pigLatinArray = [[NSMutableArray alloc]init];
    NSString * pigLatinString;
    
    for (NSString * word in tokenizedWords) {
        int index = 0;
            while (index < [word length] && ![vowelSet characterIsMember:[word characterAtIndex:index]]) {
                index++;
            }
        NSString * processedWord = [[[word substringFromIndex:index]stringByAppendingString:[word substringToIndex:index]]stringByAppendingString:@"ay"];
        [pigLatinArray addObject:processedWord];
        pigLatinString = [pigLatinArray componentsJoinedByString:@" "];
        }
    return pigLatinString;
}
@end
