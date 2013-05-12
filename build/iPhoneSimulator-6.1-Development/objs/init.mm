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
void MREP_2388FE0FBB5E4809BF045CFC4B5EA2D1(void *, void *);
void MREP_56F44AE3FF5E42A3BBBF624422F235EF(void *, void *);
void MREP_F9254699E4DB41FD8F171C9E05BFDD1E(void *, void *);
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
MREP_2388FE0FBB5E4809BF045CFC4B5EA2D1(self, 0);
MREP_56F44AE3FF5E42A3BBBF624422F235EF(self, 0);
MREP_F9254699E4DB41FD8F171C9E05BFDD1E(self, 0);
#if !__LP64__
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
#endif
	initialized = true;
    }
}
