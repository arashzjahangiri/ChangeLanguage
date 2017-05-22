//
//  SettingViewController.m
//  RTL
//
//  Created by Arash on 5/21/17.
//  Copyright © 2017 Arash Z. Jahangiri. All rights reserved.
//

#import "SettingViewController.h"
#import "AppDelegate.h"
#import "NSBundle+Language.h"
#import "Header.h"
@interface SettingViewController ()

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *farsiButton = [[UIButton alloc]initWithFrame:CGRectMake(50, 250, screenWidth - 100, 50)];
    [farsiButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [farsiButton setTitle:[@"farsi" localize] forState:UIControlStateNormal];
    [farsiButton addTarget:self action:@selector(farsiButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:farsiButton];

    UIButton *englishButton = [[UIButton alloc]initWithFrame:CGRectMake(50, 320, screenWidth - 100, 50)];
    [englishButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [englishButton setTitle:[@"english" localize] forState:UIControlStateNormal];
    [englishButton addTarget:self action:@selector(englishButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:englishButton];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)farsiButtonAction{
    [[NSUserDefaults standardUserDefaults]setObject:@[@"fa", @"en"] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults]synchronize];
    NSBundle *langBundle = [[NSBundle alloc]init];
    [langBundle setLanguage:@"fa"];
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    appDelegate.window.rootViewController = story.instantiateInitialViewController;
    
}


- (void)englishButtonAction{
    [[NSUserDefaults standardUserDefaults]setObject:@[@"en", @"fa"] forKey:@"AppleLanguages"];
    [[NSUserDefaults standardUserDefaults]synchronize];
    NSBundle *langBundle = [[NSBundle alloc]init];
    [langBundle setLanguage:@"en"];
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    appDelegate.window.rootViewController = story.instantiateInitialViewController;
    
}

@end
