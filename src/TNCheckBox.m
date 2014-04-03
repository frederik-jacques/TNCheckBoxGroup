//
//  RadioButton.m
//  TNCheckBox
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import "TNCheckBox.h"

@interface TNCheckBox()

@end

@implementation TNCheckBox

#pragma mark - Initializers
- (instancetype)initWithData:(TNCheckBoxData *)data {
    
    self = [super init];
    
    if (self) {
        self.data = data;
    }
    
    return self;
}

#pragma mark - Setup
- (void)setup {
    
    [self createLabel];
    [self createHiddenButton];
    
    [self checkWithAnimation:NO];
    self.frame = self.btnHidden.frame;
}

- (void)createCheckbox {};

- (void)createLabel {
    
    CGRect labelRect = [self.data.labelText boundingRectWithSize:CGSizeMake(150, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} context:nil];
    
    self.lblLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.checkBox.frame.origin.x + self.checkBox.frame.size.width + 15, (self.checkBox.frame.size.height - labelRect.size.height) / 2, labelRect.size.width, labelRect.size.height)];
    self.lblLabel.numberOfLines = 0;
    self.lblLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.lblLabel.font = self.data.labelFont;
    self.lblLabel.textColor = self.data.labelColor;
    self.lblLabel.text = self.data.labelText;
    [self addSubview:self.lblLabel];
}

- (void)createHiddenButton {
    
    int height = MAX(self.lblLabel.frame.size.height, self.checkBox.frame.size.height);
    
    self.btnHidden = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnHidden.frame = CGRectMake(0, 0, self.lblLabel.frame.origin.x + self.lblLabel.frame.size.width, height);
    [self addSubview:self.btnHidden];
    
    [self.btnHidden addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
}


#pragma mark - Target / Actions
- (void)buttonTapped:(id)sender {
    
    self.data.checked = !self.data.checked;
    [self checkWithAnimation:YES];
    
    if ([self.delegate respondsToSelector:@selector(checkBoxDidChange:)]) {
        [self.delegate checkBoxDidChange:self];
    }

}

#pragma mark - Animations
- (void)checkWithAnimation:(BOOL)animated {}

#pragma mark - Getters / Setters
- (void)setPosition:(CGPoint)position {
    
    _position = position;
    
    self.frame = CGRectMake( position.x, position.y, self.frame.size.width, self.frame.size.height);
    
}

@end
