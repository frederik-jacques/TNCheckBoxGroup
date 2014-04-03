//
//  RadioButton.m
//  Flirty
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNCheckBox.h"

@interface TNCheckBox()

@end

@implementation TNCheckBox

#pragma mark - Initializers
+ (instancetype)checkBoxWithLabel:(NSString *)label tag:(NSUInteger)tag settings:(NSDictionary *)settings {
    return [[self alloc] initWithLabel:label tag:tag settings:settings];
}

- (instancetype)initWithLabel:(NSString *)label tag:(NSUInteger)tag settings:(NSDictionary *)settingsDictionary {
    
    self.settingsDictionary = settingsDictionary;
    
    return [self initWithLabel:label tag:tag];
}

- (instancetype)initWithLabel:(NSString *)label {
    return [self initWithLabel:label tag:0 checked:NO];
}

- (instancetype)initWithLabel:(NSString *)label tag:(NSInteger)tag {
    return [self initWithLabel:label tag:tag checked:self.settings.checked];
}

- (instancetype)initWithLabel:(NSString *)label tag:(NSInteger)tag checked:(BOOL)checked {
    
    self = [super init];
    
    if (self) {
        self.labelText = label;
        self.tag = tag;
        self.checked = checked;
        
        [self setup];
    }
    
    return self;
}

#pragma mark - Setup
- (void)setup {
    // Create label and hidden button to overlay
    [self createLabel];
    [self createHiddenButton];
    
    // Calculate height of the frame according if the checkbox is bigger than the labels height or vice versa
    NSInteger height = ( self.checkBox.frame.size.height > self.lblLabel.frame.size.height) ? self.checkBox.frame.size.height : self.lblLabel.frame.size.height;
    
    self.frame = CGRectMake(0, 0, self.lblLabel.frame.origin.x + self.lblLabel.frame.size.width, height);

    // Set the frame of the hidden button as big as the frame, so you can tap everywhere
    self.btnHidden.frame = self.frame;
    
    // Position the checkbox and the label in the vertical center of its parent container
    self.checkBox.center = CGPointMake(self.checkBox.center.x, self.frame.size.height / 2);
    self.lblLabel.center = CGPointMake(self.lblLabel.center.x, self.frame.size.height / 2);
    
    // Set standard state of the checkbox without animation
    [self checkWithAnimation:NO];
}

- (void)createCheckbox {
    
}

- (void)createLabel {
    CGRect labelRect = [self.labelText boundingRectWithSize:CGSizeMake(self.settings.maximumWidthOfLabel, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:self.settings.labelFont} context:nil];
    
    self.lblLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.checkBox.frame.origin.x + self.checkBox.frame.size.width + self.settings.marginBetweenCheckBoxAndLabel, (self.checkBox.frame.size.height - labelRect.size.height) / 2, labelRect.size.width, labelRect.size.height)];
    self.lblLabel.numberOfLines = 0;
    self.lblLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.lblLabel.font = self.settings.labelFont;
    self.lblLabel.textColor = self.settings.labelColor;
    self.lblLabel.text = self.labelText;
    [self addSubview:self.lblLabel];
}

- (void)createHiddenButton {
    self.btnHidden = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.btnHidden addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.btnHidden];
}

#pragma mark - Target / Actions
- (void)buttonClicked:(id)sender {
    self.checked = !self.checked;
}

#pragma mark - Getters / Setters
- (void)setSettingsDictionary:(NSDictionary *)configDictionary {
    _settingsDictionary = configDictionary;
    
    self.settings = [TNCheckBoxSettings settingsWithDictionary:_settingsDictionary];
}

- (TNCheckBoxSettings *)settings {
    
    if( !_settings ){
        self.settings = [TNCheckBoxSettings settingsWithDictionary:nil];
        self.checked = self.settings.checked;
    }
    
    return _settings;
}

- (void)setChecked:(BOOL)checked {
    
    [self.delegate checkBox:self willBeChecked:checked];
    _checked = checked;
    [self checkWithAnimation:YES];
    [self.delegate checkBox:self didCheck:_checked];
    
}

- (void)setPosition:(CGPoint)position {
    
    _position = position;
    self.frame = CGRectMake(position.x, position.y, self.frame.size.width, self.frame.size.height);
    
}

#pragma mark - Animations
- (void)checkWithAnimation:(BOOL)animated {
    
}

@end
