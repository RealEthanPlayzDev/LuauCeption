#include <string>

extern "C" bool set_flag(std::string name, bool state);
extern "C" void set_all_flags(bool state);
extern "C" void reset_flags();