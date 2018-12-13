//
//  MessageModel.h
//  WCDBDemo
//
//  Created by 壹号美 on 2018/12/7.
//  Copyright © 2018 Personal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WCDB/WCDB.h>

@interface MessageModel : NSObject<WCTTableCoding>

/*时间*/
@property(nonatomic,strong)NSString *time;
/**内容*/
@property(nonatomic,strong)NSString *content;
/**id*/
@property(nonatomic,strong)NSString *messageId;
/**发送人*/
@property(nonatomic,strong)NSString *sender;

WCDB_PROPERTY(time)
WCDB_PROPERTY(content)
WCDB_PROPERTY(messageId)
WCDB_PROPERTY(sender)

@end


