Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3FC3B0DAB
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 21:32:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AB128384ADE
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 15:32:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="EElYXoYs";
	dkim-atps=neutral
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id B0D82384655
	for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 15:32:02 -0400 (EDT)
Received: by mail-ej1-f45.google.com with SMTP id ho18so116803ejc.8
        for <usrp-users@lists.ettus.com>; Tue, 22 Jun 2021 12:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wxpZ0NwVm7gK2GN5eVucZzwzf02WQxXrN/75IHrX1/o=;
        b=EElYXoYsX77DRpGZrGng5njLeC6jIRLtDzFA0r36Pq9sDBQQmBdEdTalOkJ42PHg0n
         schqFfx/98D5BZy0XFG+HX8+ZFV9J1GdUsX5KMCxh4VGhnSzpIBLoUDBcHKiK8Wx51XE
         FfPBoi+G48rcIsMxCkVcBPm8KJahQbjrPIBxtNaqVmOSMCZ28AZ7kRDLZX8g3dTlYnls
         7u9lP+dM2jUEWYKdC7Uvjlg1D4c6JDlNmozm5/8mTleZW44mKBJbLSA3d8NL1wV8me31
         GbDyOTZdOib0xydSMFAIBFDeSbdpntNz3JGmaG++78GuXFJduiFMgM+rKZxcE2nK9967
         EuZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wxpZ0NwVm7gK2GN5eVucZzwzf02WQxXrN/75IHrX1/o=;
        b=SPGp7CJpfn81hktHHJqCtwJo9trfzs4hqOdx681R2hVdhyrW/22QB1QU1MqRuOMFbR
         vn5rJgsfn2BnO6YuPLJUZKG1+Q3R2SK7PseVrGmonpdQqwa+1ygt4xgtZriQg5EtarFf
         SVjzHwiYsTyFWfz09NjWEopIcxlV7sSZgb+h2wl7e8xMxcEZoXynJ/WHa+BifQcVkAFV
         xHySzhL46TIU1xIyZEIU2Risrxp0PLkbr1c++CHf8BSuZOD8CcY6JigNyofS9Syt0npA
         pN4YjjNlhVroWaAySup2AR2Qzlh3zkz2lIZAfkCj+KcyLToK6Ehu/RsTgZhVVCUsFGp/
         3b6A==
X-Gm-Message-State: AOAM5334ZAq3PKum7AMyE7EdQoFCzysCmS1NCfKf2EMGDpgngHjiN39J
	oksdAH/T+G5mhpI+qLGPMUf6jqeYAY7qgk7dh8dHBnNp
X-Google-Smtp-Source: ABdhPJxI94H9UiMOqRhT4KS6NZmkOePaB9wyvNaI+uPcuo/lDp62feQBDAudIr4m3/9XYBobPaykTi98754q45MKXG4=
X-Received: by 2002:a17:907:379:: with SMTP id rs25mr5881427ejb.426.1624390321603;
 Tue, 22 Jun 2021 12:32:01 -0700 (PDT)
MIME-Version: 1.0
References: <bb6acb72-70e9-28b1-326a-ad63945c8e03@gmail.com>
 <CAGNhwTNf4F9gEEgJX_V7v0RWnndgRP7gr3_uF-R82j6sbkS93Q@mail.gmail.com> <ca7130e2-3932-e6a0-faab-c281bb14ce24@gmail.com>
In-Reply-To: <ca7130e2-3932-e6a0-faab-c281bb14ce24@gmail.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Tue, 22 Jun 2021 15:31:50 -0400
Message-ID: <CAGNhwTNQq3rU-eXtTK_cKq=5-BeLzZ6VvO7_nz9pWSmfQC+deA@mail.gmail.com>
To: Vladica Sark <vladicasark@gmail.com>
Message-ID-Hash: LT6NKGJEXSMFPK33IAICFUSYFG5QOVKN
X-Message-ID-Hash: LT6NKGJEXSMFPK33IAICFUSYFG5QOVKN
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Optical SFP+ adapters for N321
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LT6NKGJEXSMFPK33IAICFUSYFG5QOVKN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5228902932627029690=="

--===============5228902932627029690==
Content-Type: multipart/alternative; boundary="000000000000189f4f05c55fd86b"

--000000000000189f4f05c55fd86b
Content-Type: text/plain; charset="UTF-8"

I'm using primarily FS adapters, cables (single and multi mode), and fiber
connectors (to allow multiplexing lanes). The adapters I bought were
"generic" and had to be tweaked using an FS BOX to be fully compatible with
Intel or Mellanox NICs. This tweaking seems to have helped a lot with the
100 Gb interface (E810); the 10 Gb interfaces do not show much benefit to
be manufacturer specific -- though I'm sure it doesn't hurt! I have not
tried a multi-mode to single mode splitter / joiner, but I'd suppose they
do exist & if anybody here has had experience that would be useful to hear
about! I hope this is useful! - MLD


On Tue, Jun 22, 2021 at 10:05 AM Vladica Sark <vladicasark@gmail.com> wrote:

> Hi Michael,
>
> Thanks for the answer. For now for the data I am using DAC cables, but
> we would need larger distances, i.e. 50+ meters, and for this I would
> need fibers for both WR and data.
>
> Is there also some optical multiplexer for these wavelengths, in order
> to use a simplex fiber, for both WR and data?
>
> BR,
> Vladica
>
> On 22.06.21 15:41, Michael Dickens wrote:
> > Hi Vladica - I've tested a variety of fiber adapters and cables with
> > no issues (e.g., ZyXEL, FS, Axcen). The primary keys are to make sure
> > the various related parameters match up between the adapters and
> > cables and devices. For example: If the adapter is 1490/1310, then you
> > want to make sure the cable is for the same wavelengths. Same for the
> > fiber polish and other parameters (single / dual fiber ; . Some are
> > easier than others, none of this is too difficult luckily!
> >
> > For short distances, a DAC cable will work for all of the N320/N321
> > SFP interfaces.
> >
> > At the moment, WR support is being fixed for UHD 3.14.0.0 to current.
> > If you -require- WR support -right now- you can use UHD 3.13.1.0 while
> > we're working out how to fix WR for newer UHD. We expect the fix to be
> > available to customers sometime in mid/late-July (2021); once the fix
> > is determined and verified we will commit it to the various branches
> > of the UHD repository, and it will be available in UHD -after- the
> > forthcoming 4.1 release. It will be available in the public UHD
> > repository for folks to use to patch UHD between releases.
> >
> > I hope this is useful! - MLD
> >
> >
> > On Tue, Jun 22, 2021 at 6:19 AM Vladica Sark <vladicasark@gmail.com
> > <mailto:vladicasark@gmail.com>> wrote:
> >
> >     Dear all,
> >
> >     I would like to use N321 with WRS 3/18 which uses optical cables. I
> >     would like to use also for the 10 Gbit SFP1 optical SFP+ transceiver.
> >     Do you have some recommended optical SFP+ adapters, duplex and,
> >     preferably, simplex?
> >     The idea is to use a duplex monomode fiber, one fiber for the 10 Gbit
> >     data and one fiber for WRS synchronization.
> >     They would be connected to 10 Gbit switch or QNAP Thunderbolt to SFP+
> >     adapter, so they do not have to be Intel.
> >
> >
> >     Best regards,
> >
> >     Vladica
> >
> >     _______________________________________________
> >     USRP-users mailing list -- usrp-users@lists.ettus.com
> >     <mailto:usrp-users@lists.ettus.com>
> >     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >     <mailto:usrp-users-leave@lists.ettus.com>
> >
>

--000000000000189f4f05c55fd86b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m using primarily FS adapters, cables (single and mu=
lti mode), and fiber connectors (to allow multiplexing lanes). The adapters=
 I bought were &quot;generic&quot; and had to be tweaked using an FS BOX to=
 be fully compatible with Intel or Mellanox NICs. This tweaking seems to ha=
ve helped a lot with the 100 Gb interface (E810); the 10 Gb interfaces do n=
ot show much benefit to be manufacturer specific -- though=C2=A0I&#39;m sur=
e it doesn&#39;t hurt! I have not tried a multi-mode to single mode splitte=
r / joiner, but I&#39;d suppose they do exist &amp; if anybody here has had=
 experience that would be useful to hear about! I hope this is useful! - ML=
D<br><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Tue, Jun 22, 2021 at 10:05 AM Vladica Sark &lt;<a href=3D"mailt=
o:vladicasark@gmail.com">vladicasark@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">Hi Michael,<br>
<br>
Thanks for the answer. For now for the data I am using DAC cables, but <br>
we would need larger distances, i.e. 50+ meters, and for this I would <br>
need fibers for both WR and data.<br>
<br>
Is there also some optical multiplexer for these wavelengths, in order <br>
to use a simplex fiber, for both WR and data?<br>
<br>
BR,<br>
Vladica<br>
<br>
On 22.06.21 15:41, Michael Dickens wrote:<br>
&gt; Hi=C2=A0Vladica - I&#39;ve tested a variety of fiber adapters and cabl=
es with <br>
&gt; no issues (e.g., ZyXEL, FS, Axcen). The primary keys are to make sure =
<br>
&gt; the various related parameters match up between the adapters and <br>
&gt; cables and devices. For example: If the adapter is 1490/1310, then you=
 <br>
&gt; want to make sure the cable is for the same wavelengths. Same for the =
<br>
&gt; fiber polish and other parameters=C2=A0(single / dual fiber ; . Some a=
re <br>
&gt; easier than others, none of this is too difficult luckily!<br>
&gt;<br>
&gt; For short distances, a DAC cable will work for all of the N320/N321 <b=
r>
&gt; SFP interfaces.<br>
&gt;<br>
&gt; At the moment, WR support is being fixed for UHD 3.14.0.0 to current. =
<br>
&gt; If you -require- WR support -right now- you can use UHD 3.13.1.0 while=
 <br>
&gt; we&#39;re working out how to fix WR for newer UHD. We expect the fix t=
o be <br>
&gt; available to customers sometime in mid/late-July (2021); once the fix =
<br>
&gt; is determined and verified we will commit it to the various branches <=
br>
&gt; of the UHD repository, and it will be available in UHD -after- the <br=
>
&gt; forthcoming 4.1=C2=A0release. It will be available in the public UHD <=
br>
&gt; repository for folks to use to patch UHD between releases.<br>
&gt;<br>
&gt; I hope this is useful! - MLD<br>
&gt;<br>
&gt;<br>
&gt; On Tue, Jun 22, 2021 at 6:19 AM Vladica Sark &lt;<a href=3D"mailto:vla=
dicasark@gmail.com" target=3D"_blank">vladicasark@gmail.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:vladicasark@gmail.com" target=3D"_blank">=
vladicasark@gmail.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Dear all,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0I would like to use N321 with WRS 3/18 which uses o=
ptical cables. I<br>
&gt;=C2=A0 =C2=A0 =C2=A0would like to use also for the 10 Gbit SFP1 optical=
 SFP+ transceiver.<br>
&gt;=C2=A0 =C2=A0 =C2=A0Do you have some recommended optical SFP+ adapters,=
 duplex and,<br>
&gt;=C2=A0 =C2=A0 =C2=A0preferably, simplex?<br>
&gt;=C2=A0 =C2=A0 =C2=A0The idea is to use a duplex monomode fiber, one fib=
er for the 10 Gbit<br>
&gt;=C2=A0 =C2=A0 =C2=A0data and one fiber for WRS synchronization.<br>
&gt;=C2=A0 =C2=A0 =C2=A0They would be connected to 10 Gbit switch or QNAP T=
hunderbolt to SFP+<br>
&gt;=C2=A0 =C2=A0 =C2=A0adapter, so they do not have to be Intel.<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Best regards,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Vladica<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0_______________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0USRP-users mailing list -- <a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0To unsubscribe send an email to <a href=3D"mailto:u=
srp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.e=
ttus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:usrp-users-leave@lists=
.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>&gt;<br>
&gt;<br>
</blockquote></div>

--000000000000189f4f05c55fd86b--

--===============5228902932627029690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5228902932627029690==--
