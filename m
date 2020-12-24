Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C33D82E23FA
	for <lists+usrp-users@lfdr.de>; Thu, 24 Dec 2020 04:16:09 +0100 (CET)
Received: from [::1] (port=42160 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ksH6l-0007ui-86; Wed, 23 Dec 2020 22:16:07 -0500
Received: from mail-ua1-f49.google.com ([209.85.222.49]:36139)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1ksH6g-0007n7-LP
 for usrp-users@lists.ettus.com; Wed, 23 Dec 2020 22:16:02 -0500
Received: by mail-ua1-f49.google.com with SMTP id p2so360035uac.3
 for <usrp-users@lists.ettus.com>; Wed, 23 Dec 2020 19:15:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Nw+XO5x5cCfGPT0XPA7FVo2jcsoMva6WmpZVQeCcpV0=;
 b=Gyu5HNV1QVp1/XaCUVPHED95k5aqFKWifoXquEMOunT0hMvuPjKAYUAPfgNk44pYNQ
 D2B984rRePisWunTn4fADL9G6leGnmyDoHgaUrvjbJWgq+ic0BreNdYqFPGpy4hrJqCn
 Vb+4WSaDqe7/QjUaF3Yps3u7JOBN8OTMJKiSCErdp66cL9CJdK63rAgLWehhW45KPPAI
 iZ071JleGiLUwxXV+1v//ujsQGqJ0Y5p9jI8zOzSgpXmIt30wkHjtK3h5bj5U4XDK8kI
 KD/cRowTVS4xo9wi5nCxnNFcoRQxG/rjuv3Q+e3Nq0fr7KaL28ZR/F+najhhGWyQ4PJM
 yPlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nw+XO5x5cCfGPT0XPA7FVo2jcsoMva6WmpZVQeCcpV0=;
 b=oCekO9/Mqs0fUk+JAo85nM9sQ7aHdPye6mW/TWuuJPEiVDRNZpuY0HelfhiNZ8EQCZ
 jtnu/Zh0WWBHJwQj+Ug8/8qP6MZCyVDzA9RUujaTdfFMAk+IqqGlz8bxDPF9uSoPmch6
 3hMVqdLOlrcCUy2t26b9mTqw4WzEOlM902tZuCwh0hkmII3ua8UyxozI/Eo1kGqOt2Q0
 g0mwloFttPFe2TcVT11cONuJ+9rAkNNkQT/67v9xmdx6N5NRqQuxxz9C9UqKi/UobeOj
 FEIeeGv48zIY3cGv60BO8bouD3/YqjvMFK35/S0CiETVmLUtMbfwaP0GHCDGs2B4oM0l
 8e8g==
X-Gm-Message-State: AOAM532sQ9/C9zlyaMco004ETU772yH1VqboXUwdG4grzkdzCt4Qd4lh
 0eyc26pg5cglCK2pi8yGgDLb0o3EBOXEL8Y+6E1fTIXR
X-Google-Smtp-Source: ABdhPJxqULYM7LgHPlXfrl6XOloSPGRgZFQ7A596iRfOw+SYwo8U8CLa2REWsWLs9aU00Iq/XHWBQPU7F/zfQRWbQvw=
X-Received: by 2002:ab0:4597:: with SMTP id u23mr21864642uau.100.1608779721920; 
 Wed, 23 Dec 2020 19:15:21 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTS8pMUdZphefQQwY7UF2SPKDqY3dGdqEKCWANB7MdQMUA@mail.gmail.com>
In-Reply-To: <CAB__hTS8pMUdZphefQQwY7UF2SPKDqY3dGdqEKCWANB7MdQMUA@mail.gmail.com>
Date: Wed, 23 Dec 2020 22:15:10 -0500
Message-ID: <CAL7q81ugLvWSYPajAbGLDrGFbwB+v9i+DJWtsLszjCr34Y8k_Q@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Advice sought for custom FFT/Window RFNoC block
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
Content-Type: multipart/mixed; boundary="===============3424387512269392484=="
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

--===============3424387512269392484==
Content-Type: multipart/alternative; boundary="000000000000d8e46c05b72d375a"

--000000000000d8e46c05b72d375a
Content-Type: text/plain; charset="UTF-8"

Hey Rob,

I haven't thought of using axi_rate_change in this way, but I think it
should work fine. What issues are you seeing?

Jonathon

On Wed, Dec 23, 2020, 21:51 Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I created an RFNoC block (4.0) with both windowing and a Xilinx FFT IP
> core. In order to address the issue of partial packets arriving (or packets
> less than the FFT size of 4096 or higher), I added the axi_rate_change
> module (after looking for all options). Even though my block does not
> change rate, the axi_rate_change is convenient because it automatically
> drops partial packets and handles the header for you in the event of
> dropping partial packets. In my UHD block controller, I just set the M/N
> registers the same since the rate doesn't change.
>
> In any case, I am seeing some unexpected issues and now I'm questioning
> whether or not using the axi_rate_change block for this use case is a good
> idea.  Any comments/advice would be appreciated.
> Rob
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d8e46c05b72d375a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hey Rob,<div dir=3D"auto"><br></div><div dir=3D"auto">I h=
aven&#39;t thought of using axi_rate_change in this way, but I think it sho=
uld work fine. What issues are you seeing?</div><div dir=3D"auto"><br></div=
><div dir=3D"auto">Jonathon</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 23, 2020, 21:51 Rob Kossler vi=
a USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@l=
ists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
dir=3D"ltr">Hi,<br><div>I created an RFNoC block (4.0) with both windowing =
and a Xilinx FFT IP core. In order to address the issue of partial packets =
arriving (or packets less than the FFT size of 4096 or higher), I added the=
 axi_rate_change module (after looking for all options). Even though my blo=
ck does not change rate, the axi_rate_change is convenient because it autom=
atically drops partial packets and handles the header for you in=C2=A0the e=
vent of dropping partial packets. In my UHD block controller, I just set th=
e M/N registers the same since the rate doesn&#39;t change.</div><div><br><=
/div><div>In any case, I am seeing some unexpected issues and now I&#39;m q=
uestioning whether or not using the axi_rate_change block for this use case=
 is a good idea.=C2=A0 Any comments/advice would be appreciated.</div><div>=
Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000d8e46c05b72d375a--


--===============3424387512269392484==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3424387512269392484==--

