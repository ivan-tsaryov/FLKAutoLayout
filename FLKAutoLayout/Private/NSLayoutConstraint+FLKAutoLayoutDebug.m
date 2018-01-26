#import "NSLayoutConstraint+FLKAutoLayoutDebug.h"
#import "NSObject+FLKAutoLayoutDebug.h"

@interface NSLayoutConstraint ()

- (NSString *)asciiArtDescription;

@end


@implementation NSLayoutConstraint (FLKAutoLayoutDebug)

#ifdef DEBUG

- (NSString *)description
{
    NSString *description = super.description;
    NSString *asciiArtDescription = self.asciiArtDescription;
    return [description stringByAppendingFormat:@" %@", asciiArtDescription];
}

#endif

@end
