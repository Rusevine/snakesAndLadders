//
//  GameController.m
//  SnakesAndLadders
//
//  Created by Wiljay Flores on 2018-08-05.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

-(instancetype) init {
    if (self =[super init]){
        _players = [[NSMutableArray alloc] init];
        _currentIndex = 0;
    }
    return self;
}

-(void) createPlayers:(int)playerCount{
    for(int i = 0; i < playerCount; i++){
        NSString *name = [[NSString alloc] initWithFormat:@"Player %d",(i+1)];
        Player *player = [[Player alloc] initWithName:name];
        [self.players addObject:player];
    }
}

- (BOOL)rollDice:(int)playerCount{
    
    int roll = arc4random_uniform(6)+1;
    
    self.currentPlayer = self.players[self.currentIndex];
    NSLog(@"%@ rolled a %d",[self.currentPlayer name], roll);
    [self currentPlayer].currentSquare += roll;
    
    if([self currentPlayer].currentSquare >= 100){
        NSLog(@"%@ reached 100. Congrats on winning!",[self currentPlayer].name);
        return YES;
    } else {
        NSLog(@"%@ landed on %ld",[self currentPlayer].name, (long)[self currentPlayer].currentSquare);
        [self checkForSpecialTiles:[self currentPlayer]];
        [self.players replaceObjectAtIndex:self.currentIndex withObject:self.currentPlayer];
        
        if(self.currentIndex == playerCount-1){
            self.currentIndex = 0;
        } else {
        self.currentIndex++;
        }
        return NO;
    }
    
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

+(NSString*)userInputandParse{
    char inputChar[255];
    fgets(inputChar, 255, stdin);
    
    NSString *userAnswer = [[NSString alloc] initWithCString:inputChar encoding:NSUTF8StringEncoding];
    return [userAnswer stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
