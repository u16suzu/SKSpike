//
//  ViewController.m
//  SKSpike
//
//  Created by u16suzu on 2014/04/23.
//  Copyright (c) 2014年 u16suzu. All rights reserved.
//

#import "ViewController.h"
#import "MyScene.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    
    // Create and configure the scene.
    SKScene * scene = [MyScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:scene];
    
    UIButton*btn =[UIButton buttonWithType:UIButtonTypeInfoLight];
    btn.center = self.view.center;
    [btn addTarget:self action:@selector(hoge) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"btn" forState:UIControlStateNormal];
    [skView addSubview:btn];
}

- (void)hoge{
    NSLog(@"hoge");
}

- (BOOL)shouldAutorotate
{
    return NO;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
