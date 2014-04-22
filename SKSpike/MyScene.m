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
@property (nonatomic) SKSpriteNode*enemy;
@end

@implementation MyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
        [self addChild:self.ship];
        [self addChild:self.enemy];
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

- (SKSpriteNode*)enemy{
    if(!_enemy){
        _enemy = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        _enemy.size = CGSizeMake(30, 30);
        _enemy.position = CGPointMake(50, 350);
        // FIXME: hack. it should be done by image itself.
        SKAction *rotation = [SKAction rotateByAngle: M_PI duration:0];
        [_enemy runAction: rotation];
    }
    return _enemy;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for(UITouch *touch in touches){
        CGPoint location = [touch locationInNode:self];
        CGFloat distance = [self distanceBetweenTwoPoints:location :self.ship.position];
        CGFloat speed = 200; // FIXME: move to ship's property
        NSTimeInterval duration = distance/speed;
        SKAction *a = [SKAction moveTo:location duration:duration];
        [self.ship runAction:a];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

#pragma mark - Private

- (CGFloat)distanceBetweenTwoPoints:(CGPoint)point2 :(CGPoint)point1{
    CGFloat dx = point2.x - point1.x;
    CGFloat dy = point2.y - point1.y;
    return sqrt(dx*dx + dy*dy );
}

@end













