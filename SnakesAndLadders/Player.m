//
//  Player.m
//  SnakesAndLadders
//
//  Created by Wiljay Flores on 2018-08-05.
//  Copyright © 2018 wiljay. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype) initWithName:(NSString *)name{
    if(self = [super init]){
        _currentSquare = 1;
        _name = name;
    }
    return self;
}

@end
