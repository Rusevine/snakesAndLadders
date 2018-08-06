//
//  Player.m
//  SnakesAndLadders
//
//  Created by Wiljay Flores on 2018-08-05.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "Player.h"

@implementation Player

-(instancetype) init {
    if(self = [super init]){
    _currentSquare = 1;
    }
    return self;
}

-(BOOL)updateSquare:(NSInteger)roll {
    self.currentSquare += roll;
    if(self.currentSquare >= 100){
        NSLog(@"You reached 100. Congrats on winning!");
        return YES;
    } else {
        NSLog(@"You landed on %ld", (long)self.currentSquare);
        return NO;
    }
}

@end
