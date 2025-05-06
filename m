Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4D0AAD118
	for <lists+usrp-users@lfdr.de>; Wed,  7 May 2025 00:46:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9DC9E385F96
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 18:46:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746571576; bh=88OKYXZGjXmhS5oNqgDNK9sFREYLbm8vXr+Twhz6VDQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Ssttf/jBjpig5jOjOyxKcE9Wj3RVqRWYfd9q377GgqXHVkmymjrokaOAZCs8VJbGL
	 +yyq4Dc7oqsJGUY6khveIhKbV6EqO8aNddIXhaCKcbDJ4TiNFhmYWXLA6t/MY8Td5d
	 Fk8AcF4VfDCWGMklzKMH5YkSNozwezwmgHwslC8Jiz1YigH9GTqvMJx+RinElUq0GM
	 UWef41KaA9fUTSclG74dKIhKzQ939/gNW910q5DBbKfyRkZZsOjQEQw4wLtPT401Hs
	 IBHA2q9UrpyQ0I/CrIcrHgDDTwP51EwoDL6RyxpzoD8dqOceourGRR0uQizpojQssu
	 YRCRjlowdLjAg==
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 723ED38523B
	for <usrp-users@lists.ettus.com>; Tue,  6 May 2025 18:45:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ut435S+/";
	dkim-atps=neutral
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-6060200710bso2841106eaf.3
        for <usrp-users@lists.ettus.com>; Tue, 06 May 2025 15:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746571516; x=1747176316; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QYPqcQAecXTNMQI4ujkENHJ3Kciy9rdxRNgj+vuP9U4=;
        b=Ut435S+/lGFf1JG5bZCEBJrueHN4pdsLTkPGo2IsTzBljrpNU4Zf4OORxS29OnyM1p
         RyMFC44EQKE/S7AKSK7T2cJl7gzysjdZkFVk0oRbgWyvAwnL3U59y0cjScK81FoBaLVa
         HYKTcZ3/TK+YilV8XeFz8d1tLHcIZ8iixGBwhTP3fhy+5xWRCtWjq1wszLOMPtpCbNG+
         HxDCLZOC46ORc2/TIilkNih/D/ySLZeBKPKVF6WXqIs8yRKrCQOh9Zf4knDxUCkWpwk8
         tHEZNO29qOnSJqhsCkdR+1nyJjnXHFT3je7hf4p1rmMzGpFiaJHuWAckTa/9rZ3w6NEJ
         1GVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746571516; x=1747176316;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QYPqcQAecXTNMQI4ujkENHJ3Kciy9rdxRNgj+vuP9U4=;
        b=RYApi3zboogr9vjTjuSgKILJyoRrrzZ1AZBEEjUNj/iVO2g4Ja+yIODLggkN15RCCp
         ZmDnHmJpmdpXcCw2adeRka3Qwu3QgkKwdgqt1BI4JhmPOZu7Ue3vTH/Wlgrsljdp4SIQ
         am34dYPGNs0MvSfHVMVYavnnujVHRmUjDfBMhRswniJYJhMgFKQmCVpDllEX9PNKgzlX
         FLHXawYmUgh1fgmV0FpgfUihvcRTkUU0Rada7aD19nEre6orkMyDvdKo1d4g9LQPHqrI
         5lLxIfNb3ekt1KK6f3TJPpUaG8k6d0rIU/YcTXUgaEknZ9yFmZrlAXMBiHaaxI2h7+kj
         ToXw==
X-Gm-Message-State: AOJu0YzzIo4pnEC70Q7S8CrueWc3EkNRcX22RViTj1g9+hUE0PoAm11k
	giogj0KYj2h5AqMTYf22yRkfac65sKuAu3UYWSu19r7Q3bBLECNTXp0piw0GNjc1ASrtX4+ZX3o
	c4ujuL1TD5euESZINt/L3Csadib3MLw==
X-Gm-Gg: ASbGnctK++R+jbkNuYSqLpR6MQ/7qtc0LF+Y70R+TGgop8BkhHeEnEVRxjXn2oKoVKH
	ArV14VvRfCMieLqNvjfSx9RBnom9LlKqu+Z4Nforvq2STSCIyeQN9zgmHy5eaVghMECBj6t/lRh
	swQml2TanyHagTMN1/nWz3
X-Google-Smtp-Source: AGHT+IHMG8SrX/8EIXj7xd500QnM3ZvBpI1klk5tFX0iuAi3OrQYBq6FYC2yuKLuDVgmpUIZu4p9TgYVldmi3ryIm94=
X-Received: by 2002:a05:6871:330d:b0:2c2:3ae9:5b9c with SMTP id
 586e51a60fabf-2db5bda3f01mr698744fac.2.1746571516691; Tue, 06 May 2025
 15:45:16 -0700 (PDT)
MIME-Version: 1.0
References: <PH1P110MB12844DA5BEC21C1621A447CB9889A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <PH1P110MB12844DA5BEC21C1621A447CB9889A@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
From: Chris Rogers <c1337rogers@gmail.com>
Date: Tue, 6 May 2025 18:45:05 -0400
X-Gm-Features: ATxdqUHo3EkAAq601CQ4REP7hqvTJblIbOlcHH57pb1Gb6Psfe1B7DdAjSbeUeg
Message-ID: <CAOEzSFRj1w=+PKG2UCiAgrWFKEjiBNEWESHfdAnLoV96=oJZXg@mail.gmail.com>
To: "Mann, John - 0662 - MITLL" <mannj@ll.mit.edu>
Message-ID-Hash: YU7BCR5V5ENSGUY5ROEXFDTT62LOITQ6
X-Message-ID-Hash: YU7BCR5V5ENSGUY5ROEXFDTT62LOITQ6
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 - excessive calibration?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YU7BCR5V5ENSGUY5ROEXFDTT62LOITQ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3804276900821954890=="

--===============3804276900821954890==
Content-Type: multipart/alternative; boundary="000000000000d3cac806347f5e88"

--000000000000d3cac806347f5e88
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A few things you can do:

1. Set "skip_adc_selfcal=3Dtrue" in the device args of the X410 GnuRadio bl=
ock
2. Rearchitect the generated python code to start the X410 once and then
have each test feed it inputs/signals to transmit/record without restarting
the X410 session

Obviously 1 is simpler 2, but I haven't really tested the implications of
completely skipping calibration

- Chris

On Tue, May 6, 2025 at 5:48=E2=80=AFPM Mann, John - 0662 - MITLL <mannj@ll.=
mit.edu>
wrote:

> I created a gnuradio flowgraph that concurrently records data from 3
> separate X410s to a RAID on a server (via 100 Gb ethernet).
>
>
>
> When I run the python script generated by the flowgraph, it goes through
> an almost endless loop of calibrations that takes a couple of minutes to
> complete before the data is actually recorded.  Is there any way to avoid
> this??  It is really slowing down our work flow.
>
>
>
> John
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d3cac806347f5e88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">A few things you can do:<div><br></div><div>1. Set &quot;s=
kip_adc_selfcal=3Dtrue&quot; in the device args of the X410 GnuRadio block<=
/div><div>2. Rearchitect the generated python code to start the X410 once a=
nd then have each test feed it inputs/signals to transmit/record without re=
starting the X410 session</div><div><br></div><div>Obviously 1 is simpler 2=
, but I haven&#39;t really tested the implications of completely skipping c=
alibration</div><div><br></div><div>- Chris</div></div><br><div class=3D"gm=
ail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On T=
ue, May 6, 2025 at 5:48=E2=80=AFPM Mann, John - 0662 - MITLL &lt;<a href=3D=
"mailto:mannj@ll.mit.edu">mannj@ll.mit.edu</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg7181267454363920=
804"><div lang=3D"EN-US" style=3D"overflow-wrap: break-word;"><div class=3D=
"m_7181267454363920804WordSection1"><p class=3D"MsoNormal">I created a gnur=
adio flowgraph that concurrently records data from 3 separate X410s to a RA=
ID on a server (via 100 Gb ethernet).<u></u><u></u></p><p class=3D"MsoNorma=
l"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">When I run the python scr=
ipt generated by the flowgraph, it goes through an almost endless loop of c=
alibrations that takes a couple of minutes to complete before the data is a=
ctually recorded.=C2=A0 Is there any way to avoid this??=C2=A0 It is really=
 slowing down our work flow.<u></u><u></u></p><p class=3D"MsoNormal"><u></u=
>=C2=A0<u></u></p><p class=3D"MsoNormal">John<u></u><u></u></p></div></div>=
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000d3cac806347f5e88--

--===============3804276900821954890==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3804276900821954890==--
