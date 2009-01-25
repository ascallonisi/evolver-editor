######################################################################
# Automatically generated by qmake (2.01a) Tue Jan 20 12:27:25 2009
######################################################################

TEMPLATE = app
TARGET = evolver_editor

#where it will install
target.path = /usr/local/bin

#change to release if you want to be optimized
CONFIG += qt debug

VERSION = 0.1

LIBS += -lporttime -lportmidi -lboost_program_options
DEPENDPATH += . include src
INCLUDEPATH += . include
MOC_DIR = moc
OBJECTS_DIR = obj

UPLOAD_BASE = x37v.info:x37v.info/projects/evolver_editor/

upload.target = upload
upload.depends = dist
upload.commands = rsync -v $$sprintf(%1%2.tar.gz, $$TARGET, $$VERSION) $$sprintf(%1/files/, $$UPLOAD_BASE)

INSTALLS += target
QMAKE_EXTRA_TARGETS += upload 

# Input
HEADERS += include/common.hpp \
	include/model.hpp \
	include/sliderspinbox.hpp \
	include/oscmodel.hpp \
	include/oscview.hpp \
	include/modulators.hpp \
	include/modulation_destinations.hpp \
	include/modulation_sources.hpp \
	include/lfo.hpp \
	include/applicationmodel.hpp \
	include/applicationview.hpp \
	include/delay.hpp \
	include/filter.hpp \
	include/vca.hpp \
	include/env3.hpp \
	include/feedback.hpp \
	include/miscaudio.hpp \
	include/miscmodulation.hpp \
	include/audioandenvelopeview.hpp \
	include/titledwidget.hpp \
	include/modulationview.hpp \
	include/mididriver.hpp

SOURCES += \
	src/model.cpp \
	src/common.cpp \
	src/sliderspinbox.cpp \
	src/main.cpp \
	src/oscmodel.cpp \
	src/oscview.cpp \
	src/modulators.cpp \
	src/modulation_destinations.cpp \
	src/lfo.cpp \
	src/applicationmodel.cpp \
	src/applicationview.cpp \
	src/delay.cpp \
	src/filter.cpp \
	src/vca.cpp \
	src/env3.cpp \
	src/feedback.cpp \
	src/miscaudio.cpp \
	src/miscmodulation.cpp \
	src/audioandenvelopeview.cpp \
	src/titledwidget.cpp \
	src/modulationview.cpp \
	src/mididriver.cpp

DISTFILES += README
DISTFILES += COPYING
