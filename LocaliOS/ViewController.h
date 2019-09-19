//
//  ViewController.h
//  LocaliOS
//
//  Created by ManhCuong on 9/18/19.
//  Copyright © 2019 encodejsc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblLable;
@property (weak, nonatomic) IBOutlet UIButton *bltSetEnglish;
@property (weak, nonatomic) IBOutlet UIButton *bltSetVietnam;
@property  NSString *Key;

- (IBAction)onSetEnglish:(UIButton *)sender;
- (IBAction)onSetVietnam:(UIButton *)sender;
- (IBAction)onShowKey:(UIButton *)sender;


@end

