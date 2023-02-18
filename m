Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6A469BB27
	for <lists+usrp-users@lfdr.de>; Sat, 18 Feb 2023 18:09:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F6DA384545
	for <lists+usrp-users@lfdr.de>; Sat, 18 Feb 2023 12:08:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676740139; bh=E+MqJ1XEH+5+++IfHEh+DznnYcOtTFLj1+ghn9hzJw0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=wd0XA7e8at8T3gkaYKOQT51bDKseVqWLQoSqShGMKY0nOc9nP4DTYWJY2Ycwjgelq
	 Ng94Ynu3jdjU2VVUl8Dk7GrqI7wt3J/ra39BBTqyODwmbNNtrSQVtR2xPmKSSxqC7v
	 P1PW0ThWkLozERaxwswKR78kJVJGMkL2GMGQtcr13aFN5MaGyPyp8YvqRPwf1JrSt0
	 SDMrNZSN1AGNEslIBqM0+JwyeIIXphWWH/s4Yd8GEzVCBRJs4d9GpY1sRSeSgxHUtG
	 kzcvi3bXaH+X+8qwhZPc2SnXBnKAovr+0ZQjYC9xdHjuuaCaN0g6JdOludMc89G+ZS
	 IRtEA5CFXXxDA==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 59B69384545
	for <usrp-users@lists.ettus.com>; Sat, 18 Feb 2023 12:08:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UCsVl/vC";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id ci25so646617qtb.0
        for <usrp-users@lists.ettus.com>; Sat, 18 Feb 2023 09:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UnwXP5OJn2/e7QUsPZkLa6dzduAXTPds5Des0o0q+Jc=;
        b=UCsVl/vCXOtP1zlJnqiJb/EZHRcf6rtDL4InRU+/bjHPjcoapomeDjLyBmD3nrxkTK
         7HGiwVInwlYQnXxRKoPzj59gos6jc62C75OOZrSQ/m6k5QB2hiCdI5bjaUsRUnt54iA2
         BVpYuU8+9DoenOklTQ7SeCsba4/ozjmhxbge/FS0ximqvsKONODU3friPtc9lwb20kjY
         e38QmwLNGmH/koZgNP4BVhT6LYNqKpgLIBIAk82Db5RDnDB0JQ784b1qSa53nzn66sBB
         T/XrnlaCE9CuZmP2yAJr8vEnjyZ3M/9ko2gW+Av4oEqV6CDCu4Q/MAHQz+rvsjnTpNFj
         YRWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UnwXP5OJn2/e7QUsPZkLa6dzduAXTPds5Des0o0q+Jc=;
        b=tkl4ywICXIh23dODBbPqUTsjvyvSY2RqPr1oRaN+CxbUanPgs/hUI+bJxfCCDJB3Jg
         zA3otNd3bHDG9F9mXrKqZh6Yf3oj+dvH6CJhFG/CBaaxYHIUZnYdlRh7DNGlHMTXxzOP
         UHXUFBqAUbSKc0kAyCkZ1T1icUaT3j51c8kgDsRXPbxdxD8Bh7Uc1Q3eWDuqpeHWsZem
         IpVnGcShLBcRmMT3t6dWbZXBdIJbpyylYbtGoLIwd37ngYihZ30LRwf7b/r8NY9LnMhS
         EQMhXXNRHvE60W8EMk2WVhbWrgEWbF2/DKHjie6iaV/YkYnvo5HZR7KaQKOU24S4Sg3k
         y9zQ==
X-Gm-Message-State: AO0yUKX+OuLsbs2fhnW8qI9TTYVOBCGPXXwBqsitnQKotstK8PZ8UbMu
	gUvgtak6ZrZlsukOrtGONczMTMxU3fo=
X-Google-Smtp-Source: AK7set/XmSQy3Aob3900RfUXi4ajqzGWOybgILcCNQQSdiMMwX+gET7DXRF8JD7vCU2SqwfKFid9WA==
X-Received: by 2002:a05:622a:454:b0:3b9:c074:6e3c with SMTP id o20-20020a05622a045400b003b9c0746e3cmr8241991qtx.43.1676740133314;
        Sat, 18 Feb 2023 09:08:53 -0800 (PST)
Received: from [192.168.2.165] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id t127-20020a379185000000b0073b4d9e2e8dsm5589888qkd.43.2023.02.18.09.08.52
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Feb 2023 09:08:53 -0800 (PST)
Message-ID: <eaa2499e-6157-7270-575d-380b4ea930de@gmail.com>
Date: Sat, 18 Feb 2023 12:08:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CALooG39Scf0NB4sAvB5b8cvdMjAMPh=fY3Zc2N_GMZXbsQgsbg@mail.gmail.com>
 <1492376160.1909708.1676708832546@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1492376160.1909708.1676708832546@mail.yahoo.com>
Message-ID-Hash: FEO7LAHOFBSL2BGZWFL4EBMVFPM3OZQ7
X-Message-ID-Hash: FEO7LAHOFBSL2BGZWFL4EBMVFPM3OZQ7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Dual 10GE Ports in X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FEO7LAHOFBSL2BGZWFL4EBMVFPM3OZQ7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1710888324089867088=="

This is a multi-part message in MIME format.
--===============1710888324089867088==
Content-Type: multipart/alternative;
 boundary="------------WT0nLePi0YM3U610e4Svp28P"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------WT0nLePi0YM3U610e4Svp28P
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 18/02/2023 03:27, zhou via USRP-users wrote:
> Hi,
>
> Some thoughts about X310. They could be silly but answer will be=20
> appreciated:
> Why does X310 have dual 10GE ports? I think it is for achieving the=20
> max 120MHz bandwidth.
> Though dual ports are provided, I can just use only one but the max=20
> achievable bandwidth will be reduced.
> Am I correct?
>
> Have a nice weekend,
> Hongwei
>
>
Indeed.=C2=A0 For example, if you have two TwinRx cards and want to strea=
m at=20
max rate from all 4 channels, you have to use
 =C2=A0 the dual 10GBit scenario.


--------------WT0nLePi0YM3U610e4Svp28P
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 18/02/2023 03:27, zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1492376160.1909708.1676708832546@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpd10f995dyahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Some thoughts about X310.
          They could be silly but answer will be appreciated:</div>
        <div dir=3D"ltr" data-setdir=3D"false">Why does X310 have dual 10=
GE
          ports? I think it is for achieving the max 120MHz bandwidth.=C2=
=A0</div>
        <div dir=3D"ltr" data-setdir=3D"false">Though dual ports are
          provided, I can just use only one but the max achievable
          bandwidth will be reduced.</div>
        <div dir=3D"ltr" data-setdir=3D"false">Am I correct?</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Have a nice weekend,</div>
        <div dir=3D"ltr" data-setdir=3D"false">Hongwei</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <br>
      </div>
    </blockquote>
    Indeed.=C2=A0 For example, if you have two TwinRx cards and want to
    stream at max rate from all 4 channels, you have to use<br>
    =C2=A0 the dual 10GBit scenario.<br>
    <br>
    <br>
  </body>
</html>

--------------WT0nLePi0YM3U610e4Svp28P--

--===============1710888324089867088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1710888324089867088==--
