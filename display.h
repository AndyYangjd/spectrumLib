#ifndef DISPLAY_H
#define DISPLAY_H
#include <opencv2/opencv.hpp>

#include"mylib_global.h"

namespace myspace
{

class MYLIBSHARED_EXPORT Display
{
public:
    Display();        // #1
    ~Display() {;}

    cv::Mat scale(cv::Mat _src_);           // #2
    cv::Mat calib8U(cv::Mat _src);       // #3
    cv::Mat centralize(cv::Mat _src);   // #4
};

}
#endif // DISPLAY_H
