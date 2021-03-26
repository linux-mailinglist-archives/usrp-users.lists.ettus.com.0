Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAF634AEB7
	for <lists+usrp-users@lfdr.de>; Fri, 26 Mar 2021 19:46:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B9F6383D9E
	for <lists+usrp-users@lfdr.de>; Fri, 26 Mar 2021 14:46:39 -0400 (EDT)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 09030383D8A
	for <USRP-users@lists.ettus.com>; Fri, 26 Mar 2021 14:45:51 -0400 (EDT)
Received: by mail-qt1-f176.google.com with SMTP id c6so4982170qtc.1
        for <USRP-users@lists.ettus.com>; Fri, 26 Mar 2021 11:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=x6vSpksCMH41OS806sWuruR1AEnArsP564jico5bAZg=;
        b=Fe5IjAWrRAAyRAD3QCwBjQ00RCkHOb+1W/vm9GeVG+jn4gU7M8H0ZCZiJvOypDDIbT
         ZN487bUB8pvQoiYmAp1XarZOTxVNCyAT3YHEues6GT9LarTOsnuzIjPDUiCty6C/W2vf
         pJNyqBlAuWxkCDoQZr8BIG17VROKY8kjhOz51NRfMi2I8VFY0qIgj6Y7VEktDGMhFwX9
         OF6F/StMMr5kNC09mSHkMBPRQlF5zRQUpJcJuuwDDotJ+t98BC5VnQttG0Z5ezSyZYRP
         a+4BJhGdROz3l+mvQVjKZ0pX+wIo3MYr/kcj1SQu1IAgGBc6SiF4PLR4kRjkz2RzkIUP
         4O+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=x6vSpksCMH41OS806sWuruR1AEnArsP564jico5bAZg=;
        b=CGXnAOSKwJ9t8+s4/V5A+EyIXNjrUl4L3EN5lFmR1w5P/C7niEmCZLGa5RX/oQZwkw
         zY47zl+opcAA0HQ9la5rQR0dDAJFzAJcwTDDezOkjCnpwSXeGZ4wfISpD6euA2Qry5Bq
         NCSp234edfy2Ttgj9ucPjiPfyxTLZy3CJV6Cz6dN8w1t8JWTY8MXa5vgAdMLYhk6YYLO
         i6hk28qDLYyRJ4r11WB2usjbChWtZ3cLso787IG4OFWXLU+ghlax/xrW66igg6b9a80E
         Zuw0RgDHcks6+PEaNvxY8BOs1p2NxFr3vhWoDqqHiNZtlanOi01olw9eMHTb1f7Xw8Yf
         3Ibw==
X-Gm-Message-State: AOAM530MoZh5TvIEQl40fxDF7M2ES8kkkUv6p6oXzf665jR3133Cq7yy
	Vp791IGcEJXp9AAfTDxK5/o=
X-Google-Smtp-Source: ABdhPJyOohw7q+4OsDXW5AdapfOMy9SlxLiN10S9nAbtiRCN60Td8FhEXPwvrtGd/hsvwSfsc9YzdA==
X-Received: by 2002:ac8:4412:: with SMTP id j18mr13741504qtn.387.1616784351362;
        Fri, 26 Mar 2021 11:45:51 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id j14sm1514370qtj.87.2021.03.26.11.45.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Mar 2021 11:45:51 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 26 Mar 2021 14:45:50 -0400
Message-Id: <CF024055-E524-49C0-B268-337DA8AE864A@gmail.com>
References: <7E90B7FF-A717-4B01-94F8-B01A1299D9AD@elitecoding.org>
In-Reply-To: <7E90B7FF-A717-4B01-94F8-B01A1299D9AD@elitecoding.org>
To: Julian Arnold <julian@elitecoding.org>
X-Mailer: iPhone Mail (18D61)
Message-ID-Hash: GP46NJWLXCXEVJ3QZGSNN4FN7BNUPKP6
X-Message-ID-Hash: GP46NJWLXCXEVJ3QZGSNN4FN7BNUPKP6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: christopher_beaudoin@uml.edu, USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 EVM
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GP46NJWLXCXEVJ3QZGSNN4FN7BNUPKP6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6242315050489073843=="


--===============6242315050489073843==
Content-Type: multipart/alternative; boundary=Apple-Mail-BECAF7FB-CDF0-4EE6-A6C9-2B17D841F238
Content-Transfer-Encoding: 7bit


--Apple-Mail-BECAF7FB-CDF0-4EE6-A6C9-2B17D841F238
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

At 30MSPS are you seeing any overruns? What is your master clock rate?

Sent from my iPhone

> On Mar 26, 2021, at 2:41 PM, Julian Arnold <julian@elitecoding.org> wrote:=

>=20
> =EF=BB=BFChris,
>=20
> I would say that your EVM is mainly affected by your SNR and your digital r=
eceiver implementation (AGC / filters / clock recovery / equalizer / ...).=20=

> So without more details it=E2=80=99s going to be hard to say if what you  a=
re seeing is within limits.
>=20
> Cheers,
>=20
> Julian Arnold, M.Sc
>=20
>>> Am 26.03.2021 um 18:29 schrieb christopher_beaudoin@uml.edu:
>>>=20
>> =EF=BB=BF
>> I'm capturing a 3 GHz QPSK signal with 5 MHz symbol rate by sampling the s=
ignal at 6 times the symbol rate. The B210 is externally referenced to a ver=
y clean 10 MHz reference. My measurements of the EVM sampling the signal for=
 ~0.5 seconds are pretty poor ~30-40%. I can provide more setup details but I=
'm wondering if others can comment on what EVM I can expect. I'm hoping this=
 isn't a fundamental limitation of this hardware system.
>>=20
>>=20
>>=20
>> Thanks,
>>=20
>> Chris
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-BECAF7FB-CDF0-4EE6-A6C9-2B17D841F238
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">At 30MSPS are you seeing any overruns? What=
 is your master clock rate?<br><br><div dir=3D"ltr">Sent from my iPhone</div=
><div dir=3D"ltr"><br><blockquote type=3D"cite">On Mar 26, 2021, at 2:41 PM,=
 Julian Arnold &lt;julian@elitecoding.org&gt; wrote:<br><br></blockquote></d=
iv><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<meta http-equiv=3D"c=
ontent-type" content=3D"text/html; charset=3Dutf-8">Chris,<div><br></div><di=
v>I would say that your EVM is mainly affected by your SNR and your digital r=
eceiver implementation (AGC / filters / clock recovery / equalizer / ...).&n=
bsp;</div><div>So without more details it=E2=80=99s going to be hard to say i=
f what you &nbsp;are seeing is within limits.</div><div><br></div><div>Cheer=
s,<br><br><div dir=3D"ltr">Julian Arnold, M.Sc</div><div dir=3D"ltr"><br><bl=
ockquote type=3D"cite">Am 26.03.2021 um 18:29 schrieb christopher_beaudoin@u=
ml.edu:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr"=
>=EF=BB=BF<p>I'm capturing a 3 GHz QPSK signal with 5 MHz symbol rate by sam=
pling the signal at 6 times the symbol rate. The B210 is externally referenc=
ed to a very clean 10 MHz reference. My measurements of the EVM sampling the=
 signal for ~0.5 seconds are pretty poor ~30-40%. I can provide more setup d=
etails but I'm wondering if others can comment on what EVM I can expect. I'm=
 hoping this isn't a fundamental limitation of this hardware system.</p><p><=
br></p><p>Thanks,</p><p>Chris</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div><span>_______________________________________________</span><br>=
<span>USRP-users mailing list -- usrp-users@lists.ettus.com</span><br><span>=
To unsubscribe send an email to usrp-users-leave@lists.ettus.com</span><br><=
/div></blockquote></body></html>=

--Apple-Mail-BECAF7FB-CDF0-4EE6-A6C9-2B17D841F238--

--===============6242315050489073843==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6242315050489073843==--
