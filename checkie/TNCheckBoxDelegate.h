//
//  CheckBoxDelegate.h
//  Flirty
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TNCheckBox;

@protocol TNCheckBoxDelegate <NSObject>

@required

@optional
- (void)checkBox:(TNCheckBox *)checkBox willBeChecked:(BOOL)checked;
- (void)checkBox:(TNCheckBox *)checkBox didCheck:(BOOL)checked;
@end
