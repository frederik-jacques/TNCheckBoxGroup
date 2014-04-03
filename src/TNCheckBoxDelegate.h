//
//  CheckBoxDelegate.h
//  TNCheckBox
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TNCheckBox;

@protocol TNCheckBoxDelegate <NSObject>

@required

@optional
- (void)checkBoxDidChange:(TNCheckBox *)checkbox;
@end
