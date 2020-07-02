Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38766211B51
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jul 2020 07:00:09 +0200 (CEST)
Received: from [::1] (port=57824 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jqrKI-000551-Vf; Thu, 02 Jul 2020 00:59:58 -0400
Received: from mail-ej1-f43.google.com ([209.85.218.43]:40337)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <alex.m.humberstone@gmail.com>)
 id 1jqrKF-00050A-35
 for usrp-users@lists.ettus.com; Thu, 02 Jul 2020 00:59:55 -0400
Received: by mail-ej1-f43.google.com with SMTP id o18so23168626eje.7
 for <usrp-users@lists.ettus.com>; Wed, 01 Jul 2020 21:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MFTiexrucwF7xGE59hgfFr4JHcIwuhzcV3pzhawDMzs=;
 b=c6slS6NcN+l/ISr7DGXtM6lrzZN4lVP71wzvQSbSxsYi/s/QY05xwJveluhAfCOsTe
 QlO5QZJ2hz/vZXJpSRmjKPDKEV8ODlZRtAN/3ALmwVHy/mg+AY4WIrscTZ4H+UUoDFFW
 LZeJS66MxbRlYVXq9jhvXt5/9bgBNBvHXRAXk/BllzjUrH4S1eZeZsGffcP8/1xpyqB+
 lmwrsZ+7Flsx0mhlisiLu0rtRPeSapWkjUKJ1/gtRQ0C3SdvONvynFtuAKbiLdr+gRqA
 f12xmF2/zOsy1AyNciyvEFNaXEBivjT4dXKEIc5fOSGq7KCfqJL4f95Ub3hTXharBDpE
 82iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MFTiexrucwF7xGE59hgfFr4JHcIwuhzcV3pzhawDMzs=;
 b=ZH4fomTcII4lRcUxAfFAzQ+7t3XNDppR0rHaxACinY3ebQQoj2pKj72THDb9jovrro
 FGHfMz/lUANwnxkAvZfjzL43v9vS/Tni421FEFiFOLHf5GfAhm/wuZ+lIhnr0Y9cRJpD
 fUwdfExTQS8byyLNwZIQwcqDX0QY+FPs0rYHJ70madiIc8Mzv3kbb1TCI8w+Fb0eY5al
 bPUhA7F0viTqsmn6PNaZJ9A4PJVaH2iBxx+NJ2J0NEnNMrsXrtrQWGHZn+nbd6ApdJgz
 jf2FpCR/MOiy1NYitGMF/L6EO4gGmtALTbO5EmKW0EkE7QaQpoq9Mzig6q046m1RoXhg
 YfrA==
X-Gm-Message-State: AOAM530gtlG6Xp+nO1uA9dc0sZSlG2nwp+zux7x1MVQ5KRLGqXq2qyRZ
 +xM8nYcStMfqKtaZN0ahu0Gc3Y+RGGWPrP1ter4=
X-Google-Smtp-Source: ABdhPJx13MTAd4Ig13FDJonVZCej2sNovtXTvGn6w770qy/RkO4XQAY7Rl67JGCYI3HRJ6nzD9nqNhI5fgX+Vkr+Q/4=
X-Received: by 2002:a17:907:41dc:: with SMTP id
 og20mr1763441ejb.183.1593665954142; 
 Wed, 01 Jul 2020 21:59:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAAiBEBTMR=Y1H3o3aMEy9cq6Y0OA21ua7xJvXaDRk-uQgdZGsQ@mail.gmail.com>
In-Reply-To: <CAAiBEBTMR=Y1H3o3aMEy9cq6Y0OA21ua7xJvXaDRk-uQgdZGsQ@mail.gmail.com>
Date: Wed, 1 Jul 2020 23:58:38 -0500
Message-ID: <CAE0dfYZ5QSKAXX=x52K+uqcV7WeB9PxNS=kqja_e+ZRFUXxuyg@mail.gmail.com>
To: hossein talaiee <h.talaiee@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Melbourne Users
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
From: Alex Humberstone via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alex Humberstone <alex.m.humberstone@gmail.com>
Content-Type: multipart/mixed; boundary="===============3360812474862668058=="
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

--===============3360812474862668058==
Content-Type: multipart/alternative; boundary="000000000000165eaa05a96e45ab"

--000000000000165eaa05a96e45ab
Content-Type: text/plain; charset="UTF-8"

You mean Melbourne, Australia?
What exactly are you looking for?
If you're asking about the community, there's an SDR group meetup there:
https://www.meetup.com/en-AU/Cyberspectrum-Melbourne
They been running for like 4 years, and the videos are recorded.
The content and good speakers are pretty good.


On Mon, 29 Jun 2020 at 05:20, hossein talaiee via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> I there anyone from Melbourne ?
>
> Best Regards
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 
Sincerely,
Alex-M-Humberstone
PhD Student
Klipsch School of Electrical Engineering
New Mexico State University
Las Cruces, New Mexico

--000000000000165eaa05a96e45ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e;font-size:large">You mean Melbourne, Australia?</div><div class=3D"gmail_=
default" style=3D"font-family:monospace;font-size:large">What exactly are y=
ou looking for?</div><div class=3D"gmail_default" style=3D"font-family:mono=
space;font-size:large">If you&#39;re asking about the community, there&#39;=
s an SDR group meetup there:</div><div class=3D"gmail_default" style=3D"fon=
t-family:monospace;font-size:large"><a href=3D"https://www.meetup.com/en-AU=
/Cyberspectrum-Melbourne">https://www.meetup.com/en-AU/Cyberspectrum-Melbou=
rne</a></div><div class=3D"gmail_default" style=3D"font-family:monospace;fo=
nt-size:large">They been running for like 4 years, and the videos are recor=
ded.</div><div class=3D"gmail_default" style=3D"font-family:monospace;font-=
size:large">The content and good speakers are pretty good.<br></div><div cl=
ass=3D"gmail_default" style=3D"font-family:monospace;font-size:large"><br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Mon, 29 Jun 2020 at 05:20, hossein talaiee via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
I there anyone from Melbourne ?<br>
<br>
Best Regards<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><font size=3D"4"><span style=3D"font-famil=
y:monospace">Sincerely,<br></span></font><div><font size=3D"4"><span style=
=3D"font-family:monospace">Alex-M-Humberstone</span></font></div><div><font=
 size=3D"4"><span style=3D"font-family:monospace">PhD Student</span></font>=
</div><div><font size=3D"4"><span style=3D"font-family:monospace">Klipsch S=
chool of Electrical Engineering<br></span></font></div><div><font size=3D"4=
"><span style=3D"font-family:monospace">New Mexico State University<br><spa=
n><span>Las Cruces, </span></span>New Mexico</span></font></div><div><font =
size=3D"4"><span style=3D"font-family:monospace"><br></span></font></div><d=
iv><font size=3D"4"><span style=3D"font-family:monospace"></span></font></d=
iv></div></div>

--000000000000165eaa05a96e45ab--


--===============3360812474862668058==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3360812474862668058==--

