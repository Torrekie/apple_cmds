#!/bin/sh
mkdir -p base/include/sys/ base/include/os/ base/lib/ base/include/System/uuid/ base/include/System/sys/ base/include/CommonCrypto base/include/bsm base/include/corecrypto base/include/firehose base/include/machine base/include/System/arm base/include/rpc base/include/mach-o base/include/libkern base/include/Kernel/kern base/include/dispatch base/include/IOkit/kext base/include/kern base/include/Kernel/IOKit base/include/Kernel/libkern

cp -af ${MACOSX_SYSROOT}/usr/include/tzfile.h base/include/
cp -af ${MACOSX_SYSROOT}/usr/include/launch.h base/include/
cp -af ${MACOSX_SYSROOT}/usr/include/sys/user.h base/include/sys/
cp -af ${MACOSX_SYSROOT}/usr/include/xpc base/include/
cp -af ${MACOSX_SYSROOT}/usr/include/libproc.h base/include/
cp -af ${MACOSX_SYSROOT}/usr/include/nlist.h base/include/
cp -af ${MACOSX_SYSROOT}/usr/include/sys/resourcevar.h base/include/sys
cp -af ${MACOSX_SYSROOT}/usr/include/mach base/include/
cp -af ${MACOSX_SYSROOT}/usr/include/get_compat.h base/include/
cp -af ${MACOSX_SYSROOT}/usr/include/sys/ioctl_compat.h base/include/sys
cp -af ${MACOSX_SYSROOT}/usr/include/sys/ttychars.h base/include/sys
cp -af ${MACOSX_SYSROOT}/usr/include/sys/ttydev.h base/include/sys
cp -af ${MACOSX_SYSROOT}/usr/include/sys/tty.h base/include/sys
cp -af ${MACOSX_SYSROOT}/usr/include/sys/reboot.h base/include/sys/
cp -af ${MACOSX_SYSROOT}/usr/include/sys/disk.h base/include/sys/
cp -af ${MACOSX_SYSROOT}/usr/include/sys/vnode.h base/include/sys/
cp -af ${MACOSX_SYSROOT}/usr/include/sys/vnioctl.h base/include/sys/
cp -af ${MACOSX_SYSROOT}/usr/include/sys/conf.h base/include/sys/
cp -af ${MACOSX_SYSROOT}/usr/include/nameser.h base/include/
cp -af ${MACOSX_SYSROOT}/usr/include/arpa base/include/
cp -af ${MACOSX_SYSROOT}/usr/include/protocols base/include/
cp -af ${MACOSX_SYSROOT}/usr/include/histedit.h base/include/
cp -af ${MACOSX_SYSROOT}/usr/include/sys/acct.h base/include/sys/
cp -af ${MACOSX_SYSROOT}/usr/include/struct.h base/include/
cp -af ${MACOSX_SYSROOT}/usr/include/vproc.h base/include/
cp -af ${MACOSX_SYSROOT}/usr/include/bootstrap.h base/include/
cp -af ${MACOSX_SYSROOT}/usr/include/servers base/include/
cp -af ${MACOSX_SYSROOT}/usr/include/timeconv.h base/include/
cp -rf ${MACOSX_SYSROOT}/System/Library/Frameworks/IOKit.framework/Headers/ base/include/IOKit
cp -af /usr/include/stdalign.h base/include/
sed -E s/'__IOS_PROHIBITED|__TVOS_PROHIBITED|__WATCHOS_PROHIBITED'//g < $TARGET_SYSROOT/usr/include/stdlib.h > base/include/stdlib.h

wget -q -nc -Pbase/include https://opensource.apple.com/source/Libc/Libc-1439.40.11/nls/FreeBSD/msgcat.h
wget -q -nc -Pbase/include https://opensource.apple.com/source/libmalloc/libmalloc-317.40.8/private/stack_logging.h
wget -q -nc -Pbase/include/os https://opensource.apple.com/source/Libc/Libc-1439.40.11/os/assumes.h
wget -q -nc -Pbase/include https://opensource.apple.com/source/Libc/Libc-1439.40.11/include/libc.h
wget -q -nc -Pbase/include https://opensource.apple.com/source/libplatform/libplatform-126.1.2/include/_simple.h
wget -q -nc -Pbase/include/os https://opensource.apple.com/source/libplatform/libplatform-126.1.2/include/os/base_private.h
wget -q -nc -Pbase/include/System/uuid/ https://opensource.apple.com/source/Libc/Libc-1439.40.11/uuid/namespace.h
wget -q -nc -Pbase/include https://opensource.apple.com/source/libutil/libutil-58.40.2/mntopts.h
wget -q -nc -Pbase/include https://opensource.apple.com/source/libutil/libutil-58.40.2/libutil.h
wget -q -nc -Pbase/include https://opensource.apple.com/source/Libinfo/Libinfo-542.40.3/membership.subproj/membershipPriv.h
wget -q -nc -Pbase/include/rpc https://opensource.apple.com/source/Libinfo/Libinfo-542.40.3/rpc.subproj/pmap_clnt.h
wget -q -nc -Pbase/include/CommonCrypto https://opensource.apple.com/source/CommonCrypto/CommonCrypto-60118.30.2/include/CommonDigestSPI.h
wget -q -nc -Pbase/include \
	https://opensource.apple.com/source/launchd/launchd-842.92.1/liblaunch/vproc_priv.h \
	https://opensource.apple.com/source/launchd/launchd-842.92.1/liblaunch/reboot2.h \
	https://opensource.apple.com/source/launchd/launchd-842.92.1/liblaunch/bootstrap_priv.h
wget -q -nc -Pbase/include/bsm \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/bsm/audit_kevents.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/bsm/audit_record.h
chmod -Rf u+w base/include
wget -q -nc -Pbase/include/libkern \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/libkern/libkern/OSTypes.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/libkern/libkern/OSReturn.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/libkern/libkern/OSKextLib.h
wget -q -nc -Pbase/include/Kernel/libkern \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/libkern/libkern/OSKextLibPrivate.h
wget -q -nc -Pbase/include/System/libkern \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/libkern/libkern/OSKextLibPrivate.h
wget -q -nc -Pbase/include/os \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/libkern/os/log_private.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/libkern/os/log.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/libkern/os/atomic_private.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/libkern/os/atomic_private_arch.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/libkern/os/atomic_private_impl.h
wget -q -nc -Pbase/include/firehose \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/libkern/firehose/tracepoint_private.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/libkern/firehose/firehose_types_private.h
wget -q -nc -Pbase/include/machine https://opensource.apple.com/source/xnu/xnu-7195.81.3/osfmk/machine/cpu_capabilities.h
wget -q -nc -Pbase/include/Kernel/kern https://opensource.apple.com/source/xnu/xnu-7195.81.3/osfmk/kern/ledger.h
wget -q -nc -Pbase/include/kern \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/osfmk/kern/debug.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/osfmk/kern/kcdata.h
wget -q -nc -Pbase/include/System/machine https://opensource.apple.com/source/xnu/xnu-7195.81.3/osfmk/machine/cpu_capabilities.h
wget -q -nc -Pbase/include/System/arm https://opensource.apple.com/source/xnu/xnu-7195.81.3/osfmk/arm/cpu_capabilities.h
wget -q -nc -Pbase/include/mach https://opensource.apple.com/source/xnu/xnu-7195.81.3/osfmk/mach/coalition.h
wget -q -nc -Pbase/include/mach https://opensource.apple.com/source/xnu/xnu-7195.81.3/osfmk/mach/vm_statistics.h
ln -sf mach/vm_statistics.h base/include/vm_statistics.h
wget -q -nc -Pbase/include/netinet6 \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet6/in6_var.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet6/in6_pcb.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet6/mld6_var.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet6/ip6_var.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet6/raw_ip6.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet6/in6.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet6/nd6.h
wget -q -nc -Pbase/include/netinet \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet/in.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet/ip_flowid.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet/tcp.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet/if_ether.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet/ip_var.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet/icmp_var.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet/igmp_var.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet/tcpip.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet/tcp_seq.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet/tcp_fsm.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet/udp_var.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet/in_var.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet/in_stat.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet/in_pcb.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet/tcp_var.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet/mptcp_var.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/netinet/ip_dummynet.h
wget -q -nc -Pbase/include/net \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/route.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/if.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/net_perf.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/packet_mangler.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/if_var.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/pktap.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/bpf.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/iptap.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/if_media.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/if_bond_var.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/if_6lowpan_var.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/if_bond_internal.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/if_bridgevar.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/lacp.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/if_mib.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/network_agent.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/if_fake_var.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/if_vlan_var.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/if_arp.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/net_api_stats.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/if_llreach.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/ntstat.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/radix.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/content_filter.h
wget -q -nc -Pbase/include/net/pktsched \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/pktsched/pktsched.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/pktsched/pktsched_fq_codel.h
wget -q -nc -Pbase/include/net/classq \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/classq/if_classq.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/net/classq/classq.h
wget -q -nc -Pbase/include/sys \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/socket.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/socketvar.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/event.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/mbuf.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/mbuf.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/kern_control.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/kern_event.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/sys_domain.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/ipcs.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/sem_internal.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/shm_internal.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/mtio.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/unpcb.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/pgo.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/kdebug.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys_private/kdebug_private.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/proc_info.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/kern_memorystatus.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/ptrace.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/stackshot.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/spawn_internal.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/resource.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/sockio.h
wget -q -nc -Pbase/include/corecrypto \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/EXTERNAL_HEADERS/corecrypto/ccsha2.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/EXTERNAL_HEADERS/corecrypto/ccdigest.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/EXTERNAL_HEADERS/corecrypto/cc.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/EXTERNAL_HEADERS/corecrypto/cc_config.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/EXTERNAL_HEADERS/corecrypto/ccn.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/EXTERNAL_HEADERS/corecrypto/cc_error.h
wget -q -nc -Pbase/include/System/sys \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/proc_uuid_policy.h \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/bsd/sys/kdebug.h
wget -q -nc -Pbase/include/dispatch \
	https://opensource.apple.com/source/libdispatch/libdispatch-1271.40.12/private/private.h \
	https://opensource.apple.com/source/libdispatch/libdispatch-1271.40.12/private/queue_private.h \
	https://opensource.apple.com/source/libdispatch/libdispatch-1271.40.12/private/workloop_private.h \
	https://opensource.apple.com/source/libdispatch/libdispatch-1271.40.12/private/source_private.h \
	https://opensource.apple.com/source/libdispatch/libdispatch-1271.40.12/private/mach_private.h \
	https://opensource.apple.com/source/libdispatch/libdispatch-1271.40.12/private/data_private.h \
	https://opensource.apple.com/source/libdispatch/libdispatch-1271.40.12/private/io_private.h \
	https://opensource.apple.com/source/libdispatch/libdispatch-1271.40.12/private/layout_private.h \
	https://opensource.apple.com/source/libdispatch/libdispatch-1271.40.12/private/time_private.h \
	https://opensource.apple.com/source/libdispatch/libdispatch-1271.40.12/private/benchmark.h
wget -q -nc -Pbase/include/IOKit \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/iokit/IOKit/IOKitKeysPrivate.h
wget -q -nc -Pbase/include/Kernel/IOKit \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/iokit/IOKit/IOKitDebug.h
wget -q -nc -Pbase/include/IOKit/kext \
	https://opensource.apple.com/source/IOKitUser/IOKitUser-1845.81.1/kext.subproj/kextmanager_types.h \
	https://opensource.apple.com/source/IOKitUser/IOKitUser-1845.81.1/kext.subproj/OSKext.h
wget -q -nc -Pbase/include \
	https://opensource.apple.com/source/xnu/xnu-7195.81.3/libsyscall/wrappers/spawn/spawn_private.h
wget -q -nc -Pbase/include/mach-o \
	https://opensource.apple.com/source/dyld/dyld-832.7.3/include/mach-o/dyld_process_info.h

sed -i '' -E 's/__API_UNAVAILABLE\(.*\)//g' base/include/mach-o/dyld_process_info.h
sed -i '' -E 's/DISPATCH_ENUM_API_AVAILABLE\(.*\)//g' base/include/dispatch/source_private.h
sed -i '' -E 's/API_AVAILABLE\(.*\)//g' base/include/dispatch/mach_private.h
sed -i '' -E 's/API_AVAILABLE\(.*\)//g' base/include/dispatch/data_private.h

CC=aarch64-apple-darwin-clang
CXX=aarch64-apple-darwin-clang++

CFLAGS="-O2 -arch arm64 -isysroot /home/cameron/Documents/iOS/SDK/iPhoneOS14.3.sdk -miphoneos-version-min=14.0 -isystem /usr/home/cameron/Documents/iOS/bsdstrap/base/include -L /usr/home/cameron/Documents/iOS/bsdstrap/base/lib"
CPPFLAGS="-O2 -arch arm64 -isysroot /home/cameron/Documents/iOS/SDK/iPhoneOS14.3.sdk -miphoneos-version-min=14.0 -isystem /usr/home/cameron/Documents/iOS/bsdstrap/base/include -L /usr/home/cameron/Documents/iOS/bsdstrap/base/lib"
CXXFLAGS="-O2 -arch arm64 -isysroot /home/cameron/Documents/iOS/SDK/iPhoneOS14.3.sdk -miphoneos-version-min=14.0 -isystem /usr/home/cameron/Documents/iOS/bsdstrap/base/include -L /usr/home/cameron/Documents/iOS/bsdstrap/base/lib"
LDFLAGS="-O2 -arch arm64 -isysroot /home/cameron/Documents/iOS/SDK/iPhoneOS14.3.sdk -miphoneos-version-min=14.0 -isystem /usr/home/cameron/Documents/iOS/bsdstrap/base/include -L /usr/home/cameron/Documents/iOS/bsdstrap/base/lib"

export CC CXX CPPFLAGS CXXFLAGS LDFLAGS