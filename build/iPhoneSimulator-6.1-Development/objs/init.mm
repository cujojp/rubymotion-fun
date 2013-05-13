extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_4551A2B56CF44032B77DD88432D0579E(void *, void *);
void MREP_97716917F16643CBB22EBB8A22F67F50(void *, void *);
void MREP_32CAC8C5858D455FB53B6BDD2A0B3D1F(void *, void *);
void MREP_75B44473FBBF44C0AA5F0E1D84083EF2(void *, void *);
void MREP_E10BF45431824226ABF65CD409732A51(void *, void *);
void MREP_0B4A3F8708F94650983C83CE96B0B67F(void *, void *);
void MREP_C3E55214BD29483E94ED0620CE65CCF1(void *, void *);
void MREP_E0BFB87AD8E644659CFC9FA0084C715F(void *, void *);
void MREP_86A298D16655452DA7BB155EA9E4821A(void *, void *);
void MREP_0BB2FCB53C29494D859F161840523DC3(void *, void *);
void MREP_60EC4F7E0B89484BAF5838188AD273C7(void *, void *);
void MREP_0ADB02D6190D46E19BBD1E0457E5A473(void *, void *);
void MREP_052E00DC64164FB89EE565C90F34575C(void *, void *);
void MREP_111C75C1E163443A9CD29388EF72FBC7(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
#if !__LP64__
	try {
#endif
	    void *self = rb_vm_top_self();
MREP_4551A2B56CF44032B77DD88432D0579E(self, 0);
MREP_97716917F16643CBB22EBB8A22F67F50(self, 0);
MREP_32CAC8C5858D455FB53B6BDD2A0B3D1F(self, 0);
MREP_75B44473FBBF44C0AA5F0E1D84083EF2(self, 0);
MREP_E10BF45431824226ABF65CD409732A51(self, 0);
MREP_0B4A3F8708F94650983C83CE96B0B67F(self, 0);
MREP_C3E55214BD29483E94ED0620CE65CCF1(self, 0);
MREP_E0BFB87AD8E644659CFC9FA0084C715F(self, 0);
MREP_86A298D16655452DA7BB155EA9E4821A(self, 0);
MREP_0BB2FCB53C29494D859F161840523DC3(self, 0);
MREP_60EC4F7E0B89484BAF5838188AD273C7(self, 0);
MREP_0ADB02D6190D46E19BBD1E0457E5A473(self, 0);
MREP_052E00DC64164FB89EE565C90F34575C(self, 0);
MREP_111C75C1E163443A9CD29388EF72FBC7(self, 0);
#if !__LP64__
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
#endif
	initialized = true;
    }
}
