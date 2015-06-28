//
//  GameScene.m
//  AvailableFonts
//
//  Created by Dennis Nguyen on 6/28/15.
//  Copyright (c) 2015 dnwin. All rights reserved.
//

#import "GameScene.h"
@interface GameScene()

@property NSUInteger familyIdx;

@end

@implementation GameScene

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        
    }
    
    return self;
}

- (instancetype)initWithSize:(CGSize)size {
    self = [super initWithSize:size];
    
    if (self) {
        [self showCurrentFamily];
    }
    
    return self;
}

- (void)showCurrentFamily {
    // Todo
    [self removeAllChildren];
    
    // Get a familyname from familyNames array
    NSString *familyName = [UIFont familyNames][self.familyIdx];
    NSLog(@"%@", familyName);
    
    NSArray *fontNames = [UIFont fontNamesForFamilyName:familyName];
    
    // Enumerate througha fontNames array, create multiple label nodes and add them
    
    [fontNames enumerateObjectsUsingBlock:^(NSString *fontName, NSUInteger idx, BOOL *stop) {
        SKLabelNode *label = [[SKLabelNode alloc] initWithFontNamed:fontName];
        // Configure label
        label.text = fontName;
        label.position = CGPointMake(self.size.width / 2,
                                     (self.size.height - (((CGFloat)idx + 1) * 50)));
        label.fontSize = 25;
        label.verticalAlignmentMode = SKLabelVerticalAlignmentModeCenter;
        [self addChild:label];
        
    }];
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.familyIdx++;
    
    if (self.familyIdx >= [UIFont familyNames].count) {
        self.familyIdx = 0;
    }
    [self showCurrentFamily];
}



@end
