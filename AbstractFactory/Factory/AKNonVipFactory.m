//
//  AKNonVipFactory.m
//  AbstractFactory
//
//  Created by qiang on 9/2/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import "AKNonVipFactory.h"
#import "AKnonVipAvatar.h"
#import "AKnonVipButton.h"

@implementation AKNonVipFactory

+ (UIView *)makeAvatar:(CGRect)rect
{
    return [[AKnonVipAvatar alloc] initWithFrame:rect];
}

+ (UIButton *)makeButtonWithFrame:(CGRect)rect
{
    return [[AKnonVipButton alloc] initWithFrame:rect];
}
@end
