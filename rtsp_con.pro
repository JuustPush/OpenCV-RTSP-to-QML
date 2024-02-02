QT += quick

SOURCES += \
        main.cpp \
        opencvimageprovider.cpp \
        videostreamer.cpp

resources.files = main.qml 
resources.prefix = /$${TARGET}
RESOURCES += resources

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


INCLUDEPATH +=C:\opencv\build\include
DEPENDPATH +=C:\opencv\build\include

LIBS += C:\opencv\build\bin\libopencv_calib3d490.dll
LIBS += C:\opencv\build\bin\libopencv_core490.dll
LIBS += C:\opencv\build\bin\libopencv_dnn490.dll
LIBS += C:\opencv\build\bin\libopencv_features2d490.dll
LIBS += C:\opencv\build\bin\libopencv_flann490.dll
LIBS += C:\opencv\build\bin\libopencv_gapi490.dll
LIBS += C:\opencv\build\bin\libopencv_highgui490.dll
LIBS += C:\opencv\build\bin\libopencv_imgcodecs490.dll
LIBS += C:\opencv\build\bin\libopencv_imgproc490.dll
LIBS += C:\opencv\build\bin\libopencv_ml490.dll
LIBS += C:\opencv\build\bin\libopencv_objdetect490.dll
LIBS += C:\opencv\build\bin\libopencv_photo490.dll
LIBS += C:\opencv\build\bin\libopencv_stitching490.dll
LIBS += C:\opencv\build\bin\libopencv_video490.dll
LIBS += C:\opencv\build\bin\libopencv_videoio490.dll

HEADERS += \
    opencvimageprovider.h \
    videostreamer.h
