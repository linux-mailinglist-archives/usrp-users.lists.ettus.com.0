Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B27BB3A6A93
	for <lists+usrp-users@lfdr.de>; Mon, 14 Jun 2021 17:37:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9F736384871
	for <lists+usrp-users@lfdr.de>; Mon, 14 Jun 2021 11:37:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XE/8Down";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 12452384871
	for <USRP-users@lists.ettus.com>; Mon, 14 Jun 2021 11:36:21 -0400 (EDT)
Received: by mail-qk1-f169.google.com with SMTP id q16so12785431qkm.9
        for <USRP-users@lists.ettus.com>; Mon, 14 Jun 2021 08:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=TGYsKOSipAF/b/ewom9gY158wUeDzwKXpE5jdRv1lM4=;
        b=XE/8DownicraE7Jhn56aZyf12y3VkD1f5adCZq2TrV6heDZnuENN0s67WJULVuK7FJ
         40ih5xF3w03yTVH2LBHjjRvTv2Im6w6Uy2jRpMEPZhvUlAZH+o+SbQrAjE/cJhmEb49Q
         WQ4/tb2HrusM9I8lrFaHGFajqzUtM9C93Pqf8sdGazOtdEh9N8MwbDVKKYXn7mHkEYwN
         DqVJ8UB9XC3iTw1Lr2iYBBGiWzdLLrLsw3eSQrvh038Pl1fEeaC9Usal/6XDOgZbW2mk
         HDUaFaCnHZgnuZIp66BUnFANy8RthMGADppQYJoLa406dEVDDSjYwxMULBVsmiVKs41K
         srvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=TGYsKOSipAF/b/ewom9gY158wUeDzwKXpE5jdRv1lM4=;
        b=J8+QFxbR7M7+lY4iERiZrjJvXdHwXeRlaWofrHBMKR8UYlMB3ofHQIoK4IZFDeu8zK
         7wPKKDA6zy5Q0XB3IHbvfmKn4jrlehV4YuyjT2iU+8oC6dcBnF4C317Ga+yAny2izwj6
         92M1oJfIfsI10acJnxMc/wi0ziwRNNPYUTQuzqLzlWPu7XjdOMEV9V/ChyifETB5jH0X
         QHXILYG03mShLwrRCswUUdtsFJBAdSrQ/xFH/gQpLyj75+WeTYUU2NOYWBzUB+YW8m10
         c96J7jA5GQpAFYIrll81AvlbTJNVpvwpF/j9B90uX96SFYcrkhn9JDA51b0raF1r0xTq
         YR3w==
X-Gm-Message-State: AOAM533xGb8OM36TXvgnKylUhoKPH7j8jWRGyp6cRaYiRpkX3ibUtAr0
	IGodMYPPffuheb0A0XJnvRA=
X-Google-Smtp-Source: ABdhPJwSU8rO0SwnjjRjmOKBQN3Z+fYcv29zMypIJobQCBdZIADS7VZmW8CHuhJP7NWVbT254Hjn+Q==
X-Received: by 2002:a37:664b:: with SMTP id a72mr16877159qkc.389.1623684981404;
        Mon, 14 Jun 2021 08:36:21 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id c8sm10010418qtn.67.2021.06.14.08.36.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 08:36:20 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 14 Jun 2021 11:36:19 -0400
Message-Id: <27FCB714-21CD-454A-A063-53057D2E15DF@gmail.com>
References: <MN2PR12MB33128E0A793E2550F2CBB98AB8319@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB33128E0A793E2550F2CBB98AB8319@MN2PR12MB3312.namprd12.prod.outlook.com>
To: Jim Palladino <jim@gardettoengineering.com>
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: SAR2DBPVMO24PRGQRD4ZZSVFEPSPJEQY
X-Message-ID-Hash: SAR2DBPVMO24PRGQRD4ZZSVFEPSPJEQY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 1PPS input voltage
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SAR2DBPVMO24PRGQRD4ZZSVFEPSPJEQY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3175616224137391796=="


--===============3175616224137391796==
Content-Type: multipart/alternative; boundary=Apple-Mail-6C174DEF-7CE0-4626-85E6-0FB675455940
Content-Transfer-Encoding: 7bit


--Apple-Mail-6C174DEF-7CE0-4626-85E6-0FB675455940
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I don=E2=80=99t own one. So I=E2=80=99ve put in a query to R&D.=20


Sent from my iPhone

> On Jun 14, 2021, at 11:22 AM, Jim Palladino <jim@gardettoengineering.com> w=
rote:
>=20
> =EF=BB=BF
> Hi Marcus,
>=20
> What is the best way to check the hardware revision? I don't have one in f=
ront of me, but one of the other engineers checked the label on a N320 and d=
oesn't see a revision letter (at least it isn't obvious if it's there). Or c=
an this be checked with uhd_usrp_probe. The only thing we see there is:
>=20
> |   |   rev: 10
>=20
> Thanks,=20
> Jim
>=20
> From: Marcus M=C3=BCller <marcus.mueller@ettus.com>
> Sent: Friday, June 11, 2021 3:07 PM
> To: Marcus D. Leech <patchvonbraun@gmail.com>; Jim Palladino <jim@gardetto=
engineering.com>; usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] Re: N320 1PPS input voltage
> =20
> Hi Jim,
>=20
> The congregation of Marcuses checked with R&D, and we figured out that in f=
act, the
> NC7SV157 in U24 was replaced by a SN74LVC2G34, which is OK up to 6.5 V inp=
ut, in Hardware
> revisions starting with Rev C.
>=20
> So, if (and only if) you have a N320 in a revision that's C or greater, yo=
u're safe.
> Otherwise, please don't connect a 5V source to the PPS input for now.
>=20
> Best regards,
>=20
> Marcus
>=20
>=20
> On 11.06.21 15:58, Marcus D. Leech wrote:
> > On 06/11/2021 09:45 AM, Jim Palladino wrote:
> >> Hi Marcus,
> >>
> >> Right -- the output of the Octoclock is 5V. I'm not seeing how the N320=
 can accept that
> >> as an input. The knowledge base article says the N320 expects 5Vpp at t=
he 1pps input.
> >> But the schematics/parts data sheet for the input buffer don't seem to s=
upport that . .
> >> . unless I'm missing something.
> >>
> >> Thanks,
> >> Jim
> > It certainly looks like a potential problem, but I haven't heard of anyo=
ne having 1PPS
> > failure issues on the N320 when used with
> >   Octoclock--pretty sure it was tested with Octoclock prior to release. =
 But I'll check
> > with R&D.
> >
> >
> >>
> >> -----------------------------------------------------------------------=
-------------------
> >> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> >> *Sent:* Friday, June 11, 2021 9:39 AM
> >> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> >> *Subject:* [USRP-users] Re: N320 1PPS input voltage
> >> =20
> >> On 06/11/2021 09:11 AM, Marcus M=C3=BCller wrote:
> >> > Hello Jim,
> >> >
> >> >
> >> > hm, that knowledge base article must be wrong: The octoclock internal=
ly only has a 3.3V
> >> > supply. But before I say something wrong here, let me check back.
> >> >
> >> >
> >> > Best regards,
> >> >
> >> > Marcus
> >> The 1PPS outputs on the Octoclock are bufered by 7404 inverters, which
> >> appear to have a 5V Vcc.
> >>
> >> >
> >> >
> >> > On 11.06.21 14:17, Jim Palladino wrote:
> >> >
> >> >> Hello,
> >> >>
> >> >> We are planning on using an octoclock with several devices, includin=
g an N320. The
> >> >> octoclock outputs a 5V 1pps signal, but I'm confused about the N320 1=
pps input.
> >> >>
> >> >> According to
> >> (https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_N3=
20_N321-29-3A&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3D=
XUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD=
1MyEElYsX5a8WMs&s=3DTdFHQJNItGehIsL1D4yXezIfq_vO05AvF1_lMSyNpHs&e=3D
> >> >> "PPS - Pulse Per Second Using a PPS signal for timestamp synchroniza=
tion requires a
> >> >> square wave signal with the following a 5Vpp amplitude."
> >> >>
> >> >> If I look at the schematics for the N320, on page 15,
> >> >>
> >> (https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_im=
ages_f_f4_USRP-5FN3XX-5FMB-5FSchematic.pdf&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8=
b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D=
-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&s=3D6JTHdP9IoYFRQhn24LgJjEofkuFw=
gAsHTs9iHhgMuBg&e=3D
> >> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_im=
ages_f_f4_USRP-5FN3XX-5FMB-5FSchematic.pdf&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8=
b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D=
-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&s=3D6JTHdP9IoYFRQhn24LgJjEofkuFw=
gAsHTs9iHhgMuBg&e=3D>)
> >> they show that the input
> >> >> 1pps signal goes through an NC7SV157. Vcc for that is 3.3V in the sc=
hematics.
> >> >>
> >> >> According to the datasheet, the absolute maximum rating on the input=
 is 4.3V.
> >> >>
> >> "https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.onsemi.com_=
pdf_datasheet_nc7sv157-2Dd.pdf&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5=
A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D-9vS_HYCWF4=
BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&s=3DXPmiCDRDfM2wVtI1g4KChC9dkOJhMyrqBTMv_Rx=
01Xg&e=3D
> >> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.onsemi.com_=
pdf_datasheet_nc7sv157-2Dd.pdf&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5=
A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D-9vS_HYCWF4=
BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&s=3DXPmiCDRDfM2wVtI1g4KChC9dkOJhMyrqBTMv_Rx=
01Xg&e=3D>"
> >> >>
> >> >> So, I'm not sure how the N320 can safely accept a 5V input (from the=
 octoclock or other
> >> >> device).
> >> >>
> >> >> Thanks,
> >> >> Jim
> >> >>
> >> >>
> >> >> _______________________________________________
> >> >> USRP-users mailing list -- usrp-users@lists.ettus.com
> >> >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >> > _______________________________________________
> >> > USRP-users mailing list -- usrp-users@lists.ettus.com
> >> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >> _______________________________________________
> >> USRP-users mailing list -- usrp-users@lists.ettus.com
> >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-6C174DEF-7CE0-4626-85E6-0FB675455940
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I don=E2=80=99t own one. So I=E2=80=99ve pu=
t in a query to R&amp;D.&nbsp;<div><br><br><div dir=3D"ltr">Sent from my iPh=
one</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 14, 2021, at 1=
1:22 AM, Jim Palladino &lt;jim@gardettoengineering.com&gt; wrote:<br><br></b=
lockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
Hi Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
What is the best way to check the hardware revision? I don't have one in fro=
nt of me, but one of the other engineers checked the label on a N320 and doe=
sn't see a revision letter (at least it isn't obvious if it's there). Or can=
 this be checked with uhd_usrp_probe.
 The only thing we see there is:<br>
<br>
| &nbsp; | &nbsp; rev: 10<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
Thanks,&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" sty=
le=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus M=C3=BCller &lt;=
marcus.mueller@ettus.com&gt;<br>
<b>Sent:</b> Friday, June 11, 2021 3:07 PM<br>
<b>To:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;; Jim Palladino &l=
t;jim@gardettoengineering.com&gt;; usrp-users@lists.ettus.com &lt;usrp-users=
@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: N320 1PPS input voltage</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;"=
>
<div class=3D"PlainText">Hi Jim,<br>
<br>
The congregation of Marcuses checked with R&amp;D, and we figured out that i=
n fact, the<br>
NC7SV157 in U24 was replaced by a SN74LVC2G34, which is OK up to 6.5 V input=
, in Hardware<br>
revisions starting with Rev C.<br>
<br>
So, if (and only if) you have a N320 in a revision that's C or greater, you'=
re safe.<br>
Otherwise, please don't connect a 5V source to the PPS input for now.<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
<br>
On 11.06.21 15:58, Marcus D. Leech wrote:<br>
&gt; On 06/11/2021 09:45 AM, Jim Palladino wrote:<br>
&gt;&gt; Hi Marcus,<br>
&gt;&gt;<br>
&gt;&gt; Right -- the output of the Octoclock is 5V. I'm not seeing how the N=
320 can accept that<br>
&gt;&gt; as an input. The knowledge base article says the N320 expects 5Vpp a=
t the 1pps input.<br>
&gt;&gt; But the schematics/parts data sheet for the input buffer don't seem=
 to support that . .<br>
&gt;&gt; . unless I'm missing something.<br>
&gt;&gt;<br>
&gt;&gt; Thanks,<br>
&gt;&gt; Jim<br>
&gt; It certainly looks like a potential problem, but I haven't heard of any=
one having 1PPS<br>
&gt; failure issues on the N320 when used with<br>
&gt; &nbsp; Octoclock--pretty sure it was tested with Octoclock prior to rel=
ease.&nbsp; But I'll check<br>
&gt; with R&amp;D.<br>
&gt;<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; -------------------------------------------------------------------=
-----------------------<br>
&gt;&gt; *From:* Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;<br>
&gt;&gt; *Sent:* Friday, June 11, 2021 9:39 AM<br>
&gt;&gt; *To:* usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;=
<br>
&gt;&gt; *Subject:* [USRP-users] Re: N320 1PPS input voltage<br>
&gt;&gt; &nbsp;<br>
&gt;&gt; On 06/11/2021 09:11 AM, Marcus M=C3=BCller wrote:<br>
&gt;&gt; &gt; Hello Jim,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; hm, that knowledge base article must be wrong: The octoclock i=
nternally only has a 3.3V<br>
&gt;&gt; &gt; supply. But before I say something wrong here, let me check ba=
ck.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Best regards,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Marcus<br>
&gt;&gt; The 1PPS outputs on the Octoclock are bufered by 7404 inverters, wh=
ich<br>
&gt;&gt; appear to have a 5V Vcc.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On 11.06.21 14:17, Jim Palladino wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; Hello,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; We are planning on using an octoclock with several devices=
, including an N320. The<br>
&gt;&gt; &gt;&gt; octoclock outputs a 5V 1pps signal, but I'm confused about=
 the N320 1pps input.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; According to<br>
&gt;&gt; (<a href=3D""></a>https://urldefense.proofpoint.com/v2/url?u=3Dhttp=
s-3A__kb.ettus.com_N320_N321-29-3A&amp;d=3DDwIF-g&amp;c=3DeuGZstcaTDllvimEN8=
b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx=
0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&amp;s=3DTdFHQJNItGehIs=
L1D4yXezIfq_vO05AvF1_lMSyNpHs&amp;e=3D<br>
&gt;&gt; &gt;&gt; "PPS - Pulse Per Second Using a PPS signal for timestamp s=
ynchronization requires a<br>
&gt;&gt; &gt;&gt; square wave signal with the following a 5Vpp amplitude."<b=
r>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; If I look at the schematics for the N320, on page 15,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; (<a href=3D""></a>https://urldefense.proofpoint.com/v2/url?u=3Dhttp=
s-3A__kb.ettus.com_images_f_f4_USRP-5FN3XX-5FMB-5FSchematic.pdf&amp;d=3DDwIF-=
g&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGx=
RI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5=
a8WMs&amp;s=3D6JTHdP9IoYFRQhn24LgJjEofkuFwgAsHTs9iHhgMuBg&amp;e=3D<br>
&gt;&gt; &lt;<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3=
A__kb.ettus.com_images_f_f4_USRP-5FN3XX-5FMB-5FSchematic.pdf&amp;d=3DDwIF-g&=
amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI=
-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8=
WMs&amp;s=3D6JTHdP9IoYFRQhn24LgJjEofkuFwgAsHTs9iHhgMuBg&amp;e=3D">https://ur=
ldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_images_f_f4_USRP-5=
FN3XX-5FMB-5FSchematic.pdf&amp;d=3DDwIF-g&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqO=
f-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D=
-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&amp;s=3D6JTHdP9IoYFRQhn24LgJjEof=
kuFwgAsHTs9iHhgMuBg&amp;e=3D</a>&gt;)<br>
&gt;&gt; they show that the input<br>
&gt;&gt; &gt;&gt; 1pps signal goes through an NC7SV157. Vcc for that is 3.3V=
 in the schematics.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; According to the datasheet, the absolute maximum rating on=
 the input is 4.3V.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; "<a href=3D""></a>https://urldefense.proofpoint.com/v2/url?u=3Dhttp=
s-3A__www.onsemi.com_pdf_datasheet_nc7sv157-2Dd.pdf&amp;d=3DDwIF-g&amp;c=3De=
uGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauO=
vsPdD2NZkfwDnwpYx0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&amp;s=
=3DXPmiCDRDfM2wVtI1g4KChC9dkOJhMyrqBTMv_Rx01Xg&amp;e=3D<br>
&gt;&gt; &lt;<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3=
A__www.onsemi.com_pdf_datasheet_nc7sv157-2Dd.pdf&amp;d=3DDwIF-g&amp;c=3DeuGZ=
stcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsP=
dD2NZkfwDnwpYx0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&amp;s=3D=
XPmiCDRDfM2wVtI1g4KChC9dkOJhMyrqBTMv_Rx01Xg&amp;e=3D">https://urldefense.pro=
ofpoint.com/v2/url?u=3Dhttps-3A__www.onsemi.com_pdf_datasheet_nc7sv157-2Dd.p=
df&amp;d=3DDwIF-g&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3D=
XUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2L=
J3yD1MyEElYsX5a8WMs&amp;s=3DXPmiCDRDfM2wVtI1g4KChC9dkOJhMyrqBTMv_Rx01Xg&amp;=
e=3D</a>&gt;"<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; So, I'm not sure how the N320 can safely accept a 5V input=
 (from the octoclock or other<br>
&gt;&gt; &gt;&gt; device).<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Thanks,<br>
&gt;&gt; &gt;&gt; Jim<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; USRP-users mailing list -- usrp-users@lists.ettus.com<br>
&gt;&gt; &gt;&gt; To unsubscribe send an email to usrp-users-leave@lists.ett=
us.com<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; USRP-users mailing list -- usrp-users@lists.ettus.com<br>
&gt;&gt; &gt; To unsubscribe send an email to usrp-users-leave@lists.ettus.c=
om<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list -- usrp-users@lists.ettus.com<br>
&gt;&gt; To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br=
>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- usrp-users@lists.ettus.com<br>
&gt; To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
</div>
</span></font></div>


</div></blockquote></div></body></html>=

--Apple-Mail-6C174DEF-7CE0-4626-85E6-0FB675455940--

--===============3175616224137391796==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3175616224137391796==--
