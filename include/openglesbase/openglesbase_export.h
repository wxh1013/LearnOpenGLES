#ifndef OPENGLESBASE_EXPORT_H
#define OPENGLESBASE_EXPORT_H

#ifdef OPENGLESBASE_EXPORT_API
    #ifdef WIN32
    #define OPENGLESBASE_EXPORT __declspec(dllexport)
    #else
    #define OPENGLESBASE_EXPORT
    #endif
#else
#define OPENGLESBASE_EXPORT
#endif

#endif
