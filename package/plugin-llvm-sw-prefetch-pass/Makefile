# The name of the plugin.
PLUGIN = SwPrefetchPass
PLUGIN_OUT = SwPrefetchPass

# LLVM paths. Note: you probably need to update these.
LLVM_DIR = /home/sa614/CK-TOOLS/llvm-3.9.0-linux-64
CLANG = $(LLVM_DIR)/bin/clang
FORCE_USE_ABI=1

# Compiler flags.
CXXFLAGS  = -I$(LLVM_DIR)/include
CXXFLAGS += ${EXTRA_FLAGS} #-DIGNORE_SIZE=1
CXXFLAGS += -D__STDC_LIMIT_MACROS -D__STDC_CONSTANT_MACROS -Wno-long-long
CXXFLAGS += -fPIC -fvisibility-inlines-hidden
CXXFLAGS += -fno-exceptions -fno-rtti -std=c++11
CXXFLAGS += -Wall -D_GLIBCXX_USE_CXX11_ABI=${FORCE_USE_ABI}

# Linker flags.
LDFLAGS = -shared -Wl,-undefined,dynamic_lookup

$(PLUGIN).so : $(PLUGIN).o
	$(CLANG) $(LDFLAGS) -o $(PLUGIN_OUT).so $(PLUGIN).o

$(PLUGIN).o : $(PLUGIN).cc
	$(CLANG) $(CXXFLAGS) -c $(PLUGIN).cc -o $(PLUGIN).o

clean :
	rm -fv $(PLUGIN).o $(PLUGIN_OUT).so
	
	
#example script taken from http://www.hanshq.net/clang-plugin-example.html
