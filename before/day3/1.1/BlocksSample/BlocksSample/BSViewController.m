//
//  BSViewController.m
//  BlocksSample
//
//  Created by 武田 祐一 on 2013/05/01.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "BSViewController.h"

typedef void (^blk_t)();

@interface BlockSample : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, copy) blk_t name_print_block;

@end

@implementation BlockSample

- (id)init {
    self = [super init];
    if (self) {
        // TODO: deallocが呼ばれるように記述を追加する[9]
        BlockSample *_self = self;
        self.name_print_block = ^{
            NSLog(@"%@", _self.name);
        };
    }
    return self;
}

- (void)dealloc {
    NSLog(@"dealloc");
}

@end


typedef double (^blk2_t)(int);

// TODO: 戻り値がBOOL型で引数として二つのint型を取るblock構文block_tの宣言[5]

@implementation BSViewController

// 引数として利用
void func1(int (^tmp)(int)) {
    tmp(10);
}

// "int型を引数としてとり、double型"を返すBlock型を返り値として、float型の引数aを取る関数func2の定義
double (^func2(float a))(int) {
    return ^double (int b) {
        return a + b;
    };
}

// func2をtypedefに置き換えたもの
blk2_t func3(float a) {
    return ^double (int b) {
        return a + b;
    };
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self basic1];
    [self typedef1];
    [self capture1];
    [self capture2];

    BlockSample *sample = [[BlockSample alloc] init];
    NSLog(@"%@", sample);

    // TODO's
    [self basic2];
    [self typedef2];
}

// 基本その1
- (void)basic1 {
    // 戻り値がvoid型で引数としてint型の変数を取るblock型変数my_blockの宣言
    void (^my_block)(int);
    
    // my_blockへblockを代入
    my_block = ^void (int arg) {
        NSLog(@"%d", arg);
    };
    
    // my_blockに代入されたblockを実行
    my_block(10);
}

// typedefその1
- (void)typedef1 {
    // func2の戻り値を変数に代入して実行
    double (^my_block)(int) = func2(10);
    double z = my_block(20);
    NSLog(@"%lf", z);
    
    // typedef宣言した変数に代入して実行、内容はfunc2と同じになる
    blk2_t my_typedef = func3(10);
    double y = my_typedef(20);
    NSLog(@"%lf", y);
}

// 変数のキャプチャ1
- (void)capture1 {
    __block int value = 10;
    void (^my_block)() = ^{
        // __block宣言してある変数は、直接上書きできる
        value = 20;
        NSLog(@"value = %d", value);
    };
    // コンソールに value = 20 と表示される
    my_block();
    // ここでも value = 20 と表示される
    NSLog(@"a = %d", value);
}

// 変数のキャプチャ2
- (void)capture2 {
    NSMutableArray *array = [NSMutableArray arrayWithArray:@[@"hoge", @"fuga"]];
    void (^my_block)() = ^{
        // arrayの参照先に対して値を追加しているので問題ない（変数を直接上書きしているわけではない）
        [array addObject:@"piyo"];
    };
    my_block();
    NSLog(@"%@", array);
}

#pragma mark - TODO
// 基本その2
- (void)basic2 {
    // TODO: 戻り値がBOOL型で引数として二つのint型を取るblock型変数my_blockの宣言[1]
    
    // TODO: block構文を変数へ代入[2]
    
    // TODO: block型変数my_blockを実行[3]
    
    // 結果をLog出力[4]
}

// typedefその2
- (void)typedef2 {
    // TODO: [5]で作成したtypedefの変数my_blockを用意して代入[6]
    
    // TODO: block型変数my_blockを実行[7]
    
    // 結果をLog出力[8]
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
