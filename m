Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B5C3BA187
	for <lists+usrp-users@lfdr.de>; Fri,  2 Jul 2021 15:43:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 61D8338482B
	for <lists+usrp-users@lfdr.de>; Fri,  2 Jul 2021 09:43:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nnGlrQqN";
	dkim-atps=neutral
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id ADB55384805
	for <USRP-users@lists.ettus.com>; Fri,  2 Jul 2021 09:43:02 -0400 (EDT)
Received: by mail-qt1-f172.google.com with SMTP id h3so6609620qto.4
        for <USRP-users@lists.ettus.com>; Fri, 02 Jul 2021 06:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=V7B+DuSZsQNAoxdA75h7QdnBN/IajOxbz4Z2snW+KN8=;
        b=nnGlrQqNpDzIRR/9wPhqi19l5fvmgjhZOiQmrlo6Zph467C+Ajud8RAJF2ujkRX7ZQ
         D5CNIwOjP4IEs3WFRTFfKgo4P9JN48PkVWjA/vaY7QSYxAm41sIJ8URb84SeNLkXDqO1
         YhXJOirzmYKfk+B6kJji/gRq47YMyPPG/04gSl/NGR2AiKvQpK1Oi8KVwxcOCj7kXhED
         bn7xKoSmHK04pcHphbATt9+bDEI9N6kT4U77lvbGLWJzY7mO60aUBnkXu3WNlVFzNMu2
         3CffHN9rrqVzXpi0grK5UmcbtM9+kgWLbZDMyOCkuxa3v6mso6Aktu/nmFrt9uVWtvoC
         JadA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=V7B+DuSZsQNAoxdA75h7QdnBN/IajOxbz4Z2snW+KN8=;
        b=mj8aI8VQ2z2eHjg6hzzsd+HcWxSTcGlo5JJctqwYeUqraPGg8O33xL01GhooXh3y9i
         q30ENHNWXfICfXxYY1fSJAoz0WKQ5oFPx3vH2Z3GoitQRFs03dTgKi7qSkYvSRk+fUFa
         luoONBXh8o8pXl/Exw3J+8J7hZot43vAt0aTFDvK9fKf/PCuMYNdjhux0kXLtkHaKF8x
         0s6xU7R1RCfFaiNR0e/OzebS6PqJhcuHSiyRgcQ6XiohMvHiLGnXQg65Rrt+DhR4Qyei
         jAy28MUYpEQfQXDBX7GxHraOfdRuJwK8wdNV/COL/tX0gLps2WRPqcKZFeompeQy50YO
         Pcow==
X-Gm-Message-State: AOAM533xXc/vV4NDUWjk3AQnYkoLqyahETHAa+o89x+mFxt1D+9MnSTA
	37Bzmjn+BndKCehg9cIGyNc=
X-Google-Smtp-Source: ABdhPJwnMfbe/QjUrr0Tai76gzGWVKmkEM+WCtkn5x0Uxw0gM7zuYW6djnh9+ESuaE4O9qv6juqu4g==
X-Received: by 2002:a05:622a:170d:: with SMTP id h13mr5084483qtk.264.1625233382188;
        Fri, 02 Jul 2021 06:43:02 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id k6sm1238682qtg.78.2021.07.02.06.43.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jul 2021 06:43:01 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 2 Jul 2021 09:43:00 -0400
Message-Id: <BB03C39B-39C3-4D5D-A45A-FA4601ABD023@gmail.com>
References: <TYYP286MB14079C6F1D2249EA826A090BF01F9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
In-Reply-To: <TYYP286MB14079C6F1D2249EA826A090BF01F9@TYYP286MB1407.JPNP286.PROD.OUTLOOK.COM>
To: Oscar Pablo <oscar_pabloo@outlook.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: XEMENB2CRGD6E2OLEA3HX4VNMNK4L3JN
X-Message-ID-Hash: XEMENB2CRGD6E2OLEA3HX4VNMNK4L3JN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to get time of last pps during streaming
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XEMENB2CRGD6E2OLEA3HX4VNMNK4L3JN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8685083463815597879=="


--===============8685083463815597879==
Content-Type: multipart/alternative; boundary=Apple-Mail-C5F18B88-57D8-4178-8F8C-7173BE786BEF
Content-Transfer-Encoding: 7bit


--Apple-Mail-C5F18B88-57D8-4178-8F8C-7173BE786BEF
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

This is why most folks who are using a shared PPS signal also use a shared 1=
0Mhz reference signal.



Sent from my iPhone

> On Jul 2, 2021, at 9:00 AM, Oscar Pablo <oscar_pabloo@outlook.com> wrote:
>=20
> =EF=BB=BF
> HI Marcus,
> this timestamp in the metadata is not the accurate timestamp this timestam=
p is computed from the the sample count so the accuracy is depend on the acc=
uracy of the on board crystal. so why i want to know the time of last pps be=
cause usrp do not keep the time sync to PPS. the sync only happen when set t=
he time of PPS. for example when set next pps time to 0 seconds then after 1=
 hour the pps time should be 3600 seconds but for the error of the on board c=
rystal so the pps time is 3600+-error. so we need to keep to know the time o=
f pps for long time sync.
>=20
>=20
> From: Marcus M=C3=BCller <marcus.mueller@ettus.com>
> Sent: Sunday, May 23, 2021 7:53 PM
> To: Oscar Pablo <oscar_pabloo@outlook.com>; usrp-users@lists.ettus.com <US=
RP-users@lists.ettus.com>
> Subject: Re: [USRP-users] how to get time of last pps during streaming
> =20
> Hi Oscar,
>=20
>=20
> the metadata contains a timestamp. That's literally a timestamp =E2=80=93 I=
f you know the time at
> *any* PPS, for example because you set it, then you can directly infer the=
 time at the
> last PPS from the timestamp.
>=20
> However, usually people care about the time of a sample, not the time at t=
he last PPS.
>=20
>=20
> Best regards,
>=20
> Marcus
>=20
> On 23.05.21 04:36, Oscar Pablo wrote:
> > Hi,
> > i want to know the time of each pps during rx streaming. i don't know if=
 i call
> > get_time_last_pps will cause the overload? is there a way to let uhd put=
 time of last
> > pps in the meta data of the received data?
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-C5F18B88-57D8-4178-8F8C-7173BE786BEF
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">This is why most folks who are using a shar=
ed PPS signal also use a shared 10Mhz reference signal.<div><br></div><div><=
br><div><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><=
blockquote type=3D"cite">On Jul 2, 2021, at 9:00 AM, Oscar Pablo &lt;oscar_p=
abloo@outlook.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"c=
ite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-12=
52">



<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
HI Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
this timestamp in the metadata is not the accurate timestamp this timestamp i=
s computed from the the sample count so the accuracy is depend on the accura=
cy of the on board crystal. so why i want to know the time of last pps becau=
se usrp do not keep the time
 sync to PPS. the sync only happen when set the time of PPS. for example whe=
n set next pps time to 0 seconds then after 1 hour the pps time should be 36=
00 seconds but for the error of the on board crystal so the pps time is 3600=
+-error. so we need to keep to
 know the time of pps for long time sync.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt=
; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D=
"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Marcus M=C3=BCller &lt;=
marcus.mueller@ettus.com&gt;<br>
<b>Sent:</b> Sunday, May 23, 2021 7:53 PM<br>
<b>To:</b> Oscar Pablo &lt;oscar_pabloo@outlook.com&gt;; usrp-users@lists.et=
tus.com &lt;USRP-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] how to get time of last pps during streamin=
g</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt">=

<div class=3D"PlainText">Hi Oscar,<br>
<br>
<br>
the metadata contains a timestamp. That's literally a timestamp =E2=80=93 If=
 you know the time at<br>
*any* PPS, for example because you set it, then you can directly infer the t=
ime at the<br>
last PPS from the timestamp.<br>
<br>
However, usually people care about the time of a sample, not the time at the=
 last PPS.<br>
<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
On 23.05.21 04:36, Oscar Pablo wrote:<br>
&gt; Hi,<br>
&gt; i want to know the time of each pps during rx streaming. i don't know i=
f i call<br>
&gt; get_time_last_pps will cause the overload? is there a way to let uhd pu=
t time of last<br>
&gt; pps in the meta data of the received data?<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- usrp-users@lists.ettus.com<br>
&gt; To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
</div>
</span></font></div>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></div></body></html>=

--Apple-Mail-C5F18B88-57D8-4178-8F8C-7173BE786BEF--

--===============8685083463815597879==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8685083463815597879==--
