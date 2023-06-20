Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F39847362BB
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jun 2023 06:47:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 99D19384C32
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jun 2023 00:47:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687236435; bh=yS5A91Lf8vbJuqxGNRXlnk9m8f4BHbofDnFOH/xMS4M=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dYyLAxC3Evd5jxYjMAFOtEDcwN08hW4lOGbM2Q1hD0oNEvpAMwD6ufgMxpFvAbmaa
	 FPkFAXUmY2aTGLd6dyC7J45Jae55S+ViXNj+2LHwSrtimBt02GSyF/wWKANOb8hubh
	 Di3RslNQg9RucqHje4s7kg4i1jfLxOdJYSzWrlqfopYMMKzlsfZqGPncSgXM3oooxo
	 3k5Onj3K+twUsgzXiiklEvVWEJOOltteAuEPgN6k6I7FfoEJF60VFazr02R5dLg8lJ
	 tDY8tXBjGCLenKAq87OAoAW8OdUBjpVauxPacRc0vwRNrdtyCY/QaAEPDCats/8dEl
	 8fT35cO05wQHw==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 92DDA384931
	for <usrp-users@lists.ettus.com>; Tue, 20 Jun 2023 00:46:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="glZwjJsa";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-3fde1d6b1c4so23423241cf.0
        for <usrp-users@lists.ettus.com>; Mon, 19 Jun 2023 21:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687236379; x=1689828379;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NY20kvt2FXoKnnPIRKQiiNiJsXLNUYH5vSmFTd2M94s=;
        b=glZwjJsat4FQhdZ2Q9CMFLWNJMi8sRd0otWIR0EnS4995kLrF2fAxcK9gWh/lHVAM9
         a455fUIA0yqsbhoU4CFXrLo5+VobKjSyKPX9R4CnnmBmbrztiI42FR9EIuBBK9tuZUNe
         guni0/hVpJCq4d1Fol7kpvcXVoQ1BFKdQRvUWvE0n9UoONz6JZs6fhwj92yKopwwOLBR
         GkH0Lrn88cwg2d2F3ogiT/WGJRgi71BeshxsOQgVatkEyo8lbC9dKohES+ppYqIEDroy
         hXZsn/P97GKZCx+brMZVUHTthC4ufFE1Y/B2BKwScJEbgrGnmRxywBsHhUqa04qHndI/
         3akw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687236379; x=1689828379;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NY20kvt2FXoKnnPIRKQiiNiJsXLNUYH5vSmFTd2M94s=;
        b=kyiWld2CFhlh6MxgmxWmdG2OQkRwEFWBwtnCdJE66qPBU1s/BJIdM/l1Yv5KQtiCZ2
         0tGCMrehU//BsK4+vBG2KxxuGV66mo3MoewBKn9nXY7ldUlxk9O+sN36bFNfQGThYdDx
         3sTy7y1FqgHyTnTiyIB1BjkvwralXAvGyyJm8j8DCbnzX8686fN+zwENcBkrPVK+VR+H
         E7JARgnnde6FMvkj++yrvBzGfTbufFN2b0g3VOPvwuTE61WR3wWEJ96A5fS9vjcOmKm4
         1FZkVGhGp1gYd3qnvhM1XQqo7XJPuBr8hz47oGSFWL8yyfaI36y6zhyDzreik3iBtyML
         t2fA==
X-Gm-Message-State: AC+VfDy3rm/8CJ7KWvbAvJ+5fIXRrQqPth7VZqKknN/1OadwJ/CffY6N
	vebLnOT8YbQ0m/CzuNZ4PnIpARSnN0RKL8CZ3CuI3bYo7vUAEUCGweU=
X-Google-Smtp-Source: ACHHUZ4c9nEtBp1C7WgqHNc7B6YyEy4eIewTO22ewWCznfIImdv7phcD9JPtRNmueUTOZ3sUS7Zy4r6zyJcoQYIyYhY=
X-Received: by 2002:a05:622a:1a11:b0:3e2:4280:bc5b with SMTP id
 f17-20020a05622a1a1100b003e24280bc5bmr16913345qtb.21.1687236378330; Mon, 19
 Jun 2023 21:46:18 -0700 (PDT)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Tue, 20 Jun 2023 09:16:07 +0430
Message-ID: <CAA=S3PvYd+9pPYgukF8iH-AHF9ut8LUAt=Maw+qU5mm2pJ9KWw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: BT2O7TJIOJ5LDWEMKKMIHBRYNMPKKWAV
X-Message-ID-Hash: BT2O7TJIOJ5LDWEMKKMIHBRYNMPKKWAV
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] error in installing nuradio 3.8 with UHD4.2.0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BT2O7TJIOJ5LDWEMKKMIHBRYNMPKKWAV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1942995457395862022=="

--===============1942995457395862022==
Content-Type: multipart/alternative; boundary="000000000000fb88e105fe8854f5"

--000000000000fb88e105fe8854f5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

when I want to build Gnuradio 3.8.5 with UHD4.2.0 I faced a strange error I
send it to the Gnuradio mailing list they can not solve it.
Does anyone have any idea that solves my problem? thanks in advance

[ 51%] Building CXX object
gr-uhd/swig/CMakeFiles/uhd_swig.dir/CMakeFiles/uhd_swig.dir/uhd_swigPYTHON_=
wrap.cxx.o
[ 51%] Building CXX object
gr-blocks/lib/CMakeFiles/gnuradio-blocks.dir/stream_to_streams_impl.cc.o
/home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/uhd_s=
wigPYTHON_wrap.cxx:
In function =E2=80=98PyObject* _wrap_dboard_iface_sleep(PyObject*, PyObject=
*,
PyObject*)=E2=80=99:
/home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/uhd_s=
wigPYTHON_wrap.cxx:32748:21:
error: cannot convert =E2=80=98const nanoseconds=E2=80=99 {aka =E2=80=98con=
st
std::chrono::duration<long int, std::ratio<1, 1000000000> >=E2=80=99} to =
=E2=80=98const
nanoseconds&=E2=80=99 {aka =E2=80=98const boost::chrono::duration<long int,=
 boost::ratio<1,
1000000000> >&=E2=80=99}
32748 |       (arg1)->sleep((std::chrono::nanoseconds const &)*arg2);
      |                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      |                     |
      |                     const nanoseconds {aka const
std::chrono::duration<long int, std::ratio<1, 1000000000> >}
In file included from /usr/local/include/uhd/usrp/multi_usrp.hpp:38,
                 from
/home/sp/Documents/gnuradio/gr-uhd/lib/../include/gnuradio/uhd/usrp_block.h=
:28,
                 from
/home/sp/Documents/gnuradio/gr-uhd/lib/../include/gnuradio/uhd/usrp_source.=
h:26,
                 from
/home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/uhd_s=
wigPYTHON_wrap.cxx:3415:
/usr/local/include/uhd/usrp/dboard_iface.hpp:283:58: note:   initializing
argument 1 of =E2=80=98virtual void uhd::usrp::dboard_iface::sleep(const
nanoseconds&)=E2=80=99
  283 |     virtual void sleep(const boost::chrono::nanoseconds& time);
      |                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~
/home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/uhd_s=
wigPYTHON_wrap.cxx:
In function =E2=80=98PyObject* _wrap_dboard_iface_sptr_sleep(PyObject*, PyO=
bject*,
PyObject*)=E2=80=99:
/home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/uhd_s=
wigPYTHON_wrap.cxx:36150:22:
error: cannot convert =E2=80=98const nanoseconds=E2=80=99 {aka =E2=80=98con=
st
std::chrono::duration<long int, std::ratio<1, 1000000000> >=E2=80=99} to =
=E2=80=98const
nanoseconds&=E2=80=99 {aka =E2=80=98const boost::chrono::duration<long int,=
 boost::ratio<1,
1000000000> >&=E2=80=99}
36150 |       (*arg1)->sleep((std::chrono::nanoseconds const &)*arg2);
      |                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      |                      |
      |                      const nanoseconds {aka const
std::chrono::duration<long int, std::ratio<1, 1000000000> >}
In file included from /usr/local/include/uhd/usrp/multi_usrp.hpp:38,
                 from
/home/sp/Documents/gnuradio/gr-uhd/lib/../include/gnuradio/uhd/usrp_block.h=
:28,
                 from
/home/sp/Documents/gnuradio/gr-uhd/lib/../include/gnuradio/uhd/usrp_source.=
h:26,
                 from
/home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/uhd_s=
wigPYTHON_wrap.cxx:3415:
/usr/local/include/uhd/usrp/dboard_iface.hpp:283:58: note:   initializing
argument 1 of =E2=80=98virtual void uhd::usrp::dboard_iface::sleep(const
nanoseconds&)=E2=80=99
  283 |     virtual void sleep(const boost::chrono::nanoseconds& time);
      |                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~
[ 52%] Building CXX object
gr-blocks/lib/CMakeFiles/gnuradio-blocks.dir/stream_to_tagged_stream_impl.c=
c.o
make[2]: *** [gr-uhd/swig/CMakeFiles/uhd_swig.dir/build.make:63:
gr-uhd/swig/CMakeFiles/uhd_swig.dir/CMakeFiles/uhd_swig.dir/uhd_swigPYTHON_=
wrap.cxx.o]
Error 1
make[1]: *** [CMakeFiles/Makefile2:11109:
gr-uhd/swig/CMakeFiles/uhd_swig.dir/all] Error 2
make[1]: *** Waiting for unfinished jobs....

--000000000000fb88e105fe8854f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">when I want to build Gnuradio 3.8.5 with UHD4.2.0 I faced =
a strange error I send it to the Gnuradio mailing list they can not solve i=
t.<div>Does anyone have any idea that solves my problem? thanks in advance<=
/div><div><br></div><div>[ 51%] Building CXX object gr-uhd/swig/CMakeFiles/=
uhd_swig.dir/CMakeFiles/uhd_swig.dir/uhd_swigPYTHON_wrap.cxx.o<br>[ 51%] Bu=
ilding CXX object gr-blocks/lib/CMakeFiles/gnuradio-blocks.dir/stream_to_st=
reams_impl.cc.o<br>/home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles=
/uhd_swig.dir/uhd_swigPYTHON_wrap.cxx: In function =E2=80=98PyObject* _wrap=
_dboard_iface_sleep(PyObject*, PyObject*, PyObject*)=E2=80=99:<br>/home/sp/=
Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/uhd_swigPYTHON=
_wrap.cxx:32748:21: error: cannot convert =E2=80=98const nanoseconds=E2=80=
=99 {aka =E2=80=98const std::chrono::duration&lt;long int, std::ratio&lt;1,=
 1000000000&gt; &gt;=E2=80=99} to =E2=80=98const nanoseconds&amp;=E2=80=99 =
{aka =E2=80=98const boost::chrono::duration&lt;long int, boost::ratio&lt;1,=
 1000000000&gt; &gt;&amp;=E2=80=99}<br>32748 | =C2=A0 =C2=A0 =C2=A0 (arg1)-=
&gt;sleep((std::chrono::nanoseconds const &amp;)*arg2);<br>=C2=A0 =C2=A0 =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>=C2=A0 =C2=A0 =C2=A0 | =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |<br>=C2=
=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 const nanoseconds {aka const std::chrono::duration&lt;long i=
nt, std::ratio&lt;1, 1000000000&gt; &gt;}<br>In file included from /usr/loc=
al/include/uhd/usrp/multi_usrp.hpp:38,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/sp/Documents/gnuradio/gr-uhd/lib/=
../include/gnuradio/uhd/usrp_block.h:28,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/sp/Documents/gnuradio/gr-uhd/lib/=
../include/gnuradio/uhd/usrp_source.h:26,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/sp/Documents/gnuradio/build/gr=
-uhd/swig/CMakeFiles/uhd_swig.dir/uhd_swigPYTHON_wrap.cxx:3415:<br>/usr/loc=
al/include/uhd/usrp/dboard_iface.hpp:283:58: note: =C2=A0 initializing argu=
ment 1 of =E2=80=98virtual void uhd::usrp::dboard_iface::sleep(const nanose=
conds&amp;)=E2=80=99<br>=C2=A0 283 | =C2=A0 =C2=A0 virtual void sleep(const=
 boost::chrono::nanoseconds&amp; time);<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~<br>/home/sp/Documents/gnuradio/bu=
ild/gr-uhd/swig/CMakeFiles/uhd_swig.dir/uhd_swigPYTHON_wrap.cxx: In functio=
n =E2=80=98PyObject* _wrap_dboard_iface_sptr_sleep(PyObject*, PyObject*, Py=
Object*)=E2=80=99:<br>/home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFi=
les/uhd_swig.dir/uhd_swigPYTHON_wrap.cxx:36150:22: error: cannot convert =
=E2=80=98const nanoseconds=E2=80=99 {aka =E2=80=98const std::chrono::durati=
on&lt;long int, std::ratio&lt;1, 1000000000&gt; &gt;=E2=80=99} to =E2=80=98=
const nanoseconds&amp;=E2=80=99 {aka =E2=80=98const boost::chrono::duration=
&lt;long int, boost::ratio&lt;1, 1000000000&gt; &gt;&amp;=E2=80=99}<br>3615=
0 | =C2=A0 =C2=A0 =C2=A0 (*arg1)-&gt;sleep((std::chrono::nanoseconds const =
&amp;)*arg2);<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const nanose=
conds {aka const std::chrono::duration&lt;long int, std::ratio&lt;1, 100000=
0000&gt; &gt;}<br>In file included from /usr/local/include/uhd/usrp/multi_u=
srp.hpp:38,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0from /home/sp/Documents/gnuradio/gr-uhd/lib/../include/gnuradio/uhd/usrp=
_block.h:28,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0from /home/sp/Documents/gnuradio/gr-uhd/lib/../include/gnuradio/uhd/usrp=
_source.h:26,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0from /home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swi=
g.dir/uhd_swigPYTHON_wrap.cxx:3415:<br>/usr/local/include/uhd/usrp/dboard_i=
face.hpp:283:58: note: =C2=A0 initializing argument 1 of =E2=80=98virtual v=
oid uhd::usrp::dboard_iface::sleep(const nanoseconds&amp;)=E2=80=99<br>=C2=
=A0 283 | =C2=A0 =C2=A0 virtual void sleep(const boost::chrono::nanoseconds=
&amp; time);<br>=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~^~~~<br>[ 52%] Building CXX object gr-blocks/lib/CMakeFiles/gnuradio=
-blocks.dir/stream_to_tagged_stream_impl.cc.o<br>make[2]: *** [gr-uhd/swig/=
CMakeFiles/uhd_swig.dir/build.make:63: gr-uhd/swig/CMakeFiles/uhd_swig.dir/=
CMakeFiles/uhd_swig.dir/uhd_swigPYTHON_wrap.cxx.o] Error 1<br>make[1]: *** =
[CMakeFiles/Makefile2:11109: gr-uhd/swig/CMakeFiles/uhd_swig.dir/all] Error=
 2<br>make[1]: *** Waiting for unfinished jobs....<br></div></div>

--000000000000fb88e105fe8854f5--

--===============1942995457395862022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1942995457395862022==--
