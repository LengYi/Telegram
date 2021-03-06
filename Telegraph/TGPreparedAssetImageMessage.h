#import "TGPreparedMessage.h"

#import "TGMediaAssetContentProperty.h"

@class TGImageInfo;
@class SSignalQueue;

@interface TGPreparedAssetImageMessage : TGPreparedMessage

@property (nonatomic, readonly) NSString *assetIdentifier;
@property (nonatomic, strong) TGImageInfo *imageInfo;
@property (nonatomic, assign) CGSize imageSize;
@property (nonatomic, readonly) bool useMediaCache;
@property (nonatomic, strong) NSString *imageHash;

@property (nonatomic, assign) bool isCloud;

@property (nonatomic, readonly) bool document;
@property (nonatomic, readonly) int64_t localDocumentId;
@property (nonatomic, readonly) NSString *mimeType;
@property (nonatomic, strong) NSString *fileName;
@property (nonatomic, assign) int fileSize;
@property (nonatomic, strong) NSArray *attributes;

- (instancetype)initWithAssetIdentifier:(NSString *)assetIdentifier imageInfo:(TGImageInfo *)imageInfo text:(NSString *)text entities:(NSArray *)entities useMediaCache:(bool)useMediaCache isCloud:(bool)isCloud document:(bool)document localDocumentId:(int64_t)localDocumentId fileSize:(int)fileSize mimeType:(NSString *)mimeType attributes:(NSArray *)attributes replyMessage:(TGMessage *)replyMessage replyMarkup:(TGReplyMarkupAttachment *)replyMarkup messageLifetime:(int32_t)messageLifetime groupedId:(int64_t)groupedId;

- (void)setImageInfoWithThumbnailData:(NSData *)data thumbnailSize:(CGSize)thumbnailSize;

- (NSString *)localThumbnailDataPath;

- (NSString *)localDocumentDirectory;
- (NSString *)localDocumentFileName;

+ (TGImageInfo *)imageInfoForThumbnailSize:(CGSize)thumbnailSize thumbnailData:(NSData *)thumbnailData;

@end
