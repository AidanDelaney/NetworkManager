AM_CPPFLAGS = \
	-I$(top_srcdir)/shared \
	-I$(top_builddir)/shared \
	-I$(top_srcdir)/libnm-core \
	-I$(top_builddir)/libnm-core \
	-I$(top_srcdir)/src/platform \
	-I$(top_srcdir)/src/devices \
	-I$(top_srcdir)/src \
	-I$(top_builddir)/src \
	-DG_LOG_DOMAIN=\""NetworkManager"\" \
	-DNETWORKMANAGER_COMPILATION=NM_NETWORKMANAGER_COMPILATION_INSIDE_DAEMON \
	$(GLIB_CFLAGS)

AM_CFLAGS = $(CODE_COVERAGE_CFLAGS)
AM_LDFLAGS = $(GLIB_LIBS) $(CODE_COVERAGE_LDFLAGS)
DEVICES_LDADD = \
	$(top_builddir)/src/libNetworkManager.la

@GNOME_CODE_COVERAGE_RULES@

noinst_PROGRAMS = \
	test-lldp \
	test-arping

test_lldp_SOURCES = \
	test-lldp.c \
	../nm-lldp-listener.c \
	$(top_srcdir)/src/platform/tests/test-common.c

test_lldp_CPPFLAGS = \
	$(AM_CPPFLAGS) \
	-I$(top_srcdir)/src/platform/tests \
	-DSETUP=nm_linux_platform_setup

test_lldp_LDADD = $(DEVICES_LDADD)

test_arping_SOURCES = \
	test-arping.c \
	../nm-arping-manager.c \
	$(top_srcdir)/src/platform/tests/test-common.c

test_arping_CPPFLAGS = \
	$(AM_CPPFLAGS) \
	-I$(top_srcdir)/src/platform/tests \
	-DSETUP=nm_linux_platform_setup

test_arping_LDADD = $(DEVICES_LDADD)

@VALGRIND_RULES@
TESTS = \
	test-lldp \
	test-arping
