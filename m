Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A831342FBA1
	for <lists+usrp-users@lfdr.de>; Fri, 15 Oct 2021 21:03:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B5242384DC4
	for <lists+usrp-users@lfdr.de>; Fri, 15 Oct 2021 15:03:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=umich.edu header.i=@umich.edu header.b="m6vBl5x/";
	dkim-atps=neutral
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 896A43847EF
	for <USRP-users@lists.ettus.com>; Fri, 15 Oct 2021 15:02:46 -0400 (EDT)
Received: by mail-lf1-f41.google.com with SMTP id g36so28918989lfv.3
        for <USRP-users@lists.ettus.com>; Fri, 15 Oct 2021 12:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umich.edu; s=google-2016-06-03;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5JPP9Arfg1KaRRaBMAZLgEwF58H5JKXQGC1PbkNOjZ4=;
        b=m6vBl5x/HgW08wCruNKGeraYJM6vSzd+ttZOadEw22lPmAmqmaCO3vNcmAypOm5yjc
         2Gz6Qw4DTujSm1d0AFm3xjzaS2+DmyTBfj4Hl/Kt4Wfg6R9jKSu5cSmBLzJ9nALppew/
         kVLjbBFpZkvFQaYNgRiBeT0X8jnu0eOWZjSPST3ffSiaKsF5tMN2WFHuRoeTxmZ2j85/
         XZ5aRIG/sphr7SO2/cH9Ohk+gYki+XlEtcq1aJe7AfWyWWI7QYyPBEk+epD6PqfHfC8K
         2FNAitHyezOLAlia8atyMFGsmesC9LhHrNJ/WQZy+ArAwSxlbvHLx/4opRLoXMYqWkZA
         0XdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5JPP9Arfg1KaRRaBMAZLgEwF58H5JKXQGC1PbkNOjZ4=;
        b=mm17UgBqOg4s0Y+bwpoGd+KN7884S6kfd8rlRyexNxxGKY+iZBTebLX2V18HzcDP6r
         Qvp+aUyMFYpbj0hMzNwlt4s7NQd8qrtJXmaAjskrP2ISffFVNhqqOaTRMbNBXj3byPRG
         Wf265BELLYp9lkWNtkIvSWV6zqckWgfhr8xpB++XS1L4o3V6j8mtwEBIJH83hLvJpHZZ
         EBYIJ/fTZVkAEG+DdZCalK19TGQTJBweMhJOjUNKzmsBjMPYMafYffFA8Zx465Tb08zp
         +pWEvRnkgIXUsxMayHfHoKbbIzVbs6xx92O2Ekhcl3IGBAu5bWT9Ordjg4SmIx299dJP
         C9TA==
X-Gm-Message-State: AOAM530mZa1U8J6zvJC93Q7RCysxW1jF3b8iuO3iSIAvW6KrADOcXRwR
	0U6axAEh7nMbJ/GauApy9oWr6CyMPhw4t/Vtp9v9Dg==
X-Google-Smtp-Source: ABdhPJwD57l65DuEK6XLpSHFVqFnWQoCyMjkVmAvX7jiAgogfEKvOKVJd4cTp8J2RZ00JAvwepmvxntkgHo+6byxZMk=
X-Received: by 2002:a2e:9dcb:: with SMTP id x11mr13980047ljj.58.1634324565077;
 Fri, 15 Oct 2021 12:02:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAErymBgdKeG9dKdwN_LTmYW0=gXTvO+POuGZ6Ge9VOkk5X33aw@mail.gmail.com>
 <564F776E-53EB-4128-A46E-D0C4047BD66C@gmail.com>
In-Reply-To: <564F776E-53EB-4128-A46E-D0C4047BD66C@gmail.com>
From: Achilleas Anastasopoulos <anastas@umich.edu>
Date: Fri, 15 Oct 2021 15:02:29 -0400
Message-ID: <CAErymBi5VDcGrJ6eVtzS2CdgWvUOmRSBoPb+7eM8Pbn7mgx62A@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: 4CTTGSUP7VPDRAN36UOXQAPPYBQBRBDS
X-Message-ID-Hash: 4CTTGSUP7VPDRAN36UOXQAPPYBQBRBDS
X-MailFrom: anastas@umich.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X310 with internal GPSDO: GSM led in front panel
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4CTTGSUP7VPDRAN36UOXQAPPYBQBRBDS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2760479155821853047=="

--===============2760479155821853047==
Content-Type: multipart/alternative; boundary="00000000000026476b05ce68d7ab"

--00000000000026476b05ce68d7ab
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus and all,

The X310 has three leds in the front panel (among others):
REF, PPS, GPS
When I turn on the USRP none of them is lit.
When I execute "uhd_usrp_probe" from the terminal the the REF lights up and
the PPS starts blinking.
What is the meaning of this? (I am not connected to any REF source ...)

thanks
Achilleas










On Thu, Oct 14, 2021 at 3:50 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Using uhd_usrp_probe is one way. You can also use the sync_to_gps example
> which will balk if there isn=E2=80=99t a GPS.
>
> My recollection is that the PPS light will start blinking once the GPS ha=
s
> acquired lock. Which can take 10s of minutes from a cold start.
>
> Sent from my iPhone
>
> > On Oct 14, 2021, at 2:33 PM, Achilleas Anastasopoulos <anastas@umich.ed=
u>
> wrote:
> >
> > =EF=BB=BF
> > I have some questions regarding the operation of X310.
> >
> > 1) How do I know if I have an internal GPSDO (we have 20 USRPs in the
> Lab and I remember we bought some of them with GPSDO). I know that when I
> do "uhd_usrp_probe", a device without GPSDO says "no internal GPSDO
> detected" but in the absence of this message, should I assume there is on=
e
> inside?
> >
> > 2) Upon powering up the USRP and assuming I have an active antenna
> connected in the back side (GPS antenna) input, should I expect that at
> some point the GPS led (front panel) will start blinking? or do I have to
> do something to initiate GPS acquisition?
> >
> > thanks
> > Achilleas
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000026476b05ce68d7ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus and all,<div><br></div><div>The X310 has three l=
eds in the front panel (among others):</div><div>REF, PPS, GPS</div><div>Wh=
en I turn on the USRP none of them is lit.</div><div>When I execute &quot;u=
hd_usrp_probe&quot; from the terminal the the REF lights up and the PPS sta=
rts blinking.</div><div>What is the meaning of this? (I am not connected to=
 any REF source ...)</div><div><br></div><div>thanks</div><div>Achilleas</d=
iv><div><br></div><div><br></div><div><br></div><div><br></div><div><br></d=
iv><div><br></div><div><br></div><div><br></div><div><br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct =
14, 2021 at 3:50 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmai=
l.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">Using uhd_usrp_probe is one=
 way. You can also use the sync_to_gps example which will balk if there isn=
=E2=80=99t a GPS. <br>
<br>
My recollection is that the PPS light will start blinking once the GPS has =
acquired lock. Which can take 10s of minutes from a cold start. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Oct 14, 2021, at 2:33 PM, Achilleas Anastasopoulos &lt;<a href=3D"m=
ailto:anastas@umich.edu" target=3D"_blank">anastas@umich.edu</a>&gt; wrote:=
<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; I have some questions regarding the operation of X310.<br>
&gt; <br>
&gt; 1) How do I know if I have an internal GPSDO (we have 20 USRPs in the =
Lab and I remember we bought some of them with GPSDO). I know that when I d=
o &quot;uhd_usrp_probe&quot;, a device without GPSDO says &quot;no internal=
 GPSDO detected&quot; but in the absence of this message, should I assume t=
here is one inside?<br>
&gt; <br>
&gt; 2) Upon powering up the USRP and assuming I have an active antenna con=
nected in the back side (GPS antenna) input, should I expect that at some p=
oint the GPS led (front panel) will start blinking? or do I have to do some=
thing to initiate GPS acquisition?<br>
&gt; <br>
&gt; thanks<br>
&gt; Achilleas<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000026476b05ce68d7ab--

--===============2760479155821853047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2760479155821853047==--
