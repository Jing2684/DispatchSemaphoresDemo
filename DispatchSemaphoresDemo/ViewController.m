//
//  ViewController.m
//  DispatchSemaphoresDemo
//
//  Created by jing on 16/11/15.
//  Copyright © 2016年 jing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) UITableView *tableview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 50, 50)];
//    [btn setImage:[UIImage imageNamed:@"btn_bofang"] forState:0];
    [btn setBackgroundImage:[UIImage imageNamed:@"btn_bofang"] forState:0];
    self.view.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:btn];
    // 1. 创建信号量，可以设置信号量的资源数。0表示没有资源，调用dispatch_semaphore_wait会立即等待。
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);
    NSLog(@"我没有被堵住1");
    dispatch_semaphore_signal(semaphore);
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
     NSLog(@"我没有被堵住2");
    // 2. 通知信号，如果等待线程被唤醒则返回非0，否则返回0。
    
    NSLog(@"我没有被堵住3");
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
