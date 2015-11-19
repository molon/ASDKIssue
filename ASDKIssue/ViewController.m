//
//  ViewController.m
//  ASDKIssue
//
//  Created by molon on 15/11/19.
//  Copyright © 2015年 molon. All rights reserved.
//

#import "ViewController.h"
#import "TimelinePopoverNode.h"

@interface ViewController ()

@end

@implementation ViewController{
    TimelinePopoverNode *_node;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    _node = [TimelinePopoverNode new];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubnode:_node];
}

- (IBAction)test:(id)sender {
    
    CGSize size = [_node measure:self.view.frame.size];
    _node.frame = (CGRect){50,100,size};
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
