# - Find qtsparkle
# Find the qtsparkle includes and the qtsparkle libraries
# This module defines
# QTSPARKLE_INCLUDE_DIR, root qtsparkle include dir. Include qtsparkle includes with qtsparkle/foo.h
# QTSPARKLE_LIBRARY, the path to qtsparkle
# QTSPARKLE_FOUND, whether qtsparkle was found

if( TOMAHAWK_QT5 )
    set(QTSPARKLE_SUFFIX "-qt5")
else()
    set(QTSPARKLE_SUFFIX "")
endif()

FIND_PATH(QTSPARKLE_INCLUDE_DIR NAMES qtsparkle${QTSPARKLE_SUFFIX}/Updater
    HINTS
        ${CMAKE_INSTALL_INCLUDEDIR}
        ${KDE4_INCLUDE_DIR}
)

FIND_LIBRARY(QTSPARKLE_LIBRARIES NAMES qtsparkle${QTSPARKLE_SUFFIX}
    HINTS
        ${CMAKE_INSTALL_LIBDIR}
        ${KDE4_LIB_DIR}
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(QtSparkle
                                  REQUIRED_VARS QTSPARKLE_LIBRARIES QTSPARKLE_INCLUDE_DIR)

MARK_AS_ADVANCED(QTSPARKLE_INCLUDE_DIR QTSPARKLE_LIBRARIES)
