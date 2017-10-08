//
//  ViewController.m
//  BTScrollRule
//
//  Created by mjl on 17/10/8.
//  Copyright © 2017年 bigtree. All rights reserved.
//

#define ScreenWidth  ([[UIScreen mainScreen] bounds].size.width)
#define ScreenHeight  ([[UIScreen mainScreen] bounds].size.height)

#import "ViewController.h"
#import "DYScrollRulerView.h"

@interface ViewController ()<DYScrollRulerDelegate>
@property(nonatomic,strong)DYScrollRulerView *rullerView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.rullerView];
}

-(DYScrollRulerView *)rullerView{
    if (!_rullerView) {
        NSString *unitStr = @"cm";
        
        CGFloat rullerHeight = [DYScrollRulerView rulerViewHeight];
        _rullerView = [[DYScrollRulerView alloc]initWithFrame:CGRectMake(5, ScreenHeight/5.0, ScreenWidth-20, rullerHeight) theMinValue:0 theMaxValue:100 theStep:0.1 theUnit:unitStr theNum:10];
        [_rullerView setDefaultValue:500 animated:YES];
        
        _rullerView.delegate        = self;
        
        _rullerView.triangleColor   = [UIColor whiteColor];
        _rullerView.scrollByHand    = YES;
    }
    return _rullerView;
}

#pragma mark - YKScrollRulerDelegate
-(void)dyScrollRulerView:(DYScrollRulerView *)rulerView valueChange:(float)value{
    
    NSLog(@"value->%.f",value);
    
}

@end

