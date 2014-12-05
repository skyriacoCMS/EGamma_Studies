static  const char* clnames[] = {
  "LCGReflex/pat::DiObjectProxy",
};
extern "C" void SEAL_CAPABILITIES (const char**& names, int& n )
{names = clnames;n = sizeof(clnames)/sizeof(char*);}
