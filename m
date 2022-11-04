Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4216761A494
	for <lists+usrp-users@lfdr.de>; Fri,  4 Nov 2022 23:43:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 45A3B384148
	for <lists+usrp-users@lfdr.de>; Fri,  4 Nov 2022 18:43:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667601830; bh=67tZv9+cSLZP+hoB0HCGq++oi/YOufBWuYVXIfcLQTE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=tTVklADWL+NdBNiEiLXrjBmzU36sGPxfHPPjAxTvdHmUvDbKqfZ4nRQHEBhD2dsy5
	 cltj5kQqMrGY+M+QegZRbwTaqjEjD+aQOaP3T8b+qfyYAOwe9+jxh1EtJmcWHpM+Dw
	 XijKFfohy0ysRiwurBFCma1x7J2INEAGxOrDzcuFT/TiAtJCqz1jyq7N8BBn03TVvq
	 gQuoWqhAdvVnOrU6zQV80y7sESkN6EwDwpPUyy1Gx8buopJjUoB5tf0rwSrXY64Hzf
	 rQPoSD1FZ7USEgzxnN7m/T37rfa7+XQb0hPP6Er4yxYR/GhbLI+GYqn39+UwzSDEyG
	 YmmgxaD/wgtFw==
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 15EBA3840EB
	for <usrp-users@lists.ettus.com>; Fri,  4 Nov 2022 18:42:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ourowndomain-com.20210112.gappssmtp.com header.i=@ourowndomain-com.20210112.gappssmtp.com header.b="Osn7toyt";
	dkim-atps=neutral
Received: by mail-vs1-f43.google.com with SMTP id 128so5751583vse.6
        for <usrp-users@lists.ettus.com>; Fri, 04 Nov 2022 15:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ourowndomain-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ckkU6lNTDqgxRvMRopP9u7mYv4RJEC6mnck/cWRRc3s=;
        b=Osn7toytBQpBKtlE/qHj8PIwGKVh1QTh5LeWP2/LZaAEhKWNvSfvOp1PNaSo0gj2pR
         bOs7FRtMwLbzweVDcV9tOnTsrN87OMRnBmLwHkoRcjPOQpLZBBsC/vFESlCR5mJHuGWZ
         M/BT3NjJ9G05WtepmeG+vJ8aK0HeQtKmR17BXcBVwm2+vvsFuRiBs356FbezIegY8ekL
         Ld39v4983RnAEXruj3zAGVGCQy4UayMI5TJz9WaFgIs5OwCREcYwW/Kgj40WLmr4WPWU
         7KkGyC+CTOGx7MvyoyLdYSNV8Yq5fZ9nMIvXsOvIemNweCLCv/MO4YGscFui6B/rbhSE
         cQIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ckkU6lNTDqgxRvMRopP9u7mYv4RJEC6mnck/cWRRc3s=;
        b=tj3+5pnOtWW1NKaiu+iWTB8UIkCfgSPMb0uWpKhYtHemtA1GKD3iUuMESMuafRnA8t
         uSSuuyjiWk9i+g5OKRC7TVPaFW4XsxRCMX6C/lxf0MZy33XTCc5J14nlopddre0jtHZb
         FOLWFtfhesXkCtnXFLOGcOsHlk3BwLszDcUqRcX+/QsKhowecG6vppGHc0qXyaM0Dn8N
         g7o41BrzSWCjTfF6x3RFNEzDIvrUdEJ5USIA90xTOyA7abcHM6clDW+TRYb4OJ86W2vR
         UgV4txMhhl01I2+OEDAU6GW0nxEuq3wB8fvSjDAOEYZyhkZC3CFcquN5hJVXSxVGG34w
         uRjw==
X-Gm-Message-State: ACrzQf1Cm/iT2H6lGXBzyj/12o8DSXrZz/a7xA/3Qp0B+sfpGUsp6/Vn
	vfHD0k9hNPhT9lDql5wsa/Qya3jGN9USnNg81VYevA==
X-Google-Smtp-Source: AMsMyM6OxLiZaHKhjKjjHv9X3D59YZzhfNE5e/tN29rHQFPdE3sWiuiecmPCKrItOmKEW2tx7UWdEY46qDbB4+80P94=
X-Received: by 2002:a05:6102:a3a:b0:3aa:2878:4adb with SMTP id
 26-20020a0561020a3a00b003aa28784adbmr19465086vsb.43.1667601762146; Fri, 04
 Nov 2022 15:42:42 -0700 (PDT)
MIME-Version: 1.0
References: <CANsNear2pq3y6SP31Z=Y0Qk=aLhS-4qRqBg1g8W6Lk+0nwM_sw@mail.gmail.com>
 <CANsNeapRKvT4Uu_cmJ9tF-qrg2D10FYUZmoTFgq4521ODFUt-g@mail.gmail.com>
 <6110af43-326b-6dcd-e1bb-11ad590f1b8b@gmail.com> <888a07c0-ccc5-4a57-885a-9ff43c915520@balister.org>
In-Reply-To: <888a07c0-ccc5-4a57-885a-9ff43c915520@balister.org>
From: Rich Gopstein <rich@ourowndomain.com>
Date: Fri, 4 Nov 2022 15:42:31 -0700
Message-ID: <CANsNeaqS0jJ0sGFoKWU6EtH1ZYFomnSYz3v9AtX75xfQHoQhDQ@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Message-ID-Hash: 2KQOROEMKQLNUF54HDHXTBFEPYUDHBSZ
X-Message-ID-Hash: 2KQOROEMKQLNUF54HDHXTBFEPYUDHBSZ
X-MailFrom: rich@ourowndomain.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 GnuRadio upgrade?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2KQOROEMKQLNUF54HDHXTBFEPYUDHBSZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6404371207140957959=="

--===============6404371207140957959==
Content-Type: multipart/alternative; boundary="000000000000a914b405ecaccaa3"

--000000000000a914b405ecaccaa3
Content-Type: text/plain; charset="UTF-8"

Thanks.  I'll take a look, though I suspect that is beyond my abilities...

Rich


On Fri, Nov 4, 2022 at 8:49 AM Philip Balister <philip@balister.org> wrote:

> Random git links that might help:
>
> https://github.com/balister/sdr-build/tree/dunfell-ettus
>
> This will build a file system based of a Yocto Project branch that is
> still supported. It does a a gcc version that causes fftw failures
> though. This hasn't been updated in a couple of years, so it does need
> updating to collect bug and security fixes.
>
> https://github.com/balister/meta-sdr/tree/dunfell-3.10
>
> Contains work to get gnuradio-3.10 building against the YP Dunfell
> branch. Still needs some cleanup. Also I need to break out a layer to
> update the gcc version so fftw works. This actually happen, but is a
> spare time task :)
>
> All of the above likely need uhd recipe updates.
>
> So, basically the pieces are available to put gnuradio-3.10 on the E3XX
> series are known, they just need someone to do the work to make it happen.
>
> Philip
>
> On 11/2/22 19:05, Marcus D. Leech wrote:
> > On 02/11/2022 16:39, Rich Gopstein wrote:
> >> I tried following the instructions in here:
> >>
> https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
> >> to cross compile GnuRadio on my Ubuntu box, but the cmake failed
> >> because the OE environment was from 2016 and had old library versions.
> >>
> >> I could really use some suggestions on how to get a more modern
> >> GnuRadio (3.9+) on the E310.
> >>
> >> Thanks.
> >> Rich
> > Here's a direct link to the images:
> >
> > https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.3.0.0/
> >
> >
> > That image includes GR 3.8.3
> >
> >
> >>
> >> On Tue, Oct 25, 2022 at 2:32 PM Rich Gopstein <rich@ourowndomain.com>
> >> wrote:
> >>
> >>     I'd like to run GR 3.9 or later on the E310.  Is there a
> >>     documented process to upgrade GR on the E310?
> >>
> >>     Thanks.
> >>     Rich
> >>
> >>
> >> _______________________________________________
> >> USRP-users mailing list --usrp-users@lists.ettus.com
> >> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a914b405ecaccaa3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks.=C2=A0 I&#39;ll take a look, though I suspect that =
is beyond my abilities...<div><br></div><div>Rich</div><div><br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fr=
i, Nov 4, 2022 at 8:49 AM Philip Balister &lt;<a href=3D"mailto:philip@bali=
ster.org">philip@balister.org</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">Random git links that might help:<br>
<br>
<a href=3D"https://github.com/balister/sdr-build/tree/dunfell-ettus" rel=3D=
"noreferrer" target=3D"_blank">https://github.com/balister/sdr-build/tree/d=
unfell-ettus</a><br>
<br>
This will build a file system based of a Yocto Project branch that is <br>
still supported. It does a a gcc version that causes fftw failures <br>
though. This hasn&#39;t been updated in a couple of years, so it does need =
<br>
updating to collect bug and security fixes.<br>
<br>
<a href=3D"https://github.com/balister/meta-sdr/tree/dunfell-3.10" rel=3D"n=
oreferrer" target=3D"_blank">https://github.com/balister/meta-sdr/tree/dunf=
ell-3.10</a><br>
<br>
Contains work to get gnuradio-3.10 building against the YP Dunfell <br>
branch. Still needs some cleanup. Also I need to break out a layer to <br>
update the gcc version so fftw works. This actually happen, but is a <br>
spare time task :)<br>
<br>
All of the above likely need uhd recipe updates.<br>
<br>
So, basically the pieces are available to put gnuradio-3.10 on the E3XX <br=
>
series are known, they just need someone to do the work to make it happen.<=
br>
<br>
Philip<br>
<br>
On 11/2/22 19:05, Marcus D. Leech wrote:<br>
&gt; On 02/11/2022 16:39, Rich Gopstein wrote:<br>
&gt;&gt; I tried following the instructions in here: <br>
&gt;&gt; <a href=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_U=
SRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source" rel=3D"norefer=
rer" target=3D"_blank">https://kb.ettus.com/Software_Development_on_the_E3x=
x_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a><br>
&gt;&gt; to cross compile GnuRadio on my Ubuntu box, but the cmake failed <=
br>
&gt;&gt; because=C2=A0the OE environment was from 2016 and had old library =
versions.<br>
&gt;&gt;<br>
&gt;&gt; I could really use some suggestions on how to get a more modern <b=
r>
&gt;&gt; GnuRadio (3.9+) on the E310.<br>
&gt;&gt;<br>
&gt;&gt; Thanks.<br>
&gt;&gt; Rich<br>
&gt; Here&#39;s a direct link to the images:<br>
&gt; <br>
&gt; <a href=3D"https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.3=
.0.0/" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/binarie=
s/cache/e3xx/meta-ettus-v4.3.0.0/</a><br>
&gt; <br>
&gt; <br>
&gt; That image includes GR 3.8.3<br>
&gt; <br>
&gt; <br>
&gt;&gt;<br>
&gt;&gt; On Tue, Oct 25, 2022 at 2:32 PM Rich Gopstein &lt;<a href=3D"mailt=
o:rich@ourowndomain.com" target=3D"_blank">rich@ourowndomain.com</a>&gt; <b=
r>
&gt;&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0I&#39;d like to run GR 3.9 or later on the E310=
.=C2=A0 Is there a<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0documented process to upgrade GR on the E310?<b=
r>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Thanks.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Rich<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list --<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt; To unsubscribe send an email <a href=3D"mailto:tousrp-users-leave@=
lists.ettus.com" target=3D"_blank">tousrp-users-leave@lists.ettus.com</a><b=
r>
&gt; <br>
&gt; <br>
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

--000000000000a914b405ecaccaa3--

--===============6404371207140957959==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6404371207140957959==--
