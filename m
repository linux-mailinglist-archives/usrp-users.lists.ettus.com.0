Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4A47AD465
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 11:20:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B058D384981
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 05:20:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695633623; bh=QMirRi4TpGv1WhFft9nV2k11JRJzzchhnJcV/2beh0k=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=IrwfdCq8CHrUHGegXnr661RSVketN9KQO4qpMk3BWM3FW+kdJRT3gR61Rocql+QqZ
	 jv6rxkzovDCZS2MZFjC9OpC3T7BsvFILrDSrtkLxWDzAY5xWbq4+UvcrgCMlmDL5VN
	 iFFEL0WjcZOa+3o6la4fD/NG0shyuGRtPKa1RKAxWi/K7x/o2DNQevOtqPJLmxVKtH
	 f32DuwWoFwrz+Q24j6ldRZuAcqAwfvF6brlI7UGDrJTuMIbT9qL5PhBIj3xldtHLv2
	 VmF0sKjEDRRguoCtgPwhSFpXwfyOH/SG7u4LOjapwZqeZgFhMV6QKhauY3pTSsVTdD
	 HP9ZhvimG1neA==
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	by mm2.emwd.com (Postfix) with ESMTPS id B1680384981
	for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 05:20:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dsbovKOT";
	dkim-atps=neutral
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2c038a1e2e6so90469701fa.2
        for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 02:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695633618; x=1696238418; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FFd3zUWu9VBoMy6EUNwm946UuxThWw7yhQWKQO0oJiE=;
        b=dsbovKOTIndMl/QNk2KdME0iOxui/EfCKVkceT3ElxkxwoNCqCjNs144QtEvfAqROD
         g0G3z8+4ryOrdPsm6QSyXWJH4wy9/V2PdaVzMozDMd1QMCKQXUMU+k0o/eYxRxOKq1t3
         RFj2WxtEjzTwMeN79iFhS4xiZhrpclluM+NowIhEi21rEgYNbAUlbw7EnWlJqmzau4fg
         fMMZkH9RpGx8LkrtPsOveVGY6qnMu9Uk6hYpHfbvg6o9VbukpHHxmeUEPecraVnLFFZN
         aVvd+lKj1I8bJ+i4FrcjQIcvZRG5wsPZmwcJgZcdnRG4uPKpOVi56rps42VEQgcCxW7R
         E0WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695633618; x=1696238418;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FFd3zUWu9VBoMy6EUNwm946UuxThWw7yhQWKQO0oJiE=;
        b=OzX+xn6fzYltKfDEXE059wlrhNduczL31bzGAM/wijiR20uC0VsOZF2uh87a+ZnauC
         ArZKW+fIwLqU7B6aIln9F8Ol3kBA5i1xaAdvm7x8bMTRNAH7wZWMY63JnHDFfmEA7na+
         JVbOgsZS/9Gtac8IWMMIAH4uYsT/kw5Uuls2466b+4peTk021FdraEM7Ww7JNEtGUcf5
         /ZTa/3BMQnMm1wrpdoaYedGqp4KLUQVRci0/iKXXD81vP7vO0L7p2LOz/6XVBBDp5SZd
         OJ/3ODGQlTH4bWQ+2veBAwYBdrDiCZbEEhjLA7iRpKNrMa7z9CYNOz+cNBj282SHmcCi
         +W1A==
X-Gm-Message-State: AOJu0Yw/tOwl6vQrHaeS6qJzpc8dd/3RDub4b4atWTb1yScZ1b2QHQR3
	ioJVrd4NR15OOBoPr2zA0zut8MPUrpHH2jwKk1VCrcGY6Hg=
X-Google-Smtp-Source: AGHT+IFGNQYZuHVDNrjcCRHjJ5GmJfQwrgfihBex6TIOnVGgnM6IQENpbfi8/QiFBLngkXlee2+6u6Iz1Q/YuAXtjoU=
X-Received: by 2002:a2e:964f:0:b0:2bd:d34:e1ef with SMTP id
 z15-20020a2e964f000000b002bd0d34e1efmr5408149ljh.3.1695633617481; Mon, 25 Sep
 2023 02:20:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxvFFoPU8cCDFigOb+obsZGtE_nNz6q8WppVyU7q3oR0Ug@mail.gmail.com>
 <e4e27517-f1b3-79d9-d0d2-4fb6cafda00f@ettus.com> <wTof148s-b9-o9Kr4ztrZ40XkpxeAdB1LgVYwo4yKEv0xzMDb2quQHpttubb-Ohk3nmTIXWsdRYVkgXC0DMB-Sjsl3FP3Nj28-e20PXrCo0=@protonmail.com>
 <fce55c5f-843c-9703-a2fa-5e339ad3224c@gmail.com>
In-Reply-To: <fce55c5f-843c-9703-a2fa-5e339ad3224c@gmail.com>
From: Ivan Zahartchuk <adray0001@gmail.com>
Date: Mon, 25 Sep 2023 12:20:06 +0300
Message-ID: <CAPRRyxvSXLmRQK1g9q4CpTZFD+DG_RD=3PvfOkXYCq6GhxaFWw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: SYR5F76MOR2RITACYLDG45TPZX52OS6I
X-Message-ID-Hash: SYR5F76MOR2RITACYLDG45TPZX52OS6I
X-MailFrom: adray0001@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B200 Data Reception Issue on Windows 10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SYR5F76MOR2RITACYLDG45TPZX52OS6I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6353778242982148507=="

--===============6353778242982148507==
Content-Type: multipart/alternative; boundary="0000000000007074a606062b77e8"

--0000000000007074a606062b77e8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Unfortunately, this has no effect on losses.


=D0=BF=D0=BD, 25 =D0=B2=D0=B5=D1=80. 2023=E2=80=AF=D1=80. =D0=BE 09:56 Marc=
us D. Leech <patchvonbraun@gmail.com> =D0=BF=D0=B8=D1=88=D0=B5:

> On 25/09/2023 01:28, Olo via USRP-users wrote:
> > I have same problem. Please have anyone clue what should I do ? My
> output from benchmark_rate --rx_rate 20MHz:
> >
> > Benchmark rate summary:
> >    Num received samples:     99900744
> >    Num dropped samples:      100315437
> >    Num overruns detected:    472
> >
> > Im using Windows 10 /w UHD 4.4 on B210.
> >
> >
> You could use the "num_recv_frames" device argument:
>
> num_recv_frames=3D256
>
> See if that makes a difference.
>
>
> >
> >
> >
> >
> > Sent with Proton Mail secure email.
> >
> > ------- Original Message -------
> > On Saturday, September 23rd, 2023 at 23:40, Marcus M=C3=BCller <
> marcus.mueller@ettus.com> wrote:
> >
> >
> >> Sounds like the USB host controller's Windows driver and/or controller
> firmware coming
> >> with that driver leave things to be desired. I honestly don't have a
> good recommendation
> >> there, other than to make sure your Windows drivers are up to date =E2=
=80=93
> Windows is not per se
> >> worse than Linux at USB.
> >>
> >> Best,
> >>
> >> Marcus
> >>
> >> On 23.09.23 23:28, Ivan Zahartchuk wrote:
> >>
> >>> Hello. I have an issue with reading data from the USRP B200 on Window=
s
> 10. When I run
> >>> the benchmark_rate with a 20 MHz reception bandwidth, I see losses of
> more than 50
> >>> percent. However, there are no losses during transmission. I have
> followed all the
> >>> instructions, including modifying the registry and disabling power
> management for USB.
> >>> The same issue occurs even when using an external power supply. Can
> you please advise on
> >>> what the possible problems might be? On the same PC, when using
> Ubuntu, I can receive 50
> >>> MHz with almost no losses.
> >>>
> >>> _______________________________________________
> >>> USRP-users mailing list -- usrp-users@lists.ettus.com
> >>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >> _______________________________________________
> >> USRP-users mailing list -- usrp-users@lists.ettus.com
> >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007074a606062b77e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre class=3D"gmail-tw-data-text gmail-tw-text-large gmail=
-tw-ta" id=3D"gmail-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><=
span class=3D"gmail-Y2IQFc" lang=3D"en">Unfortunately, this has no effect o=
n losses.</span></pre></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">=D0=BF=D0=BD, 25 =D0=B2=D0=B5=D1=80. 2023=E2=80=AF=D1=
=80. =D0=BE 09:56 Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail=
.com">patchvonbraun@gmail.com</a>&gt; =D0=BF=D0=B8=D1=88=D0=B5:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">On 25/09/2023 01:28, Olo vi=
a USRP-users wrote:<br>
&gt; I have same problem. Please have anyone clue what should I do ? My out=
put from benchmark_rate --rx_rate 20MHz:<br>
&gt;<br>
&gt; Benchmark rate summary:<br>
&gt;=C2=A0 =C2=A0 Num received samples:=C2=A0 =C2=A0 =C2=A099900744<br>
&gt;=C2=A0 =C2=A0 Num dropped samples:=C2=A0 =C2=A0 =C2=A0 100315437<br>
&gt;=C2=A0 =C2=A0 Num overruns detected:=C2=A0 =C2=A0 472<br>
&gt;<br>
&gt; Im using Windows 10 /w UHD 4.4 on B210.<br>
&gt;<br>
&gt;<br>
You could use the &quot;num_recv_frames&quot; device argument:<br>
<br>
num_recv_frames=3D256<br>
<br>
See if that makes a difference.<br>
<br>
<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Sent with Proton Mail secure email.<br>
&gt;<br>
&gt; ------- Original Message -------<br>
&gt; On Saturday, September 23rd, 2023 at 23:40, Marcus M=C3=BCller &lt;<a =
href=3D"mailto:marcus.mueller@ettus.com" target=3D"_blank">marcus.mueller@e=
ttus.com</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;&gt; Sounds like the USB host controller&#39;s Windows driver and/or co=
ntroller firmware coming<br>
&gt;&gt; with that driver leave things to be desired. I honestly don&#39;t =
have a good recommendation<br>
&gt;&gt; there, other than to make sure your Windows drivers are up to date=
 =E2=80=93 Windows is not per se<br>
&gt;&gt; worse than Linux at USB.<br>
&gt;&gt;<br>
&gt;&gt; Best,<br>
&gt;&gt;<br>
&gt;&gt; Marcus<br>
&gt;&gt;<br>
&gt;&gt; On 23.09.23 23:28, Ivan Zahartchuk wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; Hello. I have an issue with reading data from the USRP B200 on=
 Windows 10. When I run<br>
&gt;&gt;&gt; the benchmark_rate with a 20 MHz reception bandwidth, I see lo=
sses of more than 50<br>
&gt;&gt;&gt; percent. However, there are no losses during transmission. I h=
ave followed all the<br>
&gt;&gt;&gt; instructions, including modifying the registry and disabling p=
ower management for USB.<br>
&gt;&gt;&gt; The same issue occurs even when using an external power supply=
. Can you please advise on<br>
&gt;&gt;&gt; what the possible problems might be? On the same PC, when usin=
g Ubuntu, I can receive 50<br>
&gt;&gt;&gt; MHz with almost no losses.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.=
ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-l=
eave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a=
><br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettu=
s.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave=
@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br=
>
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

--0000000000007074a606062b77e8--

--===============6353778242982148507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6353778242982148507==--
