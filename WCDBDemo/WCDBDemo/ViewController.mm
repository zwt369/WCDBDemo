//
//  ViewController.m
//  WCDBDemo
//
//  Created by 壹号美 on 2018/12/7.
//  Copyright © 2018 Personal. All rights reserved.
//

#import "ViewController.h"
#import <WCDB/WCDB.h>
#import "MessageModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    /**创建db*/
    NSString *path = [NSTemporaryDirectory() stringByAppendingPathComponent:@"tmp.db"];
    NSLog(@"%@",path);
    WCTDatabase* wcdb = [[WCTDatabase alloc] initWithPath:path];
    MessageModel *model = [[MessageModel alloc] init];
    model.messageId = @"1003";
    model.time = [NSString stringWithFormat:@"%ld",time(NULL)];
    model.content = @"我想请你吃饭";
    model.sender = @"中国移动";
    if ([wcdb canOpen]) {
        /**建表*/
        [wcdb createTableAndIndexesOfName:@"message" withClass:MessageModel.class];
        /**增加*/
//        [wcdb insertObject:model into:@"message"];
        /**修改*/
//        [wcdb updateRowsInTable:@"message" onProperty:MessageModel.content withValue:@"NONO" where:MessageModel.messageId >= @"1001"];
        /**批量修改*/
//        [wcdb updateAllRowsInTable:@"message" onProperty:MessageModel.content withObject:model];
        /**查询*/
        NSArray *resultArray = [wcdb getObjectsOfClass:MessageModel.class fromTable:@"message" where:MessageModel.messageId>@"1001"];
        NSLog(@"xxx%@",resultArray);
    }
}


@end
