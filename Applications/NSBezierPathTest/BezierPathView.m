#include "BezierPathView.h"

@implementation BezierPathView

#define X(t) (sin(t)+1) * width * 0.5
#define Y(t) (cos(t)+1) * height * 0.5

- (void)drawRect:(NSRect)rect
{
    double f,g;
    double const pi = 2 * acos(0.0);
    int n = 12;

    float width  = [self bounds].size.width;
    float height = [self bounds].size.height;

    [[NSColor whiteColor] set];
    NSRectFill([self bounds]);

    [[NSColor blackColor] set]; 
    for (f=0; f<2*pi; f+=2*pi/n) {
        for (g=0; g<2*pi; g+=2*pi/n) {
            NSPoint p1 = NSMakePoint(X(f),Y(f));
            NSPoint p2 = NSMakePoint(X(g),Y(g));
            [NSBezierPath strokeLineFromPoint:p1 toPoint:p2];
        }
    }
}

@end