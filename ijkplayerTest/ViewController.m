//
//  ViewController.m
//  ijkplayerTest
//
//  Created by weiyun on 2018/1/28.
//  Copyright © 2018年 孙世玉. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
#import <IJKMediaFramework/IJKMediaFramework.h>

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"player";
    
    UIButton *playerBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [playerBtn setTitle:@"player" forState:UIControlStateNormal];
    playerBtn.center = self.view.center;
    [playerBtn setBackgroundColor:[UIColor yellowColor]];
    [playerBtn setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
    [playerBtn addTarget:self action:@selector(playerClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:playerBtn];
}

- (void)playerClick
{
    NextViewController *vc = [[NextViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
