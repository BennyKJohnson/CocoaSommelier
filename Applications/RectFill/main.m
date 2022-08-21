#import <Cocoa/Cocoa.h>
#import "ColorView.h"

void setup() {
    NSRect graphicsRect = NSMakeRect(0, 0, 50.0, 50.0);
    NSWindow *window = [[NSWindow alloc]
        initWithContentRect: graphicsRect
        styleMask: NSTitledWindowMask | NSClosableWindowMask | NSMiniaturizableWindowMask
        backing: NSBackingStoreBuffered
        defer: NO
    ];
    
    [window setTitle:@"RectFillTest"];
    ColorView *rectFillView = [[ColorView alloc]initWithFrame: graphicsRect];
    
    [window setContentView:rectFillView];
    [window makeKeyAndOrderFront: nil];
}

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
   NSApp = [NSApplication sharedApplication];
   setup();
   [NSApp run];
   [NSApp release];
   [pool drain];
   return 0;
}
