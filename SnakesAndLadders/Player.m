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

-(void)updateSquare:(NSInteger)roll {
    self.currentSquare += roll;
    NSLog(@"You landed on %ld", (long)self.currentSquare);
}

@end
