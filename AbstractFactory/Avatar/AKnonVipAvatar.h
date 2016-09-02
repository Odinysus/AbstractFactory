//
//  AKnonVipAvatar.h
//  AbstractFactory
//
//  Created by qiang on 9/2/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AvatarProtocol.h"
@interface AKnonVipAvatar : UIView <AvatarProtocol>
@property (nonatomic, strong) UIImageView *avatar;
@end
