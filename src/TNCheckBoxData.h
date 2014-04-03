//
//  TNCheckBoxData.h
//  TNCheckBoxDemo
//
//  Created by Frederik Jacques on 24/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TNCheckBoxData : NSObject

@property (nonatomic, copy) NSString *identifier;
@property (nonatomic) NSInteger tag;
@property (nonatomic) BOOL checked;

@property (nonatomic, copy) NSString *labelText;

@property (nonatomic, strong) UIFont *labelFont;
@property (nonatomic, strong) UIColor *labelColor;

@end
