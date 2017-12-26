//
//  ViewController.m
//  iOS_ algorithm
//
//  Created by 黄 on 2017/12/26.
//  Copyright © 2017年 黄. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self bubbleSort];
}

//冒泡排序
- (void )bubbleSort{
    NSMutableArray *originalArray = @[@3,@24,@5,@45,@68,@1].mutableCopy;
    
    for (int i = 0; i < originalArray.count - 1; i++) {
        for (int j = 0; j < originalArray.count - i - 1; j++) {
            NSNumber *number1 = originalArray[j];
            NSNumber *number2 = originalArray[j + 1];
            if (number1.integerValue > number2.integerValue) {
                [originalArray exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
        }
    }
    NSLog(@"%@",originalArray);
}



@end
