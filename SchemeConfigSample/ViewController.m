//
//  ViewController.m
//  SchemeConfigSample
//
//  Created by SakuraiYoichiro on 2015/05/19.
//  Copyright (c) 2015年 SakuraiYoichiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *versionlabel;
@property (nonatomic, weak) IBOutlet UILabel *buildlabel;
@property (nonatomic, weak) IBOutlet UILabel *label1;
@property (nonatomic, weak) IBOutlet UILabel *label2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.versionlabel.text = [self getStringFromInfoPlist:@"CFBundleShortVersionString"];
    self.buildlabel.text = [self getStringFromInfoPlist:@"CFBundleVersion"];
    self.label1.text = [self getStringFromInfoPlist:@"SAMPLE_PROPERTY_1"];
    self.label2.text = [self getStringFromInfoPlist:@"SAMPLE_PROPERTY_2"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)getStringFromInfoPlist:(NSString *)key
{
    NSString *value = [NSBundle mainBundle].infoDictionary[key];
    if ([value isKindOfClass:[NSString class]]) {
        return value;
    }

    return nil;
}

@end
