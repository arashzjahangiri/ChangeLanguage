//
//  SplashViewController.m
//  RTL
//
//  Created by Arash on 5/21/17.
//  Copyright © 2017 Arash Z. Jahangiri. All rights reserved.
//

#import "SplashViewController.h"
#import "ViewController.h"

@interface SplashViewController ()

@end

@implementation SplashViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewDidLoad];
    UILabel *a = [[UILabel alloc]initWithFrame:CGRectMake(20, 80, 250, 40)];
    a.text = [@"welcome" localize];
    [self.view addSubview:a];
    
    [self performSelector:@selector(nextView) withObject:nil afterDelay:2.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)nextView{
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *view = (ViewController *)[story instantiateViewControllerWithIdentifier:@"ViewController"];
    [self.navigationController pushViewController:view animated:YES];
}

@end
