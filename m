Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A64247A876F
	for <lists+usrp-users@lfdr.de>; Wed, 20 Sep 2023 16:45:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6523E385158
	for <lists+usrp-users@lfdr.de>; Wed, 20 Sep 2023 10:45:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695221133; bh=bDkT0bJaGbsE27baP6WZFHU/QMzwL4UvmmmpLUC84/w=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=H1jt4gG9MbsjtjHFNCYrOsLLCvQC1w8r3t0UQzejcJJviKG8e/X4rJRUVUYcDcUuf
	 iUP76RSv3unFQJycgvnCUgDlE8KV5yAuMeLew3Ls5YWIKq4VprL0pWNzSK90tSMrv3
	 wGWsU5gWBf3uyLI9xPvSz2ew9l4Xx+rkA2znGmN9q1FnPJHlfP/4D5mptbYLxC9xTn
	 Mgj3CkmTWhG5qx8j3cCtNTBCLJaE+6ZrqpfEuS/RjfHbP8FhVKSpFkHCeJAd3jcvsA
	 7XqndWba0HFD1xvXyMVFQgRdNX3YXBhO2jp7yInSINhao+M2vvN+KYljCSAHkStRFU
	 H2BJclcTG4Ljg==
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E0F0385145
	for <usrp-users@lists.ettus.com>; Wed, 20 Sep 2023 10:44:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="rkYPYtXM";
	dkim-atps=neutral
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2ba1e9b1fa9so113994691fa.3
        for <usrp-users@lists.ettus.com>; Wed, 20 Sep 2023 07:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1695221084; x=1695825884; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BObA7b/gWIwA62DRwn8f3woGtvuBwRZNjewG4rqia+8=;
        b=rkYPYtXMohYnh6C0diIAg5xg3Fgdvk8h0TZx8EUvq11SRMrVaqrckJd15Vo4VqPjuy
         Jw06AfGmDBK3GxUokkIrDT71F3Kngfb2wtopYZHsp32+/q2BCOZQJkjopWsqcqkDjV9H
         jlRn8/LJgTKPbz5Vz+Zcwr3+mrj25e1RI1xXchyMi+46N3U3EXN+QtcHjUBSupYmGGZy
         yEuug9KsHSc2PbyYMfVZzDL9kjxzoxcEZCTPBue+61njTuq7sbQape+lMiv38aBLFpsb
         1av1OIt0B6pqdPdXdY1R7BJFNUTzpqO077iLBMSTQl5SFoG9teghNmeSasWcAI4knq3e
         P2AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695221084; x=1695825884;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BObA7b/gWIwA62DRwn8f3woGtvuBwRZNjewG4rqia+8=;
        b=Jy5MCe/k7ragM8f4MrFbzw6TXrWKYrtpAT2UY57uNHtS/bB+YoBxu1/HevRYq19A+c
         ifrfWmkILYtgiDCP0B+gJZtYoo50LP2tTAT8Q9a5qtIRXkn2vnctiSXEYtE9vEWOvZSc
         5V/z9/VrMqoEMSZOg4hChlr6Kqe5NuDE+x/As4mQfV73uMOQ+j9+6U9bs0zcTszefCv9
         25zIA2pziJmLMJWKhND35xfkQS7Z+BLsDRr86s+BrtOpNS+gBvOLqgVsNaS0PKhQ4z29
         hojW1sWd6O+G8Q2qVmqIOKZih3pF6FTetTCJ8ZrJm6ywkjiUv9QTFkNItvNs4IVtvFnn
         vk4g==
X-Gm-Message-State: AOJu0YxQLPbt8YRvGwpPaA1PUvFmURPCk9w5ANf1A0By6TZ3OdvyZHOl
	KKL/zi6xMZXeQ3KByGGQ3+VwZu9EyKY8TQJ9KiGrRIF8
X-Google-Smtp-Source: AGHT+IEVXsx5V1bSyHtwgu2g/uff+NDEUubHZD7rROoymxA994SwqvYMWb6UzGI8Ddt7VhDUnEWkYAK1Sw/5HgX7e6M=
X-Received: by 2002:a2e:9cc5:0:b0:2bc:c4ae:c565 with SMTP id
 g5-20020a2e9cc5000000b002bcc4aec565mr2424013ljj.28.1695221083674; Wed, 20 Sep
 2023 07:44:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAKHaR3na4NGPULYeVV6etRArggUh4Kw0pjvqVjWqNLNvUOri1A@mail.gmail.com>
In-Reply-To: <CAKHaR3na4NGPULYeVV6etRArggUh4Kw0pjvqVjWqNLNvUOri1A@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 20 Sep 2023 09:44:27 -0500
Message-ID: <CAFche=h0VdGK1GZ-2OF6GXVOzpxJ+M_5jS6cPxRUT=JRX_aQTQ@mail.gmail.com>
To: Dario Pennisi <dario@iptronix.com>
Message-ID-Hash: TBCGGXDPLVWQJYYZPH7GAEWTZC6HK3BU
X-Message-ID-Hash: TBCGGXDPLVWQJYYZPH7GAEWTZC6HK3BU
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 at lower sample rates
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TBCGGXDPLVWQJYYZPH7GAEWTZC6HK3BU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0018781783663816491=="

--===============0018781783663816491==
Content-Type: multipart/alternative; boundary="0000000000008239ea0605cb6a58"

--0000000000008239ea0605cb6a58
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dario,

There are other differences in the FPGA code as well, since X440 is
designed for higher rates and channel counts. For example, the X440 doesn't
have additional DDCs/DUCs in the FPGA fabric. I think the manual page does
a pretty good job of summarizing the differences.

https://uhd.readthedocs.io/en/latest/page_usrp_x4xx.html
https://uhd.readthedocs.io/en/latest/page_fbx.html
https://uhd.readthedocs.io/en/latest/page_zbx.html

Regarding the sample rates, the X440 supports configurable sample rates,
down to 125 MSPS. So, you can do 200 MSPS without modifications, but 100
MSPS is lower than it supports. If 100 MSPS is the rate you need, then you
might need to use 200 MSPS then add a DDC/DUC with a custom FPGA image. I
think this is possible, but it's not supported by default.

Wade

On Wed, Sep 20, 2023 at 5:31=E2=80=AFAM Dario Pennisi <dario@iptronix.com> =
wrote:

> Hi,
> i'd be interested in porting an application we developed on X410 to X440
> and was wondering if there is any known limitation that would prevent usi=
ng
> X440 at 200 MSPS or even 100 MSPS (although i see support for this has be=
en
> discontinued also for X410 in recent UHD versions).
> as far as i understand X440 and X410 share the same mainboard and just
> have a different front end which would make it straightforward to port
> code... is this correct?
> thanks,
>
> Dario Pennisi
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008239ea0605cb6a58
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Dario,</div><div><br></div><div>There are other di=
fferences in the FPGA code as well, since X440 is designed for higher rates=
 and channel counts. For example, the X440 doesn&#39;t have additional DDCs=
/DUCs in the FPGA fabric. I think the manual page does a pretty good job of=
 summarizing the differences.</div><div><br></div><div><a href=3D"https://u=
hd.readthedocs.io/en/latest/page_usrp_x4xx.html">https://uhd.readthedocs.io=
/en/latest/page_usrp_x4xx.html</a></div><div><a href=3D"https://uhd.readthe=
docs.io/en/latest/page_fbx.html">https://uhd.readthedocs.io/en/latest/page_=
fbx.html</a></div><div><a href=3D"https://uhd.readthedocs.io/en/latest/page=
_zbx.html">https://uhd.readthedocs.io/en/latest/page_zbx.html</a></div><div=
><br></div><div>Regarding the sample rates, the X440 supports configurable =
sample rates, down to 125 MSPS. So, you can do 200 MSPS without modificatio=
ns, but 100 MSPS is lower than it supports. If 100 MSPS is the rate you nee=
d, then you might need to use 200 MSPS then add a DDC/DUC with a custom FPG=
A image. I think this is possible, but it&#39;s not supported by default.</=
div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 20, 2023 at 5:31=E2=80=AF=
AM Dario Pennisi &lt;<a href=3D"mailto:dario@iptronix.com">dario@iptronix.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr">Hi,<div>i&#39;d be interested in porting an application =
we developed on X410 to X440 and was wondering if there is any known limita=
tion that would prevent using X440 at 200 MSPS or even 100 MSPS (although i=
 see support for this has been discontinued also for X410 in recent UHD ver=
sions).</div><div>as far as i understand X440 and X410 share the same mainb=
oard and just have a different front end which would make it straightforwar=
d to port code... is this correct?</div><div>thanks,</div><div><br clear=3D=
"all"><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><spa=
n style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.333=
3px">Dario Pennisi</span><br style=3D"color:rgb(0,0,0);font-family:Calibri,=
sans-serif;font-size:13.3333px"><br></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008239ea0605cb6a58--

--===============0018781783663816491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0018781783663816491==--
