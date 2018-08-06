//
//  GameController.h
//  SnakesAndLadders
//
//  Created by Wiljay Flores on 2018-08-05.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property (nonatomic) NSMutableArray *players;
@property (nonatomic) Player *currentPlayer;
@property (nonatomic) NSInteger currentIndex;

-(void) createPlayers:(int)playerCount;
-(BOOL) rollDice:(int)playerCount;
-(void) checkForSpecialTiles:(Player *)player;
+(NSString*)userInputandParse;

@end
