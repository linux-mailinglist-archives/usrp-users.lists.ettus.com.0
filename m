Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1005F1BAAF6
	for <lists+usrp-users@lfdr.de>; Mon, 27 Apr 2020 19:17:35 +0200 (CEST)
Received: from [::1] (port=41544 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jT7Nt-0007ib-NX; Mon, 27 Apr 2020 13:17:33 -0400
Received: from mail-vk1-f171.google.com ([209.85.221.171]:40647)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1jT7Np-0007Vi-Ar
 for usrp-users@lists.ettus.com; Mon, 27 Apr 2020 13:17:29 -0400
Received: by mail-vk1-f171.google.com with SMTP id 10so5049501vkr.7
 for <usrp-users@lists.ettus.com>; Mon, 27 Apr 2020 10:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HBA2gnMEIQjGz+8svMJWp0b+sfj5U1M2bmz02edkYGw=;
 b=RJ9Hbdez/vP4rChrFPTVePkguaDFBeVc1jwdANzinaG2EFB7sDYWkU7TwJ8DWOXoI2
 qlKFR+tSIa+LnEOZfbmzKI8cTX9PLIwMGumsVJTF9QKSNY6KSoZZhe/D8H/IEUrAdLF5
 wXGLwSmnR1T2rkUPzfVk+v3NCos66+WxHmNXFmv31vaEGcnPurWQf3Sc3s+Ghluvwhbd
 AZbxc1IFgud4bYVYXwO/SdDigd0Cd5Mf1DwYb4qyMIpKVvKsL/FNHis2j6YKQP+AjJRg
 NSHpKQiq/lrwPTCuDf8IUIzLmnzROibLHDcV0HPDU+FTzmMTzUxLIUlH54UBf8SdSaR8
 Xp6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HBA2gnMEIQjGz+8svMJWp0b+sfj5U1M2bmz02edkYGw=;
 b=TCJGvIxWmltotQC3gE3mq5E6krFOXnBiKAVt1usLANO7N+i3s3sDvSvkmFRFd2EnLr
 etIoMhdMzQfPT/WUN5kpqRNbz53otQo4HSmiOUyVNDFhQJAf5WxsYrZF9CltPCXuMGK9
 Hfc763kxH8OkXFEOd0lw0Oh2Ir2pw08thcGJeui/RGetJ73eWs7CM2pv8k1apBWmqAbv
 N3tLqaGQ3PQ3Qm0VnQGYWADDk3+A1yYNu2IZqofcOHX5+7B/k/D5YraLRcGrXVvWqX97
 yM1+Tahq/j5FLWux6UJuexOWSuWYktterka2AaYUoaACctBPYpgZM8wtmA6KbEkldq2i
 ViOA==
X-Gm-Message-State: AGi0PuZtm7ZN17hcWAnbntEJAa710Q4TfFcOEyiakGc0RTWslbx5qUus
 GwxXGuuHU8mOHdbuDK9u0zUPbTygdqntbHa2CqqOeHcL
X-Google-Smtp-Source: APiQypIrHtLCWEJKlGBnBgZhIhQ3rujjQxnJzvazoo0E9AyCvtYsE4l06NHhU+xy9ts/PLa1URfrD8ILIGCX1TCRMAs=
X-Received: by 2002:ac5:c5b5:: with SMTP id f21mr17289144vkl.84.1588007808783; 
 Mon, 27 Apr 2020 10:16:48 -0700 (PDT)
MIME-Version: 1.0
References: <86fb92927fdf42afb8b756126d044b94@boeing.com>
In-Reply-To: <86fb92927fdf42afb8b756126d044b94@boeing.com>
Date: Mon, 27 Apr 2020 13:16:37 -0400
Message-ID: <CAGNhwTMd0St0YWJtVhKtvJo-0sRMyuvXy7HH8PYt0bFusSx69w@mail.gmail.com>
To: "Clark (US), Kenneth C" <kenneth.c.clark2@boeing.com>
Subject: Re: [USRP-users] Build Error in MSVC 2017 in time_spec.hpp
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5408205465172964288=="
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

--===============5408205465172964288==
Content-Type: multipart/alternative; boundary="00000000000057eee805a448e1d3"

--00000000000057eee805a448e1d3
Content-Type: text/plain; charset="UTF-8"

Hi Ken - Try removing the "constexpr" entirely. We love "const" and
"constexpr", but some compilers don't love them in various forms /
combinations :) Hopefully that will get you past that issue. - MLD
---
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/


On Mon, Apr 27, 2020 at 1:08 PM Clark (US), Kenneth C <
kenneth.c.clark2@boeing.com> wrote:

> Hello,
>
> Trying to build the "host" applications on Windows 10, MSVC 2017 (aka 141).
>
>
> The line below in time_spec.hpp
>
> static constexpr double ASAP = 0.0;
>
>
> Generates error E0145 in MSVC 2017, "member "uhd::time_spec_t::ASAP" may
> not be initialized"
>
> I have tried not initializing it, making it const instead of constexpr,
> but still get errors.
>
>
> This same code base builds find in Linux (current Ubuntu distro).
>
>
> Any ideas?
>
> Thanks,
>
> Ken
>
>

--00000000000057eee805a448e1d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ken - Try removing the &quot;constexpr&quot; entirely. =
We love &quot;const&quot; and &quot;constexpr&quot;, but some compilers don=
&#39;t love them in various forms / combinations :) Hopefully that will get=
 you past that issue. - MLD<div><div><div><div dir=3D"ltr" class=3D"gmail_s=
ignature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">=
---</div><div dir=3D"ltr">Michael Dickens<br>Ettus Research Technical Suppo=
rt<br>Email: <a href=3D"mailto:support@ettus.com" target=3D"_blank">support=
@ettus.com</a><br>Web: <a href=3D"https://ettus.com/" target=3D"_blank">htt=
ps://ettus.com/</a></div></div></div></div></div></div></div></div></div></=
div></div><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Mon, Apr 27, 2020 at 1:08 PM Clark (US), Kenne=
th C &lt;<a href=3D"mailto:kenneth.c.clark2@boeing.com">kenneth.c.clark2@bo=
eing.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">Hello,<br>
<br>
Trying to build the &quot;host&quot; applications on Windows 10, MSVC 2017 =
(aka 141).<br>
<br>
<br>
The line below in time_spec.hpp<br>
<br>
static constexpr double ASAP =3D 0.0;<br>
<br>
<br>
Generates error E0145 in MSVC 2017, &quot;member &quot;uhd::time_spec_t::AS=
AP&quot; may not be initialized&quot;<br>
<br>
I have tried not initializing it, making it const instead of constexpr, but=
 still get errors.<br>
<br>
<br>
This same code base builds find in Linux (current Ubuntu distro).<br>
<br>
<br>
Any ideas?<br>
<br>
Thanks,<br>
<br>
Ken<br>
<br>
</blockquote></div>

--00000000000057eee805a448e1d3--


--===============5408205465172964288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5408205465172964288==--

