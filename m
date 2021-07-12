Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A737B3C5FB5
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 17:48:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AAE95384AC6
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 11:48:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="fCDsHL+e";
	dkim-atps=neutral
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 732E9383CF5
	for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 11:47:32 -0400 (EDT)
Received: by mail-oi1-f175.google.com with SMTP id q16so10751401oiw.6
        for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 08:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pVw4toLuyMRMZ/f3BF4Jxgwe/qMGg9iSlyv8Y0VbdiU=;
        b=fCDsHL+eFmGZzEQZJt3phi7Rauipasqd+E+oRCIuPskvV6TABUoJ+SlbFncYgtAv7p
         8vAoV2EDDpBDNXT0cSzv7iPNHwyV5hwRiIuh5wjmDCmhvHKLoCcfxhWF8Fea6ogpvIpV
         sCMFq+JMByqBaxc6/c1i1N4Y0Se41+GpgU7Q+RQY1N/DTHKV6rmnJucc+l//DRBxlJsI
         a8d1mFn239btqvRD/Z+A5Nb9NZRsyOM5WuXbJtyKrB9eOQvFTUNelnJW9sCZk+l34I/W
         +6f7RD9sTrMOut02RxsL3HUqLvlXKfMWOQWpvqsjYNnTDJpZ/VY7sQOUkJI+TG0errGA
         ezhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pVw4toLuyMRMZ/f3BF4Jxgwe/qMGg9iSlyv8Y0VbdiU=;
        b=Y7KNsjuKeiUi/klEvE2j7VDbZWzIGxg/Wf0ZXKOTc4fpLB2z/Sl3/Vt0aRjq7UmJof
         xeDVGJwExOdha7tpraYKxYlNBPvygBtV263Gs3Xvr6nHMCyhXq9s7b6G6SQWaV4sfK0Y
         4vR6ykT+pVhJ9a/yL5tuL8cl7Yqj73tdainokYuEZRYPu21RLPASR8yCEjj3ycuEW1Xa
         CtPRb5m9tPn1Jakc2UrbJlVSRR+hKbYg9pE12s89clrz47wMl7+qP/MXIC0gZUw3Y1fE
         sQy4xEGP1xFSL8pd7zANdhc3y+RYYqTR03+Efv+WLKU34IzbZytuZWTPuyMzY3zgAxEQ
         L0LA==
X-Gm-Message-State: AOAM531yi4fD5jeZ84MBoly8VGLSwe9sgciqAtXTXcGkOmcUBhSICgTK
	MPK8KvXyKb4/nQdwNSXdc3h/Qz6vFm54JBHCWQ7zTg==
X-Google-Smtp-Source: ABdhPJwhVBxSFin0JkNl0wSmAi7PAhvitoC6iCR0tOHp8+/vR9okwATblKSs13LQIzhn7j1+NUMru6WO+BC0nTSR43o=
X-Received: by 2002:aca:1103:: with SMTP id 3mr11169974oir.124.1626104851642;
 Mon, 12 Jul 2021 08:47:31 -0700 (PDT)
MIME-Version: 1.0
References: <bb6acb72-70e9-28b1-326a-ad63945c8e03@gmail.com>
 <CAGNhwTNf4F9gEEgJX_V7v0RWnndgRP7gr3_uF-R82j6sbkS93Q@mail.gmail.com>
 <ca7130e2-3932-e6a0-faab-c281bb14ce24@gmail.com> <CAGNhwTNQq3rU-eXtTK_cKq=5-BeLzZ6VvO7_nz9pWSmfQC+deA@mail.gmail.com>
 <afdd2477-d728-376b-647f-9c45b0f03c67@gmail.com>
In-Reply-To: <afdd2477-d728-376b-647f-9c45b0f03c67@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 12 Jul 2021 10:47:20 -0500
Message-ID: <CAB__hTT7JvHYt3AJQJ6_dHv1QmZQk7gm3Len5tBVPLAVSyz33w@mail.gmail.com>
To: Vladica Sark <vladicasark@gmail.com>
Message-ID-Hash: BD7OPR53VU36Q4UQEG2XWAQTNPIEAZGE
X-Message-ID-Hash: BD7OPR53VU36Q4UQEG2XWAQTNPIEAZGE
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Optical SFP+ adapters for N321
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BD7OPR53VU36Q4UQEG2XWAQTNPIEAZGE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0176055566639436946=="

--===============0176055566639436946==
Content-Type: multipart/alternative; boundary="0000000000000d09b605c6ef0a42"

--0000000000000d09b605c6ef0a42
Content-Type: text/plain; charset="UTF-8"

Hi Vladica,
From the 'changelog', it appears that N321 support began with release
3.14.  But, at that point I believe that WR was already broken.  So, I
think that there is no solution to your problem other than to wait for
Ettus to fix the WR issues.  However, WR has been broken for a while (note
user-list posts from last fall Sept  & Dec) so I don't know when this will
be working again.
Rob


On Wed, Jul 7, 2021 at 10:26 AM Vladica Sark <vladicasark@gmail.com> wrote:

> Hi Michael,
>
> I obtained the necessary SFP+ optical adapters and now I am trying to
> put uhd 3.13.1.0 on the N321s in order to use the WR synchronization.
> Unfortunately, when I update the sd card image with 3.13.1.0 the N321
> boots but the SFP0 and SFP1 do not go up. When I try to run
> uhd_find_devices, on a terminal using the USB port it says no UHD
> devices are found.
>
> I believe that the right FPGA image should be put on the FPGA, but the
> ways described in Knowledgebase are not working.
>
> Is there a way to put the version 3.13.1.0 on the N321? I have tried
> version 4.0.0.0 and it is working fine, but WR is broken.
>
> BR,
> Vladica
>
>
> On 22.06.21 21:31, Michael Dickens wrote:
> > I'm using primarily FS adapters, cables (single and multi mode), and
> > fiber connectors (to allow multiplexing lanes). The adapters I bought
> > were "generic" and had to be tweaked using an FS BOX to be fully
> > compatible with Intel or Mellanox NICs. This tweaking seems to have
> > helped a lot with the 100 Gb interface (E810); the 10 Gb interfaces do
> > not show much benefit to be manufacturer specific -- though I'm sure
> > it doesn't hurt! I have not tried a multi-mode to single mode splitter
> > / joiner, but I'd suppose they do exist & if anybody here has had
> > experience that would be useful to hear about! I hope this is useful!
> > - MLD
> >
> >
> > On Tue, Jun 22, 2021 at 10:05 AM Vladica Sark <vladicasark@gmail.com
> > <mailto:vladicasark@gmail.com>> wrote:
> >
> >     Hi Michael,
> >
> >     Thanks for the answer. For now for the data I am using DAC cables,
> >     but
> >     we would need larger distances, i.e. 50+ meters, and for this I would
> >     need fibers for both WR and data.
> >
> >     Is there also some optical multiplexer for these wavelengths, in
> >     order
> >     to use a simplex fiber, for both WR and data?
> >
> >     BR,
> >     Vladica
> >
> >     On 22.06.21 15:41, Michael Dickens wrote:
> >     > Hi Vladica - I've tested a variety of fiber adapters and cables
> >     with
> >     > no issues (e.g., ZyXEL, FS, Axcen). The primary keys are to make
> >     sure
> >     > the various related parameters match up between the adapters and
> >     > cables and devices. For example: If the adapter is 1490/1310,
> >     then you
> >     > want to make sure the cable is for the same wavelengths. Same
> >     for the
> >     > fiber polish and other parameters (single / dual fiber ; . Some are
> >     > easier than others, none of this is too difficult luckily!
> >     >
> >     > For short distances, a DAC cable will work for all of the N320/N321
> >     > SFP interfaces.
> >     >
> >     > At the moment, WR support is being fixed for UHD 3.14.0.0 to
> >     current.
> >     > If you -require- WR support -right now- you can use UHD 3.13.1.0
> >     while
> >     > we're working out how to fix WR for newer UHD. We expect the fix
> >     to be
> >     > available to customers sometime in mid/late-July (2021); once
> >     the fix
> >     > is determined and verified we will commit it to the various
> >     branches
> >     > of the UHD repository, and it will be available in UHD -after- the
> >     > forthcoming 4.1 release. It will be available in the public UHD
> >     > repository for folks to use to patch UHD between releases.
> >     >
> >     > I hope this is useful! - MLD
> >     >
> >     >
> >     > On Tue, Jun 22, 2021 at 6:19 AM Vladica Sark
> >     <vladicasark@gmail.com <mailto:vladicasark@gmail.com>
> >     > <mailto:vladicasark@gmail.com <mailto:vladicasark@gmail.com>>>
> >     wrote:
> >     >
> >     >     Dear all,
> >     >
> >     >     I would like to use N321 with WRS 3/18 which uses optical
> >     cables. I
> >     >     would like to use also for the 10 Gbit SFP1 optical SFP+
> >     transceiver.
> >     >     Do you have some recommended optical SFP+ adapters, duplex and,
> >     >     preferably, simplex?
> >     >     The idea is to use a duplex monomode fiber, one fiber for
> >     the 10 Gbit
> >     >     data and one fiber for WRS synchronization.
> >     >     They would be connected to 10 Gbit switch or QNAP
> >     Thunderbolt to SFP+
> >     >     adapter, so they do not have to be Intel.
> >     >
> >     >
> >     >     Best regards,
> >     >
> >     >     Vladica
> >     >
> >     >     _______________________________________________
> >     >     USRP-users mailing list -- usrp-users@lists.ettus.com
> >     <mailto:usrp-users@lists.ettus.com>
> >     >     <mailto:usrp-users@lists.ettus.com
> >     <mailto:usrp-users@lists.ettus.com>>
> >     >     To unsubscribe send an email to
> >     usrp-users-leave@lists.ettus.com
> >     <mailto:usrp-users-leave@lists.ettus.com>
> >     >     <mailto:usrp-users-leave@lists.ettus.com
> >     <mailto:usrp-users-leave@lists.ettus.com>>
> >     >
> >
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000d09b605c6ef0a42
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Vladica,<div>From the &#39;changelog&#=
39;, it appears that N321 support began with release 3.14.=C2=A0 But, at th=
at point I believe that WR was already broken.=C2=A0 So, I think that there=
 is no solution=C2=A0to your problem other than to wait for Ettus to fix th=
e WR issues.=C2=A0 However, WR has been broken for a while (note user-list =
posts from last fall Sept=C2=A0 &amp; Dec) so I don&#39;t know when this wi=
ll be working again.</div><div>Rob</div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 7, 2021 =
at 10:26 AM Vladica Sark &lt;<a href=3D"mailto:vladicasark@gmail.com">vladi=
casark@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Hi Michael,<br>
<br>
I obtained the necessary SFP+ optical adapters and now I am trying to <br>
put uhd 3.13.1.0 on the N321s in order to use the WR synchronization. <br>
Unfortunately, when I update the sd card image with 3.13.1.0 the N321 <br>
boots but the SFP0 and SFP1 do not go up. When I try to run <br>
uhd_find_devices, on a terminal using the USB port it says no UHD <br>
devices are found.<br>
<br>
I believe that the right FPGA image should be put on the FPGA, but the <br>
ways described in Knowledgebase are not working.<br>
<br>
Is there a way to put the version 3.13.1.0 on the N321? I have tried <br>
version 4.0.0.0 and it is working fine, but WR is broken.<br>
<br>
BR,<br>
Vladica<br>
<br>
<br>
On 22.06.21 21:31, Michael Dickens wrote:<br>
&gt; I&#39;m using primarily FS adapters, cables (single and multi mode), a=
nd <br>
&gt; fiber connectors (to allow multiplexing lanes). The adapters I bought =
<br>
&gt; were &quot;generic&quot; and had to be tweaked using an FS BOX to be f=
ully <br>
&gt; compatible with Intel or Mellanox NICs. This tweaking seems to have <b=
r>
&gt; helped a lot with the 100 Gb interface (E810); the 10 Gb interfaces do=
 <br>
&gt; not show much benefit to be manufacturer specific -- though=C2=A0I&#39=
;m sure <br>
&gt; it doesn&#39;t hurt! I have not tried a multi-mode to single mode spli=
tter <br>
&gt; / joiner, but I&#39;d suppose they do exist &amp; if anybody here has =
had <br>
&gt; experience that would be useful to hear about! I hope this is useful! =
<br>
&gt; - MLD<br>
&gt;<br>
&gt;<br>
&gt; On Tue, Jun 22, 2021 at 10:05 AM Vladica Sark &lt;<a href=3D"mailto:vl=
adicasark@gmail.com" target=3D"_blank">vladicasark@gmail.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:vladicasark@gmail.com" target=3D"_blank">=
vladicasark@gmail.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi Michael,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Thanks for the answer. For now for the data I am us=
ing DAC cables,<br>
&gt;=C2=A0 =C2=A0 =C2=A0but<br>
&gt;=C2=A0 =C2=A0 =C2=A0we would need larger distances, i.e. 50+ meters, an=
d for this I would<br>
&gt;=C2=A0 =C2=A0 =C2=A0need fibers for both WR and data.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Is there also some optical multiplexer for these wa=
velengths, in<br>
&gt;=C2=A0 =C2=A0 =C2=A0order<br>
&gt;=C2=A0 =C2=A0 =C2=A0to use a simplex fiber, for both WR and data?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0BR,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Vladica<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On 22.06.21 15:41, Michael Dickens wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Hi=C2=A0Vladica - I&#39;ve tested a variety of=
 fiber adapters and cables<br>
&gt;=C2=A0 =C2=A0 =C2=A0with<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; no issues (e.g., ZyXEL, FS, Axcen). The primar=
y keys are to make<br>
&gt;=C2=A0 =C2=A0 =C2=A0sure<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; the various related parameters match up betwee=
n the adapters and<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; cables and devices. For example: If the adapte=
r is 1490/1310,<br>
&gt;=C2=A0 =C2=A0 =C2=A0then you<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; want to make sure the cable is for the same wa=
velengths. Same<br>
&gt;=C2=A0 =C2=A0 =C2=A0for the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; fiber polish and other parameters=C2=A0(single=
 / dual fiber ; . Some are<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; easier than others, none of this is too diffic=
ult luckily!<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; For short distances, a DAC cable will work for=
 all of the N320/N321<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; SFP interfaces.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; At the moment, WR support is being fixed for U=
HD 3.14.0.0 to<br>
&gt;=C2=A0 =C2=A0 =C2=A0current.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; If you -require- WR support -right now- you ca=
n use UHD 3.13.1.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0while<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; we&#39;re working out how to fix WR for newer =
UHD. We expect the fix<br>
&gt;=C2=A0 =C2=A0 =C2=A0to be<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; available to customers sometime in mid/late-Ju=
ly (2021); once<br>
&gt;=C2=A0 =C2=A0 =C2=A0the fix<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; is determined and verified we will commit it t=
o the various<br>
&gt;=C2=A0 =C2=A0 =C2=A0branches<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; of the UHD repository, and it will be availabl=
e in UHD -after- the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; forthcoming 4.1=C2=A0release. It will be avail=
able in the public UHD<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; repository for folks to use to patch UHD betwe=
en releases.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; I hope this is useful! - MLD<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; On Tue, Jun 22, 2021 at 6:19 AM Vladica Sark<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:vladicasark@gmail.com" target=
=3D"_blank">vladicasark@gmail.com</a> &lt;mailto:<a href=3D"mailto:vladicas=
ark@gmail.com" target=3D"_blank">vladicasark@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;mailto:<a href=3D"mailto:vladicasark@gmail=
.com" target=3D"_blank">vladicasark@gmail.com</a> &lt;mailto:<a href=3D"mai=
lto:vladicasark@gmail.com" target=3D"_blank">vladicasark@gmail.com</a>&gt;&=
gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Dear all,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0I would like to use N321 wi=
th WRS 3/18 which uses optical<br>
&gt;=C2=A0 =C2=A0 =C2=A0cables. I<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0would like to use also for =
the 10 Gbit SFP1 optical SFP+<br>
&gt;=C2=A0 =C2=A0 =C2=A0transceiver.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Do you have some recommende=
d optical SFP+ adapters, duplex and,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0preferably, simplex?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0The idea is to use a duplex=
 monomode fiber, one fiber for<br>
&gt;=C2=A0 =C2=A0 =C2=A0the 10 Gbit<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0data and one fiber for WRS =
synchronization.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0They would be connected to =
10 Gbit switch or QNAP<br>
&gt;=C2=A0 =C2=A0 =C2=A0Thunderbolt to SFP+<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0adapter, so they do not hav=
e to be Intel.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Best regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Vladica<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0___________________________=
____________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0USRP-users mailing list -- =
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailt=
o:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com<=
/a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0To unsubscribe send an emai=
l to<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:usrp-users-leave@lists.ettus.com"=
 target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users-leave@lists=
.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailt=
o:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@list=
s.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users-leave@lists=
.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>&gt;&gt;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000000d09b605c6ef0a42--

--===============0176055566639436946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0176055566639436946==--
