# Simple Chat
# Copyright (c) 2008-2014 Alexander Sedov <imp@schat.me>
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program. If not, see <http://www.gnu.org/licenses/>.

SCHAT_CLIENT_LIB = 1
SCHAT_CORE_LIB   = 1
QT = core network gui webkit

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets webkitwidgets

DEPENDPATH += \
    src \

INCLUDEPATH += \
    src \

HEADERS  = \
   SharePlugin.h \
   src/data/ImageCrop.h \
   src/data/ImageItem.h \
   src/data/Thumbnail.h \
   src/data/UploadItem.h \
   src/uploaders/Uploader.h \
   src/uploaders/UploadResult.h \
   src/tasks/SaveTask.h \
   src/Providers.h \
   src/ShareButton.h \
   src/ShareChatView.h \
   src/ShareCore.h \
   src/ShareDnD.h \
   src/ShareNet.h \
   src/ShareWebWidget.h \
   src/ShareWidget.h \

SOURCES  = \
   SharePlugin.cpp \
   src/data/ImageCrop.cpp \
   src/data/ImageItem.cpp \
   src/data/UploadItem.cpp \
   src/uploaders/Uploader.cpp \
   src/uploaders/UploadResult.cpp \
   src/tasks/SaveTask.cpp \
   src/Providers.cpp \
   src/ShareButton.cpp \
   src/ShareChatView.cpp \
   src/ShareCore.cpp \
   src/ShareDnD.cpp \
   src/ShareNet.cpp \
   src/ShareWebWidget.cpp \
   src/ShareWidget.cpp \

RESOURCES += res/Share.qrc

TRANSLATIONS += res/translations/share_en.ts
TRANSLATIONS += res/translations/share_ru.ts
TRANSLATIONS += res/translations/share_uk.ts

LIBS += -lNoneProviderPlugin
LIBS += -lRupProviderPlugin
LIBS += -lImgurProviderPlugin
LIBS += -lGeekpicProviderPlugin

include(../plugins.pri)