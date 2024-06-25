Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C510916582
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2024 12:48:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 45975385166
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2024 06:48:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719312514; bh=3wfO4wqHlKZ6fQPf6DGfEno5/5TvPIsaCPLpLAQhRvA=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WEpwgT7TtB4tINNtLWitIY/FGoA90fIjbvI1QxhUvv0FTHEDES13kAajFk8LmT6oU
	 UGqankd1l34W9O8ZAtqCImAKp9DW8jtZYRctiIAkvKQYjc0F1b9VPdrkhv0Qg3U38m
	 bXRxjt3JkQ/Y4CfoYqOmv8AncQW2UEo2cZZBFOXncYAqMi3HYrfD6KnYuW0Id8PhIF
	 zaJOSwRESM64Fy9iGTm7EiQagOG84SeyoWoQN9P9eFH5OM9Pyt/0NI6iX+RfbVJzR0
	 WHu1PI5pO/YCc6rra8k4zdf9Ytk6AsO2y4DwPzgz40er6SNXDoYhWU8cMflxue+P8l
	 AroyLXC9R4QQA==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 860AE380ABB
	for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2024 06:47:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="sIxcfMvD";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a725a918edaso295429466b.3
        for <usrp-users@lists.ettus.com>; Tue, 25 Jun 2024 03:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1719312465; x=1719917265; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P8qG0fO7M6jTSl6zixJ7t40oMqDvaeI0nonMLnZQysg=;
        b=sIxcfMvD5uYzLTao2rcgdZetjcaUUQ19frmHZTEVI6dhxr8nY0nqmAgZhap+889TNS
         u7TFJA5aGC29AbYHzAWjU3bipWSDeeXDMVItNyHIUuHUkje0FvsZ5u2ZSmlO/Cwpiw9U
         dUt9YvUfqQBafALe4UeMbMQ/WNviJZhyhRZ3wpk6/CQeGjPDB6eFkQXEZyQRm4LpY0V8
         94y0gHB+b5q9nMaQjXREijs600IHqejBJewSwuPuARPsr8YiVPTV27qeVtFriTpBPvAU
         /LaffXhOM/i79dqE511jtkHMRl1E4C10KRE5HUWLR6ozASDdf2tZ+TW2R8Klclxcw0/B
         ysjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719312465; x=1719917265;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P8qG0fO7M6jTSl6zixJ7t40oMqDvaeI0nonMLnZQysg=;
        b=DKbndg/ruE0YONgW+pyfn9Qwc4qMYwIB1Odwmkp0XcUKG7bRspn6tjCniUP0XfEXQW
         CNqLdVfrJLsC8G44YTBzYlEcGt2kinZvWTlBQBfNEgCqE0twrb2mv0a/pc24nUMbdJ5s
         AEh3RZKGna2n9b3Kb4E4haCBSZW5vJEqM2Pdqc4NCj3CzbXSWZpE8Ipu4EoxIT1FQI0M
         YxaNlwWjQjFvTAkLICI77l0bwmU3DEat7UyzZ134FEdtgHvZ04iGcAcupfWyhr53LDUI
         5vCPpjDgQCbcqCRVia8fQfduLmCW3XBmMzf90KEJsyp9kVBej4RRIT8URYLE/RflVIdV
         LsrQ==
X-Gm-Message-State: AOJu0YylQU6rCNY3ctZ1d7A+o0RmDzgi04VfcETR5L12zpKXNDprQpCx
	ISKRVh72jgrLOxU2NlNbZ+HN3dxndphJpPDGjd46Xq4ok8i2dNhwV+Rk3SK15YmgXengDSZX8Jr
	+rjRO/bX1PJb+3QitabfF55fsOz18+1/LNY0UlUpUXz93KCck/8q0Xrnb
X-Google-Smtp-Source: AGHT+IH+YBsvnOBeBTfiNZ1yWistNBh0ezpRVwgMqT7iCxAuJES7KGfJbhwfWKdsiDn4iWvca5bw3rp4TSdXUIRu+8I=
X-Received: by 2002:a17:907:d505:b0:a72:518e:7c8b with SMTP id
 a640c23a62f3a-a72518e8985mr412235666b.11.1719312464821; Tue, 25 Jun 2024
 03:47:44 -0700 (PDT)
MIME-Version: 1.0
References: <_4kdSpsp43uA23Twys44Eh47XROibC7bGW1EtuHVazp72VtZNIzis015AGTjDHX6Gf-vkZ9BDq2Zu1nSgoW4oYJHHDJog31BbkZm38TcJ9E=@protonmail.com>
In-Reply-To: <_4kdSpsp43uA23Twys44Eh47XROibC7bGW1EtuHVazp72VtZNIzis015AGTjDHX6Gf-vkZ9BDq2Zu1nSgoW4oYJHHDJog31BbkZm38TcJ9E=@protonmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 25 Jun 2024 12:47:34 +0200
Message-ID: <CAFOi1A7an4Tn=-X3HSJ0xC86Wi1+xtCvkDu=SSNdkzVjfSzCrg@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: PZNIRV2QCORSMUCF7HGFQLLEBJLL5K36
X-Message-ID-Hash: PZNIRV2QCORSMUCF7HGFQLLEBJLL5K36
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Clarification on Benchmark Rate Testing for USRP X310 with two TwinRX
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PZNIRV2QCORSMUCF7HGFQLLEBJLL5K36/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7345391540333550364=="

--===============7345391540333550364==
Content-Type: multipart/alternative; boundary="000000000000b954b1061bb4a0f0"

--000000000000b954b1061bb4a0f0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 19, 2024 at 8:37=E2=80=AFAM Olo via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
> When I execute the following command:
> ./benchmark_rate --args=3D"addr=3D<first_ip>,second_addr=3D<second_ip>"
> --channels *"0,1,2,3"* --rx_rate *100e6* --duration 30
>
> am I testing a combined bandwidth of 4x100 MHz, which totals 400 MHz?
>

You get 4x100Msps. The actual analog bandwidth is only 80 MHz per channel,
but the rate is 100 Msps.

> Similarly, when I run:
> ./benchmark_rate --args=3D"addr=3D<first_ip>,second_addr=3D<second_ip>"
> --channels *"0,2"* --rx_rate *200e6* --duration 30
>

does this also equate to a total bandwidth of 400 MHz?
>
Total sampling rate is 400 Msps, but you still only get useful bandwidth
of  80 MHz per channel.

> However, for the command:
> ./benchmark_rate --args=3D"addr=3D<first_ip>,second_addr=3D<second_ip>"
> --channels *"0,1"* --rx_rate *200e6* --duration 30
>
> does this only test 200 MHz because it is operating through just one
> TwinRX?
>
> I want to ensure that I fully understand how the bandwidth is being
> utilized and tested across the different configurations.
>
No this is really the same as above. Your four channels in a 2xTwinRX setup
are independently tunable.

--M

> Thank you in advance for your assistance.
>
> Best regards,
> Olo.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b954b1061bb4a0f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 19, 2024 at 8:37=E2=80=AF=
AM Olo via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div style=3D"font-family:Arial,sans-serif;font-size=
:14px"><br><p>When I execute the following command:</p>./benchmark_rate <sp=
an>--args</span>=3D&quot;addr=3D&lt;first_ip&gt;,second_addr=3D&lt;second_i=
p&gt;&quot; <span>--channels</span> <b>&quot;<span>0</span>,<span>1</span>,=
<span>2</span>,<span>3</span>&quot;</b> <span>--rx_rate</span> <b><span>100=
</span>e6</b> <span>--duration</span> <span>30</span><br></div><div style=
=3D"font-family:Arial,sans-serif;font-size:14px"><p>am I testing a combined=
 bandwidth of 4x100 MHz, which totals 400 MHz?</p></div></blockquote><div><=
br></div><div>You get 4x100Msps. The actual analog bandwidth is only 80 MHz=
 per channel, but the rate is 100 Msps.<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div style=3D"font-family:Arial,sans-serif;font-siz=
e:14px"><p>Similarly, when I run:</p>./benchmark_rate <span>--args</span>=
=3D&quot;addr=3D&lt;first_ip&gt;,second_addr=3D&lt;second_ip&gt;&quot; <spa=
n>--channels</span> <b>&quot;<span>0</span>,<span>2</span>&quot;</b> <span>=
--rx_rate</span> <b><span>200</span>e6</b> <span>--duration</span> <span>30=
</span></div></blockquote><div><br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div style=3D"font-family:Arial,sans-serif;font-size:14px">=
<p>does this also equate to a total bandwidth of 400 MHz?</p></div></blockq=
uote><div>
Total sampling rate is 400 Msps, but you still only get useful bandwidth of=
=C2=A0 80 MHz per channel.=C2=A0 <br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div style=3D"font-family:Arial,sans-serif;font-size:14px=
"><p>However, for the command:</p>./benchmark_rate <span>--args</span>=3D&q=
uot;addr=3D&lt;first_ip&gt;,second_addr=3D&lt;second_ip&gt;&quot; <span>--c=
hannels</span> <b>&quot;<span>0</span>,<span>1</span>&quot;</b> <span>--rx_=
rate</span> <b><span>200</span>e6</b> <span>--duration</span> <span>30</spa=
n><br></div><div style=3D"font-family:Arial,sans-serif;font-size:14px"><spa=
n><span><br></span></span></div><div style=3D"font-family:Arial,sans-serif;=
font-size:14px"><span><span><p>does this only test 200 MHz because it is op=
erating through just one TwinRX?</p><p>I want to ensure that I fully unders=
tand how the bandwidth is being utilized and tested across the different co=
nfigurations.</p></span></span></div></blockquote><div>No this is really th=
e same as above. Your four channels in a 2xTwinRX setup are independently t=
unable.</div><div><br></div><div>--M <br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div style=3D"font-family:Arial,sans-serif;font-size:=
14px"><span><span><p>Thank you in advance for your assistance.</p><p>Best r=
egards,<br>Olo.</p><br></span></span></div><div style=3D"font-family:Arial,=
sans-serif;font-size:14px">
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000b954b1061bb4a0f0--

--===============7345391540333550364==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7345391540333550364==--
