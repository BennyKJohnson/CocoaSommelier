#import "ColorView.h"

@implementation ColorView

- (void)drawRect:(NSRect)dirtyRect {
    [[NSColor blueColor] set];
    NSRectFill([self bounds]);
}

@end
