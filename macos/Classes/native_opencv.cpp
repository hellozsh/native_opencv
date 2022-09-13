#include <opencv2/opencv.hpp>


#if defined(WIN32) || defined(_WIN32) || defined(__WIN32)
#define IS_WIN32
#endif

#ifdef __ANDROID__
#include <android/log.h>
#endif

#ifdef IS_WIN32
#include <windows.h>
#endif


#if defined(__GNUC__)
    // Attributes to prevent 'unused' function from being removed and to make it visible
    #define FUNCTION_ATTRIBUTE __attribute__((visibility("default"))) __attribute__((used))
#elif defined(_MSC_VER)
    // Marking a function for export
    #define FUNCTION_ATTRIBUTE __declspec(dllexport)
#endif


#define w 400

using namespace cv;
using namespace std;



void platform_log(const char *fmt, ...) {
    va_list args;
    va_start(args, fmt);
#ifdef __ANDROID__
    __android_log_vprint(ANDROID_LOG_VERBOSE, "ndk", fmt, args);
#elif defined(IS_WIN32)
    char *buf = new char[4096];
    std::fill_n(buf, 4096, '\0');
    _vsprintf_p(buf, 4096, fmt, args);
    OutputDebugStringA(buf);
    delete[] buf;
#else
    vprintf(fmt, args);
#endif
    va_end(args);
}

// Avoiding name mangling
extern "C" {

    class MyPoint {
        public:
            double x;
            double y;
    };

    // Attributes to prevent 'unused' function from being removed and to make it visible
   FUNCTION_ATTRIBUTE
    const char* version() {
        return CV_VERSION;
    }

    FUNCTION_ATTRIBUTE
    void enhance(char* inputImagePath, char* outputImagePath, double num) {
        Mat image = imread(inputImagePath);
        Mat filter;
        double factor = num / 25.0 -2;
        blur(image, filter, Size(5, 5), Point(-1, -1), BORDER_DEFAULT);
        Mat ret(image.rows, image.cols, image.type());
        for (int i = 0; i < ret.rows; i++) {
           for (int j = 0; j < ret.cols; j++) {
               Vec3b rgb = image.at<Vec3b>(i,j);
               Vec3b frgb = filter.at<Vec3b>(i,j);
               ret.at<Vec3b>(i,j)=Vec3b(rgb[0]+factor*(rgb[0]-frgb[0]),rgb[1]+factor*(rgb[1]-frgb[1]),rgb[2]+factor*(rgb[2]-frgb[2]));
           }
        }
        imwrite(outputImagePath, ret);
    }

    FUNCTION_ATTRIBUTE
    void adjustBrightnessContrast(char* inputImagePath, char* outputImagePath, double brightness, double contrast) { //

          Mat image = imread(inputImagePath);
          Mat imgdst;
          double factor = contrast * 5.1 - 255;
          double factor2 = brightness / 50.0;
          image.convertTo(imgdst, image.type(),factor2,factor);
          imwrite(outputImagePath, imgdst);

    }


    FUNCTION_ATTRIBUTE
    void draw_lines_add_chromosomes(char* inputImagePath, char* outputImagePath, MyPoint* points, int pointLength) {

        cout << pointLength << " length..." << endl;
        
        // sizeof(arr) / sizeof(*arr)
        vector<cv::Point> vPoints;
        for(int i = 0; i < pointLength; i = i + 1 ) {

            cout << (points+i)->x << " a..." << endl;
            cout << (points+i)->x << " b..." << endl;
            vPoints.push_back(Point((points+i)->x,(points+i)->y));
        }
           
        cout << vPoints << " length..." << endl;
        Mat img = imread(inputImagePath);
        Mat mask = Mat::zeros(img.rows, img.cols, img.type());
        vector<vector<cv::Point>> contours;
        contours.push_back(vPoints);
        fillPoly(img, contours,Scalar(1,1,1));
        imwrite(outputImagePath, img);
        
//        fillPoly(mask,contours,cv::Scalar(1,1,1));
//        Mat s3;
//        bitwise_or(img, mask, s3);
//        imwrite(outputImagePath, s3);

        // 还需要修改染色体数量
        

    }


    FUNCTION_ATTRIBUTE
    void process_image(char* inputImagePath, char* outputImagePath) {
        Mat input = imread(inputImagePath, IMREAD_GRAYSCALE);
        Mat threshed, withContours;

        vector<vector<Point>> contours;
        vector<Vec4i> hierarchy;

        adaptiveThreshold(input, threshed, 255, ADAPTIVE_THRESH_GAUSSIAN_C, THRESH_BINARY_INV, 77, 6);
        findContours(threshed, contours, hierarchy, RETR_TREE, CHAIN_APPROX_TC89_L1);

        cvtColor(threshed, withContours, COLOR_GRAY2BGR);
        drawContours(withContours, contours, -1, Scalar(0, 255, 0), 4);

        imwrite(outputImagePath, withContours);
    }

}
