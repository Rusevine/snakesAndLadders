//
//  GameController.m
//  SnakesAndLadders
//
//  Created by Wiljay Flores on 2018-08-05.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "GameController.h"

@implementation GameController

-(instancetype) init {
    if (self =[super init]){
        
    }
    return self;
}

- (NSInteger)rollDice {
    int roll = arc4random_uniform(6)+1;
    NSLog(@"You rolled a %d", roll);
    return roll;
}

-(void)checkForSpecialTiles:(Player *)player {
    
    NSDictionary *snakes = @{@17:@7,@64:@60,@89:@26,@95:@75,@99:@78};
    NSDictionary *ladders = @{@4:@14,@9:@31,@20:@38,@28:@84,@40:@59,@51:@67,@63:@81};
    
    if([snakes objectForKey:@(player.currentSquare)]){
        player.currentSquare = [snakes[@(player.currentSquare)] integerValue];
        NSLog(@"Opps landed on a snake. Back to %ld", (long)player.currentSquare);
    } else if ([ladders objectForKey:@(player.currentSquare)]){
        player.currentSquare = [ladders[@(player.currentSquare)] integerValue];
        NSLog(@"You landed on a ladder! Skip to %ld", (long)player.currentSquare);
        
    }
}

@end
