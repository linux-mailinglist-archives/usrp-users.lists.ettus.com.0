Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EAC600D82
	for <lists+usrp-users@lfdr.de>; Mon, 17 Oct 2022 13:15:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A3D9383B5D
	for <lists+usrp-users@lfdr.de>; Mon, 17 Oct 2022 07:15:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666005307; bh=O7nNtvGtGpQDiez6wWf3PQmLbEBSe01DAjjPKYErpGg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nomv2MlHNAi/yf6kDzZ4iBsGzAhwMLCRMBUxQLZXbLvpDeDAl9DzA2n51tfLaqoRr
	 VGPeL+/rT6+/rL28OqIjiugt6BNjXjUJ8mLHFPKmvBvE6oRDoRnZ04CRMJvyz/Iy5y
	 ju/vZFebGY30lYUqFM8N7eEAL7PM3xG1jQEr3Knv8KoLLP7m56AKuukawlc8I0wryZ
	 kMKA6RvFMvR0wEMk/wC68D+I+hYsXLtZCTrQIQmu7hyd+VpL/y3VeCR03ULhtb20y+
	 vD0d9/7ieV/Tcau00oXuFHempm7daIl5P3pmF64yfmD5FkD03jMtZNbHLsGsjrWpct
	 IEaC5w05yfLAw==
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 0BD6F3837F8
	for <usrp-users@lists.ettus.com>; Mon, 17 Oct 2022 07:13:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Oqm3RIPf";
	dkim-atps=neutral
Received: by mail-oi1-f176.google.com with SMTP id y72so11724067oia.3
        for <usrp-users@lists.ettus.com>; Mon, 17 Oct 2022 04:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gyfdkgXb3BQQ7nh023K5ltpEM0+QZfYtvkRHK4Stt7o=;
        b=Oqm3RIPfjip7DgmBTZa3ZOqq4J3JtMgyr5ZB1vvKJTJuSrtppWqk265b0jlji82QRC
         MQzX8cBj4TTiGioDPLH20xbMH840gYs/tBPK7NUkQXvXn9x/gIxBrgQVgCq/ZKog2oxI
         a3+D1GibR4nba8rLtvi22NR4RdJNHq0T9kAx5579PVrjr6eqAbSgFNF8hqM/ULpG4mxV
         r36MBLtnMXiM0Z6fF7KM4bAHpNsAx2pB2PxDbtW7GwIxHbkLeWaTTykYFkHRz9vLY5QA
         OIFDI0mzIGlawPIIacCYqFP8uFXI1kfEaVYRiEvsE8aiBzn23nL8m5HP9rn/GUHMDXvT
         XDiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gyfdkgXb3BQQ7nh023K5ltpEM0+QZfYtvkRHK4Stt7o=;
        b=Jb/UEbok0Uoh555fMCk5hm5Vi11ocO6gJuudexxHRQ8grJNryoutxSJGQPa752fpru
         +wRGnn9qtBjD6jkGnrJUU1768UPNQmetONrrhFZVef8/M0l/xvA516md2XnRsR9nO7Ff
         s5xaPxfSotr+ndfalDISiyiHI+zUfOhRJFykF07shNZeGVWR2TnQyT58IRoMdhllGyGB
         iYmxULzLFqTTYviQ51ECNbRyamcpjciMzPXN7is0jUW+5UHB8wKhCGUQ3xsnlS4wQPTN
         PfdjBoyyd26GdfnyjQ3aYfDAuyzVL6x9AyjP2P95QGRbFSXerfr6p/WEdYpaqryZaPl+
         X9jQ==
X-Gm-Message-State: ACrzQf3WiJbYIvq4L2fThNyqIu0Z6ahhetDaaB/20iYyXTquGnEpcpuB
	KZEGFhaWqMik/d/+JkNTGFRLqXa41hz3lJ1dWkViCH1f+w6Q6Q==
X-Google-Smtp-Source: AMsMyM5Hm+qoXamlZlBlB5Lk+qlBgZTn/9qGRSpGrxlsQdaypQibjWyWb23wtsOKZ5uPtsFEHnp4DRpALd/G11FEPuA=
X-Received: by 2002:a05:6808:181e:b0:350:7776:9059 with SMTP id
 bh30-20020a056808181e00b0035077769059mr12989810oib.83.1666005238118; Mon, 17
 Oct 2022 04:13:58 -0700 (PDT)
MIME-Version: 1.0
References: <Kart9wtAGAXbzhQCC11y3wCzMfYBc7OdPhzPRAlnGI@lists.ettus.com>
In-Reply-To: <Kart9wtAGAXbzhQCC11y3wCzMfYBc7OdPhzPRAlnGI@lists.ettus.com>
From: Berkay SAYGILI <zuhasdasn@gmail.com>
Date: Mon, 17 Oct 2022 14:13:47 +0300
Message-ID: <CAA7+tqS8E1owkG2hUvd0mDsW0p2V0aDY4a3b=KdjAw1_2xZJGA@mail.gmail.com>
To: perper@o2.pl
Message-ID-Hash: RWCUVQN55CSY7JQH3GKLHBS4PRB7VHP6
X-Message-ID-Hash: RWCUVQN55CSY7JQH3GKLHBS4PRB7VHP6
X-MailFrom: zuhasdasn@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD+DPDK - some of the old and new quirks during installation and configuration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RWCUVQN55CSY7JQH3GKLHBS4PRB7VHP6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6135142872618314671=="

--===============6135142872618314671==
Content-Type: multipart/alternative; boundary="000000000000697caa05eb39120c"

--000000000000697caa05eb39120c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Piotr,

First of all, thanks for the information. I also spent some time
configuring DPDK using Mellanox and Intel NICs. Have you tried using DPDK
with GNU Radio? In my experience, regular ethernet driver + GNU Radio was
working better than DPDK + GNU Radio.

Best regards,

Berkay SAYGILI

On Mon, 17 Oct 2022 at 12:53, <perper@o2.pl> wrote:

> Hi all,
>
> As promised in one of earlier posts I=E2=80=99ve written something about
> installation of UHD with DPDK support.
>
> It is not a full tutorial. It=E2=80=99s more an extension of what was wri=
tten in
> currently existing tutorials and mailing-list posts (like this tutorial:
> https://files.ettus.com/manual/page_dpdk.html).
>
> Even as a non-tutorial what I=E2=80=99ve written was a bit long for a mai=
ling list
> post, so I put it here:
>
> https://ptrkrysik.github.io/dpdk.html
>
> Some new sources of issues described there:
> - IOMMU groups,
> - UHD+DPDK dropping samples when UHD=E2=80=99s threads are assigned RT (h=
ighest)
> priority.
>
> Best Regards,
> Piotr Krysik
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000697caa05eb39120c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Piotr,<div><br></div><div>First of all, thanks for t=
he information. I also spent some time configuring DPDK using Mellanox and =
Intel NICs. Have you tried using DPDK with GNU Radio? In my experience, reg=
ular ethernet driver=C2=A0+ GNU Radio was working better than DPDK=C2=A0+ G=
NU Radio.=C2=A0</div><div><br></div><div>Best regards,</div><div><br></div>=
<div>Berkay SAYGILI</div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Mon, 17 Oct 2022 at 12:53, &lt;<a href=3D"mailt=
o:perper@o2.pl">perper@o2.pl</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><p>Hi all,</p><p>As promised in one of earlier =
posts I=E2=80=99ve written something about installation of UHD with DPDK su=
pport.</p><p>It is not a full tutorial. It=E2=80=99s more an extension of w=
hat was written in currently existing tutorials and mailing-list posts (lik=
e this tutorial: <a href=3D"https://files.ettus.com/manual/page_dpdk.html" =
target=3D"_blank">https://files.ettus.com/manual/page_dpdk.html</a>).</p><p=
>Even as a non-tutorial what I=E2=80=99ve written was a bit long for a mail=
ing list post, so I put it here:</p><p><a href=3D"https://ptrkrysik.github.=
io/dpdk.html" target=3D"_blank">https://ptrkrysik.github.io/dpdk.html</a></=
p><p>Some new sources of issues described there:<br>- IOMMU groups,<br>- UH=
D+DPDK dropping samples when UHD=E2=80=99s threads are assigned RT (highest=
) priority.</p><p>Best Regards,<br>Piotr Krysik</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000697caa05eb39120c--

--===============6135142872618314671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6135142872618314671==--
