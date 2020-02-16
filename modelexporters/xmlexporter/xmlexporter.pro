#-------------------------------------------------
#
# Project created by QtCreator 2017-11-13T00:03:19
#
#-------------------------------------------------

QT       += core gui widgets


TEMPLATE = lib
CONFIG += plugin

CONFIG(debug, debug|release) {
        TARGET = xmlexporterd
        LIBS += -L../../libs -lqtwidgetsextrad -lqtpropertybrowserd
} else {
        TARGET = xmlexporter
        LIBS += -L../../libs -lqtwidgetsextra -lqtpropertybrowser
}

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS QTWIDGETSEXTRA_DLL QT_QTPROPERTYBROWSER_IMPORT

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

DESTDIR     = ../../libs/plugins
MOC_DIR	    = tmp/moc
OBJECTS_DIR = tmp/obj
RCC_DIR     = tmp/rcc

INCLUDEPATH += \
    ../../qtwidgetsextra/include \
    ../../qtpropertybrowser/include

DEPENDPATH += \
    ../../qtwidgetsextra/include \
    ../../qtpropertybrowser/include

SOURCES += \
    qtxmlexporterplugin.cpp \
    qtxmlexporter.cpp

HEADERS += \
    qtxmlexporterplugin.h \
    qtxmlexporter.h

DISTFILES += xmlexporter.json 

