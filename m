Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E62531DD43F
	for <lists+usrp-users@lfdr.de>; Thu, 21 May 2020 19:26:06 +0200 (CEST)
Received: from [::1] (port=40976 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jboxH-0004Zd-R4; Thu, 21 May 2020 13:26:03 -0400
Received: from mail-lf1-f42.google.com ([209.85.167.42]:33783)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <derekste@gmail.com>) id 1jboxD-0004SX-3i
 for usrp-users@lists.ettus.com; Thu, 21 May 2020 13:25:59 -0400
Received: by mail-lf1-f42.google.com with SMTP id z22so4952589lfd.0
 for <usrp-users@lists.ettus.com>; Thu, 21 May 2020 10:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vXW2Up0uSKFN5yCzh+linBCDPCDTv/aAsLQytkJTKPY=;
 b=MZVm+PIYoPkLhu1t4DQNbm81KLL8XNm8KZY24ktr6QK7CFcKkVTeGQKhpu6nvuvYIu
 w5gbSj1lbnUVdGGKKGqz3wa5Xwg2pJgYSrfTYh/izy0HO1GnxYFSnxFJ4vBuGAv1UEoO
 fwpDcKPFrhDCGVVRGJ6EIgUIsDDkrV3rXUwJe67N6KiewGsl0E9/S9OziOrTxuAfwwyB
 +FBvTHNoGpbaq2+OV50qEPKva6Uu5yVN9mO0oiWnIX7TaUZWKrxmmXabAxDmDj+AakE7
 BpKyqISTc6OH1K1Xr2C1E9pDNaXEm8dx8zBHpsfmZA2cIrtTKEOePayNoJsEI//i/9yw
 xiew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vXW2Up0uSKFN5yCzh+linBCDPCDTv/aAsLQytkJTKPY=;
 b=GQaRi0WE2clW4FCpDfaRY7YUoPLZn63k99zB4U6MED+Gij2m0fzOlZ5m+AAl9C9RTJ
 XyGwYZChqtjWOZMWnDhRyPKUMbubWAsSPSdhOsQodwXI/eW24zScY9gfReuqB1BRMc0G
 HNKZFjNrTMJYuPAdRZwkTM43PtB17V4TOaJzpBqml0U62VDob4tgSYaNDzI2ROe/bcYI
 7PsUVbR4SP4IHbgRDnaxoodLjSngTF/fE+y/JFqqb9KWrariic1pUybdn8SCiNmzlvX2
 iTuRveTbAwwnvPp3cP81SDDBx4jVLYLu6q7KDWqrj08lXDHpPmfaVuEGEnr6EsKUUfsa
 RIGw==
X-Gm-Message-State: AOAM533MRdKewXzKju44m6sI1JcvoN7e74UBSRZiYK+gFjncCi7ug8Z3
 DYbxZ8HdQcjZak+pU5bfTSzY7MLbAVO4oZ3pUv0=
X-Google-Smtp-Source: ABdhPJxep1oOb9e+E3YY5GHKQ8EgXzz+bI4LDRPZ8ySafReEIWtXZbNjh27Q6GmqaLkZtTaOwOBKM6a3HmtPeuplwR8=
X-Received: by 2002:ac2:4823:: with SMTP id 3mr5443425lft.194.1590081917823;
 Thu, 21 May 2020 10:25:17 -0700 (PDT)
MIME-Version: 1.0
References: <1659313211.1951845.1590081096295.ref@mail.yahoo.com>
 <1659313211.1951845.1590081096295@mail.yahoo.com>
In-Reply-To: <1659313211.1951845.1590081096295@mail.yahoo.com>
Date: Thu, 21 May 2020 12:25:06 -0500
Message-ID: <CAGp1hYqBDLg2dz+u8R_hVT7H2zYa+jQyvbygCjd9GsYkXJA=gg@mail.gmail.com>
To: Farhan Naeem <farhan_uet08@yahoo.com>
Subject: Re: [USRP-users] N310 MIMO Configuration Help Required !
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
From: Derek Steinkamp via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Derek Steinkamp <derekste@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6053441741502981926=="
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

--===============6053441741502981926==
Content-Type: multipart/alternative; boundary="000000000000e0328705a62bcb2f"

--000000000000e0328705a62bcb2f
Content-Type: text/plain; charset="UTF-8"

You cannot run your streaming ports through a switch like that, since the
host PC to switch link becomes a bottleneck...

Streaming ports should go to NICs directly on the host system. So, to
stream from two radios, each having a 10gig SFP link, the host would need
two 10gb interfaces plus an additional LAN interface for the
control/management network(sometimes this will even be OK if you are going
wifi to where the management port is plugged in)

On Thu, May 21, 2020 at 12:12 PM Farhan Naeem via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> I am trying to understand how to connect two N310 devices to get a MIMO
> configuration.
>
> 1. I connect two of the SFP+ 10G Ethernet ports on each N310 device to a
> 10Gbit Ethernet switch. And connect the other end of this Ethernet switch
> to my host system.
> 2. I need additional 1Gb Ethernet switch to connect to the management
> Ethernet port of the N310 devices from my host system.
> 3. A common clock reference.
>
> I have attached a block diagram here. Thanks.
>
> Best Regards,
> Farhan
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e0328705a62bcb2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You cannot run your streaming ports through a switch like =
that, since the host PC to switch link becomes a bottleneck...<div><br></di=
v><div>Streaming ports should go to NICs directly on the host system. So, t=
o stream from two radios, each having a 10gig SFP link, the host would need=
 two 10gb interfaces plus an additional LAN interface for the control/manag=
ement network(sometimes this will even be OK if you are going wifi to where=
 the management port is plugged in)</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 21, 2020 at 12:12 PM F=
arhan Naeem via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div><div style=3D"font-family:verdana,helvetic=
a,sans-serif;font-size:13px"><div dir=3D"ltr">Hello,</div><div dir=3D"ltr">=
<br></div><div dir=3D"ltr">I am trying to understand how to connect two N31=
0 devices to get a MIMO configuration.</div><div dir=3D"ltr"><br></div><div=
 dir=3D"ltr">1. I connect two of the SFP+ 10G Ethernet ports on each N310 d=
evice to a 10Gbit Ethernet switch. And connect the other end of this Ethern=
et switch to my host system.<br>2. I need additional 1Gb Ethernet switch to=
 connect to the management Ethernet port of the N310 devices from my host s=
ystem.</div><div dir=3D"ltr">3. A common clock reference.</div><div dir=3D"=
ltr"><br></div><div dir=3D"ltr">I have attached a block diagram here. Thank=
s.<br><br>Best Regards,<br>Farhan</div></div></div>________________________=
_______________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000e0328705a62bcb2f--


--===============6053441741502981926==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6053441741502981926==--

