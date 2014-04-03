//
//  MainView.h
//  CheckieDemo
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TNCircleCheckBox.h"
#import "TNSquareCheckBox.h"
#import "TNImageCheckbox.h"

@interface MainView : UIView

@property (nonatomic, strong) TNCircleCheckBox *chkCircle;
@property (nonatomic, strong) TNSquareCheckBox *chkSquare;
@property (nonatomic, strong) TNImageCheckbox *chkImage;
@property (nonatomic, strong) TNCircleCheckBox *chkCircleLong;

@end
