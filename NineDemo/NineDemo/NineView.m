//
//  NineView.m
//  NineDemo
//
//  Created by Nick on 16/5/9.
//  Copyright © 2016年 Nick_qiao. All rights reserved.
//

#import "NineView.h"
#define CELLWINDTH [[UIScreen mainScreen] bounds].size.width/4
#define CELLHEIGHT [[UIScreen mainScreen] bounds].size.width/4
@implementation NineView
//页面初始化
- (instancetype)initWithFrame:(CGRect)frame{
	self = [super initWithFrame:frame];
	if (self) {
		[self initView];
	}
	return self;
}
//初始化时生成
- (void)initView{
	NSArray *imageArrs = @[@"001",@"002",@"003",@"004",@"005",@"006",@"007",@"008",@"009",@"010"];
	NSArray *nameArrs = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10"];
	UIImageView *imageView;
	UILabel *label;
	UIButton *button;
	for (NSInteger i=0; i<imageArrs.count; i++) {
		
		imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10+i*20, 10, 50, 50)];
		imageView.image = [UIImage imageNamed:imageArrs[i]];
		[self addSubview:imageView];
		
		label = [[UILabel alloc] initWithFrame:CGRectMake(10+i*30, 60, 50, 30)];
		label.text = nameArrs[i];
		[self addSubview:label];
		
		button = [UIButton buttonWithType:UIButtonTypeCustom];
		button.frame = CGRectMake(0+i*CELLWINDTH, 0, CELLWINDTH, CELLHEIGHT);
		button.tag = 101 + i;
		button.backgroundColor = [UIColor clearColor];
		[button addTarget:self action:@selector(handleClick:) forControlEvents:UIControlEventTouchUpInside];
		[self addSubview:button];
		if (i%4==0) {
			imageView.frame = CGRectMake(10 + i*20, 10+i*CELLHEIGHT, 50, 50);
			label.frame = CGRectMake(10 + i*20, 10+i*CELLHEIGHT, 50, 50);
			button.frame = CGRectMake(10 + i*20, 10+i*CELLHEIGHT, 50, 50);
		}
		
	}
}
- (void)handleClick:(UIButton *)button{
	
}
@end
