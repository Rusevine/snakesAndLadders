//
//  main.m
//  SnakesAndLadders
//
//  Created by Wiljay Flores on 2018-08-05.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameController.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GameController *game = [[GameController alloc] init];
        Player *player_one = [[Player alloc] init];
        BOOL gameOver = NO;
        
        while(gameOver == NO){
            
            NSLog(@"Type 'roll' to roll the dice.");
            NSString *roll = [GameController userInputandParse];
            
            if([roll isEqualToString:@"roll"]){
                gameOver = [player_one updateSquare:[game rollDice]];
                [game checkForSpecialTiles:player_one];
            }
        }
        
    }
    return 0;
}
