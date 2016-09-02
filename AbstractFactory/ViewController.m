//
//  ViewController.m
//  AbstractFactory
//
//  Created by qiang on 9/2/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import "ViewController.h"
#import "AKNonVipFactory.h"
#import "AKVipFactory.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *sign;
@property (nonatomic, strong) UIView  *avatar;
@property (nonatomic, strong) UIButton *button;
@end

@implementation ViewController

static int vip = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *view = [AKNonVipFactory makeAvatar:CGRectMake(20, 20, 40, 40)];
    self.avatar = view;
    [self.view addSubview:view];
    
    UILabel *label= [[UILabel alloc] initWithFrame:CGRectMake(70, 20, 230, 50)];
    label.text = @"大家好,叫XXX,我现在不是VIP.";
    self.sign = label;
    [self.view addSubview:label];
    
    UIButton *button = [AKNonVipFactory makeButtonWithFrame:CGRectMake(300, 20, 60, 30)];
    self.button = button;
    [self.view addSubview:button];
    
}

- (IBAction)onClickVip:(UIButton *)sender {
    if (vip == 0) {
        [sender setTitle:@"nonvip" forState:UIControlStateNormal];
       self.sign.text = @"大家好,叫XXX,我现在是VIP.";
        [self.avatar removeFromSuperview];
        self.avatar = [AKVipFactory makeAvatar:CGRectMake(20, 20, 40, 40)];
        [self.view addSubview:self.avatar];
        
        [self.button removeFromSuperview];
        self.button = [AKVipFactory makeButtonWithFrame:CGRectMake(300, 20, 60, 30)];
        [self.view addSubview:self.button];
    } else {
        [sender setTitle:@"vip" forState:UIControlStateNormal];
        self.sign.text = @"大家好,叫XXX,我现在不是VIP.";
        [self.avatar removeFromSuperview];
        self.avatar = [AKNonVipFactory makeAvatar:CGRectMake(20, 20, 40, 40)];
        [self.view addSubview:self.avatar];
        
        [self.button removeFromSuperview];
        self.button = [AKNonVipFactory makeButtonWithFrame:CGRectMake(300, 20, 60, 30)];
        [self.view addSubview:self.button];
    }
    vip = !vip;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
