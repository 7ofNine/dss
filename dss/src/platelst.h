#pragma once

#define PLATE_DATA struct plate_data

PLATE_DATA
   {
   char header_text[101 * 80];
   char plate_name[10], gsc_plate_name[10];
   int xpixel, ypixel, dist_from_edge, cd_number, is_uk_survey;
   int real_width, real_height;        /* after clipping */
   double year_imaged;
   };

//#ifdef _WIN32                           //%GUT ignored on x64 machines - remove
//#define DLL_FUNC __stdcall
//#else
//#define DLL_FUNC
//#endif

#ifdef DSS_EXPORT 
#define DLL_INTERFACE __declspec(dllexport)
#else
#define DLL_INTERFACE __declspec(dllimport)
#endif


#ifdef __cplusplus
extern "C" {
#endif      /* __cplusplus */

    DLL_INTERFACE PLATE_DATA * /*DLL_FUNC*/  get_plate_list( const char *szDataDir,
          const double ra, const double dec,
          const int width, const int height,
          const char *lis_file_name, int *n_found);

#ifdef __cplusplus
}
#endif      /* __cplusplus */
