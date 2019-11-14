Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD983FBD31
	for <lists+usrp-users@lfdr.de>; Thu, 14 Nov 2019 01:54:14 +0100 (CET)
Received: from [::1] (port=37980 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iV3Ol-000786-14; Wed, 13 Nov 2019 19:54:11 -0500
Received: from mail-ot1-f51.google.com ([209.85.210.51]:42454)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1iV3Oh-00074k-Nw
 for usrp-users@lists.ettus.com; Wed, 13 Nov 2019 19:54:07 -0500
Received: by mail-ot1-f51.google.com with SMTP id b16so3373336otk.9
 for <usrp-users@lists.ettus.com>; Wed, 13 Nov 2019 16:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Lx0e+jbPG7eFyQPxnJl6OwEKvCqCj7OG3oqjx534t1o=;
 b=t9rshB1HlRspUbpX3y/mJLkgllLGuBm5aOxG3R3CEJkZWwKI9/pKAi8ymk+qEBKqHA
 7/kHmlRW5Bakqq/Jps36tJU19mIvTUZ6jTFHNBUNLNyx0ov9LbGzYEzyCCRX6/cEAhe2
 KPTM30VkSQd/EUMcLQ0z1lVZTcNyS+76D2RSG3wsjL2vuDpSQ23UhkusU7ZSQLPZ9daG
 e4RFzL5/GD4b1kiDfILKc1vQAV2vFT3ZfMN/jF6TiGowIq7isUyiZbNs/mtvqQE8yqoj
 5grO0PEB2M/zH3j2m7GutGygFvpWCrRx/mg9o6kpYK0zZP2gAecmV3q3sh09+366LFfO
 p8IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Lx0e+jbPG7eFyQPxnJl6OwEKvCqCj7OG3oqjx534t1o=;
 b=sc58k1UUXX4ahC0vXCBywT+5vGqEhLL+F5VXkDxo/TJ+iE3HqIlCoUXGKOUJpX4hv1
 ztBEkQiSy8UPYmBcwHMEVr57Llf9S9gXdGy+fuXWovaEINqYOyD9OnIVfGVWagp9m/nt
 iEZPEbJjRYjstVvmxfGiks/ViVhG8tHf63bk1ckckVZrCnQhEq7uLzqKgmFdkYKoKhVT
 3nh871HloQQ7Zp6TvkrNzmVvMX6mP4TsWsbZe69RflYELHqGfjx7BnRcOKLL2OCOwJ7R
 oBZUrOKzBNba4IqskV/pEbw8Xgc2ahVgEIJJKBFbEgamTgBrrLQCPcI+/IhmuyhkXDrF
 Gvyw==
X-Gm-Message-State: APjAAAXaDTK3QrMO8nc1hXFQjrmUbi7FJTEhBoDuHltus8jdLyaIcj8O
 g5ZCgsIxJHfkgUldNcZ4ptLD6wgLwpaz+HHLB9X57akKr+zgQA==
X-Google-Smtp-Source: APXvYqxOiiyva+oak/4vvwcWSI5qGf5pg9psUtyj4Gzdvb+yBXaQPkX3BjCtpWX8V37ZGzeqJJEeKf4tmzE7Awh1EME=
X-Received: by 2002:a9d:1295:: with SMTP id g21mr5552446otg.301.1573692806837; 
 Wed, 13 Nov 2019 16:53:26 -0800 (PST)
MIME-Version: 1.0
References: <528137120.131239.1573149289782.JavaMail.zimbra@danlawtech.com>
In-Reply-To: <528137120.131239.1573149289782.JavaMail.zimbra@danlawtech.com>
Date: Wed, 13 Nov 2019 19:53:16 -0500
Message-ID: <CAGNhwTOPRKTCe1hdT8AbF8=QgO4GxtRD_TDkHcnyM_PW1Rv8xw@mail.gmail.com>
To: "Joshi J (Engg)" <joshij@danlawtech.com>
Subject: Re: [USRP-users] Usrp B200 IRNSS Simulator
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7577825327406146043=="
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

--===============7577825327406146043==
Content-Type: multipart/alternative; boundary="000000000000bcecd0059743e8b2"

--000000000000bcecd0059743e8b2
Content-Type: text/plain; charset="UTF-8"

Hi Jit - This is the USRP users list. Generating GPS signals is outside the
scope of this list's general topic domain. There are plenty of DSP and GSP
related Q&A groups and websites on the internet would be appropriate for
your query. Good luck! - MLD

On Thu, Nov 7, 2019 at 12:55 PM Joshi J (Engg) via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi All
>    I want to create GPS and IRNSS simulator using usrp b200.I am using
> vs2015 ,uhd master from github(open-source).
> I am able to generate GPS signal using   gps-sdr-sim.
> How can we generate IRNSS datastream for transmission.
>
> Thanks,
> Jit
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/

--000000000000bcecd0059743e8b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jit - This is the USRP users list. Generating GPS signa=
ls is outside the scope of this list&#39;s general topic domain. There are =
plenty of DSP and GSP related Q&amp;A groups and websites on the internet w=
ould be appropriate for your query. Good luck! - MLD</div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 7, 2019 at =
12:55 PM Joshi J (Engg) via USRP-users &lt;<a href=3D"mailto:usrp-users@lis=
ts.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">Hi All<br>
=C2=A0 =C2=A0I want to create GPS and IRNSS simulator using usrp b200.I am =
using vs2015 ,uhd master from github(open-source).<br>
I am able to generate GPS signal using=C2=A0 =C2=A0gps-sdr-sim.<br>
How can we generate IRNSS datastream for transmission.<br>
<br>
Thanks,<br>
Jit<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael D=
ickens<br>Ettus Research Technical Support<br>Email: <a href=3D"mailto:supp=
ort@ettus.com" target=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"h=
ttps://ettus.com/" target=3D"_blank">https://ettus.com/</a></div></div></di=
v></div>

--000000000000bcecd0059743e8b2--


--===============7577825327406146043==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7577825327406146043==--

