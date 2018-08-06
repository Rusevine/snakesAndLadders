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
        
        for(int i=0;i<12;i++){
            [game rollDice];
        }
    }
    return 0;
}
