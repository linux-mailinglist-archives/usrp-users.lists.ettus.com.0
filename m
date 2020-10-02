Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C7928140A
	for <lists+usrp-users@lfdr.de>; Fri,  2 Oct 2020 15:31:40 +0200 (CEST)
Received: from [::1] (port=40036 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kOL9t-0003nd-Jr; Fri, 02 Oct 2020 09:31:37 -0400
Received: from mail-ej1-f50.google.com ([209.85.218.50]:42727)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kOL9p-0003hI-DU
 for usrp-users@lists.ettus.com; Fri, 02 Oct 2020 09:31:33 -0400
Received: by mail-ej1-f50.google.com with SMTP id q13so1979209ejo.9
 for <usrp-users@lists.ettus.com>; Fri, 02 Oct 2020 06:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8Se06nbI/NKGovagBksYIbmPxLIuzBvvQ7rtdFLN1XA=;
 b=Tw+KpbruioVEQ5MFpVFNd44FqfMgsODSPU+nnyFv9U9d6cG9oALFP4Xlbki6Al+FTo
 yDSzh7C0UAM3zDxssu0bOy4bI63uZ2EkpNTNEdR+zxBasegs4koYoMC7VVe2Z6cHP+57
 gNU4gMr9f63lsIYRLc+ns8pavhZ5vmhll7Ec+/TJRqBszv8aw0nPsTwqPvUXZvGojC2d
 OiShuVqOtfIICOeddOjhMKJV/7kH5cgeGpfUhNKB85exMKqc4eJLUBU6EmcUsi20sFfX
 z/5uvNv1cjXQyNFjtL/Gg/eS1RqpihOmqJHAVPC+v3MzZGR1xY5hWznnHih4e/UUq7DY
 keGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8Se06nbI/NKGovagBksYIbmPxLIuzBvvQ7rtdFLN1XA=;
 b=r1dPzqNI0F6K6Pi7M9k3JAUadKk8v6vHpyfYyYN6Z2MDvMCCAmFWxiWpvxWOzztKKu
 dMaMojSsnAHBgHQAZoUfcMR+X0+SJvcPx8C/6ysq9jyxC21sdCcjQB/DyXHxB9NKrrSv
 kscWeL/8H9tbTYOtl72E25Mb7mpIVaXQQI7v3aA9NfA0adEaZC4Tzr3aMMoWq/rS3Y1X
 syoOAj+MLppVJcBDuEfKlGLDFce+trAT5vse+CGpthzhUsd/pj6yF3M4bnQIbYQgSCSC
 zMlUbzFgf6qmgEfoZ7nd/fPz5hVAe2VwoVGgHPZIpRnCpp9hCRDs1nT9ZYAXwm5BYted
 VGpw==
X-Gm-Message-State: AOAM530W1Sps1mM7t5jt6tWQndWhJbJSeGuo9umMOXqnepy9pHPBe7jH
 61x6FOJEVaAvJzcMBRukrbUbaUHZykeyVSp1dfxpJA7kJhwNJQ==
X-Google-Smtp-Source: ABdhPJxvIKIO9bU+E/8Ct91VIXQDJWIsMfOsysYXvalXIUHaSiyuSxlA3KVJnsC91hgkwUOEXEDwXOj35joGKXzTzl8=
X-Received: by 2002:a17:906:7116:: with SMTP id
 x22mr2347970ejj.426.1601645452309; 
 Fri, 02 Oct 2020 06:30:52 -0700 (PDT)
MIME-Version: 1.0
References: <CADrptxXFegaW5Eiy8Vj18PJ+w0H6ecbJPpaMNKNPc0J7qEnz9w@mail.gmail.com>
In-Reply-To: <CADrptxXFegaW5Eiy8Vj18PJ+w0H6ecbJPpaMNKNPc0J7qEnz9w@mail.gmail.com>
Date: Fri, 2 Oct 2020 09:30:41 -0400
Message-ID: <CAGNhwTP2Bc2HyNGoz562i-mQDDy73kKtSMiMDXKK+nrwW16F5Q@mail.gmail.com>
To: Emil Bjelski <emil.bjelski@gmail.com>
Cc: USRP Users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Error while installing RFNOC on ubuntu 18.04.5
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============1301755606244105445=="
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

--===============1301755606244105445==
Content-Type: multipart/alternative; boundary="0000000000003dd1b005b0b024fd"

--0000000000003dd1b005b0b024fd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Emil - What branch of UHD and GR are you trying to build? That AppNote
is a bit dated, and needs a serious update! If what you want is the latest
releases of UHD and GR, for many OSs those are available for download and
install as precompiled binaries. - MLD

On Fri, Oct 2, 2020 at 8:59 AM Emil Bjelski via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi All,
>
> I am installing RFNOC using pyboms by following instructions given on
> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>
> However, during installation, there is an error (given below).
> Does anyone know what could be the issue?
>
> Thank you in advance on answers.
>
> [ 86%] Building CXX object
> gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_source_impl.cc.o
> In file included from
> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregist=
erhelpers.h:26:0,
>                  from
> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/basic_blo=
ck.h:42,
>                  from
> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/block.h:2=
7,
>                  from
> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/sync_bloc=
k.h:27,
>                  from
> /home/emil/rfnoc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_block.h:26=
,
>                  from
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_block_impl.h:26,
>                  from
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.h:23,
>                  from
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:24:
> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanage=
r.h:56:17:
> warning: =E2=80=98template<class> class std::auto_ptr=E2=80=99 is depreca=
ted
> [-Wdeprecated-declarations]
>      static std::auto_ptr<rpcserver_booter_base> boot;
>                  ^~~~~~~~
> In file included from /usr/include/c++/7/bits/locale_conv.h:41:0,
>                  from /usr/include/c++/7/locale:43,
>                  from /usr/include/boost/format.hpp:23,
>                  from /home/emil/rfnoc/include/uhd/types/dict.ipp:12,
>                  from /home/emil/rfnoc/include/uhd/types/dict.hpp:154,
>                  from
> /home/emil/rfnoc/include/uhd/types/device_addr.hpp:11,
>                  from /home/emil/rfnoc/include/uhd/stream.hpp:11,
>                  from
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:26,
>                  from
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:23:
> /usr/include/c++/7/bits/unique_ptr.h:51:28: note: declared here
>    template<typename> class auto_ptr;
>                             ^~~~~~~~
> In file included from
> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregist=
erhelpers.h:26:0,
>                  from
> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/basic_blo=
ck.h:42,
>                  from
> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/block.h:2=
7,
>                  from
> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/sync_bloc=
k.h:27,
>                  from
> /home/emil/rfnoc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_block.h:26=
,
>                  from
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_block_impl.h:26,
>                  from
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.h:23,
>                  from
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:24:
> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanage=
r.h:57:17:
> warning: =E2=80=98template<class> class std::auto_ptr=E2=80=99 is depreca=
ted
> [-Wdeprecated-declarations]
>      static std::auto_ptr<rpcserver_booter_aggregator> aggregator;
>                  ^~~~~~~~
> In file included from /usr/include/c++/7/bits/locale_conv.h:41:0,
>                  from /usr/include/c++/7/locale:43,
>                  from /usr/include/boost/format.hpp:23,
>                  from /home/emil/rfnoc/include/uhd/types/dict.ipp:12,
>                  from /home/emil/rfnoc/include/uhd/types/dict.hpp:154,
>                  from
> /home/emil/rfnoc/include/uhd/types/device_addr.hpp:11,
>                  from /home/emil/rfnoc/include/uhd/stream.hpp:11,
>                  from
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:26,
>                  from
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:23:
> /usr/include/c++/7/bits/unique_ptr.h:51:28: note: declared here
>    template<typename> class auto_ptr;
>                             ^~~~~~~~
> In file included from
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.h:24:0,
>                  from
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:24:
> /home/emil/rfnoc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_source.h:3=
1:19:
> error: redefinition of =E2=80=98struct uhd::stream_args_t=E2=80=99
>  struct GR_UHD_API stream_args_t {
>                    ^~~~~~~~~~~~~
> In file included from
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:26:0,
>                  from
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:23:
> /home/emil/rfnoc/include/uhd/stream.hpp:58:16: note: previous definition
> of =E2=80=98struct uhd::stream_args_t=E2=80=99
>  struct UHD_API stream_args_t
>                 ^~~~~~~~~~~~~
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In
> constructor =E2=80=98gr::uhd::usrp_source_impl::usrp_source_impl(const
> uhd::device_addr_t&, const uhd::stream_args_t&, bool)=E2=80=99:
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:74:7: error:
> class =E2=80=98gr::uhd::usrp_source_impl=E2=80=99 does not have any field=
 named
> =E2=80=98_recv_timeout=E2=80=99
>        _recv_timeout(0.1), // seconds
>        ^~~~~~~~~~~~~
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:75:7: error:
> class =E2=80=98gr::uhd::usrp_source_impl=E2=80=99 does not have any field=
 named
> =E2=80=98_recv_one_packet=E2=80=99
>        _recv_one_packet(true),
>        ^~~~~~~~~~~~~~~~
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In member
> function =E2=80=98virtual void gr::uhd::usrp_source_impl::set_recv_timeou=
t(double,
> bool)=E2=80=99:
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:464:5: error=
:
> =E2=80=98_recv_timeout=E2=80=99 was not declared in this scope
>      _recv_timeout =3D timeout;
>      ^~~~~~~~~~~~~
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:464:5: note:
> suggested alternative: =E2=80=98set_recv_timeout=E2=80=99
>      _recv_timeout =3D timeout;
>      ^~~~~~~~~~~~~
>      set_recv_timeout
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:465:5: error=
:
> =E2=80=98_recv_one_packet=E2=80=99 was not declared in this scope
>      _recv_one_packet =3D one_packet;
>      ^~~~~~~~~~~~~~~~
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:465:5: note:
> suggested alternative: =E2=80=98one_packet=E2=80=99
>      _recv_one_packet =3D one_packet;
>      ^~~~~~~~~~~~~~~~
>      one_packet
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In member
> function =E2=80=98void gr::uhd::usrp_source_impl::flush()=E2=80=99:
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:512:29:
> error: =E2=80=98using element_type =3D class uhd::device {aka class uhd::=
device}=E2=80=99 has
> no member named =E2=80=98recv=E2=80=99
>          _dev->get_device()->recv(outputs,
>                              ^~~~
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:516:49:
> error: =E2=80=98RECV_MODE_FULL_BUFF=E2=80=99 is not a member of =E2=80=98=
uhd::device=E2=80=99
>                                   ::uhd::device::RECV_MODE_FULL_BUFF,
>                                                  ^~~~~~~~~~~~~~~~~~~
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In member
> function =E2=80=98virtual int gr::uhd::usrp_source_impl::work(int,
> gr_vector_const_void_star&, gr_vector_void_star&)=E2=80=99:
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:600:44:
> error: =E2=80=98using element_type =3D class uhd::device {aka class uhd::=
device}=E2=80=99 has
> no member named =E2=80=98recv=E2=80=99
>      size_t num_samps =3D _dev->get_device()->recv(output_items,
>                                             ^~~~
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:604:64:
> error: =E2=80=98RECV_MODE_FULL_BUFF=E2=80=99 is not a member of =E2=80=98=
uhd::device=E2=80=99
>
>  ::uhd::device::RECV_MODE_FULL_BUFF,
>
> ^~~~~~~~~~~~~~~~~~~
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:608:41:
> error: =E2=80=98using element_type =3D class uhd::device {aka class uhd::=
device}=E2=80=99 has
> no member named =E2=80=98recv=E2=80=99
>          num_samps =3D _dev->get_device()->recv(output_items,
>                                          ^~~~
> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:612:61:
> error: =E2=80=98RECV_MODE_ONE_PACKET=E2=80=99 is not a member of =E2=80=
=98uhd::device=E2=80=99
>
> ::uhd::device::RECV_MODE_ONE_PACKET,
>
>  ^~~~~~~~~~~~~~~~~~~~
> gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/build.make:86: recipe for target
> 'gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_source_impl.cc.o' failed
> make[2]: ***
> [gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_source_impl.cc.o] Error 1
> CMakeFiles/Makefile2:14726: recipe for target
> 'gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/all' failed
> make[1]: *** [gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/all] Error 2
> Makefile:162: recipe for target 'all' failed
> make: *** [all] Error 2
> [ERROR] Build failed. See output above for error messages.
> [ERROR] Problem occurred while building package gnuradio:
> Build failed.
> [ERROR] Error installing package gnuradio. Aborting.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000003dd1b005b0b024fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0Emil - What branch of UHD and GR =
are you trying to build? That AppNote is a bit dated, and needs a serious u=
pdate! If what you want is the latest releases of UHD and GR, for many OSs =
those are available for download and install as precompiled binaries. - MLD=
<br><br></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Fri, Oct 2, 2020 at 8:59 AM Emil Bjelski via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi All,<br><br>I am installing RFNOC using pyboms by following ins=
tructions given on <br><a href=3D"https://kb.ettus.com/Getting_Started_with=
_RFNoC_Development" target=3D"_blank">https://kb.ettus.com/Getting_Started_=
with_RFNoC_Development</a><br><br>However, during installation, there is an=
 error (given below). <br><div>Does anyone know what could be the issue?</d=
iv><div><br></div><div>Thank you in advance on answers.<br></div><div><br><=
/div><div>[ 86%] Building CXX object gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir=
/usrp_source_impl.cc.o<br>In file included from /home/emil/rfnoc/src/gnurad=
io/gnuradio-runtime/include/gnuradio/rpcregisterhelpers.h:26:0,<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfno=
c/src/gnuradio/gnuradio-runtime/include/gnuradio/basic_block.h:42,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/=
rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/block.h:27,<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfno=
c/src/gnuradio/gnuradio-runtime/include/gnuradio/sync_block.h:27,<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfn=
oc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_block.h:26,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/s=
rc/gnuradio/gr-uhd/lib/usrp_block_impl.h:26,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uh=
d/lib/usrp_source_impl.h:23,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_sour=
ce_impl.cc:24:<br>/home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gn=
uradio/rpcmanager.h:56:17: warning: =E2=80=98template&lt;class&gt; class st=
d::auto_ptr=E2=80=99 is deprecated [-Wdeprecated-declarations]<br>=C2=A0 =
=C2=A0 =C2=A0static std::auto_ptr&lt;rpcserver_booter_base&gt; boot;<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~<br>In f=
ile included from /usr/include/c++/7/bits/locale_conv.h:41:0,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /usr/include/c++/7=
/locale:43,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0from /usr/include/boost/format.hpp:23,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/include/uhd/types/d=
ict.ipp:12,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0from /home/emil/rfnoc/include/uhd/types/dict.hpp:154,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/inclu=
de/uhd/types/device_addr.hpp:11,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/include/uhd/stream.hpp:11,<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/e=
mil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:26,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnur=
adio/gr-uhd/lib/usrp_source_impl.cc:23:<br>/usr/include/c++/7/bits/unique_p=
tr.h:51:28: note: declared here<br>=C2=A0 =C2=A0template&lt;typename&gt; cl=
ass auto_ptr;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~<br>In file included from=
 /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregiste=
rhelpers.h:26:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0from /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio=
/basic_block.h:42,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnura=
dio/block.h:27,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0from /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/=
sync_block.h:27,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_=
block.h:26,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_block_impl.h:26,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/em=
il/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.h:23,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/g=
nuradio/gr-uhd/lib/usrp_source_impl.cc:24:<br>/home/emil/rfnoc/src/gnuradio=
/gnuradio-runtime/include/gnuradio/rpcmanager.h:57:17: warning: =E2=80=98te=
mplate&lt;class&gt; class std::auto_ptr=E2=80=99 is deprecated [-Wdeprecate=
d-declarations]<br>=C2=A0 =C2=A0 =C2=A0static std::auto_ptr&lt;rpcserver_bo=
oter_aggregator&gt; aggregator;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~<br>In file included from /usr/include/c++/=
7/bits/locale_conv.h:41:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0from /usr/include/c++/7/locale:43,<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /usr/include/boost/format.hp=
p:23,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from=
 /home/emil/rfnoc/include/uhd/types/dict.ipp:12,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/include/uhd/=
types/dict.hpp:154,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0from /home/emil/rfnoc/include/uhd/types/device_addr.hpp:11,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/em=
il/rfnoc/include/uhd/stream.hpp:11,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr=
_uhd_common.h:26,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc=
:23:<br>/usr/include/c++/7/bits/unique_ptr.h:51:28: note: declared here<br>=
=C2=A0 =C2=A0template&lt;typename&gt; class auto_ptr;<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ^~~~~~~~<br>In file included from /home/emil/rfnoc/src/gnuradio/gr-u=
hd/lib/usrp_source_impl.h:24:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_=
source_impl.cc:24:<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/include/gnuradio=
/uhd/usrp_source.h:31:19: error: redefinition of =E2=80=98struct uhd::strea=
m_args_t=E2=80=99<br>=C2=A0struct GR_UHD_API stream_args_t {<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~<br=
>In file included from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_comm=
on.h:26:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:23:<br=
>/home/emil/rfnoc/include/uhd/stream.hpp:58:16: note: previous definition o=
f =E2=80=98struct uhd::stream_args_t=E2=80=99<br>=C2=A0struct UHD_API strea=
m_args_t<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~=
~~~~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In =
constructor =E2=80=98gr::uhd::usrp_source_impl::usrp_source_impl(const uhd:=
:device_addr_t&amp;, const uhd::stream_args_t&amp;, bool)=E2=80=99:<br>/hom=
e/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:74:7: error: class=
 =E2=80=98gr::uhd::usrp_source_impl=E2=80=99 does not have any field named =
=E2=80=98_recv_timeout=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0_recv_timeout=
(0.1), // seconds<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~<br>/home/emil=
/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:75:7: error: class =E2=
=80=98gr::uhd::usrp_source_impl=E2=80=99 does not have any field named =E2=
=80=98_recv_one_packet=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0_recv_one_pac=
ket(true),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~<br>/home/emil/rfn=
oc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In member function =E2=80=
=98virtual void gr::uhd::usrp_source_impl::set_recv_timeout(double, bool)=
=E2=80=99:<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:=
464:5: error: =E2=80=98_recv_timeout=E2=80=99 was not declared in this scop=
e<br>=C2=A0 =C2=A0 =C2=A0_recv_timeout =3D timeout;<br>=C2=A0 =C2=A0 =C2=A0=
^~~~~~~~~~~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.=
cc:464:5: note: suggested alternative: =E2=80=98set_recv_timeout=E2=80=99<b=
r>=C2=A0 =C2=A0 =C2=A0_recv_timeout =3D timeout;<br>=C2=A0 =C2=A0 =C2=A0^~~=
~~~~~~~~~~<br>=C2=A0 =C2=A0 =C2=A0set_recv_timeout<br>/home/emil/rfnoc/src/=
gnuradio/gr-uhd/lib/usrp_source_impl.cc:465:5: error: =E2=80=98_recv_one_pa=
cket=E2=80=99 was not declared in this scope<br>=C2=A0 =C2=A0 =C2=A0_recv_o=
ne_packet =3D one_packet;<br>=C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~<br>/home/=
emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:465:5: note: suggest=
ed alternative: =E2=80=98one_packet=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0_recv_o=
ne_packet =3D one_packet;<br>=C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~<br>=C2=A0=
 =C2=A0 =C2=A0one_packet<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_s=
ource_impl.cc: In member function =E2=80=98void gr::uhd::usrp_source_impl::=
flush()=E2=80=99:<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_i=
mpl.cc:512:29: error: =E2=80=98using element_type =3D class uhd::device {ak=
a class uhd::device}=E2=80=99 has no member named =E2=80=98recv=E2=80=99<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_dev-&gt;get_device()-&gt;recv(outputs,<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~<br>/home/emil/rfnoc/src/gnuradio/gr-=
uhd/lib/usrp_source_impl.cc:516:49: error: =E2=80=98RECV_MODE_FULL_BUFF=E2=
=80=99 is not a member of =E2=80=98uhd::device=E2=80=99<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ::uhd::device::RECV_MODE_FULL_BUFF,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~~<br>/home/emil/rfnoc/src/gnuradi=
o/gr-uhd/lib/usrp_source_impl.cc: In member function =E2=80=98virtual int g=
r::uhd::usrp_source_impl::work(int, gr_vector_const_void_star&amp;, gr_vect=
or_void_star&amp;)=E2=80=99:<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/us=
rp_source_impl.cc:600:44: error: =E2=80=98using element_type =3D class uhd:=
:device {aka class uhd::device}=E2=80=99 has no member named =E2=80=98recv=
=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0size_t num_samps =3D _dev-&gt;get_device()=
-&gt;recv(output_items,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uh=
d/lib/usrp_source_impl.cc:604:64: error: =E2=80=98RECV_MODE_FULL_BUFF=E2=80=
=99 is not a member of =E2=80=98uhd::device=E2=80=99<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0::uhd::device::RECV_MODE_FULL_BUFF,<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~~~~~~~<br=
>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:608:41: error=
: =E2=80=98using element_type =3D class uhd::device {aka class uhd::device}=
=E2=80=99 has no member named =E2=80=98recv=E2=80=99<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0num_samps =3D _dev-&gt;get_device()-&gt;recv(output_items,=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0^~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:612=
:61: error: =E2=80=98RECV_MODE_ONE_PACKET=E2=80=99 is not a member of =E2=
=80=98uhd::device=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ::uhd::device::RECV_MODE_ONE_PACK=
ET,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0^~~~~~~~~~~~~~~~~~~~<br>gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/build.mak=
e:86: recipe for target &#39;gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_so=
urce_impl.cc.o&#39; failed<br>make[2]: *** [gr-uhd/lib/CMakeFiles/gnuradio-=
uhd.dir/usrp_source_impl.cc.o] Error 1<br>CMakeFiles/Makefile2:14726: recip=
e for target &#39;gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/all&#39; failed<br=
>make[1]: *** [gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/all] Error 2<br>Makef=
ile:162: recipe for target &#39;all&#39; failed<br>make: *** [all] Error 2<=
br>[ERROR] Build failed. See output above for error messages.<br>[ERROR] Pr=
oblem occurred while building package gnuradio:<br>Build failed.<br>[ERROR]=
 Error installing package gnuradio. Aborting.<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000003dd1b005b0b024fd--


--===============1301755606244105445==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1301755606244105445==--

