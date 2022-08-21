#import <Cocoa/Cocoa.h>
#import "BezierPathView.h"

void setup() {
    NSWindow *myWindow;
    NSView *myView;
    NSRect graphicsRect = NSMakeRect(100.0, 350.0, 400.0, 400.0);
    myWindow = [[NSWindow alloc]
        initWithContentRect: graphicsRect
        styleMask: NSTitledWindowMask | NSClosableWindowMask | NSMiniaturizableWindowMask
        backing: NSBackingStoreBuffered  
        defer: NO
    ];

    [myWindow setTitle: @"NSBezierPathTestApp"];

    myView = [[BezierPathView alloc] initWithFrame: graphicsRect];
    
    [myWindow setContentView: myView];
    [myWindow setDelegate: myView];
    [myWindow makeKeyAndOrderFront: nil];
}

int main() {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    NSApp = [NSApplication sharedApplication];
    setup();
    [NSApp run];
    [NSApp release];
    [pool release];

    return 0;
}