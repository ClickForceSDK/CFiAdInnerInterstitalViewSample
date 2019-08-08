//
//  ViewController.m
//  CFiAdInnerInterstitalViewSample
//
//  Created by CF-NB on 2019/8/6.
//  Copyright © 2019年 CF-NB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIScrollView *sc = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:sc];
    [sc setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height * 4)];
    
    inneritstl = [[MFAdInnerInterstitalView alloc] initWithAGpoint:CGPointMake(0, self.view.frame.size.height+10)];
    inneritstl.bannerId = @"9702";
    inneritstl.delegate = self;
    [inneritstl addYAbsoluteErrorValue:20];
    [inneritstl debugInfo:YES];
    [inneritstl requestInnerFullScreenAD];
    [sc addSubview:inneritstl];
    
    //Remarks
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height-100, self.view.frame.size.width, 50)];
    [lable setText:@"Please slide up"];
    [lable setFont:[UIFont boldSystemFontOfSize:20]];
    [lable setTextColor:[UIColor redColor]];
    [sc addSubview:lable];
    
    
}

- (void)onRequestInnerItstAdSuccess
{
    [inneritstl show];
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)onRequestInnerItstAdFail
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)onClickInnerItst
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

@end
