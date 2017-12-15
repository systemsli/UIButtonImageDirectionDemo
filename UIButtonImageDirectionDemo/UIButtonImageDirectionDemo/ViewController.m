//
//  ViewController.m
//  UIButtonImageDirectionDemo
//
//  Created by 李小龙 on 2017/12/15.
//  Copyright © 2017年 李小龙. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+LXLExtension.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
@property (weak, nonatomic) IBOutlet UIButton *btn4;
@property (weak, nonatomic) IBOutlet UIButton *btn5;
@property (weak, nonatomic) IBOutlet UIButton *btn6;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    _btn1.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    [_btn1 setImageVerticalAlignment:LXLUIButtonImageVerticalAlignmentUp interval:10];

    _btn2.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    [_btn2 setImageVerticalAlignment:LXLUIButtonImageVerticalAlignmentDown interval:10];

    _btn3.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
    [_btn3 setImageVerticalAlignment:LXLUIButtonImageVerticalAlignmentUp interval:10];


    _btn4.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [_btn4 setImageHorizontalAlignment:LXLUIButtonImageHorizontalAlignmentLeft interval:10];

    _btn5.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [_btn5 setImageHorizontalAlignment:LXLUIButtonImageHorizontalAlignmentLeft interval:10];

    _btn6.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    [_btn6 setImageHorizontalAlignment:LXLUIButtonImageHorizontalAlignmentRight interval:15];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
