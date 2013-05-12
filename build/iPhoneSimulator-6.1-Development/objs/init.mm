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
void MREP_004827FD202548EFB28427B50C1B3D9B(void *, void *);
void MREP_23009D49A92E429B842BECDD840250A5(void *, void *);
void MREP_F7479246291E4C77BAA712A53F49E0C6(void *, void *);
void MREP_7EB3E6FBB3974C019FF705988FC8004C(void *, void *);
void MREP_9ED9F78DAD2A4C089685DFA92D856A67(void *, void *);
void MREP_C4E3495DAE1D4D07AC9E7A75984396C6(void *, void *);
void MREP_E556FF480089468CA76A74D6927B4C2B(void *, void *);
void MREP_FC203527939A47F180912DB2C1601501(void *, void *);
void MREP_5F8FA9C1D0D242668821FC8EA896F5D6(void *, void *);
void MREP_76AE384880454E0892770F81AEF88056(void *, void *);
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
MREP_004827FD202548EFB28427B50C1B3D9B(self, 0);
MREP_23009D49A92E429B842BECDD840250A5(self, 0);
MREP_F7479246291E4C77BAA712A53F49E0C6(self, 0);
MREP_7EB3E6FBB3974C019FF705988FC8004C(self, 0);
MREP_9ED9F78DAD2A4C089685DFA92D856A67(self, 0);
MREP_C4E3495DAE1D4D07AC9E7A75984396C6(self, 0);
MREP_E556FF480089468CA76A74D6927B4C2B(self, 0);
MREP_FC203527939A47F180912DB2C1601501(self, 0);
MREP_5F8FA9C1D0D242668821FC8EA896F5D6(self, 0);
MREP_76AE384880454E0892770F81AEF88056(self, 0);
#if !__LP64__
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
#endif
	initialized = true;
    }
}
