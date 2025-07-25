QT       += core gui widgets multimedia multimediawidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

QT_VERSION = $$[QT_VERSION]
greaterThan(QT_MAJOR_VERSION, 5) {
    message("Building with Qt6")
    # 添加Qt6多媒体模块
    QT += multimedia multimediawidgets
} else {
    message("Building with Qt5")
}

# 禁用Qt5兼容模式
DEFINES += QT_NO_COMPAT

SOURCES += \
    main.cpp \
    widget.cpp

HEADERS += \
    widget.h

FORMS += \
    widget.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    assists.qrc
