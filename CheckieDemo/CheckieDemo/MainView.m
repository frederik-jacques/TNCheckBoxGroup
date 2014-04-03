//
//  MainView.m
//  CheckieDemo
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "MainView.h"

@implementation MainView

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        self.backgroundColor = [UIColor colorWithRed:240/255.0f green:240/255.0f blue:240/255.0f alpha:1];
        
        NSDictionary *circleDict = @{
                               kCheckBoxChecked : [NSNumber numberWithBool:NO],
                               kCheckBoxOuterColor : [UIColor colorWithRed:41/255.0f green:128/255.0f blue:185/255.0f alpha:1],
                               kCheckBoxInnerColor : [UIColor colorWithRed:52/255.0f green:152/255.0f blue:219/255.0f alpha:1],
                               kCheckBoxOuterRadius : @20,
                               kCheckBoxInnerRadius : @15,
                               kCheckBoxLabelColor : [UIColor colorWithRed:52/255.0f green:152/255.0f blue:219/255.0f alpha:1],
                               kCheckBoxLabelFontSize : @20,
                               kCheckBoxMarginBetweenCheckBoxAndLabel : @15,
                               kCheckBoxMaximumWidthOfLabel : @200
                               };
        
        self.chkCircle = [TNCircleCheckBox checkBoxWithLabel:@"Circle checkbox" tag:0 settings:circleDict];
        self.chkCircle.position = CGPointMake(15, 50);
        [self addSubview:self.chkCircle];
        
        NSDictionary *squareDict = @{
                                     kCheckBoxChecked:[NSNumber numberWithBool:YES],
                                     kCheckBoxOuterColor:[UIColor colorWithRed:39/255.0f green:174/255.0f blue:96/255.0f alpha:1],
                                     kCheckBoxInnerColor:[UIColor colorWithRed:46/255.0f green:204/255.0f blue:113/255.0f alpha:1],
                                     kCheckBoxOuterSquareSize:[NSValue valueWithCGSize:CGSizeMake(20, 20)],
                                     kCheckBoxInnerSquareSize:[NSValue valueWithCGSize:CGSizeMake(15, 15)],
                                     kCheckBoxLabelColor: [UIColor colorWithRed:39/255.0f green:174/255.0f blue:96/255.0f alpha:1],
                                     kCheckBoxLabelFontSize: @20,
                                     kCheckBoxMarginBetweenCheckBoxAndLabel : @15,
                                     kCheckBoxMaximumWidthOfLabel: @200
                                     };
        
        self.chkSquare = [TNSquareCheckBox checkBoxWithLabel:@"Square checkbox" tag:1 settings:squareDict];
        
        self.chkSquare.position = CGPointMake(15, self.chkCircle.position.y + self.chkCircle.frame.size.height + 20);
        self.chkSquare.frame = CGRectMake(15, self.chkCircle.frame.origin.y + self.chkCircle.frame.size.height + 20, self.chkSquare.frame.size.width, self.chkSquare.frame.size.height);
        [self addSubview:self.chkSquare];
        
        NSDictionary *imageDict = @{
                                     kCheckBoxChecked:[NSNumber numberWithBool:NO],
                                     kCheckBoxUncheckedImage : [UIImage imageNamed:@"unchecked"],
                                     kCheckBoxCheckedImage : [UIImage imageNamed:@"checked"],
                                     kCheckBoxLabelColor: [UIColor colorWithRed:140/255.0f green:140/255.0f blue:140/255.0f alpha:1],
                                     kCheckBoxLabelFontSize: @20,
                                     kCheckBoxMarginBetweenCheckBoxAndLabel : @15,
                                     kCheckBoxMaximumWidthOfLabel: @200
                                     };
        
        self.chkImage = [TNImageCheckbox checkBoxWithLabel:@"Image checkbox" tag:2 settings:imageDict];
        
        self.chkImage.position = CGPointMake(15, self.chkSquare.position.y + self.chkSquare.frame.size.height + 20);
        
        [self addSubview:self.chkImage];
        
        NSDictionary *circleLongDict = @{
                                     kCheckBoxChecked : [NSNumber numberWithBool:NO],
                                     kCheckBoxOuterColor : [UIColor colorWithRed:192/255.0f green:57/255.0f blue:43/255.0f alpha:1],
                                     kCheckBoxInnerColor : [UIColor colorWithRed:231/255.0f green:76/255.0f blue:60/255.0f alpha:1],
                                     kCheckBoxOuterRadius : @20,
                                     kCheckBoxInnerRadius : @15,
                                     kCheckBoxLabelColor : [UIColor colorWithRed:192/255.0f green:57/255.0f blue:43/255.0f alpha:1],
                                     kCheckBoxLabelFontSize : @20,
                                     kCheckBoxMarginBetweenCheckBoxAndLabel : @15,
                                     kCheckBoxMaximumWidthOfLabel : @200
                                     };
        
        self.chkCircleLong = [TNCircleCheckBox checkBoxWithLabel:@"Circle checkbox with a really really realllllly long name" tag:3 settings:circleLongDict];
        
        self.chkCircleLong.position = CGPointMake(15, self.chkImage.position.y + self.chkImage.frame.size.height + 20);
        
        [self addSubview:self.chkCircleLong];
        
    }
    
    return self;
}



@end
