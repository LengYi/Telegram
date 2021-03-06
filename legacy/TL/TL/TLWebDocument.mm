#import "TLWebDocument.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"


@implementation TLWebDocument


- (int32_t)TLconstructorSignature
{
    TGLog(@"constructorSignature is not implemented for base type");
    return 0;
}

- (int32_t)TLconstructorName
{
    TGLog(@"constructorName is not implemented for base type");
    return 0;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)__unused metaObject
{
    TGLog(@"TLbuildFromMetaObject is not implemented for base type");
    return nil;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values
{
    TGLog(@"TLfillFieldsWithValues is not implemented for base type");
}


@end

@implementation TLWebDocument$webDocument : TLWebDocument


- (int32_t)TLconstructorSignature
{
    return (int32_t)0x1c570ed1;
}

- (int32_t)TLconstructorName
{
    return (int32_t)0x3d81671;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLWebDocument$webDocument *object = [[TLWebDocument$webDocument alloc] init];
    object.url = metaObject->getString((int32_t)0xeaf7861e);
    object.access_hash = metaObject->getInt64((int32_t)0x8f305224);
    object.size = metaObject->getInt32((int32_t)0x5a228f5e);
    object.mime_type = metaObject->getString((int32_t)0xcd8e470b);
    object.attributes = metaObject->getArray((int32_t)0xb339a07a);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeString;
        value.nativeObject = self.url;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xeaf7861e, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt64;
        value.primitive.int64Value = self.access_hash;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x8f305224, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.size;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x5a228f5e, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeString;
        value.nativeObject = self.mime_type;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xcd8e470b, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeVector;
        value.nativeObject = self.attributes;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xb339a07a, value));
    }
}


@end

@implementation TLWebDocument$webDocumentNoProxy : TLWebDocument


- (int32_t)TLconstructorSignature
{
    return (int32_t)0xf9c8bcc6;
}

- (int32_t)TLconstructorName
{
    return (int32_t)0x089b2b47;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::shared_ptr<TLMetaObject>)metaObject
{
    TLWebDocument$webDocumentNoProxy *object = [[TLWebDocument$webDocumentNoProxy alloc] init];
    object.url = metaObject->getString((int32_t)0xeaf7861e);
    object.size = metaObject->getInt32((int32_t)0x5a228f5e);
    object.mime_type = metaObject->getString((int32_t)0xcd8e470b);
    object.attributes = metaObject->getArray((int32_t)0xb339a07a);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeString;
        value.nativeObject = self.url;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xeaf7861e, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.size;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0x5a228f5e, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeString;
        value.nativeObject = self.mime_type;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xcd8e470b, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeVector;
        value.nativeObject = self.attributes;
        values->insert(std::pair<int32_t, TLConstructedValue>((int32_t)0xb339a07a, value));
    }
}


@end

