//
//  GameController.h
//  SnakesAndLadders
//
//  Created by Wiljay Flores on 2018-08-05.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameController : NSObject

-(NSInteger) rollDice;
-(void) checkForSpecialTiles:(Player *)player;

@end
