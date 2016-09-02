//
//  AKVipAvatar.m
//  AbstractFactory
//
//  Created by qiang on 9/2/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import "AKVipAvatar.h"

@implementation AKVipAvatar

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
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width-20, 20, 20, 20)];
    imgView.image = [UIImage imageNamed:@"vip"];
    [self addSubview:imgView];

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
