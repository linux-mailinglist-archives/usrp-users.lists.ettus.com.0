Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BDA31F256
	for <lists+usrp-users@lfdr.de>; Thu, 18 Feb 2021 23:33:09 +0100 (CET)
Received: from [::1] (port=47838 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCrr4-0000CP-Hv; Thu, 18 Feb 2021 17:33:02 -0500
Received: from mail-oi1-f170.google.com ([209.85.167.170]:42037)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1lCrr0-00009V-WA
 for usrp-users@lists.ettus.com; Thu, 18 Feb 2021 17:32:59 -0500
Received: by mail-oi1-f170.google.com with SMTP id 6so3797420ois.9
 for <usrp-users@lists.ettus.com>; Thu, 18 Feb 2021 14:32:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=efaPunSlsaKVIkOKXTG8EFfvi199psELqrL/LMT3Z6s=;
 b=XpXccDNdxBOxOc2sYaXFNmBNpW5bxPpBTR13dV1pHPgq376XRljvRmGtcpCAXWtzMl
 0cM261/NTf7TVZOVYDHqy7m72lvTS+VmOYx1GPzERvzNQ7zWTenI1NQZsOm51yy8sf8m
 3Bqo7tpbCyppRaZsCqn2A6GO/5BbYa4V//EuHT4R1ryRgp+pgd3+RPyw1m4PK7UFvGFg
 XlGBN85qa/ens6Zp4xUf8yLU0cN3c87DZK8LnxzKkPzqsCqm3s71PJHeYkwAjvZC4TAI
 ZxlgR+gb/mv70o/Oo5TUmAN5DsHdnMvV77bUsDQiUiKepwXVNQhVuLooH3FL+w6jjPDn
 Gd/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=efaPunSlsaKVIkOKXTG8EFfvi199psELqrL/LMT3Z6s=;
 b=n/5vyY8HySCDBG7o7m8Zjnw8R+gfg7BXF6Spf5M0xCo2kLJYK2dZzdv8nxu3H4y3QZ
 aoHMOhPT1JQ31kpGPfI4fWIGf9dDGG+3dfootS9TJCSAJkL8ANaTfu9YmSzddL0gLrlh
 zUJHq5j3EqLq3wyfHTJyh+u+VRTGmrBXtFunYpHhK9PWgOdxYmiEYZt2wSr5dbgvRwAh
 IknTI6pWFuQCTLgSOl8FuZpwFd2ZVqtrtbRCnJtRynXLNDwPwlfK7c/inzght7KW9cAz
 c6nG+sCXBnicubEQQUxHI+1yU/P3Sz2uOsXNmJ/iF4jiC8mN2FRVbYUj+nD6NJr4JMy4
 X73A==
X-Gm-Message-State: AOAM530Fs3ZR0j5ToK2BuddpNy7x4aQnYbw7Cga5lFxDEyVoQnhZlmxD
 jzGIWP/nl5gClUJq0W6g5eNgt6uOO8yFQqIhf68aWYl1EN4=
X-Google-Smtp-Source: ABdhPJzmRW5NSCvq+qajrQzPkfilCyC5fxtwCUbifyUnX18Zlyhg2N+eOgP6vNB3lzP8XpdgmV2wFBYa8c6iFeq/xbY=
X-Received: by 2002:a05:6808:d47:: with SMTP id
 w7mr3370224oik.150.1613687538033; 
 Thu, 18 Feb 2021 14:32:18 -0800 (PST)
MIME-Version: 1.0
References: <LNXP123MB3724BAB625FE639AF1D8FEBCCA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <20210217172935.joprwj3f6rwdu3jo@barbe>
 <CAB__hTSncBC=XS1YvCoE1jip2kY607aWC2hrFUOYcPCq4V6+iA@mail.gmail.com>
 <20210218090858.serfuy4u67rmor6c@barbe>
 <CAB__hTRwpakb-Vu+Q98vp9MGUW9NgggV=-AmK+4OWc0rw6zTNg@mail.gmail.com>
 <20210218172348.5xjhxl3b3g5ptjnd@barbe>
In-Reply-To: <20210218172348.5xjhxl3b3g5ptjnd@barbe>
Date: Thu, 18 Feb 2021 17:32:07 -0500
Message-ID: <CAB__hTQEGfMFSm8L1jV41d_WSradNM_RJdODcEkGYH27x29q3g@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>, 
 usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC
 Digital Down Converter
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
Content-Type: multipart/mixed; boundary="===============5363234648063486635=="
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

--===============5363234648063486635==
Content-Type: multipart/alternative; boundary="0000000000007bcbab05bba3e880"

--0000000000007bcbab05bba3e880
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I previously did not have the link options correct for building OOT.  If
you look in the CMakeLists.txt file in the Ettus rfnoc example apps folder,
you will see a link option "-Wl,--no-as-needed".  I didn't look into it
thoroughly, but without that option, the OOT blocks do not get linked in
(or at least their code to register themselves at startup never executes).
Once I added this linker option to my custom app, the OOT blocks register
fine and behave normally.
Rob

On Thu, Feb 18, 2021 at 12:24 PM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Rob,
>
> On 18/02/21 10:57, Rob Kossler via USRP-users wrote:
> > Following our previous discussion on the topic of building the
> controllers
> > in-tree or out-of-tree, I was able to successfully build my controllers
> > out-of-tree and they seem to work fine (with my custom application).
>
> OOT blocks with OOT controllers were able to forward issue_stream_command
> action?
> Do you know what you have done differently from our previous discussion?
>
> Regards
> --
>
> C=C3=A9dric Hannotier
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000007bcbab05bba3e880
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I previously did not have the link options correct for bui=
lding OOT.=C2=A0 If you look in the CMakeLists.txt file in the Ettus rfnoc =
example apps folder, you will see a link option &quot;-Wl,--no-as-needed&qu=
ot;.=C2=A0 I didn&#39;t look into it thoroughly, but without=C2=A0that opti=
on, the OOT blocks do not get linked in (or at least their code to register=
 themselves at startup never executes).=C2=A0 Once I added this linker opti=
on to my custom app, the OOT blocks register fine and behave=C2=A0normally.=
<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Feb 18, 2021 at 12:24 PM C=C3=A9dric Hannotier via =
USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">Hi Rob,<br>
<br>
On 18/02/21 10:57, Rob Kossler via USRP-users wrote:<br>
&gt; Following our previous discussion on the topic of building the control=
lers<br>
&gt; in-tree or out-of-tree, I was able to successfully build my controller=
s<br>
&gt; out-of-tree and they seem to work fine (with my custom application).<b=
r>
<br>
OOT blocks with OOT controllers were able to forward issue_stream_command a=
ction?<br>
Do you know what you have done differently from our previous discussion?<br=
>
<br>
Regards<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000007bcbab05bba3e880--


--===============5363234648063486635==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5363234648063486635==--

