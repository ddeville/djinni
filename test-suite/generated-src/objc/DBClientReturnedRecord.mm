// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from client_interface.djinni

#import "DBClientReturnedRecord.h"


@implementation DBClientReturnedRecord

- (id)initWithRecordId:(int64_t)recordId
               content:(nonnull NSString *)content
                  misc:(nullable NSString *)misc
{
    if (self = [super init]) {
        _recordId = recordId;
        _content = [content copy];
        _misc = [misc copy];
    }
    return self;
}


@end
