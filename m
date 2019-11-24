Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBD61082F1
	for <lists+usrp-users@lfdr.de>; Sun, 24 Nov 2019 11:40:25 +0100 (CET)
Received: from [::1] (port=48678 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iYpJV-0007pr-Kn; Sun, 24 Nov 2019 05:40:21 -0500
Received: from mail-qv1-f46.google.com ([209.85.219.46]:40035)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <cuervonicolas@gmail.com>)
 id 1iYpJS-0007lL-JC
 for usrp-users@lists.ettus.com; Sun, 24 Nov 2019 05:40:18 -0500
Received: by mail-qv1-f46.google.com with SMTP id i3so4582773qvv.7
 for <usrp-users@lists.ettus.com>; Sun, 24 Nov 2019 02:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GMAxibViPHVyA8AvD8V0O5yEpVWmFluIl6QN3bdjD5E=;
 b=PJlqpnGER2zCXS/5X7zb7Q2ncft6NTKpybzh1KiREodxWVarTX3ML5335fY8nj5TvC
 zbsvNtGejMMSGU3fN9ooY25e5pUsuGpKwOclxVVSTzK9uoueHjhGlGCCyZduyBaUQrLF
 kCfSKZ9wtKydjJ3kcud/HZSgSa4P+1u408ix3eBz0An9hltOd7FMMLc1EBoFnA9qIfu/
 APkNJwUHvKVWg0B5bm+kjpROKzGCLCoKubruQjBc2U6Q8zo29nb/kht8mi63KaXs1Udz
 cUP37v9pm8NKN4Rpk792wHFRvokxXSU5o7axzztReMUIOYWDVyuwEGoK+Hztv0v/EQom
 1yLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GMAxibViPHVyA8AvD8V0O5yEpVWmFluIl6QN3bdjD5E=;
 b=uZ/3Zaxnm/fntcwbssPqkagsVuPlXHvYpjj/3qMQDROEpS88ICY4ts87Y6xkG4ZnBB
 2HM6A6YxQKbEZTOWh+7r9rLzLcHJhYzpcgv+IaoIWKim1otG7isxPtEcA/ihSrMTuEIb
 iN3AK0ASx1z+Yjcva+VKIkHjtMlqo1bu2sXzvo8VXfJAeuLincPhyJMYoy1Vhua/Bpjl
 XGGgRCWUHWpIA6Ji5DH1Kw8ytJwmJivWC4U6D8TpO6j2yq8sq048iOQGCNy7I9Z9ETUz
 J+g50onJeynWzzO2gc6AKqGZj6iM82ZZufepgoGMCCUzRk0G6H1BT2DM+smrgqUGIdqA
 23rQ==
X-Gm-Message-State: APjAAAXBgdYp+/p4sWxkhImmvkhjbAp5PMnv2JVJcfja82VcX0/MWKo7
 fbc27NBCm3QCF3MwZsJIkaxXO3vjFPvRvMqW1FU=
X-Google-Smtp-Source: APXvYqyn5uSHLxydUbj0uhfy4PT5RwCB5bc4S4m7rzJhqtgREAeeOKP5C4aGEr/yqIjX7rKjlp8IBO6gqQu8KKBcIRs=
X-Received: by 2002:ad4:51d0:: with SMTP id p16mr5379912qvq.82.1574591977766; 
 Sun, 24 Nov 2019 02:39:37 -0800 (PST)
MIME-Version: 1.0
References: <CAG-BkhYSJvb4TvVR+nMRzZqW+6pew4ArFHCiCviifVoAQp4LLQ@mail.gmail.com>
In-Reply-To: <CAG-BkhYSJvb4TvVR+nMRzZqW+6pew4ArFHCiCviifVoAQp4LLQ@mail.gmail.com>
Date: Sun, 24 Nov 2019 11:39:26 +0100
Message-ID: <CAG-BkhaOXe=9dfNAVPqqrKiU3zAH4aC_uJtmcAqXEBf4_CWidA@mail.gmail.com>
To: discuss-gnuradio <discuss-gnuradio@gnu.org>, 
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] FOSDEM 2020: Free Software Radio Devroom CfP
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nicolas Cuervo Benavides via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nicolas Cuervo Benavides <cuervonicolas@gmail.com>
Cc: Martin Braun <martin@gnuradio.org>, philip.balister@gmail.com,
 derek@bitstovolts.com, osmocom-sdr@lists.osmocom.org
Content-Type: multipart/mixed; boundary="===============4358479823050492204=="
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

--===============4358479823050492204==
Content-Type: multipart/alternative; boundary="0000000000008043c805981543f2"

--0000000000008043c805981543f2
Content-Type: text/plain; charset="UTF-8"

Dear friends and fans of software-defined radio,



the SDR track at next year's FOSDEM still has some slots left! We already
have
some submissions and we are in the process of ranking those, but we will
gladly
add YOUR presentation to the list!



If you have anything related to the field of free software radio, please

head to:



https://penta.fosdem.org/submission/FOSDEM20



and submit your short abstract! We're looking very much forward to your
submission.



For the committee,



Nicolas Cuervo

On Wed, Oct 16, 2019 at 8:19 PM Nicolas Cuervo Benavides <
cuervonicolas@gmail.com> wrote:

> Dear friends and fans of software-defined radio and free/open-source radio
> topics in general,
>
> FOSDEM 2020 (the free and open-source developer's meeting in Brussels,
> Europe) will, once again, feature a track on Software Defined Radio, and
> any other radio-related topics in the (now known as) *Free Software Radio* devroom.
> Therefore, we invite developers and users from the free software radio
> community to join us for this track and present your talks or demos.
>
>
> Software Radio has become an important tool to allow anyone to access the
> EM spectrum. Using free software radio libraries and applications and cheap
> hardware, anyone can now start hacking on wireless communications, remote
> sensing, radar, fun hacks of all sorts, or other applications. At FOSDEM,
> we hope to network all these projects and improve collaboration, bring new
> ideas forward and get more people involved.
>
>
> The track's web site resides at the link below. The final schedule will be
> available through Pentabarf and the official FOSDEM website.
>
> https://fosdem.org/2020/schedule/track/free_software_radio/
>
>
> Additional Information will be also available at:
> https://wiki.gnuradio.org/index.php/FOSDEM_2020
>
>
> ** Submit your presentations
>
> To suggest a talk, go to https://penta.fosdem.org/submission/FOSDEM20 and
> follow the instructions (you need an account, but can use your account from
> last year if you have one). You need to create an 'Event'; make sure it's
> in the Free Software Radio track! Lengths aren't fixed, but give a
> realistic estimate and please don't exceed 30 minutes unless you have
> something special planned (in that case, contact one of us). Also, don't
> forget to include time for Q&A.
> We will typically go for 30-minute slots -- shorter talks, unless they're
> really short, usually tend to screw up the schedule too much.
>
> You aren't limited to slide presentations, of course. Be creative.
> However, FOSDEM is an open-source conference, therefore we ask you to stay
> clear of marketing presentations and present something relevant to
> free/open software. We like nitty-gritty technical stuff.
>
> Topics discussed in this devroom include:
>
> * SDR Frameworks + Tools
> * Cellular/telecoms software
> * Free/Open SDR hardware
> * Wireless security
> * Random fun wireless hacks
> * SDR in education
> * Satellite/spacecraft communication
> * Ham radio related topics
>
>
> ** Important Dates
>
> FOSDEM is February 1st and 2nd, 2020. The Free Software Radio devroom is
> happening on Sunday, the 2nd of February.
>
> The submission deadline is Friday, December 6th. A complete schedule for
> the presentations in the devroom will be available on the 15th of December.
>
>
> In the last years we were always full to the brim with presentations, so
> if you want to present, please make sure to submit your abstracts soon!
>
> ** Steering Committee
> The track committee consists of:
>
> * Phil Balister - "Crofton"
> * Sylvain Munaut -"tnt"
> * Derek Kozel - "dkozel"
> * Nicolas Cuervo - "primercuervo"
> * Martin Braun - "mbr0wn"  (Emeritus)
>
>
> Hope to hear from you soon! And please forward this announcement.
>

--0000000000008043c805981543f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear friends and fans of software-defined radio, =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 <br>the SDR track at next year&#39;s FOSDEM still has =
some slots left! We already have =C2=A0<br>some submissions and we are in t=
he process of ranking those, but we will gladly <br>add YOUR presentation t=
o the list! =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 <br>If you have anything related to the field of free softwar=
e radio, please =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>head to: =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 <br><a href=3D"https://penta.fosdem.org/submission/FOSDEM=
20">https://penta.fosdem.org/submission/FOSDEM20</a> =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 <br>and submit your short abstract! We&#39;re looking =
very much forward to your=C2=A0<br>submission. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>For the committee,=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>Nicolas Cue=
rvo=C2=A0<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Wed, Oct 16, 2019 at 8:19 PM Nicolas Cuervo Benavides &lt;<=
a href=3D"mailto:cuervonicolas@gmail.com">cuervonicolas@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Dear friends and fans of software-defined radio and free/open-sour=
ce radio topics in general,<br><div><br></div><div><p style=3D"margin:0.5em=
 0px;line-height:inherit;color:rgb(37,37,37);font-family:sans-serif">FOSDEM=
 2020 (the free and open-source developer&#39;s meeting in Brussels, Europe=
) will, once again, feature a track on Software Defined Radio, and any othe=
r radio-related topics in the (now known as)=C2=A0<i>Free Software Radio</i=
>=C2=A0devroom. Therefore, we invite developers and users from the free sof=
tware radio community to join us for this track and present your talks or d=
emos.</p><p style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(37,37,3=
7);font-family:sans-serif"><br></p><p style=3D"margin:0.5em 0px;line-height=
:inherit;color:rgb(37,37,37);font-family:sans-serif">Software Radio has bec=
ome an important tool to allow anyone to access the EM spectrum. Using free=
 software radio libraries and applications and cheap hardware, anyone can n=
ow start hacking on wireless communications, remote sensing, radar, fun hac=
ks of all sorts, or other applications. At FOSDEM, we hope to network all t=
hese projects and improve collaboration, bring new ideas forward and get mo=
re people involved.</p><p style=3D"margin:0.5em 0px;line-height:inherit;col=
or:rgb(37,37,37);font-family:sans-serif"><br></p><p style=3D"margin:0.5em 0=
px;line-height:inherit;color:rgb(37,37,37);font-family:sans-serif">The trac=
k&#39;s web site resides at the link below<span style=3D"font-family:Arial,=
Helvetica,sans-serif;color:rgb(34,34,34)">. The final schedule will=C2=A0</=
span><span style=3D"font-family:Arial,Helvetica,sans-serif;color:rgb(34,34,=
34)">be available through Pentabarf and the official FOSDEM website.</span>=
</p><p style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(37,37,37);fo=
nt-family:sans-serif"><a href=3D"https://fosdem.org/2020/schedule/track/fre=
e_software_radio/" target=3D"_blank">https://fosdem.org/2020/schedule/track=
/free_software_radio/</a><br></p><p style=3D"margin:0.5em 0px;line-height:i=
nherit;color:rgb(37,37,37);font-family:sans-serif"><br></p><p style=3D"marg=
in:0.5em 0px;line-height:inherit;color:rgb(37,37,37);font-family:sans-serif=
">Additional Information will be also available at:=C2=A0<a href=3D"https:/=
/wiki.gnuradio.org/index.php/FOSDEM_2020" style=3D"font-family:Arial,Helvet=
ica,sans-serif" target=3D"_blank">https://wiki.gnuradio.org/index.php/FOSDE=
M_2020</a></p><p style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(37=
,37,37);font-family:sans-serif"><br>** Submit your presentations<br></p><p =
style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(37,37,37);font-fami=
ly:sans-serif">To suggest a talk, go to=C2=A0<a href=3D"https://penta.fosde=
m.org/submission/FOSDEM20" target=3D"_blank">https://penta.fosdem.org/submi=
ssion/FOSDEM20</a>=C2=A0and follow the instructions (you need an account, b=
ut can use your account from last year if you have one). You need to create=
 an &#39;Event&#39;; make sure it&#39;s in the Free Software Radio track! L=
engths aren&#39;t fixed, but give a realistic estimate and please don&#39;t=
 exceed 30 minutes unless you have something special planned (in that case,=
 contact one of us). Also, don&#39;t forget to include time for Q&amp;A.<br=
>We will typically go for 30-minute slots -- shorter talks, unless they&#39=
;re really short, usually tend to screw up the schedule too much.<br></p><p=
 style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(37,37,37);font-fam=
ily:sans-serif">You aren&#39;t limited to slide presentations, of course. B=
e creative. However, FOSDEM is an open-source conference, therefore we ask =
you to stay clear of marketing presentations and present something relevant=
 to free/open software. We like nitty-gritty technical stuff.<br><br>Topics=
 discussed in this devroom include:<br><br>* SDR Frameworks + Tools<br>* Ce=
llular/telecoms software<br>* Free/Open SDR hardware<br>* Wireless security=
<br>* Random fun wireless hacks<br>* SDR in education<br>* Satellite/spacec=
raft communication<br>* Ham radio related topics<br><br><br>** Important Da=
tes<br></p><p style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(37,37=
,37);font-family:sans-serif">FOSDEM is February 1st and 2nd, 2020. The Free=
 Software Radio devroom is happening on Sunday, the 2nd of February.</p><p =
style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(37,37,37);font-fami=
ly:sans-serif">The submission deadline is Friday, December 6th. A complete =
schedule for the presentations in the devroom will be available on the 15th=
 of December.</p><p style=3D"margin:0.5em 0px;line-height:inherit;color:rgb=
(37,37,37);font-family:sans-serif"><br></p><p style=3D"margin:0.5em 0px;lin=
e-height:inherit;color:rgb(37,37,37);font-family:sans-serif">In the last ye=
ars we were always full to the brim with presentations, so if you want to p=
resent, please make sure to submit your abstracts soon!<br><br>** Steering =
Committee<br>The track committee consists of:<br><br>* Phil Balister -=C2=
=A0&quot;Crofton&quot;<br>* Sylvain Munaut -&quot;tnt&quot;<br>* Derek Koze=
l - &quot;dkozel&quot;<br>* Nicolas Cuervo - &quot;primercuervo&quot;<br>* =
Martin Braun -=C2=A0&quot;mbr0wn&quot;=C2=A0 (Emeritus)<br></p><p style=3D"=
margin:0.5em 0px;line-height:inherit;color:rgb(37,37,37);font-family:sans-s=
erif"><br></p><p style=3D"margin:0.5em 0px;line-height:inherit;color:rgb(37=
,37,37);font-family:sans-serif">Hope to hear from you soon! And please forw=
ard this announcement.<span><font color=3D"#888888"><br></font></span></p><=
/div></div>
</blockquote></div>

--0000000000008043c805981543f2--


--===============4358479823050492204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4358479823050492204==--

