Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07604706E5A
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 18:40:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1C5A2384982
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 12:40:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684341629; bh=pWP3kTVCCvRQdyKLjYIT8tgFW/xew2QrLe/wlJOcC2M=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=RZRc8yZNrx+j2tHNWuLC7ZHYD+N3cDm4mMxoS11ADe/Hw8HQwfc/b69HUw/OH14VB
	 dZztqfSbhvVbgAH5omE7RZM3j1uR+DiVUseFsOBe9f49BjmurxiFdWvF+FQsGTF7NK
	 eb8ZiJmlYus131bNtAwhqJ9ICw2AmoLlh0jLCYtAXx9TDLjzePvv6PnTKAd+qIdGXy
	 JMP0SiIapKYBY7jnRem3xpA2KXwQxP31+APZXpuSVX3dUGYgNartZuLHBjzb1EPGsA
	 NDV/wAOTOb95ChzBVmM7jlmauLi5L3HEvfnXq4y2aDcBIJJsxP5ieeimXtMvsKIW8i
	 6ehGXrpRUFZ6A==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 6D48A38491C
	for <USRP-users@lists.ettus.com>; Wed, 17 May 2023 12:39:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="arNTKHES";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-75771057394so12355185a.1
        for <USRP-users@lists.ettus.com>; Wed, 17 May 2023 09:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684341567; x=1686933567;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J8zweQ7/DtuyCn8h3uIy5ebj3oOLHW7lGtRZ33NaDvI=;
        b=arNTKHESk4Jc9C0I2KVsemJkH18nXeJEwxGLdfKS2IVdXQB6WYIeM+fWlgKoeu7Ko+
         On16+KPL46n4yICC2Z9rah5xUERr22x1mx56vm3weUb+kgjPopOOEzjtoo0sDIF3oAn4
         1dpXu9IG3f814RvcuqTRbIWLV5LW8/KDEyrTeUOj+QKW/smvfD4Q+aWlkBKn0jE6tgZY
         g2mehxLdsBUbMQf48hpEIhnGH6kQup0YzGxn4So69CP94Bb4jFpTHxcztSvAnhQ1ivbN
         RHUPmodoW4ZHWLDgLwiIGhz2Hzq2KK3w18yy/L2zkfPOWEcVx68i1QzKBvjCGZ/kVyY9
         KdPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684341567; x=1686933567;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J8zweQ7/DtuyCn8h3uIy5ebj3oOLHW7lGtRZ33NaDvI=;
        b=Cehhe5fOc/a9YmsePlYH2bgAfqcq90qlfHiYsYU+Nu6knUC31AIE9VCIzxKD+V5oBc
         DI8QSFb2WiafGT7ZVMjr47SVQ65ME/S6YIFfIJCKqGO1/z69axMJoI682aYlin44pMk4
         pcia69CrT/drktkkBURbtyvdyD1v3T29l0uynCRUgnTV1/dmHQLy/RP/T0COzjER+ASF
         cq/Zam91068ZnpPRz0EtlPwKUn3saPLkd8eD4tszzDmMVwlFQsXtveTu2s65YBioELej
         cyzw4DByeo2wI2ABdFCO+/pfaQLNKffqeVolUEoFUGlPmjVkCZIOVRf1H70eQya+bBww
         lnlw==
X-Gm-Message-State: AC+VfDwZRmqkKDF1aYJVnTBkYts+HpJ+tHcXfn/5sEpGd0nbsenl5zOh
	z8g6IEhf5Nq2sHfRrmj2nLVIOJqR2vQ=
X-Google-Smtp-Source: ACHHUZ7A7zkL3U2/N+V9uF3T+MYX5/jydC6bq5/9Pm/Ykpg/yEPuQJB/uxnOwtKirBR/+eM2aXA+IA==
X-Received: by 2002:a05:6214:29c5:b0:5ef:d5b0:c33f with SMTP id gh5-20020a05621429c500b005efd5b0c33fmr496792qvb.2.1684341566765;
        Wed, 17 May 2023 09:39:26 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.gmail.com with ESMTPSA id et15-20020a056214176f00b0061b721f27b3sm530868qvb.123.2023.05.17.09.39.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 09:39:26 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 17 May 2023 12:39:15 -0400
Message-Id: <DA093A6D-99FA-46D1-A5E7-1A1B100766B6@gmail.com>
References: <3W3nyen7Ismx0gHGsUgTz62p9iTJdk49GfU6FXqg8KY@lists.ettus.com>
In-Reply-To: <3W3nyen7Ismx0gHGsUgTz62p9iTJdk49GfU6FXqg8KY@lists.ettus.com>
To: cjohnson@serranosystems.com
X-Mailer: iPhone Mail (20B101)
Message-ID-Hash: SED66MUTOAXBYPSB74WTNR3MUVNTUSA3
X-Message-ID-Hash: SED66MUTOAXBYPSB74WTNR3MUVNTUSA3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming UHD 4.4 on USRP-2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SED66MUTOAXBYPSB74WTNR3MUVNTUSA3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1633299072587912242=="


--===============1633299072587912242==
Content-Type: multipart/alternative; boundary=Apple-Mail-5934622B-3FD6-4644-9240-A6DD76CDA1BB
Content-Transfer-Encoding: 7bit


--Apple-Mail-5934622B-3FD6-4644-9240-A6DD76CDA1BB
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Actually until I looked at the diagram I did not know that. The 2974 is a pr=
oduct designed by the traditional NI R&D team, and I=E2=80=99ve never had on=
e in my hands.=20

But yeah I agree it should work like any other X310.=20

Sent from my iPhone

> On May 17, 2023, at 12:27 PM, cjohnson@serranosystems.com wrote:
>=20
> =EF=BB=BF
> Hi Marcus,
>=20
> On an external host.
>=20
> As you know, the sfp1 interface is not connected to the internal switch (g=
oing to the i7, only sfp0). But we are not using the i7. Instead, we are usi=
ng sfp1, connected to a different host, which should work similar to an X310=
 (with external host).
>=20
> Thanks,
>=20
> =E2=80=94Cy
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-5934622B-3FD6-4644-9240-A6DD76CDA1BB
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Actually until I looked at the diagram I di=
d not know that. The 2974 is a product designed by the traditional NI R&amp;=
D team, and I=E2=80=99ve never had one in my hands.&nbsp;<div><br></div><div=
>But yeah I agree it should work like any other X310.&nbsp;<br><br><div dir=3D=
"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite=
">On May 17, 2023, at 12:27 PM, cjohnson@serranosystems.com wrote:<br><br></=
blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>Hi M=
arcus,</p><p>On an external host.  </p><p>As you know, the sfp1 interface is=
 not connected to the internal switch (going to the i7, only sfp0).  But we a=
re not using the i7.  Instead, we are using sfp1, connected to a different h=
ost, which should work similar to an X310 (with external host).</p><p>Thanks=
,</p><p>=E2=80=94Cy</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-5934622B-3FD6-4644-9240-A6DD76CDA1BB--

--===============1633299072587912242==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1633299072587912242==--
