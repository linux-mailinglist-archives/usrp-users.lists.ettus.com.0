Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B74442EA5A6
	for <lists+usrp-users@lfdr.de>; Tue,  5 Jan 2021 07:59:10 +0100 (CET)
Received: from [::1] (port=45408 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kwgJB-00057i-OA; Tue, 05 Jan 2021 01:59:09 -0500
Received: from mail-vs1-f45.google.com ([209.85.217.45]:32787)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kwgJ7-0004mk-ML
 for usrp-users@lists.ettus.com; Tue, 05 Jan 2021 01:59:05 -0500
Received: by mail-vs1-f45.google.com with SMTP id e15so15857772vsa.0
 for <usrp-users@lists.ettus.com>; Mon, 04 Jan 2021 22:58:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qBZ7M5T0aHdAHqRNiQCMvNzf+kSOYCCnE/b+i5m3BXc=;
 b=eE3I/9Nd3nf6/24q2Jr3XNYYLyI5UIJ1dk+7OYHRUMz1ZiDA1z8waEVj3ifD9Y+VOS
 hNUZgxwZdFrZjxSBmPdy/qGb7ZpnF5lUl+FkgrcevzqV4hUHpALmWxatHi1xqxurLzIK
 ed9vKQAiQws0uMNAc/nsAKH/TUjA2i265z8grXEaE3BnxikLebuTK8wRiFdbPHAgs4LI
 1uQZBMNY4jIRYJKRsEndGuT9fwpW3/KA60PJT9lxiXbX7UREoHGeMUNl1hibJlp9j2p8
 76slqrJbwiAcKc5dDBF9GcWFiMI3iMTv6eXAYifcqrj5ieCQ4F4bvSvnbVS4nrOPKS33
 V2mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qBZ7M5T0aHdAHqRNiQCMvNzf+kSOYCCnE/b+i5m3BXc=;
 b=UJAVAO3OGm178uPAZP0VVs66x9DJAfC48nIAZclv65GZcokcpEX8PN/Ml/iwGLUcCI
 y8HoO5TP+YQCvI+zOVZ3qFrF6wFhLzC91ukHvGGnG9H6ioZgj2lJdtYKkin9AAZjjulj
 INqXoXH8pA/3H4+WggJZH6zEB79mHbyUM+7ym7HULsB2/EB8z7sU4FxLUsZ/gqWnkZTb
 23sgmkSeZCRlzAPmcL8yj7WrIGjsr0/Wj0+xxbQ0dQ6zOG+dd9Ch2eE0jxFlvHmxEPIM
 YobEUXhwCPgkl9YVWhX9xHk7c7gzc3XO3Bi+0N/m8AWk6Ufl8DMb3ofXF8kauNBPeWbE
 L6jg==
X-Gm-Message-State: AOAM532MX8x38Vab0+RjU0R/J+KWzfk/U0dBceUT0glEugGS2WnHjPe+
 ujbKkUvTNeCNwbVQD2jvKc47XfTsK4C6PqmLLEMsmJvFeiQB2sQ4
X-Google-Smtp-Source: ABdhPJyjhrFZ8JdpMehpGwrucuM+moCxjbML0CAYJkQdiwSkGECrErk0GGIlSmd4qAC6M3GvuetFKNQiKBuNg8hp70U=
X-Received: by 2002:a05:6102:2322:: with SMTP id
 b2mr43817234vsa.18.1609829905008; 
 Mon, 04 Jan 2021 22:58:25 -0800 (PST)
MIME-Version: 1.0
References: <BN7PR04MB438735C2290ABC23244C5E3E8FD70@BN7PR04MB4387.namprd04.prod.outlook.com>
In-Reply-To: <BN7PR04MB438735C2290ABC23244C5E3E8FD70@BN7PR04MB4387.namprd04.prod.outlook.com>
Date: Tue, 5 Jan 2021 01:57:49 -0500
Message-ID: <CAL7q81sktbdKdLBfE+3_NOCRbmwND1UUUGReKvvJK5SdTdyvvA@mail.gmail.com>
To: Dylan Baros <dylan.baros@ni.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] rfNoc Replay Benchmark with N321
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============3098013753301225920=="
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

--===============3098013753301225920==
Content-Type: multipart/alternative; boundary="000000000000a321ea05b821bbd2"

--000000000000a321ea05b821bbd2
Content-Type: text/plain; charset="UTF-8"

Hi Dylan,

Are you saying you want a flowgraph like this?
Replay Block -> Radio TX
Radio RX -> Host (2x 10GigE)

If so, yes that is possible. See
http://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Dual_10_Gb_Interface
for how to benchmark rx. Also, take note of the "second_addr" device arg in
that example as it will be needed when you write your UHD app for the above
flowgraph.

Jonathon

On Wed, Dec 30, 2020 at 10:52 AM Dylan Baros via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Good morning,
>
> I am interested in using a rfnoc replay block to benchmark rx over both 10
> gb ports, is that possible? I would like to dedicate both ports to
> receiving and the rfnoc replay block to transmit. I am using a N321.
>
> Thanks,
> Dylan
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a321ea05b821bbd2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Dylan,<div><br></div><div>Are you saying you want a flo=
wgraph like this?</div><div>Replay Block -&gt; Radio TX</div><div>Radio RX =
-&gt; Host (2x 10GigE)</div><div><br></div><div>If so, yes that is possible=
. See=C2=A0<a href=3D"http://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_=
Started_Guide#Dual_10_Gb_Interface">http://kb.ettus.com/USRP_N300/N310/N320=
/N321_Getting_Started_Guide#Dual_10_Gb_Interface</a> for how to benchmark r=
x. Also, take note of the &quot;second_addr&quot; device arg in that exampl=
e as it will be needed when you write your UHD app for the above flowgraph.=
</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 30, 2020 at 10:52 AM Dy=
lan Baros via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Good morning,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I am interested in using a rfnoc replay block to benchmark rx over both 10 =
gb ports, is that possible? I would like to dedicate both ports to receivin=
g and the rfnoc replay block to transmit. I am using a N321.=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Dylan=C2=A0</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a321ea05b821bbd2--


--===============3098013753301225920==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3098013753301225920==--

