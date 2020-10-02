Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F942815F5
	for <lists+usrp-users@lfdr.de>; Fri,  2 Oct 2020 17:02:25 +0200 (CEST)
Received: from [::1] (port=40832 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kOMZj-0002AK-To; Fri, 02 Oct 2020 11:02:23 -0400
Received: from mail-ej1-f44.google.com ([209.85.218.44]:32987)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kOMZg-0001uf-IG
 for usrp-users@lists.ettus.com; Fri, 02 Oct 2020 11:02:20 -0400
Received: by mail-ej1-f44.google.com with SMTP id c22so1090507ejx.0
 for <usrp-users@lists.ettus.com>; Fri, 02 Oct 2020 08:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=54JzZxbwzBqGomWR0b97ll4kJDluVg+oo/MKiG/tzSw=;
 b=FkSbqmMXmjesUXClI9XPACKw0xhrThnYIf3Ebdt9O+uJbbCsUglJCo7H96ozFjGOMD
 eLxoq9+eitQbGZhJwnD/bRhXibpiUCxgcZTv8EGurR9PZIjaJv0wLGUa+LKSv/zWwPGH
 1qQLgfJjpFWqx4G1yl6sIU1Ah14G9gl6MDKVfTrdtypydBmPE4LPSbK2J2NH3vgaWlbL
 aeTddpCfwe5geXMWRtu99CghkoJTNrik9V56b6VNMOP1BGNK2gtascZF5VaAVXBqSrKX
 CWEbFK3SmwCBz5bkHyKnEhPGp/wd7izhcyZbkoQMn0mGIO9/fwC7lVlvxmtOhCypfZcx
 +wqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=54JzZxbwzBqGomWR0b97ll4kJDluVg+oo/MKiG/tzSw=;
 b=cqjMSgUlcSBRO6uYFwWb7lwzuWAv4GXOh9G9aZrww0k6Jgf5M5iPsc46cOA14z0MDE
 r5BhHz4qt9cCAGnbBLP7FftL9Ewa+CXFLnpS1SGDGtf5CJDyP3h5u6uzgLvT1VctYXZh
 lGDT+GjSLRHjtMYbSJ7KMJcqgl6AT2l61imKenuIhIOfc/wAtENcIeCQUWXyKw4z577g
 zNZs+osy32SO1UyrCrs+7edcmjPztMZ8AzT1pSOLfEqoqRcgSgMZeshThiU1YxYycgwZ
 y5rl9KgA4it8UPOweFaNSXtusrUe+TbLasjlk0RFWT2ZDIC4zeJHrNjIc/mcR4CZP5gA
 HM+Q==
X-Gm-Message-State: AOAM531XHTYaU2W/xjB3wGJXX+YC9y54s8b5mUzc8qDzdJSCOI0EKeyY
 eOipQGW1V7cthZtMJkISuI8WWMpEjZ/ACPcyz26NkkLV
X-Google-Smtp-Source: ABdhPJwjmbX9e7vcX/Uvrbk2zMy2f58zBZ0Msu87LWreA64Y5gQ/p6K9J7lSmY2EKiZFZUBiEHyC6OjeCIgq90JS/y0=
X-Received: by 2002:a17:906:2cd2:: with SMTP id
 r18mr2828101ejr.371.1601650899287; 
 Fri, 02 Oct 2020 08:01:39 -0700 (PDT)
MIME-Version: 1.0
References: <CADrptxXFegaW5Eiy8Vj18PJ+w0H6ecbJPpaMNKNPc0J7qEnz9w@mail.gmail.com>
 <CAGNhwTP2Bc2HyNGoz562i-mQDDy73kKtSMiMDXKK+nrwW16F5Q@mail.gmail.com>
 <CADrptxXUomCBdB9-Ybzoeiiaad_i5XJVNv7JDAfQUc3iVqrUcg@mail.gmail.com>
In-Reply-To: <CADrptxXUomCBdB9-Ybzoeiiaad_i5XJVNv7JDAfQUc3iVqrUcg@mail.gmail.com>
Date: Fri, 2 Oct 2020 11:01:28 -0400
Message-ID: <CAGNhwTN_xJ-J-k_3M-uj1pT4fiCyS2LBNt0LU8YR6xiWp21Tew@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============8661303414892226157=="
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

--===============8661303414892226157==
Content-Type: multipart/alternative; boundary="000000000000e8256305b0b16871"

--000000000000e8256305b0b16871
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For Ubuntu, you can generally do PPA installs:

UHD 4.0.0.0

https://files.ettus.com/binaries/uhd_stable/uhd_004.000.000.000-release/Ubu=
ntu-installers_README.txt

GR 3.8.2.0

https://wiki.gnuradio.org/index.php/InstallingGR#Ubuntu_PPA_Installation

I don't think we have a PPA for gr-ettus ... but once you get UHD and GR
installed then building gr-ettus from source should be straight forward. I
think you want the "master" branch ... we updated it to work with the above
UHD and GR.

I hope this is useful! - MLD


On Fri, Oct 2, 2020 at 10:45 AM Emil Bjelski <emil.bjelski@gmail.com> wrote=
:

> Hi Michael,
>
> I would like to install the latest release and UHD 4.0.
> Could you point me where I can find the precompiled  binaries?
>
> Thank you a lot on your reply,
>
> Emil
>
> On Fri, Oct 2, 2020 at 3:30 PM Michael Dickens <michael.dickens@ettus.com=
>
> wrote:
>
>> Hi Emil - What branch of UHD and GR are you trying to build? That AppNot=
e
>> is a bit dated, and needs a serious update! If what you want is the late=
st
>> releases of UHD and GR, for many OSs those are available for download an=
d
>> install as precompiled binaries. - MLD
>>
>> On Fri, Oct 2, 2020 at 8:59 AM Emil Bjelski via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi All,
>>>
>>> I am installing RFNOC using pyboms by following instructions given on
>>> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>>>
>>> However, during installation, there is an error (given below).
>>> Does anyone know what could be the issue?
>>>
>>> Thank you in advance on answers.
>>>
>>> [ 86%] Building CXX object
>>> gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_source_impl.cc.o
>>> In file included from
>>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregi=
sterhelpers.h:26:0,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/basic_b=
lock.h:42,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/block.h=
:27,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/sync_bl=
ock.h:27,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_block.h:=
26,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_block_impl.h:26,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.h:23,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:24:
>>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmana=
ger.h:56:17:
>>> warning: =E2=80=98template<class> class std::auto_ptr=E2=80=99 is depre=
cated
>>> [-Wdeprecated-declarations]
>>>      static std::auto_ptr<rpcserver_booter_base> boot;
>>>                  ^~~~~~~~
>>> In file included from /usr/include/c++/7/bits/locale_conv.h:41:0,
>>>                  from /usr/include/c++/7/locale:43,
>>>                  from /usr/include/boost/format.hpp:23,
>>>                  from /home/emil/rfnoc/include/uhd/types/dict.ipp:12,
>>>                  from /home/emil/rfnoc/include/uhd/types/dict.hpp:154,
>>>                  from
>>> /home/emil/rfnoc/include/uhd/types/device_addr.hpp:11,
>>>                  from /home/emil/rfnoc/include/uhd/stream.hpp:11,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:26,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:23:
>>> /usr/include/c++/7/bits/unique_ptr.h:51:28: note: declared here
>>>    template<typename> class auto_ptr;
>>>                             ^~~~~~~~
>>> In file included from
>>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregi=
sterhelpers.h:26:0,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/basic_b=
lock.h:42,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/block.h=
:27,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/sync_bl=
ock.h:27,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_block.h:=
26,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_block_impl.h:26,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.h:23,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:24:
>>> /home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmana=
ger.h:57:17:
>>> warning: =E2=80=98template<class> class std::auto_ptr=E2=80=99 is depre=
cated
>>> [-Wdeprecated-declarations]
>>>      static std::auto_ptr<rpcserver_booter_aggregator> aggregator;
>>>                  ^~~~~~~~
>>> In file included from /usr/include/c++/7/bits/locale_conv.h:41:0,
>>>                  from /usr/include/c++/7/locale:43,
>>>                  from /usr/include/boost/format.hpp:23,
>>>                  from /home/emil/rfnoc/include/uhd/types/dict.ipp:12,
>>>                  from /home/emil/rfnoc/include/uhd/types/dict.hpp:154,
>>>                  from
>>> /home/emil/rfnoc/include/uhd/types/device_addr.hpp:11,
>>>                  from /home/emil/rfnoc/include/uhd/stream.hpp:11,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:26,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:23:
>>> /usr/include/c++/7/bits/unique_ptr.h:51:28: note: declared here
>>>    template<typename> class auto_ptr;
>>>                             ^~~~~~~~
>>> In file included from
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.h:24:0,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:24:
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_source.h=
:31:19:
>>> error: redefinition of =E2=80=98struct uhd::stream_args_t=E2=80=99
>>>  struct GR_UHD_API stream_args_t {
>>>                    ^~~~~~~~~~~~~
>>> In file included from
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:26:0,
>>>                  from
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:23:
>>> /home/emil/rfnoc/include/uhd/stream.hpp:58:16: note: previous definitio=
n
>>> of =E2=80=98struct uhd::stream_args_t=E2=80=99
>>>  struct UHD_API stream_args_t
>>>                 ^~~~~~~~~~~~~
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In
>>> constructor =E2=80=98gr::uhd::usrp_source_impl::usrp_source_impl(const
>>> uhd::device_addr_t&, const uhd::stream_args_t&, bool)=E2=80=99:
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:74:7:
>>> error: class =E2=80=98gr::uhd::usrp_source_impl=E2=80=99 does not have =
any field named
>>> =E2=80=98_recv_timeout=E2=80=99
>>>        _recv_timeout(0.1), // seconds
>>>        ^~~~~~~~~~~~~
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:75:7:
>>> error: class =E2=80=98gr::uhd::usrp_source_impl=E2=80=99 does not have =
any field named
>>> =E2=80=98_recv_one_packet=E2=80=99
>>>        _recv_one_packet(true),
>>>        ^~~~~~~~~~~~~~~~
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In member
>>> function =E2=80=98virtual void gr::uhd::usrp_source_impl::set_recv_time=
out(double,
>>> bool)=E2=80=99:
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:464:5:
>>> error: =E2=80=98_recv_timeout=E2=80=99 was not declared in this scope
>>>      _recv_timeout =3D timeout;
>>>      ^~~~~~~~~~~~~
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:464:5:
>>> note: suggested alternative: =E2=80=98set_recv_timeout=E2=80=99
>>>      _recv_timeout =3D timeout;
>>>      ^~~~~~~~~~~~~
>>>      set_recv_timeout
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:465:5:
>>> error: =E2=80=98_recv_one_packet=E2=80=99 was not declared in this scop=
e
>>>      _recv_one_packet =3D one_packet;
>>>      ^~~~~~~~~~~~~~~~
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:465:5:
>>> note: suggested alternative: =E2=80=98one_packet=E2=80=99
>>>      _recv_one_packet =3D one_packet;
>>>      ^~~~~~~~~~~~~~~~
>>>      one_packet
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In member
>>> function =E2=80=98void gr::uhd::usrp_source_impl::flush()=E2=80=99:
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:512:29:
>>> error: =E2=80=98using element_type =3D class uhd::device {aka class uhd=
::device}=E2=80=99 has
>>> no member named =E2=80=98recv=E2=80=99
>>>          _dev->get_device()->recv(outputs,
>>>                              ^~~~
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:516:49:
>>> error: =E2=80=98RECV_MODE_FULL_BUFF=E2=80=99 is not a member of =E2=80=
=98uhd::device=E2=80=99
>>>                                   ::uhd::device::RECV_MODE_FULL_BUFF,
>>>                                                  ^~~~~~~~~~~~~~~~~~~
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In member
>>> function =E2=80=98virtual int gr::uhd::usrp_source_impl::work(int,
>>> gr_vector_const_void_star&, gr_vector_void_star&)=E2=80=99:
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:600:44:
>>> error: =E2=80=98using element_type =3D class uhd::device {aka class uhd=
::device}=E2=80=99 has
>>> no member named =E2=80=98recv=E2=80=99
>>>      size_t num_samps =3D _dev->get_device()->recv(output_items,
>>>                                             ^~~~
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:604:64:
>>> error: =E2=80=98RECV_MODE_FULL_BUFF=E2=80=99 is not a member of =E2=80=
=98uhd::device=E2=80=99
>>>
>>>  ::uhd::device::RECV_MODE_FULL_BUFF,
>>>
>>> ^~~~~~~~~~~~~~~~~~~
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:608:41:
>>> error: =E2=80=98using element_type =3D class uhd::device {aka class uhd=
::device}=E2=80=99 has
>>> no member named =E2=80=98recv=E2=80=99
>>>          num_samps =3D _dev->get_device()->recv(output_items,
>>>                                          ^~~~
>>> /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:612:61:
>>> error: =E2=80=98RECV_MODE_ONE_PACKET=E2=80=99 is not a member of =E2=80=
=98uhd::device=E2=80=99
>>>
>>> ::uhd::device::RECV_MODE_ONE_PACKET,
>>>
>>>  ^~~~~~~~~~~~~~~~~~~~
>>> gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/build.make:86: recipe for target
>>> 'gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_source_impl.cc.o' failed
>>> make[2]: ***
>>> [gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_source_impl.cc.o] Error 1
>>> CMakeFiles/Makefile2:14726: recipe for target
>>> 'gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/all' failed
>>> make[1]: *** [gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/all] Error 2
>>> Makefile:162: recipe for target 'all' failed
>>> make: *** [all] Error 2
>>> [ERROR] Build failed. See output above for error messages.
>>> [ERROR] Problem occurred while building package gnuradio:
>>> Build failed.
>>> [ERROR] Error installing package gnuradio. Aborting.
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--000000000000e8256305b0b16871
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For Ubuntu, you can generally do PPA installs:<div><br></d=
iv><div>UHD 4.0.0.0</div><div><br></div><div><a href=3D"https://files.ettus=
.com/binaries/uhd_stable/uhd_004.000.000.000-release/Ubuntu-installers_READ=
ME.txt">https://files.ettus.com/binaries/uhd_stable/uhd_004.000.000.000-rel=
ease/Ubuntu-installers_README.txt</a></div><div><br></div><div>GR 3.8.2.0=
=C2=A0</div><div><br></div><div><a href=3D"https://wiki.gnuradio.org/index.=
php/InstallingGR#Ubuntu_PPA_Installation">https://wiki.gnuradio.org/index.p=
hp/InstallingGR#Ubuntu_PPA_Installation</a></div><div><br></div><div><div>I=
 don&#39;t think we have a PPA for gr-ettus ... but once you get UHD and GR=
 installed then building gr-ettus from source should be straight forward. I=
 think you want the &quot;master&quot; branch ... we updated it to work wit=
h the above UHD and GR.<br></div><div><br></div><div>I hope this is useful!=
 - MLD</div><div><br></div></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 2, 2020 at 10:45 AM Emil Bjels=
ki &lt;<a href=3D"mailto:emil.bjelski@gmail.com">emil.bjelski@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr"><div>Hi Michael,</div><div><br></div><div>I would like to inst=
all the latest release and UHD 4.0.</div><div>Could you point me where I ca=
n find the precompiled=C2=A0 binaries?</div><div><br></div><div>Thank you a=
 lot on your reply,</div><div><br></div><div>Emil</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 2, 2020 =
at 3:30 PM Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com"=
 target=3D"_blank">michael.dickens@ettus.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"lt=
r">Hi=C2=A0Emil - What branch of UHD and GR are you trying to build? That A=
ppNote is a bit dated, and needs a serious update! If what you want is the =
latest releases of UHD and GR, for many OSs those are available for downloa=
d and install as precompiled binaries. - MLD<br><br></div><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 2, 2020 at 8:59=
 AM Emil Bjelski via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettu=
s.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi All,=
<br><br>I am installing RFNOC using pyboms by following instructions given =
on <br><a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_Developme=
nt" target=3D"_blank">https://kb.ettus.com/Getting_Started_with_RFNoC_Devel=
opment</a><br><br>However, during installation, there is an error (given be=
low). <br><div>Does anyone know what could be the issue?</div><div><br></di=
v><div>Thank you in advance on answers.<br></div><div><br></div><div>[ 86%]=
 Building CXX object gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_source_imp=
l.cc.o<br>In file included from /home/emil/rfnoc/src/gnuradio/gnuradio-runt=
ime/include/gnuradio/rpcregisterhelpers.h:26:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gn=
uradio-runtime/include/gnuradio/basic_block.h:42,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio=
/gnuradio-runtime/include/gnuradio/block.h:27,<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gn=
uradio-runtime/include/gnuradio/sync_block.h:27,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio=
/gr-uhd/include/gnuradio/uhd/usrp_block.h:26,<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr=
-uhd/lib/usrp_block_impl.h:26,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_sou=
rce_impl.h:23,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:24:=
<br>/home/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcmana=
ger.h:56:17: warning: =E2=80=98template&lt;class&gt; class std::auto_ptr=E2=
=80=99 is deprecated [-Wdeprecated-declarations]<br>=C2=A0 =C2=A0 =C2=A0sta=
tic std::auto_ptr&lt;rpcserver_booter_base&gt; boot;<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~<br>In file included f=
rom /usr/include/c++/7/bits/locale_conv.h:41:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /usr/include/c++/7/locale:43,<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /usr/in=
clude/boost/format.hpp:23,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/include/uhd/types/dict.ipp:12,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/em=
il/rfnoc/include/uhd/types/dict.hpp:154,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/include/uhd/types/devi=
ce_addr.hpp:11,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0from /home/emil/rfnoc/include/uhd/stream.hpp:11,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnur=
adio/gr-uhd/lib/gr_uhd_common.h:26,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/us=
rp_source_impl.cc:23:<br>/usr/include/c++/7/bits/unique_ptr.h:51:28: note: =
declared here<br>=C2=A0 =C2=A0template&lt;typename&gt; class auto_ptr;<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~<br>In file included from /home/emil/rfnoc=
/src/gnuradio/gnuradio-runtime/include/gnuradio/rpcregisterhelpers.h:26:0,<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home=
/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/basic_block.h:42=
,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /ho=
me/emil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/block.h:27,<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/e=
mil/rfnoc/src/gnuradio/gnuradio-runtime/include/gnuradio/sync_block.h:27,<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/=
emil/rfnoc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_block.h:26,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/=
rfnoc/src/gnuradio/gr-uhd/lib/usrp_block_impl.h:26,<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradi=
o/gr-uhd/lib/usrp_source_impl.h:23,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/us=
rp_source_impl.cc:24:<br>/home/emil/rfnoc/src/gnuradio/gnuradio-runtime/inc=
lude/gnuradio/rpcmanager.h:57:17: warning: =E2=80=98template&lt;class&gt; c=
lass std::auto_ptr=E2=80=99 is deprecated [-Wdeprecated-declarations]<br>=
=C2=A0 =C2=A0 =C2=A0static std::auto_ptr&lt;rpcserver_booter_aggregator&gt;=
 aggregator;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0^~~~~~~~<br>In file included from /usr/include/c++/7/bits/locale_conv.h:=
41:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from=
 /usr/include/c++/7/locale:43,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0from /usr/include/boost/format.hpp:23,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/i=
nclude/uhd/types/dict.ipp:12,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/include/uhd/types/dict.hpp:154,<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/=
emil/rfnoc/include/uhd/types/device_addr.hpp:11,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/include/uhd/=
stream.hpp:11,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:26,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/em=
il/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:23:<br>/usr/include/c+=
+/7/bits/unique_ptr.h:51:28: note: declared here<br>=C2=A0 =C2=A0template&l=
t;typename&gt; class auto_ptr;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~<br>In fil=
e included from /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.h=
:24:0,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fro=
m /home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:24:<br>/home=
/emil/rfnoc/src/gnuradio/gr-uhd/include/gnuradio/uhd/usrp_source.h:31:19: e=
rror: redefinition of =E2=80=98struct uhd::stream_args_t=E2=80=99<br>=C2=A0=
struct GR_UHD_API stream_args_t {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~<br>In file included from /home=
/emil/rfnoc/src/gnuradio/gr-uhd/lib/gr_uhd_common.h:26:0,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/emil/rfnoc/src/g=
nuradio/gr-uhd/lib/usrp_source_impl.cc:23:<br>/home/emil/rfnoc/include/uhd/=
stream.hpp:58:16: note: previous definition of =E2=80=98struct uhd::stream_=
args_t=E2=80=99<br>=C2=A0struct UHD_API stream_args_t<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~<br>/home/emil/rfnoc/sr=
c/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In constructor =E2=80=98gr::uhd:=
:usrp_source_impl::usrp_source_impl(const uhd::device_addr_t&amp;, const uh=
d::stream_args_t&amp;, bool)=E2=80=99:<br>/home/emil/rfnoc/src/gnuradio/gr-=
uhd/lib/usrp_source_impl.cc:74:7: error: class =E2=80=98gr::uhd::usrp_sourc=
e_impl=E2=80=99 does not have any field named =E2=80=98_recv_timeout=E2=80=
=99<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0_recv_timeout(0.1), // seconds<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/l=
ib/usrp_source_impl.cc:75:7: error: class =E2=80=98gr::uhd::usrp_source_imp=
l=E2=80=99 does not have any field named =E2=80=98_recv_one_packet=E2=80=99=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0_recv_one_packet(true),<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0^~~~~~~~~~~~~~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp=
_source_impl.cc: In member function =E2=80=98virtual void gr::uhd::usrp_sou=
rce_impl::set_recv_timeout(double, bool)=E2=80=99:<br>/home/emil/rfnoc/src/=
gnuradio/gr-uhd/lib/usrp_source_impl.cc:464:5: error: =E2=80=98_recv_timeou=
t=E2=80=99 was not declared in this scope<br>=C2=A0 =C2=A0 =C2=A0_recv_time=
out =3D timeout;<br>=C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~<br>/home/emil/rfnoc/s=
rc/gnuradio/gr-uhd/lib/usrp_source_impl.cc:464:5: note: suggested alternati=
ve: =E2=80=98set_recv_timeout=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0_recv_timeout=
 =3D timeout;<br>=C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~<br>=C2=A0 =C2=A0 =C2=A0s=
et_recv_timeout<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_imp=
l.cc:465:5: error: =E2=80=98_recv_one_packet=E2=80=99 was not declared in t=
his scope<br>=C2=A0 =C2=A0 =C2=A0_recv_one_packet =3D one_packet;<br>=C2=A0=
 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/=
usrp_source_impl.cc:465:5: note: suggested alternative: =E2=80=98one_packet=
=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0_recv_one_packet =3D one_packet;<br>=C2=A0=
 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~<br>=C2=A0 =C2=A0 =C2=A0one_packet<br>/home/e=
mil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In member function =
=E2=80=98void gr::uhd::usrp_source_impl::flush()=E2=80=99:<br>/home/emil/rf=
noc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:512:29: error: =E2=80=98usi=
ng element_type =3D class uhd::device {aka class uhd::device}=E2=80=99 has =
no member named =E2=80=98recv=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0_dev-&gt;get_device()-&gt;recv(outputs,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0^~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:516=
:49: error: =E2=80=98RECV_MODE_FULL_BUFF=E2=80=99 is not a member of =E2=80=
=98uhd::device=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ::uh=
d::device::RECV_MODE_FULL_BUFF,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~=
~~~~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc: In =
member function =E2=80=98virtual int gr::uhd::usrp_source_impl::work(int, g=
r_vector_const_void_star&amp;, gr_vector_void_star&amp;)=E2=80=99:<br>/home=
/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:600:44: error: =E2=
=80=98using element_type =3D class uhd::device {aka class uhd::device}=E2=
=80=99 has no member named =E2=80=98recv=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0si=
ze_t num_samps =3D _dev-&gt;get_device()-&gt;recv(output_items,<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^=
~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/lib/usrp_source_impl.cc:604:64:=
 error: =E2=80=98RECV_MODE_FULL_BUFF=E2=80=99 is not a member of =E2=80=98u=
hd::device=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0::uhd::device::RECV_MODE_FU=
LL_BUFF,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 ^~~~~~~~~~~~~~~~~~~<br>/home/emil/rfnoc/src/gnuradio/gr-uhd/l=
ib/usrp_source_impl.cc:608:41: error: =E2=80=98using element_type =3D class=
 uhd::device {aka class uhd::device}=E2=80=99 has no member named =E2=80=98=
recv=E2=80=99<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0num_samps =3D _dev-&gt;g=
et_device()-&gt;recv(output_items,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~<br>/home/emil/rfnoc/src/gnuradio=
/gr-uhd/lib/usrp_source_impl.cc:612:61: error: =E2=80=98RECV_MODE_ONE_PACKE=
T=E2=80=99 is not a member of =E2=80=98uhd::device=E2=80=99<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ::uhd::device::RECV_MODE_ONE_PACKET,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~~~<br>gr-uhd/lib/CM=
akeFiles/gnuradio-uhd.dir/build.make:86: recipe for target &#39;gr-uhd/lib/=
CMakeFiles/gnuradio-uhd.dir/usrp_source_impl.cc.o&#39; failed<br>make[2]: *=
** [gr-uhd/lib/CMakeFiles/gnuradio-uhd.dir/usrp_source_impl.cc.o] Error 1<b=
r>CMakeFiles/Makefile2:14726: recipe for target &#39;gr-uhd/lib/CMakeFiles/=
gnuradio-uhd.dir/all&#39; failed<br>make[1]: *** [gr-uhd/lib/CMakeFiles/gnu=
radio-uhd.dir/all] Error 2<br>Makefile:162: recipe for target &#39;all&#39;=
 failed<br>make: *** [all] Error 2<br>[ERROR] Build failed. See output abov=
e for error messages.<br>[ERROR] Problem occurred while building package gn=
uradio:<br>Build failed.<br>[ERROR] Error installing package gnuradio. Abor=
ting.<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--000000000000e8256305b0b16871--


--===============8661303414892226157==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8661303414892226157==--

