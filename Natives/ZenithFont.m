#import "ZenithFont.h"

static NSString * const ZenithGoogleSansFlex = @"Google Sans Flex";

UIFont *ZenithFontNamed(NSString *name, CGFloat size) {
    UIFont *font = [UIFont fontWithName:name size:size];
    return font ?: [UIFont systemFontOfSize:size];
}

UIFont *ZenithFont(CGFloat size, UIFontWeight weight) {
    UIFont *font = [UIFont fontWithName:ZenithGoogleSansFlex size:size];
    if (font == nil) {
        return [UIFont systemFontOfSize:size weight:weight];
    }
    UIFontDescriptorSymbolicTraits traits = weight >= UIFontWeightSemibold ? UIFontDescriptorTraitBold : 0;
    UIFontDescriptor *descriptor = [font.fontDescriptor fontDescriptorWithSymbolicTraits:traits];
    UIFont *weightedFont = [UIFont fontWithDescriptor:descriptor size:size];
    return weightedFont ?: font;
}
