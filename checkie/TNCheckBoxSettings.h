//
//  TNCheckBoxSettings.h
//  Flirty
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kCheckBoxChecked;

extern NSString *const kCheckBoxLabelFontSize;
extern NSString *const kCheckBoxLabelFont;
extern NSString *const kCheckBoxLabelColor;

extern NSString *const kCheckBoxInnerColor;
extern NSString *const kCheckBoxOuterColor;

extern NSString *const kCheckBoxInnerRadius;
extern NSString *const kCheckBoxOuterRadius;

extern NSString *const kCheckBoxInnerSquareSize;
extern NSString *const kCheckBoxOuterSquareSize;

extern NSString *const kCheckBoxMarginBetweenCheckBoxAndLabel;

extern NSString *const kCheckBoxUncheckedImage;
extern NSString *const kCheckBoxCheckedImage;

extern NSString *const kCheckBoxMaximumWidthOfLabel;

@interface TNCheckBoxSettings : NSObject

@property (nonatomic) BOOL checked;
@property (nonatomic) NSInteger labelFontSize;
@property (nonatomic) NSInteger marginBetweenCheckBoxAndLabel;
@property (nonatomic, strong) UIFont *labelFont;
@property (nonatomic, strong) UIColor *labelColor;

@property (nonatomic, strong) UIColor *innerColor;
@property (nonatomic, strong) UIColor *outerColor;

@property (nonatomic) NSInteger innerRadius;
@property (nonatomic) NSInteger outerRadius;
@property (nonatomic) NSInteger maximumWidthOfLabel;

@property (nonatomic) CGSize innerSquareSize;
@property (nonatomic) CGSize outerSquareSize;

@property (nonatomic, strong) UIImage *uncheckedImage;
@property (nonatomic, strong) UIImage *checkedImage;

+ (instancetype)settingsWithDictionary:(NSDictionary *)dictionary;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
