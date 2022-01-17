#ifndef SIM_GL_HPP_
#define SIM_GL_HPP_
#ifdef _WIN32

#define SIM_MODEL_API __declspec(dllexport)
#else
#define SIM_MODEL_API __declspec(dllexport)
#endif // _WIN32

SIM_MODEL_API int run_main(int argc,char *argv[]);

#endif //SIM_GL_HPP_