//
//  main.m
//  SnakesAndLadders
//
//  Created by Wiljay Flores on 2018-08-05.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PlayerManager *game = [[PlayerManager alloc] init];
        NSLog(@"WELCOME TO SNAKES AND LADDERS");
        NSLog(@"Enter the Number of players.");
        int playerNumber = [[PlayerManager userInputandParse] intValue];
        [game createPlayers:playerNumber];
        
     //   Player *player_one = [[Player alloc] init];
        BOOL gameOver = NO;
        
        while(gameOver == NO){
            
            NSLog(@"Type 'roll' to roll the dice.");
            NSString *roll = [PlayerManager userInputandParse];
            
            if([roll isEqualToString:@"roll"]||[roll isEqualToString:@"r"]){
                gameOver = [game rollDice:playerNumber];
            }
        }
        
    }
    return 0;
}
