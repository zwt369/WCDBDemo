//
//  MessageModel.m
//  WCDBDemo
//
//  Created by 壹号美 on 2018/12/7.
//  Copyright © 2018 Personal. All rights reserved.
//

#import "MessageModel.h"

@implementation MessageModel

/**用于定义进行绑定的类*/
WCDB_IMPLEMENTATION(MessageModel)

// WCDB_PROPERTY(propertyName)和WCDB_SYNTHESIZE(className, propertyName)用于声明和定义字段,WCDB_SYNTHESIZE(className, propertyName)默认使用属性名作为数据库表的字段名。
WCDB_SYNTHESIZE(MessageModel, time)
WCDB_SYNTHESIZE(MessageModel, content)
WCDB_SYNTHESIZE(MessageModel, sender)
//对于属性名与字段名不同的情况，可以使WCDB_SYNTHESIZE_COLUMN(className, propertyName, columnName)进行映射
WCDB_SYNTHESIZE_COLUMN(MessageModel, messageId, "id")

WCDB_UNIQUE(MessageModel, messageId);
//WCDB_PRIMARY_AUTO_INCREMENT(className, propertyName)用于定义主键且自增。
//WCDB_PRIMARY_AUTO_INCREMENT(MessageModel, messageId)

//WCDB_INDEX(className, indexNameSubfix, propertyName)用于定义索引
//WCDB_INDEX(MessageModel, "_index", time)


@end
