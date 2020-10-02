Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA0D281356
	for <lists+usrp-users@lfdr.de>; Fri,  2 Oct 2020 15:00:00 +0200 (CEST)
Received: from [::1] (port=39740 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kOKfG-0006UJ-4I; Fri, 02 Oct 2020 08:59:58 -0400
Received: from mail-ed1-f44.google.com ([209.85.208.44]:40971)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <emil.bjelski@gmail.com>)
 id 1kOKfB-0006NB-P1
 for usrp-users@lists.ettus.com; Fri, 02 Oct 2020 08:59:53 -0400
Received: by mail-ed1-f44.google.com with SMTP id l24so1530233edj.8
 for <usrp-users@lists.ettus.com>; Fri, 02 Oct 2020 05:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=d6TJ9BBaH/Z/XKw2ViXI4OmvpifckxeOnrTjNmqNoAM=;
 b=WMxNEBKZA3PZ6B3+TnTXGA9LZAV/F+yq95NeimYPhmKqtNhmYtKNd7JA4WSGPvYNfY
 INTzV29J2xAF1IDpvu+Xn0Hn255XhF0HyqTeH5R2QS1eNn3W1nru57t74iOU6a2WXrwC
 JcCc8gZTN4VouM+54KRjtMOQ6HtljK/w9JL1BdsUAVJD2/2OywW1mzWeal0sz4OKRj0y
 00c3JzvhqyslHUwsH5g9H3nRcGIIrTy3+TuWPAGAkP8qGY0+7Vue5Xj7MuyEWXR5dN6k
 mpxuLMjrxW+Tqlq2oWw5EofI9+fHQThgb2cnCTDHvdwUjx3bfEvwVuHXQQTR5u9qMGWs
 H6Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=d6TJ9BBaH/Z/XKw2ViXI4OmvpifckxeOnrTjNmqNoAM=;
 b=q1JdlOcKwPdZfdN0GnNgXvbWUaQ4T7KuZGW518iGIVoDZ5mmZ169I1tqfBdr/gPUy1
 z1Ny/yrKS/MbbQ2DNv/SlHPjzFgheI0f26XdPN12bMX0CUi1AV6j0knFD14snx3FEIPs
 9n4sZV2w9rv6IhY/G49pmS1fbFxGHdBnUN1mNE2yQVDKQxmmSjvLxKvANZJSN64fkD+h
 OTkWDAR4OBZIsZTZc1CwGEc32YZCCtFPR2uVmiwEeYYEpIIEMQ0Vvxbmaa2MtllJibS0
 31gjuDlqDFBpkY34gPmAXF/tyQTrWVXjYOTCJCDEpdUsPzTe50MHmvGtrVciIJuIMrGw
 I15g==
X-Gm-Message-State: AOAM532WTBNkNUmiY8RlVDaJtVtDraLGSZ+Z2ZywqVN8RHGrmBTf4QPY
 d4Jg9HJC4SUNgi7imBaHtqgtnQAaN5bmPKGYnMDi1DRnBRJOvg==
X-Google-Smtp-Source: ABdhPJyGHpPljhhao4UjQSIHGvDSWvhyt8EDGymAPmNt3NkwOPPJtAKRLnz8AMlpBOZ3lj+d4lONnWUV6n8CJusgR+0=
X-Received: by 2002:aa7:ce97:: with SMTP id y23mr2210742edv.128.1601643552262; 
 Fri, 02 Oct 2020 05:59:12 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 2 Oct 2020 14:59:01 +0200
Message-ID: <CADrptxXFegaW5Eiy8Vj18PJ+w0H6ecbJPpaMNKNPc0J7qEnz9w@mail.gmail.com>
To: USRP Users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Error while installing RFNOC on ubuntu 18.04.5
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
From: Emil Bjelski via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Emil Bjelski <emil.bjelski@gmail.com>
Content-Type: multipart/mixed; boundary="===============5302818008987205614=="
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

--===============5302818008987205614==
Content-Type: multipart/alternative; boundary="000000000000fd4d1a05b0afb257"

--000000000000fd4d1a05b0afb257
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am installing RFNOC using pyboms by following instructions given on
https://kb.ettus.com/Getting_Started_with_RFNoC_Development

However, during installation, there is an error (given below).
Does anyone know what could be the issue?

Thank you in advance on answers.

[ 86%] Building CXX object
gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_source_impl.cc.o
In file included from
/home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregister=
helpers.h:26:0,
                 from
/home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/basic_block=
.h:42,
                 from
/home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/block.h:27,
                 from
/home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/sync_block.=
h:27,
                 from
/home/emil/rfnoc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_block.h:26,
                 from
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_block_impl.h:26,
                 from
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.h:23,
                 from
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:24:
/home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanager.=
h:56:17:
warning: =E2=80=98template<class> class std::auto_ptr=E2=80=99 is deprecate=
d
[-Wdeprecated-declarations]
     static std::auto_ptr<rpcserver_booter_base> boot;
                 ^~~~~~~~
In file included from /usr/include/c++/7/bits/locale_conv.h:41:0,
                 from /usr/include/c++/7/locale:43,
                 from /usr/include/boost/format.hpp:23,
                 from /home/emil/rfnoc/include/uhd/types/dict.ipp:12,
                 from /home/emil/rfnoc/include/uhd/types/dict.hpp:154,
                 from /home/emil/rfnoc/include/uhd/types/device_addr.hpp:11=
,
                 from /home/emil/rfnoc/include/uhd/stream.hpp:11,
                 from
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:26,
                 from
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:23:
/usr/include/c++/7/bits/unique_ptr.h:51:28: note: declared here
   template<typename> class auto_ptr;
                            ^~~~~~~~
In file included from
/home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregister=
helpers.h:26:0,
                 from
/home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/basic_block=
.h:42,
                 from
/home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/block.h:27,
                 from
/home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/sync_block.=
h:27,
                 from
/home/emil/rfnoc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_block.h:26,
                 from
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_block_impl.h:26,
                 from
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.h:23,
                 from
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:24:
/home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanager.=
h:57:17:
warning: =E2=80=98template<class> class std::auto_ptr=E2=80=99 is deprecate=
d
[-Wdeprecated-declarations]
     static std::auto_ptr<rpcserver_booter_aggregator> aggregator;
                 ^~~~~~~~
In file included from /usr/include/c++/7/bits/locale_conv.h:41:0,
                 from /usr/include/c++/7/locale:43,
                 from /usr/include/boost/format.hpp:23,
                 from /home/emil/rfnoc/include/uhd/types/dict.ipp:12,
                 from /home/emil/rfnoc/include/uhd/types/dict.hpp:154,
                 from /home/emil/rfnoc/include/uhd/types/device_addr.hpp:11=
,
                 from /home/emil/rfnoc/include/uhd/stream.hpp:11,
                 from
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:26,
                 from
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:23:
/usr/include/c++/7/bits/unique_ptr.h:51:28: note: declared here
   template<typename> class auto_ptr;
                            ^~~~~~~~
In file included from
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.h:24:0,
                 from
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:24:
/home/emil/rfnoc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_source.h:31:=
19:
error: redefinition of =E2=80=98struct uhd::stream_args_t=E2=80=99
 struct GR_UHD_API stream_args_t {
                   ^~~~~~~~~~~~~
In file included from
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:26:0,
                 from
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:23:
/home/emil/rfnoc/include/uhd/stream.hpp:58:16: note: previous definition of
=E2=80=98struct uhd::stream_args_t=E2=80=99
 struct UHD_API stream_args_t
                ^~~~~~~~~~~~~
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In
constructor =E2=80=98gr::uhd::usrp_source_impl::usrp_source_impl(const
uhd::device_addr_t&, const uhd::stream_args_t&, bool)=E2=80=99:
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:74:7: error:
class =E2=80=98gr::uhd::usrp_source_impl=E2=80=99 does not have any field n=
amed
=E2=80=98_recv_timeout=E2=80=99
       _recv_timeout(0.1), // seconds
       ^~~~~~~~~~~~~
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:75:7: error:
class =E2=80=98gr::uhd::usrp_source_impl=E2=80=99 does not have any field n=
amed
=E2=80=98_recv_one_packet=E2=80=99
       _recv_one_packet(true),
       ^~~~~~~~~~~~~~~~
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In member
function =E2=80=98virtual void gr::uhd::usrp_source_impl::set_recv_timeout(=
double,
bool)=E2=80=99:
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:464:5: error:
=E2=80=98_recv_timeout=E2=80=99 was not declared in this scope
     _recv_timeout =3D timeout;
     ^~~~~~~~~~~~~
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:464:5: note:
suggested alternative: =E2=80=98set_recv_timeout=E2=80=99
     _recv_timeout =3D timeout;
     ^~~~~~~~~~~~~
     set_recv_timeout
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:465:5: error:
=E2=80=98_recv_one_packet=E2=80=99 was not declared in this scope
     _recv_one_packet =3D one_packet;
     ^~~~~~~~~~~~~~~~
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:465:5: note:
suggested alternative: =E2=80=98one_packet=E2=80=99
     _recv_one_packet =3D one_packet;
     ^~~~~~~~~~~~~~~~
     one_packet
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In member
function =E2=80=98void gr::uhd::usrp_source_impl::flush()=E2=80=99:
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:512:29: error:
=E2=80=98using element_type =3D class uhd::device {aka class uhd::device}=
=E2=80=99 has no
member named =E2=80=98recv=E2=80=99
         _dev->get_device()->recv(outputs,
                             ^~~~
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:516:49: error:
=E2=80=98RECV_MODE_FULL_BUFF=E2=80=99 is not a member of =E2=80=98uhd::devi=
ce=E2=80=99
                                  ::uhd::device::RECV_MODE_FULL_BUFF,
                                                 ^~~~~~~~~~~~~~~~~~~
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In member
function =E2=80=98virtual int gr::uhd::usrp_source_impl::work(int,
gr_vector_const_void_star&, gr_vector_void_star&)=E2=80=99:
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:600:44: error:
=E2=80=98using element_type =3D class uhd::device {aka class uhd::device}=
=E2=80=99 has no
member named =E2=80=98recv=E2=80=99
     size_t num_samps =3D _dev->get_device()->recv(output_items,
                                            ^~~~
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:604:64: error:
=E2=80=98RECV_MODE_FULL_BUFF=E2=80=99 is not a member of =E2=80=98uhd::devi=
ce=E2=80=99

 ::uhd::device::RECV_MODE_FULL_BUFF,

^~~~~~~~~~~~~~~~~~~
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:608:41: error:
=E2=80=98using element_type =3D class uhd::device {aka class uhd::device}=
=E2=80=99 has no
member named =E2=80=98recv=E2=80=99
         num_samps =3D _dev->get_device()->recv(output_items,
                                         ^~~~
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:612:61: error:
=E2=80=98RECV_MODE_ONE_PACKET=E2=80=99 is not a member of =E2=80=98uhd::dev=
ice=E2=80=99

::uhd::device::RECV_MODE_ONE_PACKET,

 ^~~~~~~~~~~~~~~~~~~~
gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/build.make:86: recipe for target
'gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_source_impl.cc.o' failed
make[2]: *** [gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_source_impl.cc.o]
Error 1
CMakeFiles/Makefile2:14726: recipe for target
'gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/all' failed
make[1]: *** [gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/all] Error 2
Makefile:162: recipe for target 'all' failed
make: *** [all] Error 2
[ERROR] Build failed. See output above for error messages.
[ERROR] Problem occurred while building package gnuradio:
Build failed.
[ERROR] Error installing package gnuradio. Aborting.

--000000000000fd4d1a05b0afb257
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<br><br>I am installing RFNOC using pyboms by follo=
wing instructions given on <br><a href=3D"https://kb.ettus.com/Getting_Star=
ted_with_RFNoC_Development">https://kb.ettus.com/Getting_Started_with_RFNoC=
_Development</a><br><br>However, during installation, there is an error (gi=
ven below). <br><div>Does anyone know what could be the issue?</div><div><b=
r></div><div>Thank you in advance on answers.<br></div><div><br></div><div>=
[ 86%] Building CXX object gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_sour=
ce_impl.cc.o<br>In file included from /home/emil/rfnoc/src/gnuradio/gnuradi=
o-runtime/include/gnuradio/rpcregisterhelpers.h:26:0,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnur=
adio/gnuradio-runtime/include/gnuradio/basic_block.h:42,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/g=
nuradio/gnuradio-runtime/include/gnuradio/block.h:27,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnur=
adio/gnuradio-runtime/include/gnuradio/sync_block.h:27,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/g=
nuradio/gr-uhd/include/gnuradio/uhd/usrp_block.h:26,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnur=
adio/gr-uhd/lib/usrp_block_impl.h:26,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/u=
srp_source_impl.h:23,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl=
.cc:24:<br>/home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/=
rpcmanager.h:56:17: warning: =E2=80=98template&lt;class&gt; class std::auto=
_ptr=E2=80=99 is deprecated [-Wdeprecated-declarations]<br>=C2=A0 =C2=A0 =
=C2=A0static std::auto_ptr&lt;rpcserver_booter_base&gt; boot;<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~<br>In file inc=
luded from /usr/include/c++/7/bits/locale_conv.h:41:0,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /usr/include/c++/7/locale=
:43,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from =
/usr/include/boost/format.hpp:23,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/include/uhd/types/dict.ipp:12=
,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /ho=
me/emil/rfnoc/include/uhd/types/dict.hpp:154,<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/include/uhd/typ=
es/device_addr.hpp:11,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0from /home/emil/rfnoc/include/uhd/stream.hpp:11,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/s=
rc/gnuradio/gr-uhd/lib/gr_uhd_common.h:26,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd=
/lib/usrp_source_impl.cc:23:<br>/usr/include/c++/7/bits/unique_ptr.h:51:28:=
 note: declared here<br>=C2=A0 =C2=A0template&lt;typename&gt; class auto_pt=
r;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~<br>In file included from /home/emil/r=
fnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregisterhelpers.h:26=
:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /=
home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/basic_block.=
h:42,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from=
 /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/block.h:27=
,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /ho=
me/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/sync_block.h:2=
7,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /h=
ome/emil/rfnoc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_block.h:26,<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/e=
mil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_block_impl.h:26,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/g=
nuradio/gr-uhd/lib/usrp_source_impl.h:23,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd=
/lib/usrp_source_impl.cc:24:<br>/home/emil/rfnoc/src/gnuradio/gnuradio-runt=
ime/include/gnuradio/rpcmanager.h:57:17: warning: =E2=80=98template&lt;clas=
s&gt; class std::auto_ptr=E2=80=99 is deprecated [-Wdeprecated-declarations=
]<br>=C2=A0 =C2=A0 =C2=A0static std::auto_ptr&lt;rpcserver_booter_aggregato=
r&gt; aggregator;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0^~~~~~~~<br>In file included from /usr/include/c++/7/bits/locale_=
conv.h:41:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0from /usr/include/c++/7/locale:43,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /usr/include/boost/format.hpp:23,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/=
rfnoc/include/uhd/types/dict.ipp:12,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/include/uhd/types/dict.hpp=
:154,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from=
 /home/emil/rfnoc/include/uhd/types/device_addr.hpp:11,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/inclu=
de/uhd/stream.hpp:11,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:=
26,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /=
home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:23:<br>/usr/inc=
lude/c++/7/bits/unique_ptr.h:51:28: note: declared here<br>=C2=A0 =C2=A0tem=
plate&lt;typename&gt; class auto_ptr;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~<br=
>In file included from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source=
_impl.h:24:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:24:=
<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_source.h=
:31:19: error: redefinition of =E2=80=98struct uhd::stream_args_t=E2=80=99<=
br>=C2=A0struct GR_UHD_API stream_args_t {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~<br>In file included =
from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:26:0,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/=
rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:23:<br>/home/emil/rfnoc/i=
nclude/uhd/stream.hpp:58:16: note: previous definition of =E2=80=98struct u=
hd::stream_args_t=E2=80=99<br>=C2=A0struct UHD_API stream_args_t<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~<br>/home/emi=
l/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In constructor =E2=80=
=98gr::uhd::usrp_source_impl::usrp_source_impl(const uhd::device_addr_t&amp=
;, const uhd::stream_args_t&amp;, bool)=E2=80=99:<br>/home/emil/rfnoc/src/g=
nuradio/gr-uhd/lib/usrp_source_impl.cc:74:7: error: class =E2=80=98gr::uhd:=
:usrp_source_impl=E2=80=99 does not have any field named =E2=80=98_recv_tim=
eout=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0_recv_timeout(0.1), // seconds<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~<br>/home/emil/rfnoc/src/gnuradi=
o/gr-uhd/lib/usrp_source_impl.cc:75:7: error: class =E2=80=98gr::uhd::usrp_=
source_impl=E2=80=99 does not have any field named =E2=80=98_recv_one_packe=
t=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0_recv_one_packet(true),<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uh=
d/lib/usrp_source_impl.cc: In member function =E2=80=98virtual void gr::uhd=
::usrp_source_impl::set_recv_timeout(double, bool)=E2=80=99:<br>/home/emil/=
rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:464:5: error: =E2=80=98_r=
ecv_timeout=E2=80=99 was not declared in this scope<br>=C2=A0 =C2=A0 =C2=A0=
_recv_timeout =3D timeout;<br>=C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~<br>/home/em=
il/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:464:5: note: suggested=
 alternative: =E2=80=98set_recv_timeout=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0_re=
cv_timeout =3D timeout;<br>=C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~<br>=C2=A0 =C2=
=A0 =C2=A0set_recv_timeout<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp=
_source_impl.cc:465:5: error: =E2=80=98_recv_one_packet=E2=80=99 was not de=
clared in this scope<br>=C2=A0 =C2=A0 =C2=A0_recv_one_packet =3D one_packet=
;<br>=C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~<br>/home/emil/rfnoc/src/gnuradio/=
gr-uhd/lib/usrp_source_impl.cc:465:5: note: suggested alternative: =E2=80=
=98one_packet=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0_recv_one_packet =3D one_pack=
et;<br>=C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~<br>=C2=A0 =C2=A0 =C2=A0one_pack=
et<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In memb=
er function =E2=80=98void gr::uhd::usrp_source_impl::flush()=E2=80=99:<br>/=
home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:512:29: error: =
=E2=80=98using element_type =3D class uhd::device {aka class uhd::device}=
=E2=80=99 has no member named =E2=80=98recv=E2=80=99<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0_dev-&gt;get_device()-&gt;recv(outputs,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0^~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_sour=
ce_impl.cc:516:49: error: =E2=80=98RECV_MODE_FULL_BUFF=E2=80=99 is not a me=
mber of =E2=80=98uhd::device=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ::uhd::device::RECV_MODE_FULL_BUFF,<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0^~~~~~~~~~~~~~~~~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_sou=
rce_impl.cc: In member function =E2=80=98virtual int gr::uhd::usrp_source_i=
mpl::work(int, gr_vector_const_void_star&amp;, gr_vector_void_star&amp;)=E2=
=80=99:<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:600=
:44: error: =E2=80=98using element_type =3D class uhd::device {aka class uh=
d::device}=E2=80=99 has no member named =E2=80=98recv=E2=80=99<br>=C2=A0 =
=C2=A0 =C2=A0size_t num_samps =3D _dev-&gt;get_device()-&gt;recv(output_ite=
ms,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 ^~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_=
impl.cc:604:64: error: =E2=80=98RECV_MODE_FULL_BUFF=E2=80=99 is not a membe=
r of =E2=80=98uhd::device=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0::uhd::de=
vice::RECV_MODE_FULL_BUFF,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~~~~~~~<br>/home/emil/rfnoc/src=
/gnuradio/gr-uhd/lib/usrp_source_impl.cc:608:41: error: =E2=80=98using elem=
ent_type =3D class uhd::device {aka class uhd::device}=E2=80=99 has no memb=
er named =E2=80=98recv=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0num_sa=
mps =3D _dev-&gt;get_device()-&gt;recv(output_items,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~<br>/home/emil/r=
fnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:612:61: error: =E2=80=98RE=
CV_MODE_ONE_PACKET=E2=80=99 is not a member of =E2=80=98uhd::device=E2=80=
=99<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ::uhd::device::RECV_MODE_ONE_PACKET,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~~~=
<br>gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/build.make:86: recipe for target=
 &#39;gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_source_impl.cc.o&#39; fai=
led<br>make[2]: *** [gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_source_imp=
l.cc.o] Error 1<br>CMakeFiles/Makefile2:14726: recipe for target &#39;gr-uh=
d/lib/CMakeFiles/gnuradio-uhd.dir/all&#39; failed<br>make[1]: *** [gr-uhd/l=
ib/CMakeFiles/gnuradio-uhd.dir/all] Error 2<br>Makefile:162: recipe for tar=
get &#39;all&#39; failed<br>make: *** [all] Error 2<br>[ERROR] Build failed=
. See output above for error messages.<br>[ERROR] Problem occurred while bu=
ilding package gnuradio:<br>Build failed.<br>[ERROR] Error installing packa=
ge gnuradio. Aborting.<br></div></div>

--000000000000fd4d1a05b0afb257--


--===============5302818008987205614==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5302818008987205614==--

