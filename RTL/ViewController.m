//
//  ViewController.m
//  RTL
//
//  Created by Arash on 5/21/17.
//  Copyright © 2017 Arash Z. Jahangiri. All rights reserved.
//

#import "ViewController.h"
#import "SettingViewController.h"
#import "Header.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *a = [[UILabel alloc]initWithFrame:CGRectMake(10, 80, screenWidth/2 - 10, 40)];
    a.text = [@"hi" localize];
    a.backgroundColor = [UIColor redColor];
    [self.view addSubview:a];

    
    UILabel *a2 = [[UILabel alloc]initWithFrame:CGRectMake(screenWidth/2 + 10, 80, screenWidth/2 -  20, 40)];
    a2.text = [@"bye" localize];
    a2.backgroundColor = [UIColor redColor];
    [self.view addSubview:a2];
    
    UIButton *changeLanguageButton = [[UIButton alloc]initWithFrame:CGRectMake(50, 450, screenWidth - 100, 50)];
    [changeLanguageButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [changeLanguageButton setTitle:[@"setting" localize] forState:UIControlStateNormal];
    [changeLanguageButton addTarget:self action:@selector(changeLanguageButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:changeLanguageButton];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)changeLanguageButtonAction{
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SettingViewController *view = (SettingViewController *)[story instantiateViewControllerWithIdentifier:@"SettingViewController"];
    [self.navigationController pushViewController:view animated:YES];
}



@end
