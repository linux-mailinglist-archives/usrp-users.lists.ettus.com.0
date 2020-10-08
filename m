Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB12287C44
	for <lists+usrp-users@lfdr.de>; Thu,  8 Oct 2020 21:16:13 +0200 (CEST)
Received: from [::1] (port=51994 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQbOe-00042G-SA; Thu, 08 Oct 2020 15:16:12 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:38536)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kQbOa-0003qr-RP
 for usrp-users@lists.ettus.com; Thu, 08 Oct 2020 15:16:08 -0400
Received: by mail-ot1-f42.google.com with SMTP id i12so6639400ota.5
 for <usrp-users@lists.ettus.com>; Thu, 08 Oct 2020 12:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aZrieor5cJMtuY7/zNwePNNgssUlSqwR/JNb8mRg3yU=;
 b=Qf9amisSchEErhDVjWQPXkqT9bO4JYMw1wIySMe1nKOGvjWpQ+mWkHzfKat1yxhN8x
 UbA4gnMwalqaVBHzHUUyBAUckpJdj44xgZ5rclzFkivl0ruwJbAXVmSJAvNF8yNeZiNd
 l5+Y3y8CCkQ6g5ez1ydVS6xZtfcQmUeGFg85V4ZNUVy8Ny4Ie+ZwSJI0DgDu+D9MPD/Z
 ivHM7WkeZMGSGRIajXEPYsS/K0cVBLTvFgtvB0MPDbZvg7RB4mF4kyj71GgKMAZUk84j
 E8lVfVY5r0x6bU3JulcYWOcDQIuAcA2agLG0OYuNhOU3bM7NdnTlEWqhHSPTAp71KFL0
 zEng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aZrieor5cJMtuY7/zNwePNNgssUlSqwR/JNb8mRg3yU=;
 b=MSAGUBnDtvv0HsgXNx5PX/q9WVsqYR1GQcj0eTAwdj7HM2GVP03y25nie5z4aP/Cde
 cLH7AqlGYNiBVMjijWe4bubVAxyP8r0gkKP/rEbesXdTiFeZmIckker1+hDIFC4Wa/t/
 faMPY/7bD/py31NkQGUbJTOWl/DAQGiqODmuaFcFQ0ukua6zgFZXxwCV7ubpss/AHLy/
 MmwQno6AzyoS45GrSK+aMrNU3XDCZ1QUCv7Bsa3QQhaMduD/o/stIwhoP+7xzbp+GfUO
 mOmjUCmOmscqVOga06XLrb9Jwp5kvuEO+xysi4JKHHyPGspQKwH5ooF/ylH/cwa/ah/u
 h/aQ==
X-Gm-Message-State: AOAM530NefBNsElb7NmjortRfjknc98jcgEi1y6+OMIzENefrGO+z2ey
 soGiFvKhdzhSaklmWY4u3mljRIA9jH27FtA+nVJh1ceFDNU=
X-Google-Smtp-Source: ABdhPJzzm4ckZgHkIsVG2snhuOBWfQ5TBYSiuOf5mUfaj9qe3biUaS5uHun/yHY90MqL0shB6VQwdSBgl8WI21xpCtw=
X-Received: by 2002:a05:6830:1282:: with SMTP id
 z2mr5334592otp.301.1602184528040; 
 Thu, 08 Oct 2020 12:15:28 -0700 (PDT)
MIME-Version: 1.0
References: <2e92fb3d3f694bcca5767b03451b4f05@tudelft.nl>
In-Reply-To: <2e92fb3d3f694bcca5767b03451b4f05@tudelft.nl>
Date: Thu, 8 Oct 2020 15:15:17 -0400
Message-ID: <CAB__hTQjrsTU7Y_rVSMPWaRKKKzmNwziG8QmXpfgSYoNosymow@mail.gmail.com>
To: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Replay block time commands
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2924213459638544443=="
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

--===============2924213459638544443==
Content-Type: multipart/alternative; boundary="000000000000a8d90705b12da792"

--000000000000a8d90705b12da792
Content-Type: text/plain; charset="UTF-8"

I use the Replay block with timed commands. I have tested it and it seems
to work fine. In general, I would say the Replay block functions best in
UHD4, but I think that it will also work with timed commands in 3.15 (with
bandwidth limitations imposed by 3.15 RFNoC architecture).
Rob

On Thu, Oct 8, 2020 at 10:51 AM Cherif Diouf via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
>
>
> http://ettus.80997.x6.nabble.com/USRP-users-X310-Replay-Block-and-receiver-timming-td11818.html
>
>
> From this post and at the time the replay block did not support
> time-commands. Is the functionality now available. And did anyone test it?
>
>
> Cherif
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a8d90705b12da792
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I use the Replay block with timed command=
s. I have tested it and it seems to work fine. In general, I would say the =
Replay block functions best in UHD4, but I think that it will also work wit=
h timed commands in 3.15 (with bandwidth limitations imposed by 3.15 RFNoC =
architecture).</div><div>Rob</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Oct 8, 2020 at 10:51 AM Cherif Diouf =
via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users=
@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_-6072726608130843518divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D=
"ltr">
<p>Hi,</p>
<p><br>
</p>
<p><a href=3D"http://ettus.80997.x6.nabble.com/USRP-users-X310-Replay-Block=
-and-receiver-timming-td11818.html" target=3D"_blank">http://ettus.80997.x6=
.nabble.com/USRP-users-X310-Replay-Block-and-receiver-timming-td11818.html<=
/a></p>
<p><br>
</p>
<p>From this post and at the time the replay block did not support time-com=
mands. Is the functionality now available. And did anyone test it?</p>
<p><br>
</p>
<p>Cherif<br>
</p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000a8d90705b12da792--


--===============2924213459638544443==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2924213459638544443==--

