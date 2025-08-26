Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E23A4B35C5D
	for <lists+usrp-users@lfdr.de>; Tue, 26 Aug 2025 13:33:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6AE6638612A
	for <lists+usrp-users@lfdr.de>; Tue, 26 Aug 2025 07:33:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1756208014; bh=4VqccfS0QPRZ4+7FxbKWYlerJ6iFuqkUHDyEccShDd8=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=hI5jdxrN/lLOEjWLqH6uvOINmVM/zMvb/QQAJJY44gq6XdeQiCjztFTBp1i2TmizH
	 mohzA9qM08VaXrYiSujOEjSHLyXdMc86KJaaCeiMKLaQtaFQDfyHyFf9XCoQT4C6q9
	 rk89YxLOE58W+qBZVBAHgELuztJASm29BBludeKDiaV1ge5dNKNxCbcZSB1iIW025Q
	 t713ixnVx+7MSVUe9pQQLSEsk3Q3YZMOKFg7U2BKjZp6T0pPoyOV7KxXduILYk2zQf
	 E13aXTYXIN+zU+tZVu+SIZUH7Y9p9skmRZNZzAQhrAhmQiTDMyJJJOAwVMZKrJGFbp
	 bwjyTEHRzUo/Q==
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id B0F03386109
	for <usrp-users@lists.ettus.com>; Tue, 26 Aug 2025 07:33:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="RxfndYNT";
	dkim-atps=neutral
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-61c4f73cfa0so4369501a12.0
        for <usrp-users@lists.ettus.com>; Tue, 26 Aug 2025 04:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1756208009; x=1756812809; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C762ZUeIveoRB9fSWV4laL1EitmDIIzmZsGECwQ6HGw=;
        b=RxfndYNTsnt89HD4dsAfP/CvyC1jfWtjrQWrvOoPv4f6DZFs5L4ujbDyHN3VoaZmfp
         u3CA8NpBIpjbmaO3zChlD1XDq8grTuILCLm4k9PgaQ0qLTHV+87inh5AJ12xvw4wR2kD
         5ar7C90sjeCO9F6cmxtCpRkJddq73r0lgVLPg3B5KU/2z2+Z9NG9PJdl2/4sXQWCMr+Z
         jkqlCVQ6gBOps+2EjnZwyoosI8WRbJ5q5jCDNlgbvCHtgoy53wUN0QOM35OwbC1EzVr1
         0cpTZS0e6T2W+a7u7vkvIDR7VZm63d9CJCU6mP1r1oAtH8lF93pT/Ft2ysk9mwHZQH3t
         4pKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756208009; x=1756812809;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C762ZUeIveoRB9fSWV4laL1EitmDIIzmZsGECwQ6HGw=;
        b=JZQ3ENkLcFwhozX+yH4jEEdCZEgH0zTsAcUEms1GY8rMYxJY+VWEq3JCKWyRmm2lt6
         XjMX+Yvg288DjdQAl8sFzGnkeDm2C7ud3r25NdQ0LBX0mxljrmXLaNLFdbZCRHsR2Ykc
         jVvaBDElZMQJGfH32vzwtX+hmMhCGf19lfickiTeqPuFJGepu7zMZwXzzo36Rn+5dc5Q
         tt6/VPE2lybm9BuUeJFXzmKXLVmWuz+PXUbJbWRNuYlAIJiw0FTAai1DjP10nT18Elrm
         oHbYmpXaIskht1ZIuVNLXCcUuIEBC/Z//7MOBIKSJ2Is9W3qlTfPQTZSDlNKMPqOywWN
         WRLA==
X-Gm-Message-State: AOJu0YwrHR62CqXhMqZMTNOfES4mi5j8xg7+WH2Lzzzu6TPZFun4T71u
	tnb0dJJY3VtbNswX+vD6aJnIQhXVA9jgpWHfRayxOYNVk9WpRiNATTM49NXmEvAbZpmQYwrRvs8
	GJdd+zPvbxRnd7kMVYnLqbeve5mVWxEUjYh8iMY1jUrGv5LNXujlv0XZL7Uq1
X-Gm-Gg: ASbGncuD52FQY4ERyn0P+tcVpeLmMMmE3ztN0nZcOoZDFOPUMyKpChCcbSLhC0HY2ok
	e6cVkXaLoeO4P8NUIQVbydsUomoZbWr9qajY9sXvBFJ4Q8byH1TztuqeYBHrVKsZ9imoRGzxAz8
	ndvanb/QZognbcjEOFj0lVycj2oOu75IiyAMxY8XgQD9q5zo2P/AEYKcO36oVW+uN3g+LESJZCT
	Q8vog==
X-Google-Smtp-Source: AGHT+IHkg1lIJmiiSNndOrbJ3neJTCCyOjbPIpC/NfCYD7nsm8YKTMtD36KU4kYtaE5FEjMfHrJFOcektWE7+blyJyk=
X-Received: by 2002:a05:6402:5189:b0:61c:9ce5:8161 with SMTP id
 4fb4d7f45d1cf-61c9ce584bcmr288097a12.17.1756208009375; Tue, 26 Aug 2025
 04:33:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTSif=hJFivtd+5faf+_PH-PaPCOTv3eJ3nopfqQyfG8pg@mail.gmail.com>
In-Reply-To: <CAB__hTSif=hJFivtd+5faf+_PH-PaPCOTv3eJ3nopfqQyfG8pg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 26 Aug 2025 13:33:18 +0200
X-Gm-Features: Ac12FXwJ_ziLvpAgfUVWMfn452O5-CQ2Juztj73DrCtWWC2jbaTcLt4sN7Idonw
Message-ID: <CAFOi1A5Pt7-qFJHbEDq0LDxf8r0JfF-VAQCQ5Vfqq9xSk7owiA@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: FOSNTBH5MJQ7IRWHFE6IUMEYWUV37YOG
X-Message-ID-Hash: FOSNTBH5MJQ7IRWHFE6IUMEYWUV37YOG
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N3xx calibrator for Power Ref API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FOSNTBH5MJQ7IRWHFE6IUMEYWUV37YOG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2820028712667880131=="

--===============2820028712667880131==
Content-Type: multipart/alternative; boundary="0000000000008d0272063d430a75"

--0000000000008d0272063d430a75
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Rob,

yeah, it's a missing feature in the N3xx code. No hardware limitations. If
you have a sales or product management contact, tell them it's a feature
you need (if it is). The main work is in the validation, which is why it
hasn't been prioritized yet.

--M

On Tue, Aug 12, 2025 at 4:27=E2=80=AFPM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> Does anyone know why the N300/N310/N320/N321 do not support the power ref
> API?  It seems that the calibration process simply stores a lookup table =
on
> the host so I don't understand why this product line would be excluded. I=
t
> also seems that a small addition of an N3xx calibrator class (20-30 lines
> of code) to usrp_calibrator.py would solve the issue.
> Rob
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008d0272063d430a75
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Rob,</div><div><br></div><div>yeah, it&#39;s a mi=
ssing feature in the N3xx code. No hardware limitations. If you have a sale=
s or product management contact, tell them it&#39;s a feature you need (if =
it is). The main work is in the validation, which is why it hasn&#39;t been=
 prioritized yet.</div><div><br></div><div>--M</div></div><br><div class=3D=
"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Tue, Aug 12, 2025 at 4:27=E2=80=AFPM Rob Kossler via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi,<br><div>Does anyone know why the N300/N310/N320/N321 do not su=
pport the power ref API?=C2=A0 It seems that the calibration process simply=
 stores a lookup table on the host so I don&#39;t understand why this produ=
ct line would be excluded. It also seems that a small addition of an N3xx c=
alibrator class (20-30 lines of code) to usrp_calibrator.py would solve the=
 issue.</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008d0272063d430a75--

--===============2820028712667880131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2820028712667880131==--
