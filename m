Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FBB16197F
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2020 19:13:38 +0100 (CET)
Received: from [::1] (port=57186 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j3ktf-0000Da-P9; Mon, 17 Feb 2020 13:13:31 -0500
Received: from mail-ot1-f45.google.com ([209.85.210.45]:40922)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1j3ktc-0008VG-LI
 for usrp-users@lists.ettus.com; Mon, 17 Feb 2020 13:13:28 -0500
Received: by mail-ot1-f45.google.com with SMTP id i6so16958615otr.7
 for <usrp-users@lists.ettus.com>; Mon, 17 Feb 2020 10:13:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OGBQ9rLjHReWXsBWY35dSGloCWPekXxVHTGMTiOf2Qo=;
 b=PvjWlJaJ/FEt9SQm6GiAl65YI3zsRunxaAGX6UBQZfImLDb5alOpkBYLaAzFlOlfJe
 OVGPtyTWC8bxL7NTPyVesNmpzGEmgLnvI/78v9HMpwz6e41wMChF2zszfpWrGFjlvBjJ
 d+3mo8roHcHY084Yth+kUtZcK7oUWummbYzzEC1S/ctYsYwY4Y6TxX2a0hNec4GP5aQH
 k9fqta/egAMi9H32jphjA0bdTbCdUhoctIL5eoVP29L2zSe1GMWFaXExDPEQTyQ78Mk/
 ydmwWt1WwuMHLXf3IwPctKoBSaJU561QtQv9C06BMnvGbAxxQ1fyzR+MXpCQsozBOKWC
 byuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OGBQ9rLjHReWXsBWY35dSGloCWPekXxVHTGMTiOf2Qo=;
 b=GwTDu0mq6iDERdSaUv6m2/KKyjX66pLvNiCS04DoMbB3rNN6M360eY0iz+NoBul2xW
 3bm9zNN1IYXY6h/Mbc2TtWnASbJ94HO6RmPv+heWIN74wjs6J31fYzg+a+lgKBGHF5Rw
 QXOZ0T4EuW7J77AD+uewPUdvCleGj2I8Wjo02ygRjea6Upz2C8zg7JUb6InS91shHt3c
 leoA0xBjiVZYQTAM5rPnLkiGwUFGnf9PhDJSZaY9zXxiprtD8i8A4aq1udMvzyTuXNot
 E4WXCQ7qbKPK0s+vlpPOci4VgFhg7qiCZ9pFXD/aNf2AMQi44QFuo3GY7S7pXFlFS/wG
 okuA==
X-Gm-Message-State: APjAAAWP1hS3cr1bXfFWhSwKQDNYsY7mIOISn40M8Lf7TKEBCLOvPXMf
 lYDzG7svhDkRj0GDz3xpX20rNrV+kCN/XeJuTQCPXw==
X-Google-Smtp-Source: APXvYqzhJDNoAXgkaWyiBJPtiMI+a4VnRpzS9q0u4nMiti+jIZkreZa0m67Dp3eQyjNTyVaoXjXpk1OTx9a9/5EGikQ=
X-Received: by 2002:a9d:2c2a:: with SMTP id f39mr12706890otb.301.1581963167724; 
 Mon, 17 Feb 2020 10:12:47 -0800 (PST)
MIME-Version: 1.0
References: <920c3ec0-af6b-8585-a2bc-84e35450e085@upc.edu>
In-Reply-To: <920c3ec0-af6b-8585-a2bc-84e35450e085@upc.edu>
Date: Mon, 17 Feb 2020 13:12:37 -0500
Message-ID: <CAB__hTS2to9GJraPTx=krJzWu7hnv0dyX7rmuJjq7cut+_wAyw@mail.gmail.com>
To: Adria <adria.amezaga@upc.edu>
Subject: Re: [USRP-users] Using DDC/DUC frequency in RFNoC
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0504861185262862931=="
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

--===============0504861185262862931==
Content-Type: multipart/alternative; boundary="000000000000a969d7059ec980a7"

--000000000000a969d7059ec980a7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Adri=C3=A0,
If you are trying to use 'timed' commands, perhaps the problem is the
signal generator block.  If I remember correctly, this block does not
support timed commands.  This means that the resulting data stream will not
include a time stamp and thus if you try to tune the DDC or DUC using a
timed command, it will delay the command until the appropriate time stamp
is seen (which will never occur in your case).  If you are not using timed
commands, then just ignore this....
Rob

On Thu, Feb 13, 2020 at 6:40 PM Adria via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear all,
>
> I'm trying to tune the output and input frequency of an X310 + UBX-160.
> I instantiate the radio block and the DDC and DUC blocks and connect them=
.
>
> The TX chain is like this: [Signal generator] -> [DUC] -> [Radio block].
>
> My intention is to use the DUC only for frequency tuning, since I set
> the UBX synthesizers to Integer-N mode.
>
> The fact is that configure the DUC frequency by setting the "freq"
> parameter using the set_param call has no effect.
>
> Trying to set the DUC frequency using tune_request through the dsp_freq
> parameter has no effect either.
>
> My other question is about the Integer-N tuning. Is there a way to set
> the integer mode without using the tune_request object? I expected to be
> able to do that using radio_ctrl.
>
> I am sure I'm missing something but I don't know where else to look, so
> any help would be appreciated.
>
> I'm using UHD 3.14.
>
> Thanks!
>
>
> Adri=C3=A0 Am=C3=A9zaga
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a969d7059ec980a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Adri=C3=A0,<div>If you are trying to u=
se &#39;timed&#39; commands, perhaps the problem is the signal generator bl=
ock.=C2=A0 If I remember correctly, this block does not support timed comma=
nds.=C2=A0 This means that the resulting data stream will not include a tim=
e stamp=C2=A0and thus if you try to tune the DDC or DUC using a timed comma=
nd, it will delay the command until the appropriate time stamp is seen (whi=
ch will never occur in your case).=C2=A0 If you are not using timed command=
s, then just ignore this....</div><div>Rob</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 13, 2020 at 6:4=
0 PM Adria via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">Dear all,<br>
<br>
I&#39;m trying to tune the output and input frequency of an X310 + UBX-160.=
 <br>
I instantiate the radio block and the DDC and DUC blocks and connect them.<=
br>
<br>
The TX chain is like this: [Signal generator] -&gt; [DUC] -&gt; [Radio bloc=
k].<br>
<br>
My intention is to use the DUC only for frequency tuning, since I set <br>
the UBX synthesizers to Integer-N mode.<br>
<br>
The fact is that configure the DUC frequency by setting the &quot;freq&quot=
; <br>
parameter using the set_param call has no effect.<br>
<br>
Trying to set the DUC frequency using tune_request through the dsp_freq <br=
>
parameter has no effect either.<br>
<br>
My other question is about the Integer-N tuning. Is there a way to set <br>
the integer mode without using the tune_request object? I expected to be <b=
r>
able to do that using radio_ctrl.<br>
<br>
I am sure I&#39;m missing something but I don&#39;t know where else to look=
, so <br>
any help would be appreciated.<br>
<br>
I&#39;m using UHD 3.14.<br>
<br>
Thanks!<br>
<br>
<br>
Adri=C3=A0 Am=C3=A9zaga<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000a969d7059ec980a7--


--===============0504861185262862931==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0504861185262862931==--

