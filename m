Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC9D99E08B
	for <lists+usrp-users@lfdr.de>; Tue, 15 Oct 2024 10:13:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 80BA03854A1
	for <lists+usrp-users@lfdr.de>; Tue, 15 Oct 2024 04:13:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728979987; bh=jRZX/HeRJBSf8vTLU/mkbhNcIkhrP/DR7tWGX7Cq/D8=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WbmaHd5qOgSVZy7hzvJgE7qgAwZTrWMGnke5xYSc4GQS0erLUdbfvLdL1xwoiIa3f
	 b5NFWBzjJHHDUJINVjh1+lLfqE4azlSqboOmwEP8gvxq9vOCutpWm4OuC2h6DQ+KOo
	 Pv7HXfNYHWRpsbOSYbkeLF75fSZiHqGKob47Csh6oKipaho18IukaBhc2KB8g2EL64
	 VSW9NiEXrGAs0/sDDkELQOBRuTpZ97nTUfBCUIg6GuBogA0XyXRcVKYaZA9ApOUF3p
	 7G/5WjVKfzGaXvSdDJFPgx4e8PmDc5aaPC1lGT9wlZ5OtKpZpxuCU7CvpvVJwETcaJ
	 wzHEn2Sj3jreQ==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 218983853C6
	for <usrp-users@lists.ettus.com>; Tue, 15 Oct 2024 04:12:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="c7q9p+O0";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5c9552d02e6so4338183a12.2
        for <usrp-users@lists.ettus.com>; Tue, 15 Oct 2024 01:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1728979945; x=1729584745; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5YW22EgDomgUSGcf/yuxNu8Hcfw6tQpMgpkedO8vTAU=;
        b=c7q9p+O0ETkPDJUzDs+tCmBowE+WFrnFJKuInucpWX5ZX+/V9xTvkw/0DtmdsbPv+c
         Q19dRBa4aOlgkC0fs7PaDNicy0bDV1ay25t/vWxSn5Abzda6Xo9ZhUNwAhfHUOScMOrN
         cGEm8KScecT4KeKLW4bWzFE9D4Cc+pulHcxMNRabujZnumazSYIbrUUmT69UK4V4WYBN
         x0bCXJag+oCnO/k60xQt/v2YdcQvHdagiyziA4QLiGNxJyXwR6iROp78IC2XEuXE4aUF
         +jnQzP+EjWiCurEP2iPL9gzOFeZoU6qJKYfCKqGxsdC4rlpJX1rY3P5GIiTv6oGXVTuT
         7XGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728979945; x=1729584745;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5YW22EgDomgUSGcf/yuxNu8Hcfw6tQpMgpkedO8vTAU=;
        b=Flv+D3l5CiudDb6QLZp77bSEuqqKxpcnASkW38oiEac8kSEImFnhTnYKRwbche+ZNy
         Sn145+arjuXl6WpNmj2ISPyKzLwHStDJLnEYL71IerjUlqMbOGFYeGzEIR5QWbPrfvEz
         ejzqh0ctRkkJ0SdpxLjTrI6mLO7pHcu12bIx4wpuTFbYsI8U/NN9ipk0+1Zx+eoVhXeV
         ZBTbCAQc0vdStZUtdnM51QTzAWqSm7eNR3UlOOSrymmJYsM/H2FDF4/k9EHP+GhbUqRN
         kkY2w0BTRGCt/jUVyOm11HSNULN1FUXD/g16H/rT2TEs/XBCxJFOx1FeieNq8VA/yh+u
         KiqQ==
X-Gm-Message-State: AOJu0YyehqR0uAPgSWXwUgiN5zitlLETu+AcaO6uWovXL5Zeai+/aY2O
	q6HNc+uEZcBgWQfKsAyPPJNFXwsA7WACV3ODTmc8ei97jLYPCMbaEFBOM6f6mqsQ/EKyRJj4UbA
	kbWuJHOSTSuxNBSvVR4rpyB3+i/skgHtK+KVftD7pYpNiNV1+E50=
X-Google-Smtp-Source: AGHT+IGY8R8uqtOrdeqgsIChdAM0R8xNNTubYXZNaiPVnklJMGNOHEIIbVY9dcJCRzbCDaNT0gvG39ZqClPVF6MGFpw=
X-Received: by 2002:a05:6402:42cf:b0:5c3:d2bc:2f64 with SMTP id
 4fb4d7f45d1cf-5c948d96e12mr11731423a12.35.1728979944677; Tue, 15 Oct 2024
 01:12:24 -0700 (PDT)
MIME-Version: 1.0
References: <3Cx0iEocTE8SmTu3iweo3reKVYZLmAaoUoRjB1oSM@lists.ettus.com>
In-Reply-To: <3Cx0iEocTE8SmTu3iweo3reKVYZLmAaoUoRjB1oSM@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 15 Oct 2024 10:12:13 +0200
Message-ID: <CAFOi1A7eOo2_5-m7Z2hK4x7bA_5wrdyGJCG4oJFBRaXKaSjaGQ@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: XHXKY5HPXEIUDNKV55V3SFOT6AXTQZBV
X-Message-ID-Hash: XHXKY5HPXEIUDNKV55V3SFOT6AXTQZBV
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Migrating a Design from 3.0 to 4.0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XHXKY5HPXEIUDNKV55V3SFOT6AXTQZBV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6197968593086385639=="

--===============6197968593086385639==
Content-Type: multipart/alternative; boundary="0000000000006d3a1f06247f8339"

--0000000000006d3a1f06247f8339
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Steve,

It's difficult to do a full diagnosis here without any additional info. In
UHD 3, we used that bit to clear/flush blocks, so I'm guessing that's what
you're doing too.

You might not need the pipeline FIFOs. That's because we separated the
stream endpoints from the blocks and made the noc shell leaner and more
bespoke. In general, the idea is that blocks focus on their key are of
expertise (e.g., some DSP algorithm) and data movement can be handled by
the infrastructure.

--M

On Sat, Oct 12, 2024 at 10:03=E2=80=AFAM <steve.wakelam@roke.co.uk> wrote:

> Hi
>
> I am migrating a fairly complicated design over to RFNOC4.0
>
> I am carefully comparing the design I have with a smple 4.0 deesign.
>
> Obviously there are big differences between around the AXI_WRAPPER and NO=
C
> SHELL. We currently in 3.0 have pipeline FIFOs that go between the
> NOC_SHELL and our logic. The clear for this uses *clear_tx_seqnum[0]*
>
> However clear_tx_seqnum does not exist in the template genereated for
> RFNOC4 as the noc shell is very different.
>
>
> How do I now handle clearing the pipeline FIFOs or indeed can I remove
> them?
>
>
> Thanks
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006d3a1f06247f8339
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Steve,</div><div><br></div><div>It&#39;s difficul=
t to do a full diagnosis here without any additional info. In UHD 3, we use=
d that bit to clear/flush blocks, so I&#39;m guessing that&#39;s what you&#=
39;re doing too.</div><div><br></div><div>You might not need the pipeline F=
IFOs. That&#39;s because we separated the stream endpoints from the blocks =
and made the noc shell leaner and more bespoke. In general, the idea is tha=
t blocks focus on their key are of expertise (e.g., some DSP algorithm) and=
 data movement can be handled by the infrastructure.</div><div><br></div><d=
iv>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Oct 12, 2024 at 10:03=E2=80=AFAM &lt;<a href=3D"mai=
lto:steve.wakelam@roke.co.uk">steve.wakelam@roke.co.uk</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi </p><p>I am mig=
rating a fairly complicated design over to RFNOC4.0</p><p>I am carefully co=
mparing the design I have with a smple 4.0 deesign.</p><p>Obviously there a=
re big differences between around  the AXI_WRAPPER and NOC SHELL. We curren=
tly in 3.0 have pipeline FIFOs that go between the NOC_SHELL and our logic.=
 The clear for this uses <strong>clear_tx_seqnum[0]</strong> </p><p>However=
 clear_tx_seqnum does not exist in the template genereated for RFNOC4 as th=
e noc shell is very different. </p><p><br></p><p>How do I now handle cleari=
ng the pipeline FIFOs or indeed can I remove them?</p><p><br></p><p>Thanks<=
/p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006d3a1f06247f8339--

--===============6197968593086385639==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6197968593086385639==--
