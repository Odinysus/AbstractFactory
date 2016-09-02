//
//  AKnonVipButton.m
//  AbstractFactory
//
//  Created by qiang on 9/2/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import "AKnonVipButton.h"

@implementation AKnonVipButton

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initButton];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initButton];
    }
    return self;
}

- (void)initButton
{
    self.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [self setTitle:@"平民" forState:UIControlStateNormal];
}
@end
