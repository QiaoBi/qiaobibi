//
//  ViewController.m
//  NineDemo
//
//  Created by Nick on 16/5/9.
//  Copyright © 2016年 Nick_qiao. All rights reserved.
//

#import "ViewController.h"
#import "NineView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	NineView *nineView = [[NineView alloc] initWithFrame:CGRectZero];
	[self.view addSubview:nineView];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
