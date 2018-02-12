//
//  ViewController.m
//  ObjcPracticeBasic
//
//  Created by leo.chou on 2018/2/9.
//  Copyright © 2018年 steven.chou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

// MARK: Dictionary
-(void)dictionaryPractice {
    int i = 29744;
    float f = 45064.99;
    NSDictionary *prices = @{ @"Mercedes-Benz SLK250" : [NSDecimalNumber decimalNumberWithString: @"42900.00"],
                              @"Mercedes-Benz E350" : [NSDecimalNumber decimalNumberWithString: @"51000.00"],
                              @"BMW M3 Coupe" : [NSDecimalNumber decimalNumberWithString: @"62000.00"],
                              @"BMW X6" : @"no more",
                              @"Toyota Camery XLE" : [NSNumber numberWithInteger: i],
                              @"Acura RLX Sedan" : [NSNumber numberWithFloat: f],
                             };

    for (id key in prices) {
        NSLog(@"There are %@ %@'s in stock", prices[key], key);
    }
//    NSLog(@"-------------------------");
//    NSLog(@"%@", prices[@"BMW M3 Coupe"]);
}

// MARK: Mutable Dictionary
-(void)mutalbeDictionaryPractice {
    int i = 29744;
    float f = 45064.99;

    NSMutableDictionary *prices = [NSMutableDictionary dictionary];

    [prices setObject: [NSDecimalNumber decimalNumberWithString: @"42900.00"] forKey: @"Mercedes-Benz SLK250"];
    [prices setObject: [NSDecimalNumber decimalNumberWithString: @"51000.00"] forKey: @"Mercedes-Benz E350"];
    [prices setObject: [NSDecimalNumber decimalNumberWithString: @"62000.00"] forKey: @"BMW M3 Coupe"];
    [prices setObject: @"no more" forKey: @"BMW X6"];
    [prices setObject: [NSNumber numberWithInteger: i] forKey: @"Toyota Camery XLE"];
    [prices setObject: [NSNumber numberWithFloat: f] forKey: @"Acura RLX Sedan"];

    // 刪除
    [prices removeObjectForKey: @"Mercedes-Benz E350"];

    for (id key in prices) {
        NSLog(@"There are %@ %@'s in stock", prices[key], key);
    }

    NSLog(@"-------------------------");
    NSLog(@"%@", prices[@"BMW M3 Coupe"]);
}

// MARK: Array
-(void)arrayPractice {
    NSArray *myArray = [NSArray arrayWithObjects: @"a", @"b", @"c", nil];   // init
    NSInteger t_Find = [myArray indexOfObject: @"b"];   // find data
    NSLog(@"b is index %ld object", (long)t_Find);

    NSUInteger tlen = [myArray count];
    NSLog(@"there are %lu objects in the array", (unsigned long)tlen);

    // MARK: NSMutableArray
    // 可以動態新增 addObject / 刪除 removeObjectAtIndex 資料
    NSMutableArray* sortedArray = [[NSMutableArray alloc] init];
    [sortedArray addObject: @"Alice"];
    [sortedArray addObject: @"Beth"];
    [sortedArray addObject: @"Carol"];
    [self printArray: sortedArray];

    // Add Object
    [sortedArray insertObject: @"Tom" atIndex: 1];
    [self printArray: sortedArray];

    // Remove
    [sortedArray removeObjectAtIndex: 2];
    [self printArray:sortedArray];
}

-(void) printArray: (NSMutableArray *)array {
    NSLog(@"----------------------------------");

    int i = 0;
    while (i < [array count]) {
        NSLog(@"Object%d = %@", i, array[i]);
        i++;
    }
}

// MARK: Enum
// enum 在給值時, 也可以給 index 值, 系統會自動判斷
-(void)enumPractice {
    typedef NS_ENUM(NSUInteger, PlayerState) {
        PlayerStateOff,     // 0
        PlayerStatePlaying, // 1
        PlayerStatePaused   // 2
    };

    PlayerState thePlayState = PlayerStatePaused;   // 2
    switch (thePlayState) {
        case PlayerStateOff:
            NSLog(@"Off");
            break;
        case PlayerStatePlaying:
            NSLog(@"Playing");
            break;
        case PlayerStatePaused:
            NSLog(@"Paused");
            break;
        default:
            NSLog(@"NULL");
            break;
    }
}

// MARK: goto
// goto: 會強制改變程式執行的順序
// Statement: 標籤
// 如果 goto Statement1, Statement2 的程式也會跑到
-(void)gotoPractice {

    NSLog(@"Start");
    goto Statement1;
    NSLog(@"Ya");

Statement1:
    NSLog(@"1");

Statement2:
    NSLog(@"2");

    NSLog(@"End");
}

@end
