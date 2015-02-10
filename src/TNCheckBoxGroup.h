//
//  TNCheckBoxGroup.h
//  TNCheckBoxDemo
//
//  Created by Frederik Jacques on 24/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TNCheckBox.h"
#import "TNCircularCheckBox.h"
#import "TNRectangularCheckBox.h"
#import "TNImageCheckBox.h"
#import "TNFillCheckBox.h"

extern NSString *const GROUP_CHANGED;

typedef enum : NSUInteger {
    TNCheckBoxLayoutHorizontal,
    TNCheckBoxLayoutVertical
} TNCheckBoxLayout;

@interface TNCheckBoxGroup : UIView <TNCheckBoxDelegate>

@property (nonatomic, copy) NSString *identifier;
@property (nonatomic) CGPoint position;
@property (nonatomic) NSInteger marginBetweenItems;
@property (nonatomic) NSInteger rowItemCount;

@property (nonatomic, strong) UIFont *labelFont;
@property (nonatomic, strong) UIColor *labelColor;

@property (nonatomic, readonly) NSArray *checkedCheckBoxes;
@property (nonatomic, readonly) NSArray *uncheckedCheckBoxes;

- (instancetype)initWithCheckBoxData:(NSArray *)checkBoxData style:(TNCheckBoxLayout)layout;
- (void)create;


@end
