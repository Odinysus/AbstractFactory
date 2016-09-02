//
//  AKVipFactory.m
//  AbstractFactory
//
//  Created by qiang on 9/2/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import "AKVipFactory.h"
#import "AKVipAvatar.h"
#import "AKVipButton.h"

@implementation AKVipFactory
+ (UIView *)makeAvatar:(CGRect)rect
{
    return [[AKVipAvatar alloc] initWithFrame:rect];
}

+ (UIButton *)makeButtonWithFrame:(CGRect)rect
{
    return [[AKVipButton alloc] initWithFrame:rect];
}
@end
