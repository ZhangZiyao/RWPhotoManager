//
//  ViewController.m
//  RWPhotoManagerDemo
//
//  Created by dingxin on 2017/8/19.
//  Copyright © 2017年 dingxin. All rights reserved.
//

#import "ViewController.h"
#import "RWPhotoManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, self.view.frame.size.width-200, 80)];
    [self.view addSubview:button];
    [button setTitle:@"点我点我" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor orangeColor]];
    [button addTarget:self action:@selector(photoManager:) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)photoManager:(UIButton *)sender{
    [RWPhotoManager showPhotoManager:sender
                    withMaxImageCount:5
                      withCameraImage:^(UIImage *cameraImage)
     {
         NSLog(@"cameraImage==%@",cameraImage);
     }
                       withAlbumArray:^(NSArray *albumArray)
     {
         NSLog(@"albumArray==%@",albumArray);
     }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
