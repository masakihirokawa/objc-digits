//
//  ViewController.m
//  DigitsSample
//
//  Created by 廣川政樹 on 2013/06/05.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //値を設定する
    NSInteger value = 12345;
    
    //値をラベルのテキストに代入
    self.valueLabel.text = [NSString stringWithFormat:@"値: %d", value];
    
    //桁数を取得しラベルのテキストに代入
    self.digitsLabel.text = [NSString stringWithFormat:@"桁数: %d", [self digits:value]];
}

//桁数の取得
- (NSInteger)digits:(NSInteger)value
{
    //一旦 NSNumber型にキャストする
    NSNumber *numberValue = [[NSNumber alloc] initWithInt:value];
    
    //桁数を求める
    NSInteger digits = (int)log10([numberValue doubleValue]) + 1;
    
    //桁数を返す
    return (digits);
}

@end
