//
//  TNCheckBoxProtocol.h
//  TNCheckBox
//
//  Created by Frederik Jacques on 02/04/14.
//  Copyright (c) 2014 Frederik Jacques. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TNCheckBoxProtocol <NSObject>

@required
- (void)setup;
- (void)createCheckbox;
- (void)checkWithAnimation:(BOOL)animated;

@optional

@end
