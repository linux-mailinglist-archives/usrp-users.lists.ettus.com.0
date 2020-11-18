Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF5D2B8397
	for <lists+usrp-users@lfdr.de>; Wed, 18 Nov 2020 19:08:07 +0100 (CET)
Received: from [::1] (port=57590 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfRsA-0001gt-Q5; Wed, 18 Nov 2020 13:08:02 -0500
Received: from mail-io1-f44.google.com ([209.85.166.44]:40337)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1kfRs6-0001bd-KT
 for usrp-users@lists.ettus.com; Wed, 18 Nov 2020 13:07:58 -0500
Received: by mail-io1-f44.google.com with SMTP id r9so2985161ioo.7
 for <usrp-users@lists.ettus.com>; Wed, 18 Nov 2020 10:07:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v38Ya7AbP+1to8POutLTlda5NJQWzdSY/AcN2NtMDNE=;
 b=F2ViWfAzE4ZyJggtU76mZqier9vUkIhmF5pIFHLgeJQDOI0R3/HzOLvragEme3PQpR
 uSCx1ZnGYuWrb1j9VMNinDt5KBuCwXRertrjxs0kolN96GsfFdOdaSg2y7XTZRQ45w44
 CzLpBZMIS5/BgXZAM4ax8LSOBt3mZRN5Tvuc/PqCh0GuQJug+cEKOrOsgHybAHmB2u/R
 npsGZf627/BqQ+kMNr6dBSTRAsC02TOekzEaLhhoylEvdDwRg55iH9p/on86zXRkaZQs
 E5Qu1eSGUbhbPXJ7WqROrFo2Gkp4MZxSQjQYgn/T8IfMeqXXHGkcvRqRpTPE1g3Wkdox
 AOXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v38Ya7AbP+1to8POutLTlda5NJQWzdSY/AcN2NtMDNE=;
 b=DRk2VPIMD3tlJKRgaLA7ZwuICGVIr/+Hp5zoSYTk9rB1XEYj3UNXX1X1iNaIS4OQa1
 HukxvVVDDgrix7ozpIJZvGWjy8tBZ3O9OG3P9A4eb5KZMgA4IN5OY2vN9KITM5wIfJqr
 83hIIlzrdF/R3F3QqSRmNFRtUZ5ZDSziCJAomyNi4GTLQ2RWg755zKxpIqWbZZK4eH98
 oDkkBgi8Z8rl20BlQ5xauCDrVkDonUGuC5Q7PDS853XTZkF5MYBwktJrOyMtTUDEAK7d
 S+gCgLYIVsx3o7QN1f2he0t8rxwkJ9QaljYsS7Fe8NP9PvNHhXDTpDlhHfcrKP2gbzBP
 /EkA==
X-Gm-Message-State: AOAM531dWabEiNS/pNdHsASDSXIV7AAerX0nG1BTklKkTychrHWCGiR9
 gLjDSoaz+oxYeOEeu0DgGMYDimL7YH5ZekKx0Xw=
X-Google-Smtp-Source: ABdhPJyeNVWl97wzRonIEkIwR+77IGjcf6jkpAPTEnpIS6t8IU/dtOrLK3+uFrmuA2dLlkQzBikA7jmaZUm0f+Q8z4E=
X-Received: by 2002:a02:4a:: with SMTP id 71mr5632850jaa.52.1605722837878;
 Wed, 18 Nov 2020 10:07:17 -0800 (PST)
MIME-Version: 1.0
References: <CAPRRyxt8qaJ-DbgKbDQbXYMt8=0PKC42JReqb=LrUxR0ZCEJqg@mail.gmail.com>
 <1B15B53D-E33A-4D5A-8CFB-B20AA0853B5D@tiscali.it>
 <CAPRRyxuHE=c3Kx2ywT=4kdk1LExzk-_Tbo_7Dxag1CpEbM6xdA@mail.gmail.com>
 <2e936e16-5b7c-404c-7393-e11bde32f437@elitecoding.org>
 <d8f6c823-b59f-3917-9b9f-96733db91f75@bitstovolts.com>
In-Reply-To: <d8f6c823-b59f-3917-9b9f-96733db91f75@bitstovolts.com>
Date: Wed, 18 Nov 2020 20:07:06 +0200
Message-ID: <CAPRRyxthGC9vsfSDBwX2bj71frR9Hs=uLgYmFMBwHwCH0D+DJw@mail.gmail.com>
To: Derek Kozel <derek@bitstovolts.com>
Subject: Re: [USRP-users] Direction finding based on USRP E310 board
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
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>, Ivan Iudice <krono86@tiscali.it>
Content-Type: multipart/mixed; boundary="===============6197248202753972719=="
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

--===============6197248202753972719==
Content-Type: multipart/alternative; boundary="0000000000005c09df05b4657bde"

--0000000000005c09df05b4657bde
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello I am trying to install RFNoC for uhd 3.15. As far as I understand,
this version supports RFNoC. And in order for me to have blocks in
gnuradio, as I understand it, I need to install gr-ettus. But when
installing, I get this error The found UHD version (3.15.0.0-3build2) is
not compatible with the version required (4.0). how can I be in such a
situation?

=D1=81=D1=80, 18 =D0=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=B3. =D0=B2 16:24, Derek=
 Kozel <derek@bitstovolts.com>:

> Hi Ivan,
>
> The TX/RX and RX2 are ports on the same receiver channel. As Julian says
> there are two receivers, A and B. For a receive only application the RX2
> ports are slightly better performing as they have one less switch that
> the signal passes through.
>
> Regards,
> Derek
>
> On 18/11/2020 14:01, Julian Arnold wrote:
> > Ivan,
> >
> > to the best of my knowledge, there should not be any RX1 port.
> > Instead, you should have two (coherent) channels "A" and "B" both
> > allowing you to select one out of two available antenna ports when
> > receiving ("TX/RX" or "RX2").
> >
> > Cheers,
> > Julian
> >
> > On 11/18/20 10:31 AM, Ivan Zahartchuk via USRP-users wrote:
> >>
> >> Another question of interest is which channels are coherent? Rx1 and
> >> RX2 or RX1 and RX / TX?
> >>
> >> =D0=B2=D1=82, 17 =D0=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=B3. =D0=B2 01:56, =
Ivan Iudice <krono86@tiscali.it
> >> <mailto:krono86@tiscali.it>>:
> >>
> >>     Right!
> >>     Be careful, DOA estimation using only 2 antennas works but it=E2=
=80=99s not
> >>     so accurate.
> >>     Enjoy!
> >>
> >>     Ivan
> >>
> >>      > Il giorno 17 nov 2020, alle ore 00:35, Ivan Zahartchuk
> >>     <adray0001@gmail.com <mailto:adray0001@gmail.com>> ha scritto:
> >>      >
> >>      > =EF=BB=BF
> >>      >
> >>      >
> >>      >
> >>      > That is, in theory, I can simply start two streams from two
> >>     channels and further process them using certain direction finding
> >>     algorithms?
> >>      >
> >>      >
> >>
> >>
> >> _______________________________________________
> >> USRP-users mailing list
> >> USRP-users@lists.ettus.com
> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>
> >
>
>

--0000000000005c09df05b4657bde
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br class=3D"gmail-Apple-interchange-newline"><span style=
=3D"color:rgb(32,33,36);font-family:arial,sans-serif;font-size:28px;white-s=
pace:pre-wrap;background-color:rgb(248,249,250)"></span>Hello I am trying t=
o install RFNoC for uhd 3.15. As far as I understand, this version supports=
 RFNoC. And in order for me to have blocks in gnuradio, as I understand it,=
 I need to install gr-ettus. But when installing, I get this error The foun=
d UHD version (3.15.0.0-3build2) is not compatible with the version
  required (4.0). how can I be in such a situation?<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D1=80, 18 =D0=
=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=B3. =D0=B2 16:24, Derek Kozel &lt;<a href=
=3D"mailto:derek@bitstovolts.com">derek@bitstovolts.com</a>&gt;:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">Hi Ivan,<br>
<br>
The TX/RX and RX2 are ports on the same receiver channel. As Julian says <b=
r>
there are two receivers, A and B. For a receive only application the RX2 <b=
r>
ports are slightly better performing as they have one less switch that <br>
the signal passes through.<br>
<br>
Regards,<br>
Derek<br>
<br>
On 18/11/2020 14:01, Julian Arnold wrote:<br>
&gt; Ivan,<br>
&gt;<br>
&gt; to the best of my knowledge, there should not be any RX1 port.<br>
&gt; Instead, you should have two (coherent) channels &quot;A&quot; and &qu=
ot;B&quot; both <br>
&gt; allowing you to select one out of two available antenna ports when <br=
>
&gt; receiving (&quot;TX/RX&quot; or &quot;RX2&quot;).<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Julian<br>
&gt;<br>
&gt; On 11/18/20 10:31 AM, Ivan Zahartchuk via USRP-users wrote:<br>
&gt;&gt;<br>
&gt;&gt; Another question of interest is which channels are coherent? Rx1 a=
nd <br>
&gt;&gt; RX2 or RX1 and RX / TX?<br>
&gt;&gt;<br>
&gt;&gt; =D0=B2=D1=82, 17 =D0=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=B3. =D0=B2 01:=
56, Ivan Iudice &lt;<a href=3D"mailto:krono86@tiscali.it" target=3D"_blank"=
>krono86@tiscali.it</a> <br>
&gt;&gt; &lt;mailto:<a href=3D"mailto:krono86@tiscali.it" target=3D"_blank"=
>krono86@tiscali.it</a>&gt;&gt;:<br>
&gt;&gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 Right!<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 Be careful, DOA estimation using only 2 antenna=
s works but it=E2=80=99s not<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 so accurate.<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 Enjoy!<br>
&gt;&gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 Ivan<br>
&gt;&gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; Il giorno 17 nov 2020, alle ore 00:3=
5, Ivan Zahartchuk<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 &lt;<a href=3D"mailto:adray0001@gmail.com" targ=
et=3D"_blank">adray0001@gmail.com</a> &lt;mailto:<a href=3D"mailto:adray000=
1@gmail.com" target=3D"_blank">adray0001@gmail.com</a>&gt;&gt; ha scritto:<=
br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; =EF=BB=BF<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt; That is, in theory, I can simply sta=
rt two streams from two<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 channels and further process them using certain=
 direction finding<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0 algorithms?<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt;<br>
&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0 &gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;<br>
&gt;<br>
<br>
</blockquote></div>

--0000000000005c09df05b4657bde--


--===============6197248202753972719==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6197248202753972719==--

