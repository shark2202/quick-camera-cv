#import "opencv2/opencv.hpp"
#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>

void ios_imwrite(std::string inputFileName, cv::Mat image) {

        //Creating Path to Documents-Directory
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:"@ocv%03d.BMP": inputFileName]];
        const char* cPath = [filePath cStringUsingEncoding:NSMacOSRomanStringEncoding];

        const std::string newPaths = (const std::string)cPath;

        imwrite(newPaths, image);

}
