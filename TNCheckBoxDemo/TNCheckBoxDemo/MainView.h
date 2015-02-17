//
//  MainView.h
//  TNCheckBoxDemo
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TNCheckBoxGroup.h"

@interface MainView : UIView

@property (nonatomic, strong) UIImageView *background;

@property (nonatomic, strong) TNCheckBoxGroup *fruitGroup;
@property (nonatomic, strong) TNCheckBoxGroup *sportsGroup;
@property (nonatomic, strong) TNCheckBoxGroup *loveGroup;
@property (nonatomic, strong) TNCheckBoxGroup *noGroup;

@end
