Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9FC736398
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jun 2023 08:28:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2C6D384BF7
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jun 2023 02:28:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687242513; bh=pfLDUCqR2r2VlT0osSed1KyXj4usKNXQgLM7DJpGT/I=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=K8tgOOEjf62jsUssOrC83VZt2a1rsMPv2Y7vnkBf01+cUKN26IoPyP8TMeFV8dB0v
	 hwvJGaV6fHStPxjapSQqp+NWkQA1KWBi9Hz1x+1R9iND6O9sQzlq3A8WFlo9PPUBXn
	 Kml1gh0MXToQCkI7Zr1P7QSsG4TdmPCq88FMDRer98DyZ0hume7meTpWgM8HPJLxSd
	 3eNPV8YxjrudnHmAZYMajkht7ENHxGuOehs+e627WAT6Ta9iuA5ZVaEYh/wi478mjX
	 3/iZm6bGfiY5UwrKLPnfib4n45gIarC9WsjViAEYQc7jDZNA6ByQ/jAtXW9h8ts4ba
	 lKO02UtFfiV1Q==
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 169BE384BDF
	for <usrp-users@lists.ettus.com>; Tue, 20 Jun 2023 02:27:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Yrdh2C1z";
	dkim-atps=neutral
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-47191280066so700583e0c.2
        for <usrp-users@lists.ettus.com>; Mon, 19 Jun 2023 23:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687242458; x=1689834458;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uIvSn5LlulZSyD2Cr+M5Z3uwPtJlLPUB1iy4rk8K2u4=;
        b=Yrdh2C1zJllZwEyvrD+rHhBAxUJccwSrvWk9X2QdVtMw7iCn0JSlyWLfCuyK5ZLyOv
         2qxxQXzLNyiqDGqhC4lhxs+fFcb7lNYHkpfx9Pi/Bg/v2qKY8S+HdO4AppWYlHJeJfhl
         fey6/THAHFLsylEr29XIfllTl9k2d1QUnBn+blTPAcFB6Ig2VkD8YNQcIlRVwCPJ2c59
         PYJXbNQTZ+Dr786bL/iugs3hyB3NSRDJyu5qde221iTxJcn2gRb0gS/cIjxuFxWyGSvZ
         SCSjcdRix+1Ezgtwt7ge38EjwUuDPLm+YU2mDHmj8omg2ZpGyhKXYuajIQhcv3G+pFP7
         XA6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687242458; x=1689834458;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uIvSn5LlulZSyD2Cr+M5Z3uwPtJlLPUB1iy4rk8K2u4=;
        b=IIcuNMThz25dbyUiMe0jAu5DD5c0T5XVoW3zIrTR/L2xxUjEBy/FKJ81sYrxDoCwVP
         V1N3RZnpmO/VM+Rbq0h1Zgx+JB1Vf3WPTvSAkOPNR1wqimF+nDHZMeRdFy7upg74DJI6
         X0bGtqtOMGpG6ok1i/7NmKbmens9zwHrTOVBZeeU/iJTvWnmV7qrJbhEO+tVD2dAngUZ
         2LkQkKSLYirmY/mOqDh1KAaJ0J18BDmMfJsJjcERvkT0ROlbGb8zA9LSMFJ5av3ClJCe
         SuDmfeLQ9xmMy4qUVN6Jco/oqOlVPMU/RfeGGTh1Xu8/D+sDHZslsjzhmcij5+3QArF6
         egjA==
X-Gm-Message-State: AC+VfDy95vti3u/X4DlLY2KDq1fJjmXKa/VBrs78tnZ2mfQg7IFPJXeB
	lUGcE/9V0YsdvRTtX2oRZc+gKSqV3WKZpH2hR48Vq0spMq7TN48R
X-Google-Smtp-Source: ACHHUZ7QspEZUX8ijHAYZgrW4MtIbHtjMByO3sKq98eRC24N1i02O1IwgkpUOIfo3EpBqlVbMdG+57too5NPrk0omIE=
X-Received: by 2002:a1f:c18b:0:b0:471:7498:e871 with SMTP id
 r133-20020a1fc18b000000b004717498e871mr2808446vkf.10.1687242458056; Mon, 19
 Jun 2023 23:27:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PvYd+9pPYgukF8iH-AHF9ut8LUAt=Maw+qU5mm2pJ9KWw@mail.gmail.com>
 <2f68606f-2e66-bb50-b8bb-a50df2c6cf84@ettus.com>
In-Reply-To: <2f68606f-2e66-bb50-b8bb-a50df2c6cf84@ettus.com>
From: sp <stackprogramer@gmail.com>
Date: Tue, 20 Jun 2023 10:57:26 +0430
Message-ID: <CAA=S3PuHNGqGE4r+vZwMcX3QoEcWn0yUUOr4PSO80R0BwBZenA@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Message-ID-Hash: ECN2X7VQ4TW5WKUX25UQVEDWSREB6RQ2
X-Message-ID-Hash: ECN2X7VQ4TW5WKUX25UQVEDWSREB6RQ2
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: error in installing nuradio 3.8 with UHD4.2.0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ECN2X7VQ4TW5WKUX25UQVEDWSREB6RQ2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4336773206339715523=="

--===============4336773206339715523==
Content-Type: multipart/alternative; boundary="0000000000005ccb8005fe89bf28"

--0000000000005ccb8005fe89bf28
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks very much a UHD old header file caused this problem i remove them
now it works.

On Tue, Jun 20, 2023 at 10:22=E2=80=AFAM Marcus M=C3=BCller <marcus.mueller=
@ettus.com>
wrote:

> Dear sp,
>
> the GNU Radio mailing list couldn't solve it because we asked for line
> numbers and
> verbatim error messages[1], but you never told us ;) Please don't put the
> GNU Radio
> mailing list into bad light, just because we don't have clairvoyance!
>
> This error very much looks like your build is mixing an older UHD
> uhd::usrp::dboard_iface,
> which uses boost::chrono, with your modern UHD 4.2 one, which uses
> std::chrono.
>
> Please make sure the build cannot find older UHD installations. Have you
> uninstalled your
> system's UHD before trying to install UHD 4.2?
>
> Best regards,
> Marcus
>
> [1]
> https://lists.gnu.org/archive/html/discuss-gnuradio/2023-06/msg00015.html
>
> On 20.06.23 06:46, sp wrote:
> > when I want to build Gnuradio 3.8.5 with UHD4.2.0 I faced a strange
> error I send it to
> > the Gnuradio mailing list they can not solve it.
> > Does anyone have any idea that solves my problem? thanks in advance
> >
> > [ 51%] Building CXX object
> >
> gr-uhd/swig/CMakeFiles/uhd_swig.dir/CMakeFiles/uhd_swig.dir/uhd_swigPYTHO=
N_wrap.cxx.o
> > [ 51%] Building CXX object
> > gr-blocks/lib/CMakeFiles/gnuradio-blocks.dir/stream_to_streams_impl.cc.=
o
> >
> /home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/uhd=
_swigPYTHON_wrap.cxx:
>
> > In function =E2=80=98PyObject* _wrap_dboard_iface_sleep(PyObject*, PyOb=
ject*,
> PyObject*)=E2=80=99:
> >
> /home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/uhd=
_swigPYTHON_wrap.cxx:32748:21:
>
> > error: cannot convert =E2=80=98const nanoseconds=E2=80=99 {aka =E2=80=
=98const
> std::chrono::duration<long int,
> > std::ratio<1, 1000000000> >=E2=80=99} to =E2=80=98const nanoseconds&=E2=
=80=99 {aka =E2=80=98const
> > boost::chrono::duration<long int, boost::ratio<1, 1000000000> >&=E2=80=
=99}
> > 32748 |       (arg1)->sleep((std::chrono::nanoseconds const &)*arg2);
> >       | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >       |                     |
> >       |                     const nanoseconds {aka const
> std::chrono::duration<long int,
> > std::ratio<1, 1000000000> >}
> > In file included from /usr/local/include/uhd/usrp/multi_usrp.hpp:38,
> >                  from
> >
> /home/sp/Documents/gnuradio/gr-uhd/lib/../include/gnuradio/uhd/usrp_block=
.h:28,
> >                  from
> >
> /home/sp/Documents/gnuradio/gr-uhd/lib/../include/gnuradio/uhd/usrp_sourc=
e.h:26,
> >                  from
> >
> /home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/uhd=
_swigPYTHON_wrap.cxx:3415:
> > /usr/local/include/uhd/usrp/dboard_iface.hpp:283:58: note: initializing
> argument 1 of
> > =E2=80=98virtual void uhd::usrp::dboard_iface::sleep(const nanoseconds&=
)=E2=80=99
> >   283 |     virtual void sleep(const boost::chrono::nanoseconds& time);
> >       |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~
> >
> /home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/uhd=
_swigPYTHON_wrap.cxx:
>
> > In function =E2=80=98PyObject* _wrap_dboard_iface_sptr_sleep(PyObject*,
> PyObject*, PyObject*)=E2=80=99:
> >
> /home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/uhd=
_swigPYTHON_wrap.cxx:36150:22:
>
> > error: cannot convert =E2=80=98const nanoseconds=E2=80=99 {aka =E2=80=
=98const
> std::chrono::duration<long int,
> > std::ratio<1, 1000000000> >=E2=80=99} to =E2=80=98const nanoseconds&=E2=
=80=99 {aka =E2=80=98const
> > boost::chrono::duration<long int, boost::ratio<1, 1000000000> >&=E2=80=
=99}
> > 36150 |       (*arg1)->sleep((std::chrono::nanoseconds const &)*arg2);
> >       |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >       |                      |
> >       |                      const nanoseconds {aka const
> std::chrono::duration<long
> > int, std::ratio<1, 1000000000> >}
> > In file included from /usr/local/include/uhd/usrp/multi_usrp.hpp:38,
> >                  from
> >
> /home/sp/Documents/gnuradio/gr-uhd/lib/../include/gnuradio/uhd/usrp_block=
.h:28,
> >                  from
> >
> /home/sp/Documents/gnuradio/gr-uhd/lib/../include/gnuradio/uhd/usrp_sourc=
e.h:26,
> >                  from
> >
> /home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/uhd=
_swigPYTHON_wrap.cxx:3415:
> > /usr/local/include/uhd/usrp/dboard_iface.hpp:283:58: note: initializing
> argument 1 of
> > =E2=80=98virtual void uhd::usrp::dboard_iface::sleep(const nanoseconds&=
)=E2=80=99
> >   283 |     virtual void sleep(const boost::chrono::nanoseconds& time);
> >       |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~
> > [ 52%] Building CXX object
> >
> gr-blocks/lib/CMakeFiles/gnuradio-blocks.dir/stream_to_tagged_stream_impl=
.cc.o
> > make[2]: *** [gr-uhd/swig/CMakeFiles/uhd_swig.dir/build.make:63:
> >
> gr-uhd/swig/CMakeFiles/uhd_swig.dir/CMakeFiles/uhd_swig.dir/uhd_swigPYTHO=
N_wrap.cxx.o]
>
> > Error 1
> > make[1]: *** [CMakeFiles/Makefile2:11109:
> gr-uhd/swig/CMakeFiles/uhd_swig.dir/all] Error 2
> > make[1]: *** Waiting for unfinished jobs....
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005ccb8005fe89bf28
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks very much a UHD old header file caused this problem=
 i remove them now it works.</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Jun 20, 2023 at 10:22=E2=80=AFAM Marc=
us M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com">marcus.muell=
er@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">Dear sp,<br>
<br>
the GNU Radio mailing list couldn&#39;t solve it because we asked for line =
numbers and <br>
verbatim error messages[1], but you never told us ;) Please don&#39;t put t=
he GNU Radio <br>
mailing list into bad light, just because we don&#39;t have clairvoyance!<b=
r>
<br>
This error very much looks like your build is mixing an older UHD uhd::usrp=
::dboard_iface, <br>
which uses boost::chrono, with your modern UHD 4.2 one, which uses std::chr=
ono.<br>
<br>
Please make sure the build cannot find older UHD installations. Have you un=
installed your <br>
system&#39;s UHD before trying to install UHD 4.2?<br>
<br>
Best regards,<br>
Marcus<br>
<br>
[1] <a href=3D"https://lists.gnu.org/archive/html/discuss-gnuradio/2023-06/=
msg00015.html" rel=3D"noreferrer" target=3D"_blank">https://lists.gnu.org/a=
rchive/html/discuss-gnuradio/2023-06/msg00015.html</a><br>
<br>
On 20.06.23 06:46, sp wrote:<br>
&gt; when I want to build Gnuradio 3.8.5 with UHD4.2.0 I faced a strange er=
ror I send it to <br>
&gt; the Gnuradio mailing list they can not solve it.<br>
&gt; Does anyone have any idea that solves my problem? thanks in advance<br=
>
&gt;<br>
&gt; [ 51%] Building CXX object <br>
&gt; gr-uhd/swig/CMakeFiles/uhd_swig.dir/CMakeFiles/uhd_swig.dir/uhd_swigPY=
THON_wrap.cxx.o<br>
&gt; [ 51%] Building CXX object <br>
&gt; gr-blocks/lib/CMakeFiles/gnuradio-blocks.dir/stream_to_streams_impl.cc=
.o<br>
&gt; /home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/=
uhd_swigPYTHON_wrap.cxx: <br>
&gt; In function =E2=80=98PyObject* _wrap_dboard_iface_sleep(PyObject*, PyO=
bject*, PyObject*)=E2=80=99:<br>
&gt; /home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/=
uhd_swigPYTHON_wrap.cxx:32748:21: <br>
&gt; error: cannot convert =E2=80=98const nanoseconds=E2=80=99 {aka =E2=80=
=98const std::chrono::duration&lt;long int, <br>
&gt; std::ratio&lt;1, 1000000000&gt; &gt;=E2=80=99} to =E2=80=98const nanos=
econds&amp;=E2=80=99 {aka =E2=80=98const <br>
&gt; boost::chrono::duration&lt;long int, boost::ratio&lt;1, 1000000000&gt;=
 &gt;&amp;=E2=80=99}<br>
&gt; 32748 | =C2=A0 =C2=A0 =C2=A0 (arg1)-&gt;sleep((std::chrono::nanosecond=
s const &amp;)*arg2);<br>
&gt; =C2=A0 =C2=A0 =C2=A0 | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
&gt; =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 |<br>
&gt; =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 const nanoseconds {aka const std::chrono::duration=
&lt;long int, <br>
&gt; std::ratio&lt;1, 1000000000&gt; &gt;}<br>
&gt; In file included from /usr/local/include/uhd/usrp/multi_usrp.hpp:38,<b=
r>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from <br=
>
&gt; /home/sp/Documents/gnuradio/gr-uhd/lib/../include/gnuradio/uhd/usrp_bl=
ock.h:28,<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from <br=
>
&gt; /home/sp/Documents/gnuradio/gr-uhd/lib/../include/gnuradio/uhd/usrp_so=
urce.h:26,<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from <br=
>
&gt; /home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/=
uhd_swigPYTHON_wrap.cxx:3415:<br>
&gt; /usr/local/include/uhd/usrp/dboard_iface.hpp:283:58: note: initializin=
g argument 1 of <br>
&gt; =E2=80=98virtual void uhd::usrp::dboard_iface::sleep(const nanoseconds=
&amp;)=E2=80=99<br>
&gt; =C2=A0 283 | =C2=A0 =C2=A0 virtual void sleep(const boost::chrono::nan=
oseconds&amp; time);<br>
&gt; =C2=A0 =C2=A0 =C2=A0 | =C2=A0~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~<br=
>
&gt; /home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/=
uhd_swigPYTHON_wrap.cxx: <br>
&gt; In function =E2=80=98PyObject* _wrap_dboard_iface_sptr_sleep(PyObject*=
, PyObject*, PyObject*)=E2=80=99:<br>
&gt; /home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/=
uhd_swigPYTHON_wrap.cxx:36150:22: <br>
&gt; error: cannot convert =E2=80=98const nanoseconds=E2=80=99 {aka =E2=80=
=98const std::chrono::duration&lt;long int, <br>
&gt; std::ratio&lt;1, 1000000000&gt; &gt;=E2=80=99} to =E2=80=98const nanos=
econds&amp;=E2=80=99 {aka =E2=80=98const <br>
&gt; boost::chrono::duration&lt;long int, boost::ratio&lt;1, 1000000000&gt;=
 &gt;&amp;=E2=80=99}<br>
&gt; 36150 | =C2=A0 =C2=A0 =C2=A0 (*arg1)-&gt;sleep((std::chrono::nanosecon=
ds const &amp;)*arg2);<br>
&gt; =C2=A0 =C2=A0 =C2=A0 | =C2=A0^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<b=
r>
&gt; =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>
&gt; =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const nanoseconds {aka const std::chrono::du=
ration&lt;long <br>
&gt; int, std::ratio&lt;1, 1000000000&gt; &gt;}<br>
&gt; In file included from /usr/local/include/uhd/usrp/multi_usrp.hpp:38,<b=
r>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from <br=
>
&gt; /home/sp/Documents/gnuradio/gr-uhd/lib/../include/gnuradio/uhd/usrp_bl=
ock.h:28,<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from <br=
>
&gt; /home/sp/Documents/gnuradio/gr-uhd/lib/../include/gnuradio/uhd/usrp_so=
urce.h:26,<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from <br=
>
&gt; /home/sp/Documents/gnuradio/build/gr-uhd/swig/CMakeFiles/uhd_swig.dir/=
uhd_swigPYTHON_wrap.cxx:3415:<br>
&gt; /usr/local/include/uhd/usrp/dboard_iface.hpp:283:58: note: initializin=
g argument 1 of <br>
&gt; =E2=80=98virtual void uhd::usrp::dboard_iface::sleep(const nanoseconds=
&amp;)=E2=80=99<br>
&gt; =C2=A0 283 | =C2=A0 =C2=A0 virtual void sleep(const boost::chrono::nan=
oseconds&amp; time);<br>
&gt; =C2=A0 =C2=A0 =C2=A0 | =C2=A0~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~<br=
>
&gt; [ 52%] Building CXX object <br>
&gt; gr-blocks/lib/CMakeFiles/gnuradio-blocks.dir/stream_to_tagged_stream_i=
mpl.cc.o<br>
&gt; make[2]: *** [gr-uhd/swig/CMakeFiles/uhd_swig.dir/build.make:63: <br>
&gt; gr-uhd/swig/CMakeFiles/uhd_swig.dir/CMakeFiles/uhd_swig.dir/uhd_swigPY=
THON_wrap.cxx.o] <br>
&gt; Error 1<br>
&gt; make[1]: *** [CMakeFiles/Makefile2:11109: gr-uhd/swig/CMakeFiles/uhd_s=
wig.dir/all] Error 2<br>
&gt; make[1]: *** Waiting for unfinished jobs....<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005ccb8005fe89bf28--

--===============4336773206339715523==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4336773206339715523==--
