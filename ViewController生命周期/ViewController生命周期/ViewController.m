//
//  ViewController.m
//  ViewController生命周期
//
//  Created by 房彤 on 2020/9/22.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

int t = 0;

@interface ViewController ()

@end

@implementation ViewController

+ (void)initialize {
    [super initialize];
    //NSLog(@"    %d initialize1", ++t);
}

- (instancetype)init {
    self = [super init];
   // NSLog(@"    %d init1", ++t);
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    //NSLog(@"    %d initWithCoder1", ++t);
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    //NSLog(@"    %d awakeFromNib1", ++t);
}

- (void)loadView {
    [super loadView];
    NSLog(@"    %d loadView1", ++t);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"    %d viewDidLoad1", ++t);
    
    UIButton *next = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:next];
    next.frame = CGRectMake(100, 100, 70, 40);
    next.backgroundColor = [UIColor colorWithWhite:0.8 alpha:1];
    next.layer.cornerRadius = 7;
    [next setTitle:@"next" forState:UIControlStateNormal];
    [next addTarget:self action:@selector(next) forControlEvents:UIControlEventTouchUpInside];

}

- (void)next {
    SecondViewController *two = [[SecondViewController alloc] init];
    two.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:two animated:YES completion:nil];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"    %d viewWillLayoutSubviews1", ++t);
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"    %d viewDidLayoutSubviews1", ++t);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"    %d viewWillAppear1", ++t);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"    %d viewDidAppear1\n", ++t);
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"    %d viewWillDisappear1", ++t);
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"    %d viewDidDisappear1", ++t);
}

- (void)dealloc {
    NSLog(@"    %d dealloc1", ++t);
}
@end
