Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CA231DF9C
	for <lists+usrp-users@lfdr.de>; Wed, 17 Feb 2021 20:26:51 +0100 (CET)
Received: from [::1] (port=36412 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCSTH-0007r8-PS; Wed, 17 Feb 2021 14:26:47 -0500
Received: from p-impout003aa.msg.pkvw.co.charter.net ([47.43.26.134]:60269
 helo=p-impout003.msg.pkvw.co.charter.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <dtrask1@tampabay.rr.com>)
 id 1lCSTD-0007lS-0A
 for usrp-users@lists.ettus.com; Wed, 17 Feb 2021 14:26:43 -0500
Received: from localhost ([54.243.7.172]) by cmsmtp with ESMTP
 id CSSWl81ZhGLZxCSSXlvpIu; Wed, 17 Feb 2021 19:26:01 +0000
X-Authority-Analysis: v=2.3 cv=FpV7AFjq c=1 sm=1 tr=0
 a=ZhHbwgLlxfPm5G22ibXkng==:117 a=ZhHbwgLlxfPm5G22ibXkng==:17
 a=bpm26yrvxXUA:10 a=SKcGWsc0eaYA:10 a=N5j5zEGYdL7ZpdGOZzsA:9
 a=7Zwj6sZBwVKJAoWSPKxL6X1jA+E=:19 a=QEXdDO2ut3YA:10 a=ZrsZR95k2a-Jjnxz58AA:9
 a=rhMk0Wa1nBLH4Eb_:21 a=_W_S_7VecoQA:10
Message-Id: <272f28c4b6c10aec670858261b8d3928c551e70e@webmail>
To: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 
X-Originating-IP: [204.115.183.4]
X-Priority: 3
Importance: Normal
X-MSMail-Priority: Normal
Date: Wed, 17 Feb 2021 19:26:00 +0000
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfHUGSRtadiJF2I804O/F6uywnhl/g03uL95GMYKfuGuIFaYxa4FpDvttIK7hXTiGcBNIU60ggtjPeQxnM3aCjT0sR9q8UmGJvvZ2d/DdL+nRKW2A+afk
 6RFaYEJc9ljVPETJDP7mjMJvyd5/zOczY78Y5Eo7lqEJKnibnGhiBvmGBZN87UJQgcAfKXL0uvsOkQ==
Subject: [USRP-users] shared_ptr does not name a template type in
 Cross-compile of GR 3.7 with UHD 3.15 SDK
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Dennis Trask via USRP-users <usrp-users@lists.ettus.com>
Reply-To: dtrask1@tampabay.rr.com
Content-Type: multipart/mixed; boundary="===============6161668167968943281=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6161668167968943281==
Content-Type: multipart/alternative;
 boundary="=_89ebc2752c32aea589334cfdf780fa8b"

--=_89ebc2752c32aea589334cfdf780fa8b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have UHD 3.15 successfully cross-compiled for E310 on Ubuntu 18.04=0Ah=
ost. Now trying to cross-compile GnuRadio 3.7. My cmake is:=0Acmake=0A-D=
CMAKE_TOOLCHAIN_FILE=3D~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cros=
s.cmake=0A-DENABLE_DOXYGEN=3DOFF -DCMAKE_INSTALL_PREFIX=3D/usr=0A-DCMAKE=
_ASM_COMPILER_ARG1:STRING=3D"-mcpu=3Dcortex-a9" ../=0AIt looks like the=
 build is erroneously looking for shared_ptr in=0Anamespace std instead=
 of namespace boost, but I'm not sure how to set=0Athis up for success.=
 Does anyone see where I have gone wrong?=0AI'm getting the following er=
ror stream:=0A[ 34%] Building CXX object=0Agnuradio-runtime/lib/CMakeFil=
es/gnuradio-runtime.dir/block_gateway_impl.cc.oIn=0Afile included from=
=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rp=
cmanager_base.h:26,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-r=
untime/include/gnuradio/rpcmanager.h:27,=0Afrom=0A/home/labuser/rfnoc/sr=
c/gnuradio/gnuradio-runtime/include/gnuradio/rpcregisterhelpers.h:26,=0A=
from=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradi=
o/basic_block.h:42,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-r=
untime/lib/basic_block.cc:27:/home/labuser/rfnoc/src/gnuradio/gnuradio-r=
untime/include/gnuradio/rpc_shared_ptr_selection.h:34:32:=0Aerror: 'shar=
ed_ptr' in namespace 'std' does not name a template type=0A#define GR_RP=
C_SHARED_PTR std::shared_ptr=0A^~~~~~~~~~/home/labuser/rfnoc/src/gnuradi=
o/gnuradio-runtime/include/gnuradio/rpcmanager_base.h:34:13:=0Anote: in=
 expansion of macro 'GR_RPC_SHARED_PTR' typedef=0AGR_RPC_SHARED_PTR rpcs=
erver_booter_base_sptr;=0A^~~~~~~~~~~~~~~~~/home/labuser/rfnoc/src/gnura=
dio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selection.h:34:27:=
=0Anote: 'std::shared_ptr' is only available from C++11 onwards #define=
=0AGR_RPC_SHARED_PTR std::shared_ptr=0A^~~/home/labuser/rfnoc/src/gnurad=
io/gnuradio-runtime/include/gnuradio/rpcmanager_base.h:34:13:=0Anote: in=
 expansion of macro 'GR_RPC_SHARED_PTR' typedef=0AGR_RPC_SHARED_PTR rpcs=
erver_booter_base_sptr;=0A^~~~~~~~~~~~~~~~~/home/labuser/rfnoc/src/gnura=
dio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selection.h:34:32:=
=0Aerror: 'shared_ptr' in namespace 'std' does not name a template type=
=0A#define GR_RPC_SHARED_PTR std::shared_ptr=0A^~~~~~~~~~/home/labuser/r=
fnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_base.h:49:=
13:=0Anote: in expansion of macro 'GR_RPC_SHARED_PTR' typedef=0AGR_RPC_S=
HARED_PTR rpcserver_base_sptr;=0A^~~~~~~~~~~~~~~~~/home/labuser/rfnoc/sr=
c/gnuradio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selection.h:=
34:27:=0Anote: 'std::shared_ptr' is only available from C++11 onwards #d=
efine=0AGR_RPC_SHARED_PTR std::shared_ptr=0A^~~/home/labuser/rfnoc/src/g=
nuradio/gnuradio-runtime/include/gnuradio/rpcserver_base.h:49:13:=0Anote=
: in expansion of macro 'GR_RPC_SHARED_PTR' typedef=0AGR_RPC_SHARED_PTR=
 rpcserver_base_sptr; ^~~~~~~~~~~~~~~~~In file=0Aincluded from=0A/home/l=
abuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_bo=
oter_aggregator.h:28,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio=
-runtime/include/gnuradio/rpcmanager.h:28,=0Afrom=0A/home/labuser/rfnoc/=
src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregisterhelpers.h:26,=
=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnur=
adio/basic_block.h:42,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradi=
o-runtime/lib/basic_block.cc:27:/home/labuser/rfnoc/src/gnuradio/gnuradi=
o-runtime/include/gnuradio/rpcserver_aggregator.h:47:42:=0Aerror: 'rpcma=
nager_base::rpcserver_booter_base_sptr' has not been=0Adeclared void=0Ar=
egisterServer(rpcmanager_base::rpcserver_booter_base_sptr server);=0A^~~=
~~~~~~~~~~~~~~~~~~~~~~~/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime=
/include/gnuradio/rpcserver_aggregator.h:120:42:=0Aerror: 'rpcserver_boo=
ter_base_sptr' is not a member of=0A'rpcmanager_base' typedef std::vecto=
r rpcServerMap_t;=0A^~~~~~~~~~~~~~~~~~~~~~~~~~/home/labuser/rfnoc/src/gn=
uradio/gnuradio-runtime/include/gnuradio/rpcserver_aggregator.h:120:42:=
=0Aerror: 'rpcserver_booter_base_sptr' is not a member of=0A'rpcmanager_=
base'/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/=
rpcserver_aggregator.h:120:68:=0Aerror: template argument 1 is invalid t=
ypedef std::vector=0ArpcServerMap_t;=0A^/home/labuser/rfnoc/src/gnuradio=
/gnuradio-runtime/include/gnuradio/rpcserver_aggregator.h:120:68:=0Aerro=
r: template argument 2 is invalidIn file included from=0A/home/labuser/r=
fnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanager_base.h:26=
,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnu=
radio/rpcmanager.h:27,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradi=
o-runtime/include/gnuradio/rpcregisterhelpers.h:26,=0Afrom=0A/home/labus=
er/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/basic_block.h:42=
,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/lib/basic_b=
lock.cc:27:/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnu=
radio/rpc_shared_ptr_selection.h:34:32:=0Aerror: 'shared_ptr' in namespa=
ce 'std' does not name a template type=0A#define GR_RPC_SHARED_PTR std::=
shared_ptr=0A^~~~~~~~~~/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime=
/include/gnuradio/rpcserver_booter_aggregator.h:52:5:=0Anote: in expansi=
on of macro 'GR_RPC_SHARED_PTR' GR_RPC_SHARED_PTR=0Aserver;=0A^~~~~~~~~~=
~~~~~~~/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradi=
o/rpc_shared_ptr_selection.h:34:27:=0Anote: 'std::shared_ptr' is only av=
ailable from C++11 onwards #define=0AGR_RPC_SHARED_PTR std::shared_ptr=
=0A^~~/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio=
/rpcserver_booter_aggregator.h:52:5:=0Anote: in expansion of macro 'GR_R=
PC_SHARED_PTR' GR_RPC_SHARED_PTR=0Aserver; ^~~~~~~~~~~~~~~~~In file incl=
uded from=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gn=
uradio/rpcmanager_base.h:26,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/g=
nuradio-runtime/include/gnuradio/rpcmanager.h:27,=0Afrom=0A/home/labuser=
/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregisterhelpers=
.h:26,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/includ=
e/gnuradio/basic_block.h:42,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/g=
nuradio-runtime/include/gnuradio/block.h:27,=0Afrom=0A/home/labuser/rfno=
c/src/gnuradio/gnuradio-runtime/include/gnuradio/block_gateway.h:27,=0Af=
rom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/lib/block_gatewa=
y_impl.h:26,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/=
lib/block_gateway_impl.cc:22:/home/labuser/rfnoc/src/gnuradio/gnuradio-r=
untime/include/gnuradio/rpc_shared_ptr_selection.h:34:32:=0Aerror: 'shar=
ed_ptr' in namespace 'std' does not name a template type=0A#define GR_RP=
C_SHARED_PTR std::shared_ptr=0A^~~~~~~~~~/home/labuser/rfnoc/src/gnuradi=
o/gnuradio-runtime/include/gnuradio/rpcmanager_base.h:34:13:=0Anote: in=
 expansion of macro 'GR_RPC_SHARED_PTR' typedef=0AGR_RPC_SHARED_PTR rpcs=
erver_booter_base_sptr;=0A^~~~~~~~~~~~~~~~~/home/labuser/rfnoc/src/gnura=
dio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selection.h:34:27:=
=0Anote: 'std::shared_ptr' is only available from C++11 onwards #define=
=0AGR_RPC_SHARED_PTR std::shared_ptr=0A^~~/home/labuser/rfnoc/src/gnurad=
io/gnuradio-runtime/include/gnuradio/rpcmanager_base.h:34:13:=0Anote: in=
 expansion of macro 'GR_RPC_SHARED_PTR' typedef=0AGR_RPC_SHARED_PTR rpcs=
erver_booter_base_sptr;=0A^~~~~~~~~~~~~~~~~/home/labuser/rfnoc/src/gnura=
dio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selection.h:34:32:=
=0Aerror: 'shared_ptr' in namespace 'std' does not name a template type=
=0A#define GR_RPC_SHARED_PTR std::shared_ptr=0A^~~~~~~~~~/home/labuser/r=
fnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_base.h:49:=
13:=0Anote: in expansion of macro 'GR_RPC_SHARED_PTR' typedef=0AGR_RPC_S=
HARED_PTR rpcserver_base_sptr;=0A^~~~~~~~~~~~~~~~~/home/labuser/rfnoc/sr=
c/gnuradio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selection.h:=
34:27:=0Anote: 'std::shared_ptr' is only available from C++11 onwards #d=
efine=0AGR_RPC_SHARED_PTR std::shared_ptr=0A^~~/home/labuser/rfnoc/src/g=
nuradio/gnuradio-runtime/include/gnuradio/rpcserver_base.h:49:13:=0Anote=
: in expansion of macro 'GR_RPC_SHARED_PTR' typedef=0AGR_RPC_SHARED_PTR=
 rpcserver_base_sptr; ^~~~~~~~~~~~~~~~~In file=0Aincluded from=0A/home/l=
abuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_bo=
oter_aggregator.h:28,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio=
-runtime/include/gnuradio/rpcmanager.h:28,=0Afrom=0A/home/labuser/rfnoc/=
src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregisterhelpers.h:26,=
=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnur=
adio/basic_block.h:42,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradi=
o-runtime/include/gnuradio/block.h:27,=0Afrom=0A/home/labuser/rfnoc/src/=
gnuradio/gnuradio-runtime/include/gnuradio/block_gateway.h:27,=0Afrom=0A=
/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/lib/block_gateway_impl=
.h:26,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/lib/bl=
ock_gateway_impl.cc:22:/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime=
/include/gnuradio/rpcserver_aggregator.h:47:42:=0Aerror: 'rpcmanager_bas=
e::rpcserver_booter_base_sptr' has not been=0Adeclared void=0AregisterSe=
rver(rpcmanager_base::rpcserver_booter_base_sptr server);=0A^~~~~~~~~~~~=
~~~~~~~~~~~~~~/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/=
gnuradio/rpcserver_aggregator.h:120:42:=0Aerror: 'rpcserver_booter_base_=
sptr' is not a member of=0A'rpcmanager_base' typedef std::vector rpcServ=
erMap_t;=0A^~~~~~~~~~~~~~~~~~~~~~~~~~/home/labuser/rfnoc/src/gnuradio/gn=
uradio-runtime/include/gnuradio/rpcserver_aggregator.h:120:42:=0Aerror:=
 'rpcserver_booter_base_sptr' is not a member of=0A'rpcmanager_base'/hom=
e/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver=
_aggregator.h:120:68:=0Aerror: template argument 1 is invalid typedef st=
d::vector=0ArpcServerMap_t;=0A^/home/labuser/rfnoc/src/gnuradio/gnuradio=
-runtime/include/gnuradio/rpcserver_aggregator.h:120:68:=0Aerror: templa=
te argument 2 is invalidIn file included from=0A/home/labuser/rfnoc/src/=
gnuradio/gnuradio-runtime/include/gnuradio/rpcmanager_base.h:26,=0Afrom=
=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rp=
cmanager.h:27,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtim=
e/include/gnuradio/rpcregisterhelpers.h:26,=0Afrom=0A/home/labuser/rfnoc=
/src/gnuradio/gnuradio-runtime/include/gnuradio/basic_block.h:42,=0Afrom=
=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/bl=
ock.h:27,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/inc=
lude/gnuradio/block_gateway.h:27,=0Afrom=0A/home/labuser/rfnoc/src/gnura=
dio/gnuradio-runtime/lib/block_gateway_impl.h:26,=0Afrom=0A/home/labuser=
/rfnoc/src/gnuradio/gnuradio-runtime/lib/block_gateway_impl.cc:22:/home/=
labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpc_shared_=
ptr_selection.h:34:32:=0Aerror: 'shared_ptr' in namespace 'std' does not=
 name a template type=0A#define GR_RPC_SHARED_PTR std::shared_ptr=0A^~~~=
~~~~~~/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio=
/rpcserver_booter_aggregator.h:52:5:=0Anote: in expansion of macro 'GR_R=
PC_SHARED_PTR' GR_RPC_SHARED_PTR=0Aserver;=0A^~~~~~~~~~~~~~~~~/home/labu=
ser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_=
selection.h:34:27:=0Anote: 'std::shared_ptr' is only available from C++1=
1 onwards #define=0AGR_RPC_SHARED_PTR std::shared_ptr=0A^~~/home/labuser=
/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_booter_a=
ggregator.h:52:5:=0Anote: in expansion of macro 'GR_RPC_SHARED_PTR' GR_R=
PC_SHARED_PTR=0Aserver; ^~~~~~~~~~~~~~~~~In file included from=0A/home/l=
abuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanager_b=
ase.h:26,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/inc=
lude/gnuradio/rpcmanager.h:27,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio=
/gnuradio-runtime/include/gnuradio/rpcregisterhelpers.h:26,=0Afrom=0A/ho=
me/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/basic_bl=
ock.h:42,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/inc=
lude/gnuradio/block.h:27,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnur=
adio-runtime/lib/block.cc:27:/home/labuser/rfnoc/src/gnuradio/gnuradio-r=
untime/include/gnuradio/rpc_shared_ptr_selection.h:34:32:=0Aerror: 'shar=
ed_ptr' in namespace 'std' does not name a template type=0A#define GR_RP=
C_SHARED_PTR std::shared_ptr=0A^~~~~~~~~~/home/labuser/rfnoc/src/gnuradi=
o/gnuradio-runtime/include/gnuradio/rpcmanager_base.h:34:13:=0Anote: in=
 expansion of macro 'GR_RPC_SHARED_PTR' typedef=0AGR_RPC_SHARED_PTR rpcs=
erver_booter_base_sptr;=0A^~~~~~~~~~~~~~~~~/home/labuser/rfnoc/src/gnura=
dio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selection.h:34:27:=
=0Anote: 'std::shared_ptr' is only available from C++11 onwards #define=
=0AGR_RPC_SHARED_PTR std::shared_ptr=0A^~~/home/labuser/rfnoc/src/gnurad=
io/gnuradio-runtime/include/gnuradio/rpcmanager_base.h:34:13:=0Anote: in=
 expansion of macro 'GR_RPC_SHARED_PTR' typedef=0AGR_RPC_SHARED_PTR rpcs=
erver_booter_base_sptr;=0A^~~~~~~~~~~~~~~~~/home/labuser/rfnoc/src/gnura=
dio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selection.h:34:32:=
=0Aerror: 'shared_ptr' in namespace 'std' does not name a template type=
=0A#define GR_RPC_SHARED_PTR std::shared_ptr=0A^~~~~~~~~~/home/labuser/r=
fnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_base.h:49:=
13:=0Anote: in expansion of macro 'GR_RPC_SHARED_PTR' typedef=0AGR_RPC_S=
HARED_PTR rpcserver_base_sptr; ^~~~~~~~~~~~~~~~~In file=0Aincluded from=
=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rp=
cmanager_base.h:26,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-r=
untime/include/gnuradio/rpcmanager.h:27,=0Afrom=0A/home/labuser/rfnoc/sr=
c/gnuradio/gnuradio-runtime/include/gnuradio/rpcregisterhelpers.h:26,=0A=
from=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradi=
o/basic_block.h:42,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-r=
untime/include/gnuradio/block.h:27,=0Afrom=0A/home/labuser/rfnoc/src/gnu=
radio/gnuradio-runtime/lib/block_executor.cc:27:/home/labuser/rfnoc/src/=
gnuradio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selection.h:34=
:32:=0Aerror: 'shared_ptr' in namespace 'std' does not name a template t=
ype=0A#define GR_RPC_SHARED_PTR std::shared_ptr=0A^~~~~~~~~~/home/labuse=
r/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanager_base.h=
:34:13:=0Anote: in expansion of macro 'GR_RPC_SHARED_PTR' typedef=0AGR_R=
PC_SHARED_PTR rpcserver_booter_base_sptr;=0A^~~~~~~~~~~~~~~~~/home/labus=
er/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_s=
election.h:34:27:=0Anote: 'std::shared_ptr' is only available from C++11=
 onwards #define=0AGR_RPC_SHARED_PTR std::shared_ptr=0A^~~/home/labuser/=
rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_base.h:49=
:13:=0Anote: in expansion of macro 'GR_RPC_SHARED_PTR' typedef=0AGR_RPC_=
SHARED_PTR rpcserver_base_sptr;=0A^~~~~~~~~~~~~~~~~/home/labuser/rfnoc/s=
rc/gnuradio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selection.h=
:34:27:=0Anote: 'std::shared_ptr' is only available from C++11 onwards #=
define=0AGR_RPC_SHARED_PTR std::shared_ptr=0A^~~/home/labuser/rfnoc/src/=
gnuradio/gnuradio-runtime/include/gnuradio/rpcmanager_base.h:34:13:=0Ano=
te: in expansion of macro 'GR_RPC_SHARED_PTR' typedef=0AGR_RPC_SHARED_PT=
R rpcserver_booter_base_sptr; ^~~~~~~~~~~~~~~~~In file=0Aincluded from=
=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rp=
cserver_booter_aggregator.h:28,=0Afrom=0A/home/labuser/rfnoc/src/gnuradi=
o/gnuradio-runtime/include/gnuradio/rpcmanager.h:28,=0Afrom=0A/home/labu=
ser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregisterhelp=
ers.h:26,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/inc=
lude/gnuradio/basic_block.h:42,=0Afrom=0A/home/labuser/rfnoc/src/gnuradi=
o/gnuradio-runtime/include/gnuradio/block.h:27,=0Afrom=0A/home/labuser/r=
fnoc/src/gnuradio/gnuradio-runtime/lib/block.cc:27:/home/labuser/rfnoc/s=
rc/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_aggregator.h:47:=
42:=0Aerror: 'rpcmanager_base::rpcserver_booter_base_sptr' has not been=
=0Adeclared void=0AregisterServer(rpcmanager_base::rpcserver_booter_base=
_sptr server);=0A^~~~~~~~~~~~~~~~~~~~~~~~~~/home/labuser/rfnoc/src/gnura=
dio/gnuradio-runtime/include/gnuradio/rpcserver_aggregator.h:120:42:=0Ae=
rror: 'rpcserver_booter_base_sptr' is not a member of=0A'rpcmanager_base=
' typedef std::vector rpcServerMap_t;=0A^~~~~~~~~~~~~~~~~~~~~~~~~~/home/=
labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_a=
ggregator.h:120:42:=0Aerror: 'rpcserver_booter_base_sptr' is not a membe=
r of=0A'rpcmanager_base'/home/labuser/rfnoc/src/gnuradio/gnuradio-runtim=
e/include/gnuradio/rpcserver_aggregator.h:120:68:=0Aerror: template argu=
ment 1 is invalid typedef std::vector=0ArpcServerMap_t;=0A^/home/labuser=
/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_aggregat=
or.h:120:68:=0Aerror: template argument 2 is=0Ainvalid/home/labuser/rfno=
c/src/gnuradio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selectio=
n.h:34:32:=0Aerror: 'shared_ptr' in namespace 'std' does not name a temp=
late type=0A#define GR_RPC_SHARED_PTR std::shared_ptr=0A^~~~~~~~~~/home/=
labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_b=
ase.h:49:13:=0Anote: in expansion of macro 'GR_RPC_SHARED_PTR' typedef=
=0AGR_RPC_SHARED_PTR rpcserver_base_sptr;=0A^~~~~~~~~~~~~~~~~/home/labus=
er/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_s=
election.h:34:27:=0Anote: 'std::shared_ptr' is only available from C++11=
 onwards #define=0AGR_RPC_SHARED_PTR std::shared_ptr=0A^~~/home/labuser/=
rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_base.h:49=
:13:=0Anote: in expansion of macro 'GR_RPC_SHARED_PTR' typedef=0AGR_RPC_=
SHARED_PTR rpcserver_base_sptr; ^~~~~~~~~~~~~~~~~In file=0Aincluded from=
=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rp=
cserver_booter_aggregator.h:28,=0Afrom=0A/home/labuser/rfnoc/src/gnuradi=
o/gnuradio-runtime/include/gnuradio/rpcmanager.h:28,=0Afrom=0A/home/labu=
ser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregisterhelp=
ers.h:26,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/inc=
lude/gnuradio/basic_block.h:42,=0Afrom=0A/home/labuser/rfnoc/src/gnuradi=
o/gnuradio-runtime/include/gnuradio/block.h:27,=0Afrom=0A/home/labuser/r=
fnoc/src/gnuradio/gnuradio-runtime/lib/block_executor.cc:27:/home/labuse=
r/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_aggrega=
tor.h:47:42:=0Aerror: 'rpcmanager_base::rpcserver_booter_base_sptr' has=
 not been=0Adeclared void=0AregisterServer(rpcmanager_base::rpcserver_bo=
oter_base_sptr server);=0A^~~~~~~~~~~~~~~~~~~~~~~~~~/home/labuser/rfnoc/=
src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_aggregator.h:12=
0:42:=0Aerror: 'rpcserver_booter_base_sptr' is not a member of=0A'rpcman=
ager_base' typedef std::vector rpcServerMap_t;=0A^~~~~~~~~~~~~~~~~~~~~~~=
~~~/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rp=
cserver_aggregator.h:120:42:=0Aerror: 'rpcserver_booter_base_sptr' is no=
t a member of=0A'rpcmanager_base'/home/labuser/rfnoc/src/gnuradio/gnurad=
io-runtime/include/gnuradio/rpcserver_aggregator.h:120:68:=0Aerror: temp=
late argument 1 is invalid typedef std::vector=0ArpcServerMap_t;=0A^/hom=
e/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver=
_aggregator.h:120:68:=0Aerror: template argument 2 is invalidIn file inc=
luded from=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/g=
nuradio/rpcmanager_base.h:26,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/=
gnuradio-runtime/include/gnuradio/rpcmanager.h:27,=0Afrom=0A/home/labuse=
r/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregisterhelper=
s.h:26,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/inclu=
de/gnuradio/basic_block.h:42,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/=
gnuradio-runtime/include/gnuradio/block.h:27,=0Afrom=0A/home/labuser/rfn=
oc/src/gnuradio/gnuradio-runtime/lib/block.cc:27:/home/labuser/rfnoc/src=
/gnuradio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selection.h:3=
4:32:=0Aerror: 'shared_ptr' in namespace 'std' does not name a template=
 type=0A#define GR_RPC_SHARED_PTR std::shared_ptr=0A^~~~~~~~~~/home/labu=
ser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_boote=
r_aggregator.h:52:5:=0Anote: in expansion of macro 'GR_RPC_SHARED_PTR' G=
R_RPC_SHARED_PTR=0Aserver;=0A^~~~~~~~~~~~~~~~~/home/labuser/rfnoc/src/gn=
uradio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selection.h:34:2=
7:=0Anote: 'std::shared_ptr' is only available from C++11 onwards #defin=
e=0AGR_RPC_SHARED_PTR std::shared_ptr=0A^~~/home/labuser/rfnoc/src/gnura=
dio/gnuradio-runtime/include/gnuradio/rpcserver_booter_aggregator.h:52:5=
:=0Anote: in expansion of macro 'GR_RPC_SHARED_PTR' GR_RPC_SHARED_PTR=0A=
server; ^~~~~~~~~~~~~~~~~In file included from=0A/home/labuser/rfnoc/src=
/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanager_base.h:26,=0Afrom=
=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rp=
cmanager.h:27,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtim=
e/include/gnuradio/rpcregisterhelpers.h:26,=0Afrom=0A/home/labuser/rfnoc=
/src/gnuradio/gnuradio-runtime/include/gnuradio/basic_block.h:42,=0Afrom=
=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/bl=
ock.h:27,=0Afrom=0A/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/lib=
/block_executor.cc:27:/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/=
include/gnuradio/rpc_shared_ptr_selection.h:34:32:=0Aerror: 'shared_ptr'=
 in namespace 'std' does not name a template type=0A#define GR_RPC_SHARE=
D_PTR std::shared_ptr=0A^~~~~~~~~~/home/labuser/rfnoc/src/gnuradio/gnura=
dio-runtime/include/gnuradio/rpcserver_booter_aggregator.h:52:5:=0Anote:=
 in expansion of macro 'GR_RPC_SHARED_PTR' GR_RPC_SHARED_PTR=0Aserver;=
=0A^~~~~~~~~~~~~~~~~/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/in=
clude/gnuradio/rpc_shared_ptr_selection.h:34:27:=0Anote: 'std::shared_pt=
r' is only available from C++11 onwards #define=0AGR_RPC_SHARED_PTR std:=
:shared_ptr=0A^~~/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/inclu=
de/gnuradio/rpcserver_booter_aggregator.h:52:5:=0Anote: in expansion of=
 macro 'GR_RPC_SHARED_PTR' GR_RPC_SHARED_PTR=0Aserver;=0A^~~~~~~~~~~~~~~=
~~gnuradio-runtime/lib/CMakeFiles/gnuradio-runtime.dir/build.make:218:=
=0Arecipe for target=0A'gnuradio-runtime/lib/CMakeFiles/gnuradio-runtime=
.dir/basic_block.cc.o'=0Afailedmake[2]: ***=0A[gnuradio-runtime/lib/CMak=
eFiles/gnuradio-runtime.dir/basic_block.cc.o]=0AError 1=0A=0A

--=_89ebc2752c32aea589334cfdf780fa8b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>I have UHD 3.15 successfully cross-compiled for E310 on Ubun=
tu 18.04 host. Now trying to cross-compile GnuRadio 3.7. My cmake is:<di=
v><br></div><div>cmake -DCMAKE_TOOLCHAIN_FILE=3D~/rfnoc/src/gnuradio/cma=
ke/Toolchains/oe-sdk_cross.cmake -DENABLE_DOXYGEN=3DOFF -DCMAKE_INSTALL_=
PREFIX=3D/usr -DCMAKE_ASM_COMPILER_ARG1:STRING=3D"-mcpu=3Dcortex-a9" ../=
</div><div><br></div><div>It looks like the build is erroneously looking=
 for shared_ptr in namespace std instead of namespace boost, but I'm not=
 sure how to set this up for success. Does anyone see where I have gone=
 wrong?</div><div><br></div><div>I'm getting the following error stream:=
</div><div><br></div><div><div>[ 34%] Building CXX object gnuradio-runti=
me/lib/CMakeFiles/gnuradio-runtime.dir/block_gateway_impl.cc.o</div><div=
>In file included from /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime=
/include/gnuradio/rpcmanager_base.h:26,</div><div>&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnu=
radio/gnuradio-runtime/include/gnuradio/rpcmanager.h:27,</div><div>&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labu=
ser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregisterhelp=
ers.h:26,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include=
/gnuradio/basic_block.h:42,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnurad=
io-runtime/lib/basic_block.cc:27:</div><div>/home/labuser/rfnoc/src/gnur=
adio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selection.h:34:32:=
 error: 'shared_ptr' in namespace 'std' does not name a template type</d=
iv><div>&nbsp;#define GR_RPC_SHARED_PTR std::shared_ptr</div><div>&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~~~~~</div><div>/home/labuser/rfn=
oc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanager_base.h:34:1=
3: note: in expansion of macro 'GR_RPC_SHARED_PTR'</div><div>&nbsp; &nbs=
p; &nbsp;typedef GR_RPC_SHARED_PTR&lt;rpcserver_booter_base&gt; rpcserve=
r_booter_base_sptr;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;^~~~~~~~~~~~~~~~~</div><div>/home/labuser/rfnoc/src/gnuradio/gnur=
adio-runtime/include/gnuradio/rpc_shared_ptr_selection.h:34:27: note: 's=
td::shared_ptr' is only available from C++11 onwards</div><div>&nbsp;#de=
fine GR_RPC_SHARED_PTR std::shared_ptr</div><div>&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;^~~</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/includ=
e/gnuradio/rpcmanager_base.h:34:13: note: in expansion of macro 'GR_RPC_=
SHARED_PTR'</div><div>&nbsp; &nbsp; &nbsp;typedef GR_RPC_SHARED_PTR&lt;r=
pcserver_booter_base&gt; rpcserver_booter_base_sptr;</div><div>&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~</div><div>/home=
/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpc_shared=
_ptr_selection.h:34:32: error: 'shared_ptr' in namespace 'std' does not=
 name a template type</div><div>&nbsp;#define GR_RPC_SHARED_PTR std::sha=
red_ptr</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~~~~~</di=
v><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradi=
o/rpcserver_base.h:49:13: note: in expansion of macro 'GR_RPC_SHARED_PTR=
'</div><div>&nbsp; &nbsp; &nbsp;typedef GR_RPC_SHARED_PTR&lt;rpcserver_b=
ase&gt; rpcserver_base_sptr;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~</div><div>/home/labuser/rfnoc/src/gnura=
dio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selection.h:34:27:=
 note: 'std::shared_ptr' is only available from C++11 onwards</div><div>=
&nbsp;#define GR_RPC_SHARED_PTR std::shared_ptr</div><div>&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;^~~</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runt=
ime/include/gnuradio/rpcserver_base.h:49:13: note: in expansion of macro=
 'GR_RPC_SHARED_PTR'</div><div>&nbsp; &nbsp; &nbsp;typedef GR_RPC_SHARED=
_PTR&lt;rpcserver_base&gt; rpcserver_base_sptr;</div><div>&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~</div><div>In file i=
ncluded from /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/g=
nuradio/rpcserver_booter_aggregator.h:28,</div><div>&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/g=
nuradio/gnuradio-runtime/include/gnuradio/rpcmanager.h:28,</div><div>&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/la=
buser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregisterhe=
lpers.h:26,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/inclu=
de/gnuradio/basic_block.h:42,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnur=
adio-runtime/lib/basic_block.cc:27:</div><div>/home/labuser/rfnoc/src/gn=
uradio/gnuradio-runtime/include/gnuradio/rpcserver_aggregator.h:47:42: e=
rror: 'rpcmanager_base::rpcserver_booter_base_sptr' has not been declare=
d</div><div>&nbsp; &nbsp; &nbsp;void registerServer(rpcmanager_base::rpc=
server_booter_base_sptr server);</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~~~~~~~~~~~~~~~~~~~~~=
</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnu=
radio/rpcserver_aggregator.h:120:42: error: 'rpcserver_booter_base_sptr'=
 is not a member of 'rpcmanager_base'</div><div>&nbsp; &nbsp; &nbsp;type=
def std::vector&lt;rpcmanager_base::rpcserver_booter_base_sptr&gt; rpcSe=
rverMap_t;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; ^~~~~~~~~~~~~~~~~~~~~~~~~~</div><div>/home/labus=
er/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_aggreg=
ator.h:120:42: error: 'rpcserver_booter_base_sptr' is not a member of 'r=
pcmanager_base'</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runt=
ime/include/gnuradio/rpcserver_aggregator.h:120:68: error: template argu=
ment 1 is invalid</div><div>&nbsp; &nbsp; &nbsp;typedef std::vector&lt;r=
pcmanager_base::rpcserver_booter_base_sptr&gt; rpcServerMap_t;</div><div=
>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; ^</div><div>/home/labuser/rfnoc/src/gnuradio/gnur=
adio-runtime/include/gnuradio/rpcserver_aggregator.h:120:68: error: temp=
late argument 2 is invalid</div><div>In file included from /home/labuser=
/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanager_base.h:=
26,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnura=
dio/rpcmanager.h:27,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runt=
ime/include/gnuradio/rpcregisterhelpers.h:26,</div><div>&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/s=
rc/gnuradio/gnuradio-runtime/include/gnuradio/basic_block.h:42,</div><di=
v>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /ho=
me/labuser/rfnoc/src/gnuradio/gnuradio-runtime/lib/basic_block.cc:27:</d=
iv><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnurad=
io/rpc_shared_ptr_selection.h:34:32: error: 'shared_ptr' in namespace 's=
td' does not name a template type</div><div>&nbsp;#define GR_RPC_SHARED_=
PTR std::shared_ptr</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^=
~~~~~~~~~</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/in=
clude/gnuradio/rpcserver_booter_aggregator.h:52:5: note: in expansion of=
 macro 'GR_RPC_SHARED_PTR'</div><div>&nbsp; &nbsp; &nbsp;GR_RPC_SHARED_P=
TR&lt;rpcserver_aggregator&gt; server;</div><div>&nbsp; &nbsp; &nbsp;^~~=
~~~~~~~~~~~~~~</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runti=
me/include/gnuradio/rpc_shared_ptr_selection.h:34:27: note: 'std::shared=
_ptr' is only available from C++11 onwards</div><div>&nbsp;#define GR_RP=
C_SHARED_PTR std::shared_ptr</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~</div=
><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio=
/rpcserver_booter_aggregator.h:52:5: note: in expansion of macro 'GR_RPC=
_SHARED_PTR'</div><div>&nbsp; &nbsp; &nbsp;GR_RPC_SHARED_PTR&lt;rpcserve=
r_aggregator&gt; server;</div><div>&nbsp; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~=
</div><div>In file included from /home/labuser/rfnoc/src/gnuradio/gnurad=
io-runtime/include/gnuradio/rpcmanager_base.h:26,</div><div>&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfn=
oc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanager.h:27,</div>=
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from=
 /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcr=
egisterhelpers.h:26,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runt=
ime/include/gnuradio/basic_block.h:42,</div><div>&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnur=
adio/gnuradio-runtime/include/gnuradio/block.h:27,</div><div>&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rf=
noc/src/gnuradio/gnuradio-runtime/include/gnuradio/block_gateway.h:27,</=
div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;f=
rom /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/lib/block_gateway_=
impl.h:26,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/lib/bl=
ock_gateway_impl.cc:22:</div><div>/home/labuser/rfnoc/src/gnuradio/gnura=
dio-runtime/include/gnuradio/rpc_shared_ptr_selection.h:34:32: error: 's=
hared_ptr' in namespace 'std' does not name a template type</div><div>&n=
bsp;#define GR_RPC_SHARED_PTR std::shared_ptr</div><div>&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; ^~~~~~~~~~</div><div>/home/labuser/rfnoc/src/gnu=
radio/gnuradio-runtime/include/gnuradio/rpcmanager_base.h:34:13: note: i=
n expansion of macro 'GR_RPC_SHARED_PTR'</div><div>&nbsp; &nbsp; &nbsp;t=
ypedef GR_RPC_SHARED_PTR&lt;rpcserver_booter_base&gt; rpcserver_booter_b=
ase_sptr;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~~=
~~~~~~~~~~~~~</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtim=
e/include/gnuradio/rpc_shared_ptr_selection.h:34:27: note: 'std::shared_=
ptr' is only available from C++11 onwards</div><div>&nbsp;#define GR_RPC=
_SHARED_PTR std::shared_ptr</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~</div>=
<div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/=
rpcmanager_base.h:34:13: note: in expansion of macro 'GR_RPC_SHARED_PTR'=
</div><div>&nbsp; &nbsp; &nbsp;typedef GR_RPC_SHARED_PTR&lt;rpcserver_bo=
oter_base&gt; rpcserver_booter_base_sptr;</div><div>&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~</div><div>/home/labuser/rf=
noc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_select=
ion.h:34:32: error: 'shared_ptr' in namespace 'std' does not name a temp=
late type</div><div>&nbsp;#define GR_RPC_SHARED_PTR std::shared_ptr</div=
><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~~~~~</div><div>/home=
/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_=
base.h:49:13: note: in expansion of macro 'GR_RPC_SHARED_PTR'</div><div>=
&nbsp; &nbsp; &nbsp;typedef GR_RPC_SHARED_PTR&lt;rpcserver_base&gt; rpcs=
erver_base_sptr;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;^~~~~~~~~~~~~~~~~</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio=
-runtime/include/gnuradio/rpc_shared_ptr_selection.h:34:27: note: 'std::=
shared_ptr' is only available from C++11 onwards</div><div>&nbsp;#define=
 GR_RPC_SHARED_PTR std::shared_ptr</div><div>&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~=
~</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gn=
uradio/rpcserver_base.h:49:13: note: in expansion of macro 'GR_RPC_SHARE=
D_PTR'</div><div>&nbsp; &nbsp; &nbsp;typedef GR_RPC_SHARED_PTR&lt;rpcser=
ver_base&gt; rpcserver_base_sptr;</div><div>&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~</div><div>In file included from /=
home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcser=
ver_booter_aggregator.h:28,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnurad=
io-runtime/include/gnuradio/rpcmanager.h:28,</div><div>&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/sr=
c/gnuradio/gnuradio-runtime/include/gnuradio/rpcregisterhelpers.h:26,</d=
iv><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fr=
om /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/ba=
sic_block.h:42,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/i=
nclude/gnuradio/block.h:27,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnurad=
io-runtime/include/gnuradio/block_gateway.h:27,</div><div>&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfno=
c/src/gnuradio/gnuradio-runtime/lib/block_gateway_impl.h:26,</div><div>&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/=
labuser/rfnoc/src/gnuradio/gnuradio-runtime/lib/block_gateway_impl.cc:22=
:</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gn=
uradio/rpcserver_aggregator.h:47:42: error: 'rpcmanager_base::rpcserver_=
booter_base_sptr' has not been declared</div><div>&nbsp; &nbsp; &nbsp;vo=
id registerServer(rpcmanager_base::rpcserver_booter_base_sptr server);</=
div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; ^~~~~~~~~~~~~~~~~~~~~~~~~~</div><div>/home/labuser/rfnoc/sr=
c/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_aggregator.h:120:=
42: error: 'rpcserver_booter_base_sptr' is not a member of 'rpcmanager_b=
ase'</div><div>&nbsp; &nbsp; &nbsp;typedef std::vector&lt;rpcmanager_bas=
e::rpcserver_booter_base_sptr&gt; rpcServerMap_t;</div><div>&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~~~=
~~~~~~~~~~~~~~~~~~</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-r=
untime/include/gnuradio/rpcserver_aggregator.h:120:42: error: 'rpcserver=
_booter_base_sptr' is not a member of 'rpcmanager_base'</div><div>/home/=
labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_a=
ggregator.h:120:68: error: template argument 1 is invalid</div><div>&nbs=
p; &nbsp; &nbsp;typedef std::vector&lt;rpcmanager_base::rpcserver_booter=
_base_sptr&gt; rpcServerMap_t;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^</div><=
div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/r=
pcserver_aggregator.h:120:68: error: template argument 2 is invalid</div=
><div>In file included from /home/labuser/rfnoc/src/gnuradio/gnuradio-ru=
ntime/include/gnuradio/rpcmanager_base.h:26,</div><div>&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/sr=
c/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanager.h:27,</div><div>=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home=
/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregiste=
rhelpers.h:26,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/in=
clude/gnuradio/basic_block.h:42,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/g=
nuradio-runtime/include/gnuradio/block.h:27,</div><div>&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/sr=
c/gnuradio/gnuradio-runtime/include/gnuradio/block_gateway.h:27,</div><d=
iv>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /h=
ome/labuser/rfnoc/src/gnuradio/gnuradio-runtime/lib/block_gateway_impl.h=
:26,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/lib/block_ga=
teway_impl.cc:22:</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-ru=
ntime/include/gnuradio/rpc_shared_ptr_selection.h:34:32: error: 'shared_=
ptr' in namespace 'std' does not name a template type</div><div>&nbsp;#d=
efine GR_RPC_SHARED_PTR std::shared_ptr</div><div>&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; ^~~~~~~~~~</div><div>/home/labuser/rfnoc/src/gnuradio/=
gnuradio-runtime/include/gnuradio/rpcserver_booter_aggregator.h:52:5: no=
te: in expansion of macro 'GR_RPC_SHARED_PTR'</div><div>&nbsp; &nbsp; &n=
bsp;GR_RPC_SHARED_PTR&lt;rpcserver_aggregator&gt; server;</div><div>&nbs=
p; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~</div><div>/home/labuser/rfnoc/src/gnur=
adio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selection.h:34:27:=
 note: 'std::shared_ptr' is only available from C++11 onwards</div><div>=
&nbsp;#define GR_RPC_SHARED_PTR std::shared_ptr</div><div>&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;^~~</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runt=
ime/include/gnuradio/rpcserver_booter_aggregator.h:52:5: note: in expans=
ion of macro 'GR_RPC_SHARED_PTR'</div><div>&nbsp; &nbsp; &nbsp;GR_RPC_SH=
ARED_PTR&lt;rpcserver_aggregator&gt; server;</div><div>&nbsp; &nbsp; &nb=
sp;^~~~~~~~~~~~~~~~~</div><div>In file included from /home/labuser/rfnoc=
/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanager_base.h:26,</d=
iv><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fr=
om /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rp=
cmanager.h:27,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/in=
clude/gnuradio/rpcregisterhelpers.h:26,</div><div>&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnu=
radio/gnuradio-runtime/include/gnuradio/basic_block.h:42,</div><div>&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/lab=
user/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/block.h:27,</d=
iv><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fr=
om /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/lib/block.cc:27:</d=
iv><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnurad=
io/rpc_shared_ptr_selection.h:34:32: error: 'shared_ptr' in namespace 's=
td' does not name a template type</div><div>&nbsp;#define GR_RPC_SHARED_=
PTR std::shared_ptr</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^=
~~~~~~~~~</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/in=
clude/gnuradio/rpcmanager_base.h:34:13: note: in expansion of macro 'GR_=
RPC_SHARED_PTR'</div><div>&nbsp; &nbsp; &nbsp;typedef GR_RPC_SHARED_PTR&=
lt;rpcserver_booter_base&gt; rpcserver_booter_base_sptr;</div><div>&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~</div><div>/=
home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpc_sh=
ared_ptr_selection.h:34:27: note: 'std::shared_ptr' is only available fr=
om C++11 onwards</div><div>&nbsp;#define GR_RPC_SHARED_PTR std::shared_p=
tr</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~</div><div>/home/labuser/rfnoc/=
src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanager_base.h:34:13:=
 note: in expansion of macro 'GR_RPC_SHARED_PTR'</div><div>&nbsp; &nbsp;=
 &nbsp;typedef GR_RPC_SHARED_PTR&lt;rpcserver_booter_base&gt; rpcserver_=
booter_base_sptr;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;^~~~~~~~~~~~~~~~~</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradi=
o-runtime/include/gnuradio/rpc_shared_ptr_selection.h:34:32: error: 'sha=
red_ptr' in namespace 'std' does not name a template type</div><div>&nbs=
p;#define GR_RPC_SHARED_PTR std::shared_ptr</div><div>&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; ^~~~~~~~~~</div><div>/home/labuser/rfnoc/src/gnura=
dio/gnuradio-runtime/include/gnuradio/rpcserver_base.h:49:13: note: in e=
xpansion of macro 'GR_RPC_SHARED_PTR'</div><div>&nbsp; &nbsp; &nbsp;type=
def GR_RPC_SHARED_PTR&lt;rpcserver_base&gt; rpcserver_base_sptr;</div><d=
iv>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~</di=
v><div>In file included from /home/labuser/rfnoc/src/gnuradio/gnuradio-r=
untime/include/gnuradio/rpcmanager_base.h:26,</div><div>&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/s=
rc/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanager.h:27,</div><div=
>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /hom=
e/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregist=
erhelpers.h:26,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/i=
nclude/gnuradio/basic_block.h:42,</div><div>&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio=
/gnuradio-runtime/include/gnuradio/block.h:27,</div><div>&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/=
src/gnuradio/gnuradio-runtime/lib/block_executor.cc:27:</div><div>/home/=
labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpc_shared_=
ptr_selection.h:34:32: error: 'shared_ptr' in namespace 'std' does not n=
ame a template type</div><div>&nbsp;#define GR_RPC_SHARED_PTR std::share=
d_ptr</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~~~~~</div=
><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio=
/rpcmanager_base.h:34:13: note: in expansion of macro 'GR_RPC_SHARED_PTR=
'</div><div>&nbsp; &nbsp; &nbsp;typedef GR_RPC_SHARED_PTR&lt;rpcserver_b=
ooter_base&gt; rpcserver_booter_base_sptr;</div><div>&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~</div><div>/home/labuser/r=
fnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selec=
tion.h:34:27: note: 'std::shared_ptr' is only available from C++11 onwar=
ds</div><div>&nbsp;#define GR_RPC_SHARED_PTR std::shared_ptr</div><div>&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp;^~~</div><div>/home/labuser/rfnoc/src/gnuradio/g=
nuradio-runtime/include/gnuradio/rpcserver_base.h:49:13: note: in expans=
ion of macro 'GR_RPC_SHARED_PTR'</div><div>&nbsp; &nbsp; &nbsp;typedef G=
R_RPC_SHARED_PTR&lt;rpcserver_base&gt; rpcserver_base_sptr;</div><div>&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~</div><di=
v>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpc=
_shared_ptr_selection.h:34:27: note: 'std::shared_ptr' is only available=
 from C++11 onwards</div><div>&nbsp;#define GR_RPC_SHARED_PTR std::share=
d_ptr</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~</div><div>/home/labuser/rf=
noc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanager_base.h:34:=
13: note: in expansion of macro 'GR_RPC_SHARED_PTR'</div><div>&nbsp; &nb=
sp; &nbsp;typedef GR_RPC_SHARED_PTR&lt;rpcserver_booter_base&gt; rpcserv=
er_booter_base_sptr;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;^~~~~~~~~~~~~~~~~</div><div>In file included from /home/labuser/r=
fnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_booter_agg=
regator.h:28,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/inc=
lude/gnuradio/rpcmanager.h:28,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnu=
radio-runtime/include/gnuradio/rpcregisterhelpers.h:26,</div><div>&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labus=
er/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/basic_block.h:42=
,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradi=
o/block.h:27,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/lib=
/block.cc:27:</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtim=
e/include/gnuradio/rpcserver_aggregator.h:47:42: error: 'rpcmanager_base=
::rpcserver_booter_base_sptr' has not been declared</div><div>&nbsp; &nb=
sp; &nbsp;void registerServer(rpcmanager_base::rpcserver_booter_base_spt=
r server);</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; ^~~~~~~~~~~~~~~~~~~~~~~~~~</div><div>/home/labus=
er/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_aggreg=
ator.h:120:42: error: 'rpcserver_booter_base_sptr' is not a member of 'r=
pcmanager_base'</div><div>&nbsp; &nbsp; &nbsp;typedef std::vector&lt;rpc=
manager_base::rpcserver_booter_base_sptr&gt; rpcServerMap_t;</div><div>&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; ^~~~~~~~~~~~~~~~~~~~~~~~~~</div><div>/home/labuser/rfnoc/src/gnuradio/=
gnuradio-runtime/include/gnuradio/rpcserver_aggregator.h:120:42: error:=
 'rpcserver_booter_base_sptr' is not a member of 'rpcmanager_base'</div>=
<div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/=
rpcserver_aggregator.h:120:68: error: template argument 1 is invalid</di=
v><div>&nbsp; &nbsp; &nbsp;typedef std::vector&lt;rpcmanager_base::rpcse=
rver_booter_base_sptr&gt; rpcServerMap_t;</div><div>&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; ^</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/=
gnuradio/rpcserver_aggregator.h:120:68: error: template argument 2 is in=
valid</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/includ=
e/gnuradio/rpc_shared_ptr_selection.h:34:32: error: 'shared_ptr' in name=
space 'std' does not name a template type</div><div>&nbsp;#define GR_RPC=
_SHARED_PTR std::shared_ptr</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; ^~~~~~~~~~</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-run=
time/include/gnuradio/rpcserver_base.h:49:13: note: in expansion of macr=
o 'GR_RPC_SHARED_PTR'</div><div>&nbsp; &nbsp; &nbsp;typedef GR_RPC_SHARE=
D_PTR&lt;rpcserver_base&gt; rpcserver_base_sptr;</div><div>&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~</div><div>/home/lab=
user/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr=
_selection.h:34:27: note: 'std::shared_ptr' is only available from C++11=
 onwards</div><div>&nbsp;#define GR_RPC_SHARED_PTR std::shared_ptr</div>=
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;^~~</div><div>/home/labuser/rfnoc/src/gnur=
adio/gnuradio-runtime/include/gnuradio/rpcserver_base.h:49:13: note: in=
 expansion of macro 'GR_RPC_SHARED_PTR'</div><div>&nbsp; &nbsp; &nbsp;ty=
pedef GR_RPC_SHARED_PTR&lt;rpcserver_base&gt; rpcserver_base_sptr;</div>=
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~</=
div><div>In file included from /home/labuser/rfnoc/src/gnuradio/gnuradio=
-runtime/include/gnuradio/rpcserver_booter_aggregator.h:28,</div><div>&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/l=
abuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanager.h=
:28,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnur=
adio/rpcregisterhelpers.h:26,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnur=
adio-runtime/include/gnuradio/basic_block.h:42,</div><div>&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfno=
c/src/gnuradio/gnuradio-runtime/include/gnuradio/block.h:27,</div><div>&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/=
labuser/rfnoc/src/gnuradio/gnuradio-runtime/lib/block_executor.cc:27:</d=
iv><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnurad=
io/rpcserver_aggregator.h:47:42: error: 'rpcmanager_base::rpcserver_boot=
er_base_sptr' has not been declared</div><div>&nbsp; &nbsp; &nbsp;void r=
egisterServer(rpcmanager_base::rpcserver_booter_base_sptr server);</div>=
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; ^~~~~~~~~~~~~~~~~~~~~~~~~~</div><div>/home/labuser/rfnoc/src/gnu=
radio/gnuradio-runtime/include/gnuradio/rpcserver_aggregator.h:120:42: e=
rror: 'rpcserver_booter_base_sptr' is not a member of 'rpcmanager_base'<=
/div><div>&nbsp; &nbsp; &nbsp;typedef std::vector&lt;rpcmanager_base::rp=
cserver_booter_base_sptr&gt; rpcServerMap_t;</div><div>&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~~~~~~~~~=
~~~~~~~~~~~~</div><div>/home/labuser/rfnoc/src/gnuradio/gnuradio-runtime=
/include/gnuradio/rpcserver_aggregator.h:120:42: error: 'rpcserver_boote=
r_base_sptr' is not a member of 'rpcmanager_base'</div><div>/home/labuse=
r/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_aggrega=
tor.h:120:68: error: template argument 1 is invalid</div><div>&nbsp; &nb=
sp; &nbsp;typedef std::vector&lt;rpcmanager_base::rpcserver_booter_base_=
sptr&gt; rpcServerMap_t;</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^</div><div>/ho=
me/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserve=
r_aggregator.h:120:68: error: template argument 2 is invalid</div><div>I=
n file included from /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/i=
nclude/gnuradio/rpcmanager_base.h:26,</div><div>&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnura=
dio/gnuradio-runtime/include/gnuradio/rpcmanager.h:27,</div><div>&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labus=
er/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregisterhelpe=
rs.h:26,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/=
gnuradio/basic_block.h:42,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnurad=
io-runtime/include/gnuradio/block.h:27,</div><div>&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnu=
radio/gnuradio-runtime/lib/block.cc:27:</div><div>/home/labuser/rfnoc/sr=
c/gnuradio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selection.h:=
34:32: error: 'shared_ptr' in namespace 'std' does not name a template t=
ype</div><div>&nbsp;#define GR_RPC_SHARED_PTR std::shared_ptr</div><div>=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~~~~~</div><div>/home/labus=
er/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_booter=
_aggregator.h:52:5: note: in expansion of macro 'GR_RPC_SHARED_PTR'</div=
><div>&nbsp; &nbsp; &nbsp;GR_RPC_SHARED_PTR&lt;rpcserver_aggregator&gt;=
 server;</div><div>&nbsp; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~</div><div>/home=
/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpc_shared=
_ptr_selection.h:34:27: note: 'std::shared_ptr' is only available from C=
++11 onwards</div><div>&nbsp;#define GR_RPC_SHARED_PTR std::shared_ptr</=
div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~</div><div>/home/labuser/rfnoc/src=
/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_booter_aggregator.=
h:52:5: note: in expansion of macro 'GR_RPC_SHARED_PTR'</div><div>&nbsp;=
 &nbsp; &nbsp;GR_RPC_SHARED_PTR&lt;rpcserver_aggregator&gt; server;</div=
><div>&nbsp; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~</div><div>In file included f=
rom /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/r=
pcmanager_base.h:26,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runt=
ime/include/gnuradio/rpcmanager.h:27,</div><div>&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnura=
dio/gnuradio-runtime/include/gnuradio/rpcregisterhelpers.h:26,</div><div=
>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;from /hom=
e/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/basic_blo=
ck.h:42,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runtime/include/=
gnuradio/block.h:27,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;from /home/labuser/rfnoc/src/gnuradio/gnuradio-runt=
ime/lib/block_executor.cc:27:</div><div>/home/labuser/rfnoc/src/gnuradio=
/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_selection.h:34:32: err=
or: 'shared_ptr' in namespace 'std' does not name a template type</div><=
div>&nbsp;#define GR_RPC_SHARED_PTR std::shared_ptr</div><div>&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; ^~~~~~~~~~</div><div>/home/labuser/rfnoc/s=
rc/gnuradio/gnuradio-runtime/include/gnuradio/rpcserver_booter_aggregato=
r.h:52:5: note: in expansion of macro 'GR_RPC_SHARED_PTR'</div><div>&nbs=
p; &nbsp; &nbsp;GR_RPC_SHARED_PTR&lt;rpcserver_aggregator&gt; server;</d=
iv><div>&nbsp; &nbsp; &nbsp;^~~~~~~~~~~~~~~~~</div><div>/home/labuser/rf=
noc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpc_shared_ptr_select=
ion.h:34:27: note: 'std::shared_ptr' is only available from C++11 onward=
s</div><div>&nbsp;#define GR_RPC_SHARED_PTR std::shared_ptr</div><div>&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;^~~</div><div>/home/labuser/rfnoc/src/gnuradio/gn=
uradio-runtime/include/gnuradio/rpcserver_booter_aggregator.h:52:5: note=
: in expansion of macro 'GR_RPC_SHARED_PTR'</div><div>&nbsp; &nbsp; &nbs=
p;GR_RPC_SHARED_PTR&lt;rpcserver_aggregator&gt; server;</div><div>&nbsp;=
 &nbsp; &nbsp;^~~~~~~~~~~~~~~~~</div><div>gnuradio-runtime/lib/CMakeFile=
s/gnuradio-runtime.dir/build.make:218: recipe for target 'gnuradio-runti=
me/lib/CMakeFiles/gnuradio-runtime.dir/basic_block.cc.o' failed</div><di=
v>make[2]: *** [gnuradio-runtime/lib/CMakeFiles/gnuradio-runtime.dir/bas=
ic_block.cc.o] Error 1</div></div><div><br></div><div><br></div><div><br=
><div><br></div><div><br></div></div></body></html>

--=_89ebc2752c32aea589334cfdf780fa8b--



--===============6161668167968943281==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6161668167968943281==--


