Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDF13BDA84
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 17:51:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D4322384157
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 11:51:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Cz1x4jIS";
	dkim-atps=neutral
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by mm2.emwd.com (Postfix) with ESMTPS id E2639383F16
	for <USRP-users@lists.ettus.com>; Tue,  6 Jul 2021 11:50:44 -0400 (EDT)
Received: by mail-yb1-f172.google.com with SMTP id i4so34957555ybe.2
        for <USRP-users@lists.ettus.com>; Tue, 06 Jul 2021 08:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jFdbSug6CfxyyCbxj9E0LjpY0AK+9e2lpEufbhvXiNI=;
        b=Cz1x4jISaIQPYzMjSHfKQTk+l3D/kCnaEkszVcOU8z71gVJ1XfZSkdaAEME+zqMF62
         ktAmbL/ugy34HYKSItS5yPEUK3RmOwQM7GXCdndRv21JSS95xooiEr4YkKmTBUMN8vjN
         Y4inKxdzGZjT4Qs/1qxITMj+BGjv50wx26LpF3Sg6rJ8gHPP+B5bLPjMgSWOFq67R66x
         shDJljaeCO00gS7p26EDaXTCjznlo0n70lt3k+hg4P+D6AUKXpapUifn4ZgUpKrKw+xk
         c/QyDZ3xbhZyy0+EZIxjFoMOyxspo1OAKd/hOvuTOjDkjWM/vR9iQuKVFCiAT0SLcGxC
         qDug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jFdbSug6CfxyyCbxj9E0LjpY0AK+9e2lpEufbhvXiNI=;
        b=cQ2NCC0ypGRXrYt5VqKQxheX4WK+3SqLvJs/95aSWvOm+mm3Cdg9DEIDkSlQt4wWT3
         k73l0vdajXcu8uwtuuPHukNTTgCZVu8nDRRF0+3lLUpc15RMsVG5u1t+AJriVd2Tn+2K
         ACY1fa9cdMw+sejpFMoXcVsNVoXUAUDzhBDLBgxasqlS5ihI3QiUnEr1+WS0i20jPHCE
         qEKhyRrAvKM0DK/qQudT4grDBrU8Yr1jZTW8C5XxZ2rOvofNC4zSIhoUkwTYix8dGQmV
         iLht4Q3QKRXX5zuMiSdHLI5mYZ1cW85DVBMZjVPUETh/fR6YHHfFJs8o6yTgxmEa5jSc
         ZvXQ==
X-Gm-Message-State: AOAM533ZcLa6AsSxe9ndZjvGe0qNg9vch6JGbuPuo/g8rx6YESpsgDRh
	z6lbNOTvdqOIr1DeWJ95aSF1tmzM33/k6gPDes0=
X-Google-Smtp-Source: ABdhPJxRWi45pyzzRnH2PjO/zEH8fn120m6f+ULo8mWADkRZQuLLp6hon4sRK7Gi1c64nrvIQISbxPg3P76KCKPuzfU=
X-Received: by 2002:a25:370b:: with SMTP id e11mr6336242yba.82.1625586644189;
 Tue, 06 Jul 2021 08:50:44 -0700 (PDT)
MIME-Version: 1.0
References: <3226c6ec-fac3-8c0f-5927-b2d5c76cbe2e@opensdr.com>
 <dfa5504f-0536-7989-4354-3cb005cdca2b@balister.org> <CAL7q81t=oSq6_N4jfeJd-FQUiUw-nEmZZFgoJbx1FcZeExuMmg@mail.gmail.com>
 <cfb01058-a2ed-0084-7bb6-9433bafa1357@balister.org>
In-Reply-To: <cfb01058-a2ed-0084-7bb6-9433bafa1357@balister.org>
From: Ben Magistro <koncept1@gmail.com>
Date: Tue, 6 Jul 2021 11:50:33 -0400
Message-ID: <CAKx8PBhEsFiY4D0rDqADyYO6+gAL3h+mT5M1oK+vJHQ5h_tL1A@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Message-ID-Hash: OJJZOMN5RKLSNQZH6YIDTAIG2OWAOFX4
X-Message-ID-Hash: OJJZOMN5RKLSNQZH6YIDTAIG2OWAOFX4
X-MailFrom: koncept1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E300 sg3 images with uhd 4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OJJZOMN5RKLSNQZH6YIDTAIG2OWAOFX4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7582535578405814312=="

--===============7582535578405814312==
Content-Type: multipart/alternative; boundary="0000000000007a858a05c6766235"

--0000000000007a858a05c6766235
Content-Type: text/plain; charset="UTF-8"

I haven't done much testing beyond power on, but it appears the UHD 4.1
image restores the SG3 speeds.  It is still based on Zeus with GCC 9.2 so
likely has the fftw segfault still.

 Ben

On Thu, Apr 15, 2021 at 8:45 AM Philip Balister <philip@balister.org> wrote:

> Any updates on this? Anyone have a fix for the ftw segfaults?
>
> Philip
>
> On 10/2/20 7:48 PM, Jonathon Pendlum wrote:
> > Hey Philip,
> >
> > You are not the only person to report this. I'm working on getting an
> > answer, but it will take a bit longer.
> >
> > Jonathon
> >
> > On Thu, Oct 1, 2020 at 10:46 AM Philip Balister via USRP-users <
> > usrp-users@lists.ettus.com> wrote:
> >
> >> Ping? Anyone noticed sg3 units running slower with the uhd 4.0 image?
> >>
> >> Philip
> >>
> >> On 9/24/20 1:28 PM, Philip Balister via USRP-users wrote:
> >>> I booted an image from:
> >>>
> >>> https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.0.0.0/
> >>>
> >>> on a sg3 unit. The BogoMIPS display suggests the clocks are set to what
> >>> I expect for a sg1 unit though. I couldn't find any knobs in /sys or
> >>> /proc. I compared with the ancient release-4 image and that has the
> >>> number of BogoMIPS expected from that unit.
> >>>
> >>> Anyone at Ettus have any insite into how cpu clock speed is handled
> with
> >>> that image. Diffing the ps7 files didn't show many diffs in clock
> setup.
> >>> (And they looked like they came from a source besides vivado)
> >>>
> >>> Philip
> >>>
> >>> _______________________________________________
> >>> USRP-users mailing list
> >>> USRP-users@lists.ettus.com
> >>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>
> >>
> >> _______________________________________________
> >> USRP-users mailing list
> >> USRP-users@lists.ettus.com
> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>
> >
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007a858a05c6766235
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I haven&#39;t done much testing beyond power on, but it ap=
pears the UHD 4.1 image restores the SG3 speeds.=C2=A0 It is still based on=
 Zeus with GCC 9.2 so likely has the fftw segfault still.<div><br></div><di=
v>=C2=A0Ben</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Thu, Apr 15, 2021 at 8:45 AM Philip Balister &lt;<a hre=
f=3D"mailto:philip@balister.org">philip@balister.org</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">Any updates on this? An=
yone have a fix for the ftw segfaults?<br>
<br>
Philip<br>
<br>
On 10/2/20 7:48 PM, Jonathon Pendlum wrote:<br>
&gt; Hey Philip,<br>
&gt; <br>
&gt; You are not the only person to report this. I&#39;m working on getting=
 an<br>
&gt; answer, but it will take a bit longer.<br>
&gt; <br>
&gt; Jonathon<br>
&gt; <br>
&gt; On Thu, Oct 1, 2020 at 10:46 AM Philip Balister via USRP-users &lt;<br=
>
&gt; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt;&gt; Ping? Anyone noticed sg3 units running slower with the uhd 4.0 ima=
ge?<br>
&gt;&gt;<br>
&gt;&gt; Philip<br>
&gt;&gt;<br>
&gt;&gt; On 9/24/20 1:28 PM, Philip Balister via USRP-users wrote:<br>
&gt;&gt;&gt; I booted an image from:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; <a href=3D"https://files.ettus.com/binaries/cache/e3xx/meta-et=
tus-v4.0.0.0/" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com=
/binaries/cache/e3xx/meta-ettus-v4.0.0.0/</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; on a sg3 unit. The BogoMIPS display suggests the clocks are se=
t to what<br>
&gt;&gt;&gt; I expect for a sg1 unit though. I couldn&#39;t find any knobs =
in /sys or<br>
&gt;&gt;&gt; /proc. I compared with the ancient release-4 image and that ha=
s the<br>
&gt;&gt;&gt; number of BogoMIPS expected from that unit.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Anyone at Ettus have any insite into how cpu clock speed is ha=
ndled with<br>
&gt;&gt;&gt; that image. Diffing the ps7 files didn&#39;t show many diffs i=
n clock setup.<br>
&gt;&gt;&gt; (And they looked like they came from a source besides vivado)<=
br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Philip<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank=
">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;<br>
&gt; <br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007a858a05c6766235--

--===============7582535578405814312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7582535578405814312==--
