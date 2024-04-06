#include <string>
#include "Luau/Common.h"
#include "Luau/ExperimentalFlags.h"

 extern "C" bool set_flag(std::string name, bool state)
{
    for (Luau::FValue<bool>* flag = Luau::FValue<bool>::list; flag; flag = flag->next)
    {
        if (name == flag->name)
        {
            flag->value = state;
            return true;
        }
    }
    return false;
}

extern "C" void set_all_flags(bool state)
{
    for (Luau::FValue<bool>* flag = Luau::FValue<bool>::list; flag; flag = flag->next)
        if (strncmp(flag->name, "Luau", 4) == 0)
            flag->value = state;
}

extern "C" void reset_flags()
{
    for (Luau::FValue<bool>* flag = Luau::FValue<bool>::list; flag; flag = flag->next)
        if (strncmp(flag->name, "Luau", 4) == 0 && !Luau::isFlagExperimental(flag->name))
            flag->value = true;
}