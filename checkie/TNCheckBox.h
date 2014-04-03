//
//  RadioButton.h
//  Flirty
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TNCheckBoxSettings.h"
#import "TNCheckBoxDelegate.h"
#import "TNCheckBoxProtocol.h"

@interface TNCheckBox : UIView <TNCheckBoxProtocol>

@property (nonatomic, weak) id<TNCheckBoxDelegate> delegate;

@property (nonatomic, strong) NSString *labelText;
@property (nonatomic) BOOL checked;

@property (nonatomic, strong) TNCheckBoxSettings *settings;
@property (nonatomic, strong) NSDictionary *settingsDictionary;

@property (nonatomic, strong) UIView *checkBox;
@property (nonatomic, strong) UILabel *lblLabel;
@property (nonatomic, strong) UIButton *btnHidden;

+ (instancetype)checkBoxWithLabel:(NSString *)label tag:(NSUInteger)tag settings:(NSDictionary *)settings;
- (instancetype)initWithLabel:(NSString *)label tag:(NSUInteger)tag settings:(NSDictionary *)settings;

- (instancetype)initWithLabel:(NSString *)label;
- (instancetype)initWithLabel:(NSString *)label tag:(NSInteger)tag;
- (instancetype)initWithLabel:(NSString *)label tag:(NSInteger)tag checked:(BOOL)checked;

- (void)setup;
- (void)buttonClicked:(id)sender;
- (void)checkWithAnimation:(BOOL)animated;

@end
