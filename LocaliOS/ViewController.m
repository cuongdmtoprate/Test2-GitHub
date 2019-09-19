//
//  ViewController.m
//  LocaliOS
//
//  Created by ManhCuong on 9/18/19.
//  Copyright © 2019 encodejsc. All rights reserved.
//

#import "ViewController.h"
#import "LocaliOS-Swift.h"

@interface ViewController ()
@property NSString *keyValue;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.Key= [[NSUserDefaults standardUserDefaults]stringForKey:@"en"];
    LocalizableViewController *VS = [[LocalizableViewController alloc]init];
     VS.valueVE = self.Key;
    self.lblLable.text = [VS setLocalizableWithBundleWithKey:@"keyLable"];
    [self.bltSetEnglish setTitle:[VS setLocalizableWithBundleWithKey:@"keyBltEng"] forState:UIControlStateNormal];
    [self.bltSetVietnam setTitle:[VS setLocalizableWithBundleWithKey:@"keyBltViet"] forState:UIControlStateNormal];
    
    
}


- (IBAction)onSetEnglish:(UIButton *)sender {
    LocalizableViewController *VS = [[LocalizableViewController alloc]init];
    self.keyValue = @"en" ;
    [[NSUserDefaults standardUserDefaults]setObject:_keyValue forKey:@"en"];
    [self viewDidLoad];
}

- (IBAction)onSetVietnam:(UIButton *)sender {
    LocalizableViewController *VS = [[LocalizableViewController alloc]init];
    self.keyValue = @"vi" ;
    [[NSUserDefaults standardUserDefaults]setObject:_keyValue forKey:@"en"];
    [self viewDidLoad];
    
}

- (IBAction)onShowKey:(UIButton *)sender {
    NSLog(@"%@", self.Key);
}
@end
