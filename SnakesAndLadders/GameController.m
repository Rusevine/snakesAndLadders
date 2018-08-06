//
//  GameController.m
//  SnakesAndLadders
//
//  Created by Wiljay Flores on 2018-08-05.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (NSInteger)rollDice {
    int roll = arc4random_uniform(6)+1;
    NSLog(@"You rolled a %d", roll);
    return roll;
}

@end
