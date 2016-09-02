//
//  AKnonVipAvatar.m
//  AbstractFactory
//
//  Created by qiang on 9/2/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import "AKnonVipAvatar.h"

@implementation AKnonVipAvatar

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initAvatarWithFrame:CGRectZero];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initAvatarWithFrame:frame];
    }
    return self;
}
- (void)initAvatarWithFrame:(CGRect)frame
{
    CGRect f = CGRectMake(0, 0, frame.size.width, frame.size.height);
    self.avatar.frame = f;
    [self addSubview:self.avatar]; 
}

- (UIImageView *)avatar
{
    if (_avatar) return _avatar;
    _avatar = [[UIImageView alloc] init];
    _avatar.contentMode = UIViewContentModeScaleAspectFill;
    _avatar.image = [UIImage imageNamed:@"avatar"];
    return _avatar;
}
@end
