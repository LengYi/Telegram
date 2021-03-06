

#import "TGCustomImageWallpaperInfo.h"

@interface TGCustomImageWallpaperInfo ()
{
    NSData *_imageData;
}

@end

@implementation TGCustomImageWallpaperInfo

- (instancetype)initWithImage:(UIImage *)image
{
    self = [super init];
    if (self != nil)
    {
        if (image != nil)
            _imageData = UIImageJPEGRepresentation(image, 0.98f);
    }
    return self;
}

- (NSString *)thumbnailUrl
{
    return nil;
}

- (NSString *)fullscreenUrl
{
    return nil;
}

- (int)tintColor
{
    return 0x000000;
}

- (UIImage *)image
{
    return [[UIImage alloc] initWithData:_imageData];
}

- (NSData *)imageData
{
    return _imageData;
}

- (bool)hasData
{
    return true;
}

- (BOOL)isEqual:(id)object
{
    if ([object isKindOfClass:[TGCustomImageWallpaperInfo class]])
    {
        return self == object;
    }
    
    return false;
}

- (NSDictionary *)infoDictionary
{
    return @{
        @"_className": NSStringFromClass([self class])
    };
}

+ (TGWallpaperInfo *)infoWithDictionary:(NSDictionary *)__unused dict
{
    return [[TGCustomImageWallpaperInfo alloc] initWithImage:nil];
}

@end
