//
//  MyScene.m
//  SKSpike
//
//  Created by u16suzu on 2014/04/23.
//  Copyright (c) 2014年 u16suzu. All rights reserved.
//

#import "MyScene.h"


@interface MyScene()
@property (nonatomic) SKSpriteNode*ship;
@end

@implementation MyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
        [self addChild:self.ship];
    }
    return self;
}

- (SKSpriteNode*)ship{
    if(!_ship){
        _ship = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        _ship.size = CGSizeMake(30, 30);
        _ship.position = CGPointMake(50, 50);
    }
    return _ship;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
