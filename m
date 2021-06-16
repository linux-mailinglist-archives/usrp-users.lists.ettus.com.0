Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE91F3AA296
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 19:42:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0820138515A
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 13:42:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QOybPv31";
	dkim-atps=neutral
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 8E570384D9E
	for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 13:41:09 -0400 (EDT)
Received: by mail-il1-f177.google.com with SMTP id q18so3040024ile.10
        for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 10:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MYZhLlI/nYpreMgJUd/bjcGz1s04da35aHlSLo6p5LY=;
        b=QOybPv31ZQqE673Dztj18YTGT0BJb7arA6WKtyt46nh4C72JtZbkNCsKhoWKjoJ8/f
         aTN+btsPl5VB72SFDUbyzfAseTFBENUVhE56yMYCyxtMZOZDs9YVXn9rPSMxuIl424Vy
         wGHT9xqA9PQuPOTDb+PjsmxDwRdFoY+nVrq/fhJuAVh1oFbBc+4AMN3nGXwv26suKEpH
         4Sj4mUiycGVvOhAAiA7/iV+wnSF6R1DhlPDYy1b7VEaBIzO8CqDosVRi/e/5lbYx7DUx
         y/WCH32UZFXom/PIRaK0nZoeL9EQnERCrq1cC0LR42I7Cff72xCi64SjuQVplmdR5vgY
         3sDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MYZhLlI/nYpreMgJUd/bjcGz1s04da35aHlSLo6p5LY=;
        b=n9y5st8zOoXoaO/YHrtr6ZhYNGuPJkCCGV4JNTYgvx1ZHhx5xU4CIzI7Izm8BXvonr
         NDpM8kJKB0qS/R9eegShw4Ei0QAm5WXdovMQGb9+eiN7wC1a25n9D1LYXckn4sVPYoLL
         QtRjweRmqsQe4Vx6LTaUOHmRdEQSuMv+JaezUBmxRklciMEcLXsg5MPys+hujuE2xwUc
         WEqGbgMCCXnNp3pVHORP44GJ2qsgkRZ73SjtdQhMEOva89trRZ8YfQMxU+r1qssue2Sw
         iBUnBWJ8s13EE5KSPR3kA7uyFLCWQiIvbJ8v7G5twfSreDT19EA4jbp3Mdq8TaEYGtEV
         9BCA==
X-Gm-Message-State: AOAM5338ACqWHA8cQ2YVEKMMllkw5gSSrXqvsBcu6zf3V44Gfnq/8+S6
	TUe6twkXOb/nijsSiqAUcssr6zstr0MJIktK1xU=
X-Google-Smtp-Source: ABdhPJyrh/+Tktuobr2NoXDYJ0W/Wk8pdNnRgrbNX7QdAosIAt3E/v4XRcGxr34JYW4ZZx6N2sFkSfAvPpsTrsj22qw=
X-Received: by 2002:a92:ca8b:: with SMTP id t11mr524140ilo.263.1623865268849;
 Wed, 16 Jun 2021 10:41:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAE0dfYbKnA20uy2Db3sYBZ0whUpzTexv1HAOWG5Yb7H54AAqbQ@mail.gmail.com>
In-Reply-To: <CAE0dfYbKnA20uy2Db3sYBZ0whUpzTexv1HAOWG5Yb7H54AAqbQ@mail.gmail.com>
From: Dan <thebouleoffools@gmail.com>
Date: Wed, 16 Jun 2021 11:40:57 -0600
Message-ID: <CAG==tssT9Jk5Z02ne4Jnpgx0LGTy+kh0jG6EE7T3aC3c=ABqmQ@mail.gmail.com>
To: Alex Humberstone <alex.m.humberstone@gmail.com>
Message-ID-Hash: 2NTSINAHVOXVWGY4SR2R6ZW7LCCMHOHX
X-Message-ID-Hash: 2NTSINAHVOXVWGY4SR2R6ZW7LCCMHOHX
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Any problems building and running UHD 4.0 on Ubuntu 21.04?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2NTSINAHVOXVWGY4SR2R6ZW7LCCMHOHX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0494750256765881948=="

--===============0494750256765881948==
Content-Type: multipart/alternative; boundary="00000000000083500e05c4e598df"

--00000000000083500e05c4e598df
Content-Type: text/plain; charset="UTF-8"

I am currently running UHD 4.0 with Gnuradio 3.8.3.0 on Ubuntu 21.04. I had
some amount of difficulty, as the installation instructions didn't quite
capture all the idiosyncrasies of library incompatibilities and bugs,
particularly during the cross-compile for the E320. If I remember right, I
needed to use Python 3.7.6, dpdk 18.11.11, and use the external volk
library that is in the Ubuntu 21.04 repository (libvolk2-dev 2.4.1-2)
instead of the one that was in the gnuradio git source. If you don't need
to cross compile, the host machine compile should work fine.

-Dan

On Wed, Jun 16, 2021 at 11:21 AM Alex Humberstone <
alex.m.humberstone@gmail.com> wrote:

> We got a new powerful Dell desktop for the lab here, and we want to
> put the latest Ubuntu 21.04 on it. But will UHD 4.0 build from source and
> run properly on Ubuntu 21.04? Are there any known issues? Does anyone
> already have this running successfully? Thanks in advance for the help, and
> for potentially saving me tons of time!
>
> Sincerely,
> Alex-M-Humberstone
> PhD Student
> Klipsch School of Electrical Engineering
> New Mexico State University (NMSU)
> Las Cruces, New Mexico, USA
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>


-- 
Dan "The Man Himself" Brunski

--00000000000083500e05c4e598df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am currently running UHD 4.0 with Gnuradio 3.8.3.0 =
on Ubuntu 21.04. I had some amount of difficulty, as the installation instr=
uctions didn&#39;t quite capture all the idiosyncrasies of library incompat=
ibilities and bugs, particularly during the cross-compile for the E320. If =
I remember right, I needed to use Python 3.7.6, dpdk 18.11.11, and use the =
external volk library that is in the Ubuntu 21.04 repository (libvolk2-dev =
2.4.1-2) instead of the one that was in the gnuradio git source. If you don=
&#39;t need to cross compile, the host machine compile should work fine.</d=
iv><div><br></div><div>-Dan<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 16, 2021 at 11:21 AM Alex =
Humberstone &lt;<a href=3D"mailto:alex.m.humberstone@gmail.com" target=3D"_=
blank">alex.m.humberstone@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_def=
ault" style=3D"font-family:monospace;font-size:large">We got a new powerful=
 Dell desktop for the lab here, and we want to put=C2=A0the latest Ubuntu 2=
1.04 on it. But will UHD 4.0 build from source and run properly on Ubuntu=
=C2=A021.04? Are there any known issues? Does anyone already have this runn=
ing successfully?=C2=A0Thanks=C2=A0in advance for the help, and for potenti=
ally saving me tons of time!</div><div class=3D"gmail_default" style=3D"fon=
t-family:monospace;font-size:large"><br></div><div><div dir=3D"ltr"><div di=
r=3D"ltr"><font size=3D"4"><span style=3D"font-family:monospace">Sincerely,=
<br></span></font><div><font size=3D"4"><span style=3D"font-family:monospac=
e">Alex-M-Humberstone</span></font></div><div><font size=3D"4"><span style=
=3D"font-family:monospace">PhD Student</span></font></div><div><font size=
=3D"4"><span style=3D"font-family:monospace">Klipsch School of Electrical E=
ngineering<br></span></font></div><div><font size=3D"4"><span style=3D"font=
-family:monospace">New Mexico State University (NMSU)<br><span><span>Las Cr=
uces, </span></span>New Mexico, USA</span></font></div><div><font size=3D"4=
"><span style=3D"font-family:monospace"><br></span></font></div><div><font =
size=3D"4"><span style=3D"font-family:monospace"></span></font></div></div>=
</div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr">Dan &quot;=
The Man Himself&quot; Brunski<br></div>

--00000000000083500e05c4e598df--

--===============0494750256765881948==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0494750256765881948==--
