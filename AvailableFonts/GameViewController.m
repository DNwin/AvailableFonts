//
//  GameViewController.m
//  AvailableFonts
//
//  Created by Dennis Nguyen on 6/28/15.
//  Copyright (c) 2015 dnwin. All rights reserved.
//

#import "GameViewController.h"
#import "GameScene.h"


@implementation GameViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    SKView *viewSK = (SKView *)self.view;
    viewSK.showsFPS = YES;
    viewSK.showsNodeCount = YES;
    viewSK.ignoresSiblingOrder = YES;
    
    GameScene *scene = [[GameScene alloc] initWithSize:CGSizeMake(768, 1024)];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    [viewSK presentScene:scene];
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}


@end
