Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF76281598
	for <lists+usrp-users@lfdr.de>; Fri,  2 Oct 2020 16:45:59 +0200 (CEST)
Received: from [::1] (port=40666 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kOMJn-000052-EJ; Fri, 02 Oct 2020 10:45:55 -0400
Received: from mail-ej1-f49.google.com ([209.85.218.49]:38303)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <emil.bjelski@gmail.com>)
 id 1kOMJj-0008QA-95
 for usrp-users@lists.ettus.com; Fri, 02 Oct 2020 10:45:51 -0400
Received: by mail-ej1-f49.google.com with SMTP id ce10so2346694ejc.5
 for <usrp-users@lists.ettus.com>; Fri, 02 Oct 2020 07:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yWZF7B2f2ANjGQUneECcmxmAgjWiEaL3DnQG80VH7i8=;
 b=jURXTbgIcN4ZZSNoqebxepPQrC5M2BvpZTyPv2Eo7ANt+9TCCuHH1FElVRk8RFO++g
 4MOp7ZykgtoXry8xJfHlwM2RizPzJSeRXtZ5hqlQ0Km9Uzvzxhn0+mkQL6p9ki3b5WGN
 CkYYSq8MhtJ4cdb1YYRs5WBMVCjZVzv8WD8qroSjTe2OWLY2sJ2OVjnbUvP5+GUZ4ZiC
 chmBdNjKThxcRzCSh1FdmVs+mVwzUI1oNv0+SkVsJNyO82ysCKBo6pMkeeKg2gSj7IdJ
 K4qL5m2CNE/9JZwLwzpisXdKG93V2S0D5XPwk/cCUmUvdD7zgK+0vECz7tW4a1ZiwWkX
 0I3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yWZF7B2f2ANjGQUneECcmxmAgjWiEaL3DnQG80VH7i8=;
 b=VcZjrkdNkvC4+J79yDuOwEJipNFH0KJwTHvVJK3v2kTX7eqC4I7qCyFiKNq/vgqkLd
 f7gPlprOuoEkc609dulOOAhOlVUgJ2+ELYvSCQrgby1q4T3XFRgKKNPoKJPtJy90+0L/
 1o2xX062OkltCHMD6Y8KA+zVWrH9/uRg7FT6L4V1vO3Diz2r16dKV3bTtBhg1Z3MAma6
 hQJOjwBt+hgSQTY/Fyg0EjM3mTp5cLs8ozVhFmMXf4f27yyghQIsrNl2lvDVj52bF36B
 QWOCtIMBSuvkLPdJnLID/UTzgKFlGAdAMyiVW8SgfsEcROFGdOWtJ8Ft7v3ZbdOb0hqT
 u1Mg==
X-Gm-Message-State: AOAM530bkG/N+Dw+bc+ynp3egc+YPpx5it2+cEGVPCvEtbXupd+kEyyJ
 7DjMl75/JEeyktyxr8UHBG9hp0/W0okWxz1xy9o=
X-Google-Smtp-Source: ABdhPJxTQADFkh5BtcW3rmJPPx2KxMeBDSvlTkrMdi/AFF/qRKt8NckJB3NIF+UMXwAFsP5YCHsc/53Mca80ONSBX0U=
X-Received: by 2002:a17:906:39c8:: with SMTP id
 i8mr2453985eje.299.1601649910200; 
 Fri, 02 Oct 2020 07:45:10 -0700 (PDT)
MIME-Version: 1.0
References: <CADrptxXFegaW5Eiy8Vj18PJ+w0H6ecbJPpaMNKNPc0J7qEnz9w@mail.gmail.com>
 <CAGNhwTP2Bc2HyNGoz562i-mQDDy73kKtSMiMDXKK+nrwW16F5Q@mail.gmail.com>
In-Reply-To: <CAGNhwTP2Bc2HyNGoz562i-mQDDy73kKtSMiMDXKK+nrwW16F5Q@mail.gmail.com>
Date: Fri, 2 Oct 2020 16:44:58 +0200
Message-ID: <CADrptxXUomCBdB9-Ybzoeiiaad_i5XJVNv7JDAfQUc3iVqrUcg@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
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
From: Emil Bjelski via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Emil Bjelski <emil.bjelski@gmail.com>
Content-Type: multipart/mixed; boundary="===============1673652619559652259=="
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

--===============1673652619559652259==
Content-Type: multipart/alternative; boundary="000000000000f3bd2305b0b12d92"

--000000000000f3bd2305b0b12d92
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Michael,

I would like to install the latest release and UHD 4.0.
Could you point me where I can find the precompiled  binaries?

Thank you a lot on your reply,

Emil

On Fri, Oct 2, 2020 at 3:30 PM Michael Dickens <michael.dickens@ettus.com>
wrote:

> Hi Emil - What branch of UHD and GR are you trying to build? That AppNote
> is a bit dated, and needs a serious update! If what you want is the lates=
t
> releases of UHD and GR, for many OSs those are available for download and
> install as precompiled binaries. - MLD
>
> On Fri, Oct 2, 2020 at 8:59 AM Emil Bjelski via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi All,
>>
>> I am installing RFNOC using pyboms by following instructions given on
>> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>>
>> However, during installation, there is an error (given below).
>> Does anyone know what could be the issue?
>>
>> Thank you in advance on answers.
>>
>> [ 86%] Building CXX object
>> gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_source_impl.cc.o
>> In file included from
>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregis=
terhelpers.h:26:0,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/basic_bl=
ock.h:42,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/block.h:=
27,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/sync_blo=
ck.h:27,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_block.h:2=
6,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_block_impl.h:26,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.h:23,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:24:
>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanag=
er.h:56:17:
>> warning: =E2=80=98template<class> class std::auto_ptr=E2=80=99 is deprec=
ated
>> [-Wdeprecated-declarations]
>>      static std::auto_ptr<rpcserver_booter_base> boot;
>>                  ^~~~~~~~
>> In file included from /usr/include/c++/7/bits/locale_conv.h:41:0,
>>                  from /usr/include/c++/7/locale:43,
>>                  from /usr/include/boost/format.hpp:23,
>>                  from /home/emil/rfnoc/include/uhd/types/dict.ipp:12,
>>                  from /home/emil/rfnoc/include/uhd/types/dict.hpp:154,
>>                  from
>> /home/emil/rfnoc/include/uhd/types/device_addr.hpp:11,
>>                  from /home/emil/rfnoc/include/uhd/stream.hpp:11,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:26,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:23:
>> /usr/include/c++/7/bits/unique_ptr.h:51:28: note: declared here
>>    template<typename> class auto_ptr;
>>                             ^~~~~~~~
>> In file included from
>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregis=
terhelpers.h:26:0,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/basic_bl=
ock.h:42,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/block.h:=
27,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/sync_blo=
ck.h:27,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_block.h:2=
6,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_block_impl.h:26,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.h:23,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:24:
>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanag=
er.h:57:17:
>> warning: =E2=80=98template<class> class std::auto_ptr=E2=80=99 is deprec=
ated
>> [-Wdeprecated-declarations]
>>      static std::auto_ptr<rpcserver_booter_aggregator> aggregator;
>>                  ^~~~~~~~
>> In file included from /usr/include/c++/7/bits/locale_conv.h:41:0,
>>                  from /usr/include/c++/7/locale:43,
>>                  from /usr/include/boost/format.hpp:23,
>>                  from /home/emil/rfnoc/include/uhd/types/dict.ipp:12,
>>                  from /home/emil/rfnoc/include/uhd/types/dict.hpp:154,
>>                  from
>> /home/emil/rfnoc/include/uhd/types/device_addr.hpp:11,
>>                  from /home/emil/rfnoc/include/uhd/stream.hpp:11,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:26,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:23:
>> /usr/include/c++/7/bits/unique_ptr.h:51:28: note: declared here
>>    template<typename> class auto_ptr;
>>                             ^~~~~~~~
>> In file included from
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.h:24:0,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:24:
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_source.h:=
31:19:
>> error: redefinition of =E2=80=98struct uhd::stream_args_t=E2=80=99
>>  struct GR_UHD_API stream_args_t {
>>                    ^~~~~~~~~~~~~
>> In file included from
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:26:0,
>>                  from
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:23:
>> /home/emil/rfnoc/include/uhd/stream.hpp:58:16: note: previous definition
>> of =E2=80=98struct uhd::stream_args_t=E2=80=99
>>  struct UHD_API stream_args_t
>>                 ^~~~~~~~~~~~~
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In
>> constructor =E2=80=98gr::uhd::usrp_source_impl::usrp_source_impl(const
>> uhd::device_addr_t&, const uhd::stream_args_t&, bool)=E2=80=99:
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:74:7: error=
:
>> class =E2=80=98gr::uhd::usrp_source_impl=E2=80=99 does not have any fiel=
d named
>> =E2=80=98_recv_timeout=E2=80=99
>>        _recv_timeout(0.1), // seconds
>>        ^~~~~~~~~~~~~
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:75:7: error=
:
>> class =E2=80=98gr::uhd::usrp_source_impl=E2=80=99 does not have any fiel=
d named
>> =E2=80=98_recv_one_packet=E2=80=99
>>        _recv_one_packet(true),
>>        ^~~~~~~~~~~~~~~~
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In member
>> function =E2=80=98virtual void gr::uhd::usrp_source_impl::set_recv_timeo=
ut(double,
>> bool)=E2=80=99:
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:464:5:
>> error: =E2=80=98_recv_timeout=E2=80=99 was not declared in this scope
>>      _recv_timeout =3D timeout;
>>      ^~~~~~~~~~~~~
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:464:5: note=
:
>> suggested alternative: =E2=80=98set_recv_timeout=E2=80=99
>>      _recv_timeout =3D timeout;
>>      ^~~~~~~~~~~~~
>>      set_recv_timeout
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:465:5:
>> error: =E2=80=98_recv_one_packet=E2=80=99 was not declared in this scope
>>      _recv_one_packet =3D one_packet;
>>      ^~~~~~~~~~~~~~~~
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:465:5: note=
:
>> suggested alternative: =E2=80=98one_packet=E2=80=99
>>      _recv_one_packet =3D one_packet;
>>      ^~~~~~~~~~~~~~~~
>>      one_packet
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In member
>> function =E2=80=98void gr::uhd::usrp_source_impl::flush()=E2=80=99:
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:512:29:
>> error: =E2=80=98using element_type =3D class uhd::device {aka class uhd:=
:device}=E2=80=99 has
>> no member named =E2=80=98recv=E2=80=99
>>          _dev->get_device()->recv(outputs,
>>                              ^~~~
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:516:49:
>> error: =E2=80=98RECV_MODE_FULL_BUFF=E2=80=99 is not a member of =E2=80=
=98uhd::device=E2=80=99
>>                                   ::uhd::device::RECV_MODE_FULL_BUFF,
>>                                                  ^~~~~~~~~~~~~~~~~~~
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In member
>> function =E2=80=98virtual int gr::uhd::usrp_source_impl::work(int,
>> gr_vector_const_void_star&, gr_vector_void_star&)=E2=80=99:
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:600:44:
>> error: =E2=80=98using element_type =3D class uhd::device {aka class uhd:=
:device}=E2=80=99 has
>> no member named =E2=80=98recv=E2=80=99
>>      size_t num_samps =3D _dev->get_device()->recv(output_items,
>>                                             ^~~~
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:604:64:
>> error: =E2=80=98RECV_MODE_FULL_BUFF=E2=80=99 is not a member of =E2=80=
=98uhd::device=E2=80=99
>>
>>  ::uhd::device::RECV_MODE_FULL_BUFF,
>>
>> ^~~~~~~~~~~~~~~~~~~
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:608:41:
>> error: =E2=80=98using element_type =3D class uhd::device {aka class uhd:=
:device}=E2=80=99 has
>> no member named =E2=80=98recv=E2=80=99
>>          num_samps =3D _dev->get_device()->recv(output_items,
>>                                          ^~~~
>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:612:61:
>> error: =E2=80=98RECV_MODE_ONE_PACKET=E2=80=99 is not a member of =E2=80=
=98uhd::device=E2=80=99
>>
>> ::uhd::device::RECV_MODE_ONE_PACKET,
>>
>>  ^~~~~~~~~~~~~~~~~~~~
>> gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/build.make:86: recipe for target
>> 'gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_source_impl.cc.o' failed
>> make[2]: ***
>> [gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_source_impl.cc.o] Error 1
>> CMakeFiles/Makefile2:14726: recipe for target
>> 'gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/all' failed
>> make[1]: *** [gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/all] Error 2
>> Makefile:162: recipe for target 'all' failed
>> make: *** [all] Error 2
>> [ERROR] Build failed. See output above for error messages.
>> [ERROR] Problem occurred while building package gnuradio:
>> Build failed.
>> [ERROR] Error installing package gnuradio. Aborting.
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000f3bd2305b0b12d92
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Michael,</div><div><br></div><div>I would like to =
install the latest release and UHD 4.0.</div><div>Could you point me where =
I can find the precompiled=C2=A0 binaries?</div><div><br></div><div>Thank y=
ou a lot on your reply,</div><div><br></div><div>Emil</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 2, 2=
020 at 3:30 PM Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.=
com">michael.dickens@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0Emi=
l - What branch of UHD and GR are you trying to build? That AppNote is a bi=
t dated, and needs a serious update! If what you want is the latest release=
s of UHD and GR, for many OSs those are available for download and install =
as precompiled binaries. - MLD<br><br></div><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 2, 2020 at 8:59 AM Emil Bjels=
ki via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi All,<br><br>I am =
installing RFNOC using pyboms by following instructions given on <br><a hre=
f=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_Development" target=3D=
"_blank">https://kb.ettus.com/Getting_Started_with_RFNoC_Development</a><br=
><br>However, during installation, there is an error (given below). <br><di=
v>Does anyone know what could be the issue?</div><div><br></div><div>Thank =
you in advance on answers.<br></div><div><br></div><div>[ 86%] Building CXX=
 object gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_source_impl.cc.o<br>In =
file included from /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/g=
nuradio/rpcregisterhelpers.h:26:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gnuradio-runt=
ime/include/gnuradio/basic_block.h:42,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gnuradio-=
runtime/include/gnuradio/block.h:27,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gnuradio-runt=
ime/include/gnuradio/sync_block.h:27,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/inclu=
de/gnuradio/uhd/usrp_block.h:26,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_=
block_impl.h:26,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.h:23,=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /hom=
e/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:24:<br>/home/emil/=
rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmanager.h:56:17: wa=
rning: =E2=80=98template&lt;class&gt; class std::auto_ptr=E2=80=99 is depre=
cated [-Wdeprecated-declarations]<br>=C2=A0 =C2=A0 =C2=A0static std::auto_p=
tr&lt;rpcserver_booter_base&gt; boot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~<br>In file included from /usr/include/=
c++/7/bits/locale_conv.h:41:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0from /usr/include/c++/7/locale:43,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /usr/include/boost/for=
mat.hpp:23,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0from /home/emil/rfnoc/include/uhd/types/dict.ipp:12,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/inclu=
de/uhd/types/dict.hpp:154,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/include/uhd/types/device_addr.hpp:11=
,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /ho=
me/emil/rfnoc/include/uhd/stream.hpp:11,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/li=
b/gr_uhd_common.h:26,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl=
.cc:23:<br>/usr/include/c++/7/bits/unique_ptr.h:51:28: note: declared here<=
br>=C2=A0 =C2=A0template&lt;typename&gt; class auto_ptr;<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ^~~~~~~~<br>In file included from /home/emil/rfnoc/src/gnuradio/=
gnuradio-runtime/include/gnuradio/rpcregisterhelpers.h:26:0,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/s=
rc/gnuradio/gnuradio-runtime/include/gnuradio/basic_block.h:42,<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfno=
c/src/gnuradio/gnuradio-runtime/include/gnuradio/block.h:27,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/s=
rc/gnuradio/gnuradio-runtime/include/gnuradio/sync_block.h:27,<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfno=
c/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_block.h:26,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/s=
rc/gnuradio/gr-uhd/lib/usrp_block_impl.h:26,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uh=
d/lib/usrp_source_impl.h:23,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_sour=
ce_impl.cc:24:<br>/home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gn=
uradio/rpcmanager.h:57:17: warning: =E2=80=98template&lt;class&gt; class st=
d::auto_ptr=E2=80=99 is deprecated [-Wdeprecated-declarations]<br>=C2=A0 =
=C2=A0 =C2=A0static std::auto_ptr&lt;rpcserver_booter_aggregator&gt; aggreg=
ator;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~=
~~~~<br>In file included from /usr/include/c++/7/bits/locale_conv.h:41:0,<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /usr/i=
nclude/c++/7/locale:43,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0from /usr/include/boost/format.hpp:23,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/include/=
uhd/types/dict.ipp:12,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0from /home/emil/rfnoc/include/uhd/types/dict.hpp:154,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/=
rfnoc/include/uhd/types/device_addr.hpp:11,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/include/uhd/stream.=
hpp:11,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fr=
om /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:26,<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfno=
c/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:23:<br>/usr/include/c++/7/bit=
s/unique_ptr.h:51:28: note: declared here<br>=C2=A0 =C2=A0template&lt;typen=
ame&gt; class auto_ptr;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~<br>In file inclu=
ded from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.h:24:0,<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home=
/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:24:<br>/home/emil/r=
fnoc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_source.h:31:19: error: r=
edefinition of =E2=80=98struct uhd::stream_args_t=E2=80=99<br>=C2=A0struct =
GR_UHD_API stream_args_t {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~<br>In file included from /home/emil/r=
fnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:26:0,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio=
/gr-uhd/lib/usrp_source_impl.cc:23:<br>/home/emil/rfnoc/include/uhd/stream.=
hpp:58:16: note: previous definition of =E2=80=98struct uhd::stream_args_t=
=E2=80=99<br>=C2=A0struct UHD_API stream_args_t<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~<br>/home/emil/rfnoc/src/gnura=
dio/gr-uhd/lib/usrp_source_impl.cc: In constructor =E2=80=98gr::uhd::usrp_s=
ource_impl::usrp_source_impl(const uhd::device_addr_t&amp;, const uhd::stre=
am_args_t&amp;, bool)=E2=80=99:<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib=
/usrp_source_impl.cc:74:7: error: class =E2=80=98gr::uhd::usrp_source_impl=
=E2=80=99 does not have any field named =E2=80=98_recv_timeout=E2=80=99<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0_recv_timeout(0.1), // seconds<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0^~~~~~~~~~~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp=
_source_impl.cc:75:7: error: class =E2=80=98gr::uhd::usrp_source_impl=E2=80=
=99 does not have any field named =E2=80=98_recv_one_packet=E2=80=99<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0_recv_one_packet(true),<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0^~~~~~~~~~~~~~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source=
_impl.cc: In member function =E2=80=98virtual void gr::uhd::usrp_source_imp=
l::set_recv_timeout(double, bool)=E2=80=99:<br>/home/emil/rfnoc/src/gnuradi=
o/gr-uhd/lib/usrp_source_impl.cc:464:5: error: =E2=80=98_recv_timeout=E2=80=
=99 was not declared in this scope<br>=C2=A0 =C2=A0 =C2=A0_recv_timeout =3D=
 timeout;<br>=C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~<br>/home/emil/rfnoc/src/gnur=
adio/gr-uhd/lib/usrp_source_impl.cc:464:5: note: suggested alternative: =E2=
=80=98set_recv_timeout=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0_recv_timeout =3D ti=
meout;<br>=C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~<br>=C2=A0 =C2=A0 =C2=A0set_recv=
_timeout<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:46=
5:5: error: =E2=80=98_recv_one_packet=E2=80=99 was not declared in this sco=
pe<br>=C2=A0 =C2=A0 =C2=A0_recv_one_packet =3D one_packet;<br>=C2=A0 =C2=A0=
 =C2=A0^~~~~~~~~~~~~~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_so=
urce_impl.cc:465:5: note: suggested alternative: =E2=80=98one_packet=E2=80=
=99<br>=C2=A0 =C2=A0 =C2=A0_recv_one_packet =3D one_packet;<br>=C2=A0 =C2=
=A0 =C2=A0^~~~~~~~~~~~~~~~<br>=C2=A0 =C2=A0 =C2=A0one_packet<br>/home/emil/=
rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In member function =E2=
=80=98void gr::uhd::usrp_source_impl::flush()=E2=80=99:<br>/home/emil/rfnoc=
/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:512:29: error: =E2=80=98using =
element_type =3D class uhd::device {aka class uhd::device}=E2=80=99 has no =
member named =E2=80=98recv=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_d=
ev-&gt;get_device()-&gt;recv(outputs,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~<=
br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:516:49: err=
or: =E2=80=98RECV_MODE_FULL_BUFF=E2=80=99 is not a member of =E2=80=98uhd::=
device=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ::uhd::devic=
e::RECV_MODE_FULL_BUFF,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~~<br>=
/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In member fun=
ction =E2=80=98virtual int gr::uhd::usrp_source_impl::work(int, gr_vector_c=
onst_void_star&amp;, gr_vector_void_star&amp;)=E2=80=99:<br>/home/emil/rfno=
c/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:600:44: error: =E2=80=98using=
 element_type =3D class uhd::device {aka class uhd::device}=E2=80=99 has no=
 member named =E2=80=98recv=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0size_t num_samp=
s =3D _dev-&gt;get_device()-&gt;recv(output_items,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~<br>/home/e=
mil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:604:64: error: =E2=80=
=98RECV_MODE_FULL_BUFF=E2=80=99 is not a member of =E2=80=98uhd::device=E2=
=80=99<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0::uhd::device::RECV_MODE_FULL_BUFF,<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ^~~~~~~~~~~~~~~~~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_so=
urce_impl.cc:608:41: error: =E2=80=98using element_type =3D class uhd::devi=
ce {aka class uhd::device}=E2=80=99 has no member named =E2=80=98recv=E2=80=
=99<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0num_samps =3D _dev-&gt;get_device(=
)-&gt;recv(output_items,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib=
/usrp_source_impl.cc:612:61: error: =E2=80=98RECV_MODE_ONE_PACKET=E2=80=99 =
is not a member of =E2=80=98uhd::device=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ::uhd::d=
evice::RECV_MODE_ONE_PACKET,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~~~<br>gr-uhd/lib/CMakeFiles/gn=
uradio-uhd.dir/build.make:86: recipe for target &#39;gr-uhd/lib/CMakeFiles/=
gnuradio-uhd.dir/usrp_source_impl.cc.o&#39; failed<br>make[2]: *** [gr-uhd/=
lib/CMakeFiles/gnuradio-uhd.dir/usrp_source_impl.cc.o] Error 1<br>CMakeFile=
s/Makefile2:14726: recipe for target &#39;gr-uhd/lib/CMakeFiles/gnuradio-uh=
d.dir/all&#39; failed<br>make[1]: *** [gr-uhd/lib/CMakeFiles/gnuradio-uhd.d=
ir/all] Error 2<br>Makefile:162: recipe for target &#39;all&#39; failed<br>=
make: *** [all] Error 2<br>[ERROR] Build failed. See output above for error=
 messages.<br>[ERROR] Problem occurred while building package gnuradio:<br>=
Build failed.<br>[ERROR] Error installing package gnuradio. Aborting.<br></=
div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>

--000000000000f3bd2305b0b12d92--


--===============1673652619559652259==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1673652619559652259==--

