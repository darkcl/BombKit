//
//  ViewController.m
//  BombKit-Example
//
//  Created by Yeung Yiu Hung on 3/8/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[BombRequest requestWithAPIkey:@"6402935262fb3a5d65042267e7eb4ef24bc7727a"
                            builder:^(BombRequestBuilder *builder) {
                                builder.resource = BombKitResourceGame;
                                builder.limit = 1;
                                builder.resourceId = @"3030-4725";
                            }] makeRequestWithCompletion:^(BombKitGameModel *response) {
                                NSLog(@"%@", response);
                            } failure:^(NSError *err) {
                                NSLog(@"%@", err);
                            }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
