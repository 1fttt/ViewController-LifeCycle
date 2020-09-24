//
//  SecondViewController.m
//  ViewController生命周期
//
//  Created by 房彤 on 2020/9/24.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "SecondViewController.h"

int q = 0;

@interface SecondViewController ()

@end

@implementation SecondViewController


+ (void)initialize {
    [super initialize];
    //NSLog(@"    %d initialize2", ++q);
}

- (instancetype)init {
    self = [super init];
    //NSLog(@"    %d init2", ++q);
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    //NSLog(@"    %d initWithCoder2", ++q);
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    //NSLog(@"    %d awakeFromNib2", ++q);
}

- (void)loadView {
    [super loadView];
    NSLog(@"    %d loadView2", ++q);
}


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"    %d viewDidLoad2", ++q);
    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton *back = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:back];
    back.frame = CGRectMake(100, 200, 70, 40);
    back.backgroundColor = [UIColor whiteColor];
    back.layer.cornerRadius = 7;
    [back setTitle:@"back" forState:UIControlStateNormal];
    [back addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    
  
}

- (void)back {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"    %d viewWillLayoutSubviews2", ++q);
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"    %d viewDidLayoutSubviews2", ++q);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"    %d viewWillAppear2", ++q);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"    %d viewDidAppear2", ++q);
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"    %d viewWillDisappear2", ++q);
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"    %d viewDidDisappear2", ++q);
}

- (void)dealloc {
    NSLog(@"    %d dealloc2", ++q);
}
@end

