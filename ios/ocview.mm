#import "opencv2/opencv.hpp"
#import <Foundation/Foundation.h>
#import <Foundation/NSString.h>
#import <UIKit/UIKit.h>

bool writeImage2Document(const char *imageName, cv::Mat img) {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"/%s", imageName]];
    const char* cPath = [filePath cStringUsingEncoding:NSMacOSRomanStringEncoding];
    
    NSLog(@"%@",filePath);
    
    const cv::String newPaths = (const cv::String)cPath;
    
    //Save as Bitmap to Documents-Directory
    cv::imwrite(newPaths, img);
    return true;
}

void ios_imwrite(std::string inputFileName, cv::Mat image) {
    
    writeImage2Document("test.BMP",image);

    //NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    //NSString *directory = [paths objectAtIndex:0];
    //NSString *filePath = [directory stringByAppendingPathComponent:
                           //[NSString stringWithCString:inputFileName.c_str()
                           //                    encoding:[NSString defaultCStringEncoding]
                            //]
                          //];
    //const char* newPaths = [filePath cStringUsingEncoding:NSMacOSRomanStringEncoding];
    
        //Creating Path to Documents-Directory
        //NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        //NSString *documentsDirectory = [paths objectAtIndex:0];
    //[NSString stringWithCString:_string.c_str() encoding:[NSString defaultCStringEncoding]];
    //NSString *filePath = [documentsDirectory stringByAppendingPathComponent:[NSString //stringWithCString:inputFileName.c_str() encoding:[NSString defaultCStringEncoding]]];
        //const char* cPath = [filePath cStringUsingEncoding:NSMacOSRomanStringEncoding];

        //const std::string newPaths = (const std::string)cPath;
    
    //NSLog(@"%@",newPaths);

     //   imwrite(newPaths, image);

}
