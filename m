Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B31D92CCDF9
	for <lists+usrp-users@lfdr.de>; Thu,  3 Dec 2020 05:39:52 +0100 (CET)
Received: from [::1] (port=49890 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kkgPF-0000Tp-1e; Wed, 02 Dec 2020 23:39:49 -0500
Received: from mail-vk1-f171.google.com ([209.85.221.171]:38560)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kkgPC-0000Pa-6t
 for usrp-users@lists.ettus.com; Wed, 02 Dec 2020 23:39:46 -0500
Received: by mail-vk1-f171.google.com with SMTP id a129so124351vki.5
 for <usrp-users@lists.ettus.com>; Wed, 02 Dec 2020 20:39:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2DlepQbol0kTUhfsIj6ZsS02OXCzZL2Qnlz6zxVD8DQ=;
 b=CaJUC+rPZlgQdUBh0iWi/X24NiInZTd3sHhh6waeI42Fy5ibCG772LmmTj54mIk5gQ
 06rbuEaMTf0TmKG3HNfZoDIpdcbl9eBtKcu5358a2vbUYANZzkNU0eobhCjIYsQFmqLw
 /dyHRGPYlKQgOxG2BumTY/OJVfwj0D+MUfKtvJtdFtUH/+kf/BX3ztiBnGXQ9HulT0sS
 maz7S3iHVLut51xEPnbPry+KUDBTEyrjoYZSB5Se8IqEQgxYLWHsyA+QTkKFQJndYcMj
 xYT4PXCSm9nyN+V7kN4ephKifRju3pICobeaEk1k6ZBUo4I7rAl0dYXw9bN+KohsA2B+
 pfxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2DlepQbol0kTUhfsIj6ZsS02OXCzZL2Qnlz6zxVD8DQ=;
 b=nJt8wWG3/cFroW+0Q3kaXVXg8fE40/wrj+k47UCA2HDK0B9v+VY6Z1/mK1flWyrCVn
 oGQ7v1sMuU+2umAnGeg67m3ZBQomFm9DmGeIj7aE7BUPw2R/9t2jwoT3FgVx76GKb0VW
 DUSj8CP2rk3bJD5db6evMUjdWzyr34julfa1DJKbXeS0fRUtvsGKs0j5VqC20eG3161E
 Mw194Vxh+qtpKIa+qF3KLXyapARA442rrdcUzLnsSNJ6TiF1Ly46DFt7GdH+lqGgpu8k
 HD5BO7rWJty0l/LeCcYrQCFR5iLqvDFon8lyDmgo9j7ho5j7lQaU6efSSeh95k2nZ9ji
 lUFQ==
X-Gm-Message-State: AOAM532wG5xuPCF6ixwpNn9yieEP4ijUxmJPNQUOeLBht+Jovy8wcHJz
 WS12bipsTbzPxzfxHZLA3oPitCm73NM03Cn9v66af3lAk2T6Vi/W
X-Google-Smtp-Source: ABdhPJxTmCVe+BN8LohxK8JTthf2/ovgxA502WDEs5jhQTd3GHRWWPAN5TKKnpcrZikpze88uvNslT0GVP9PtwfX1vE=
X-Received: by 2002:a1f:2ecd:: with SMTP id u196mr875129vku.19.1606970345307; 
 Wed, 02 Dec 2020 20:39:05 -0800 (PST)
MIME-Version: 1.0
References: <CAKHaR3=vHK9FrgdZThOVCyGEWsGbKxBKsgW5-g6fePa33OpL6A@mail.gmail.com>
In-Reply-To: <CAKHaR3=vHK9FrgdZThOVCyGEWsGbKxBKsgW5-g6fePa33OpL6A@mail.gmail.com>
Date: Wed, 2 Dec 2020 23:38:29 -0500
Message-ID: <CAL7q81uSXoG5QdO8DPDLjP8NMBftNZNBqV8=fqCM5ZEdnPVXWQ@mail.gmail.com>
To: Dario Pennisi <dario@iptronix.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] DPDK with UHD 4.0
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
Content-Type: multipart/mixed; boundary="===============2115272957589980819=="
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

--===============2115272957589980819==
Content-Type: multipart/alternative; boundary="00000000000098dec605b587f083"

--00000000000098dec605b587f083
Content-Type: text/plain; charset="UTF-8"

Hi Dario,

UHD 4.0 requires DPDK 18.11, but Ubuntu 20.04.1 packages version 19.11. See
the UHD manual for how to build version 18.11:
https://files.ettus.com/manual/page_dpdk.html#dpdk_installation.

Jonathon

On Tue, Dec 1, 2020 at 7:59 AM Dario Pennisi via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> i'm trying to use DPDK with UHD 4 but it is not detected by cmake.
> i have ubuntu 20.04.1 which installs DPDK 19.11.3-0ubuntu0.2 when i use
> apt-get install dpdk dpdk-dev
>
> i tried passing manually environment variables for include and library
> directories but that doesn't work.
> can you please shed some light on this?
> thanks,
>
> Dario
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000098dec605b587f083
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Dario,<div><br></div><div>UHD 4.0 requires DPDK 18.11, =
but Ubuntu 20.04.1 packages version 19.11. See the UHD manual for how to bu=
ild version 18.11:=C2=A0<a href=3D"https://files.ettus.com/manual/page_dpdk=
.html#dpdk_installation">https://files.ettus.com/manual/page_dpdk.html#dpdk=
_installation</a>.</div><div><br></div><div>Jonathon</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 1, 20=
20 at 7:59 AM Dario Pennisi via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div>i&#39;=
m trying to use DPDK with UHD 4 but it is not detected by cmake.</div><div>=
i have ubuntu 20.04.1 which installs DPDK 19.11.3-0ubuntu0.2 when i use apt=
-get install dpdk dpdk-dev</div><div><br></div><div>i tried passing manuall=
y environment variables for include and library directories but that doesn&=
#39;t=C2=A0work.</div><div>can you please shed some light on this?</div><di=
v>thanks,</div><div><br></div><div>Dario<br clear=3D"all"><div><br></div><d=
iv dir=3D"ltr"><div dir=3D"ltr"><br></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000098dec605b587f083--


--===============2115272957589980819==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2115272957589980819==--

