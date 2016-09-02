//
//  AKVipFactoryProtocol.h
//  AbstractFactory
//
//  Created by qiang on 9/2/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AKVipFactoryProtocol <NSObject>

+ (UIButton *)makeButtonWithFrame:(CGRect)rect;
+ (UIView *)makeAvatar:(CGRect)rect;
@end
