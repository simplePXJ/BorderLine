//
//  ViewController.m
//  BorderView
//
//  Created by PXJ on 17/3/4.
//  Copyright © 2017年 com. All rights reserved.
//

#import "ViewController.h"
#import "BorderLine.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    BorderLine * borderLine = [[BorderLine alloc] initWithFrame:CGRectMake(50, 100, 150, 100)
                                                   borderColor:[UIColor blueColor]
                                                    borderWidth:2
                                                setBorderRedius:20
                                                     leftBottom:YES
                                                        leftTop:YES
                                                       rightTop:YES
                                                    rightBottom:YES
                                                    ];
    borderLine.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:borderLine];
    
    
    BorderLine * borderLine_1 = [[BorderLine alloc] initWithFrame:CGRectMake(50, 250, 150, 100)
                                                    borderColor:[UIColor blueColor]
                                                    borderWidth:2
                                                setBorderRedius:10
                                                     leftBottom:NO
                                                        leftTop:YES
                                                       rightTop:NO
                                                    rightBottom:NO
                               ];
    borderLine_1.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:borderLine_1];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
