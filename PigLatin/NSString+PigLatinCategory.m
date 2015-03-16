//
//  NSString+PigLatinCategory.m
//  PigLatin
//
//  Created by Samia Al Rahmani on 3/13/15.
//  Copyright (c) 2015 Samia Al Rahmani. All rights reserved.
//

#import "NSString+PigLatinCategory.h"

@implementation NSString (PigLatinCategory)


- (NSString *)stringByPigLatinization{
    NSString *myString = self;
    NSString *pigLatinString;
    NSMutableArray *characters = [[NSMutableArray alloc] initWithCapacity:[myString length]];
    for (int i=0; i < [myString length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [myString characterAtIndex:i]];
        [characters addObject:ichar];
    }
    
    NSString *firstLetterOfString = [characters objectAtIndex:0];
    [characters removeObjectAtIndex:0];
    [characters addObject:firstLetterOfString];
    NSString *beforeAddingAy = [characters componentsJoinedByString:@""];
    pigLatinString = [beforeAddingAy stringByAppendingString:@"ay"];
    
    
    
    
    NSLog(@"result is %@", beforeAddingAy);
    NSLog(@"result is %@", pigLatinString);


    

    
        
        
    
    return nil;

    
    
    
}

@end





