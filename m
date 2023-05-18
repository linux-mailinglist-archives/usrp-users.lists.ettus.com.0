Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 970907082A6
	for <lists+usrp-users@lfdr.de>; Thu, 18 May 2023 15:28:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AEDF138484A
	for <lists+usrp-users@lfdr.de>; Thu, 18 May 2023 09:28:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684416501; bh=FQPcxYjlSi67YHsrue6DsKBPEupSLv9yGrxC4Gx0UWc=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=mGpEMkc9qedw0d2/nj+5FsDeIXtCGr5vAwK78EQX/sxzjSbPKtyxeDiDe8B26S4v2
	 GAwu+g1tmkJJcN2n0ewRfvbm9v5JhsAOnMe9G7at/JG66BybbRyXS7WyzvZfExphA3
	 8bWWpVZAuZXzqoDfWOULBH6+M3b3rn/50BtSYvUhdHbzK45nwb/bnk/SFEPlm51c9a
	 97JieGSY7GLgju25xWA2KhmJG/nG1LkRK0wQdOpILv7ie97WTKv/0eU3FaI93lGi8l
	 /rCdSHeNH2oHIeIwU7OFNLHQb6+aCYbjI/gHQ9Vw8H9xOVlM6pP5mJGD5a3BtEU1eq
	 OYTRK/ulQZbUg==
Received: from sonic312-20.consmr.mail.bf2.yahoo.com (sonic312-20.consmr.mail.bf2.yahoo.com [74.6.128.82])
	by mm2.emwd.com (Postfix) with ESMTPS id B120C384820
	for <usrp-users@lists.ettus.com>; Thu, 18 May 2023 09:27:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="AzcrcIT/";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1684416438; bh=QR0g9HMnodCR+6LWwBmtsVyyFqomA2hC25gaS9ZuVxg=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=AzcrcIT/ccYpDXpgwn9ZggIm6oOpdC8qaq7FTAdPZnDGp1aDBI1lZ9iEgXEbWBG4qSXt3NoiNgsmP2+6JMkAF1Kf2fDYYf9EStw4k0N1oKbN0ITbWIQaEnxbU14T4wAjdnHFKBRgRy3HaU5WXcKmzdW7dhdDR722cuNHaflRNTsoiXbJ+qHGDR4w5iFk1efz3BtlHYtGL/7h9qrIIbDJaW0jrHWQRxyC7g3ykfMh3B/74c0l0eiMnt1KjzO8W4a+lS7rtYSoHZh6BCEOnYzekeg5GnT/TBHi3lNa7RWWnsYd0tUnscpkBXuQcGhsiF/b7OTx8QN5c1li4YrZsiLt/g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1684416438; bh=B0LEMFuaPiaTYh/EDkLx9k92OwdxWzVlISSel7V8FwX=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=XYrjWLdL9kkBRQz3MeXG1f0JjHkwIjNTeyAJd5AwO3N5zcfJEtD8xHhDu6AefqVwFiyNqJSuAB4JdzyYfOTanXtSiF6H3mlz7E6/q4EI/Ly4hKdAiHdVjS+xmka2XQbuvYn59V3lSm//W5TqNiXn6jMh/QL0R8+mbWXx5QfnE1cQ/h9YlaROVf2Z/NNQjqmOm+244igY39RyfQTePCZ3iJenZZx9RffHrexcHh2cbiY7zeFpDIAzZDkKkkOFVbmT2SP4np3EUzDl+kU9E8TsRZrvzI6az3YGaIm0ISgqUlakFOVbjUZ5eAx/UbJAV1e8dCtU1WajidvXpgVcx/gHzQ==
X-YMail-OSG: QhoiLfwVM1mKUhtEIUaiuP19.4UWkB7r8CQfsxsgFbJRzKChZoNT5r53si_oUb5
 FXsckLrv0gBzakelVb3SFtulhX6NiX8Dg.JajUlQAbGoam.BP1gPU7g8hcxhjRwIYxYuANHzGoic
 reGDpQA7fl2fSbAg6wJ.q_WNTD1ypRMcAAP_FuE3P7wm5M8E3YakbzrWfsQoBM9tCU8iStKUKjfu
 a28CdqFa0JCol94Vd6wD1nx3J0Jr.B91OHYQgtAflqs7uuPBMtkTgoI6fQCIvl8Jy0jFt89cjZzX
 KgEI7pXIIuPM_Oi9f8hBnVDj9UBk1iF0dZRDVFCnI1lR7u6P_ArP_SGLIRCdtYlpn20_BRnR91GM
 jrxatPlrMCTNt8cZzZIK0bjr9OFb4LR7hsYd6HPNScBIi3tPUOiVQegkQ92x12Rk5C6a.YKzlS1Z
 HLpY.vRnLr4_fRQ_QHmOSoLgPsqCeZRLisN7K40bIctYztUTwYf9lSTtf7Q2KF8e0ZAvZDfg0Wi6
 R1iqIT2U_IGFTwaR2gI9uUUJbVsfWqVeKTYPb692FWrKtE1YIgi7ACBxYWARbyY2GwVCzYr2s5x1
 aPTwH_WHxn50l1I8GuVJj_KzteLYEvkum5f_na4DPnds0CjR0sLqOKhAdjp5dkY5IVRN6oSCVI4Y
 3VaiZZrGgquAHDAEh4vGv03qiRcf7WmjMSSbc_JcvwvAh0MR8QgeqAHFhCLHLyFLFFGgA3dVAwpq
 93Q4FlGnw34RAkC3cRD_g0qr2s3x1xrO3ZzYwhIfzWBw97n2HR._mI_PbOrCkUQ8iSdJeWV5Vfga
 qYngypWfgTUr5t58vMyNiMrI5Px9PqsYQwKfoxwoZFmEgY5Imsl8hPdnqJQQXuI9SSpbRyue7.1.
 q8wzHSl4NIaUROKACpWUJj90y4BR3dbu0jOw7aAQn4WCEUa.5AhgQFG_h6ZPVGGRoozdq3fq1.y6
 KT.i3AyIfUnMSN564LHnuHvVkjktLYnYBzV17qIP3LgvaH0lVdw7WNt91htSmsaWKlNfQtt5KwQ2
 pvnCxRLaKu8zP3euwmi9ecgth16j5EMgJjZY9UzDw.PLvssUtDgFz85cDH.uZiNSVwA6CkPK7E.m
 ZyGciqnl82NhK4gfHxA7VHee3E1n8gMXjKlAXRRHs8zVQNEm2HVjlbS3N5XBOqDepAFCNA6cuh6J
 153tXmaHeYYsyXF72n97iHRcVbfxolf8pz_.9cNw0wwzl7JcrKdmxOUSps46Q1O7O6nX3G0CwjpT
 VGyMiAXrBMFTKtY6eNH.aKsBD.ut0L4GvFeCYxG0gdQNL30sdof2j46YepM2ZNVkhQ0G_VqWg84Q
 NinSNEvJm4HZJQmQ_.zNkmAbJ9iXSAgReqep4jzJkjZAFupG.45j5sE48UwStdiNTavSyxs.VPb7
 6_ucHXaavl2uLYfiQjZSO7viYueUgi8TIthJckYLwY0iLdhxLfw2EnsTXS6iMy9mhtYveWoesrAN
 WIoOJatH6a6Q9kcUX4zrsB1FZlnlczlbfWvspLQi7O4ECfjDa9_KRzw3yMmWzE4VJhJyuorXtDaw
 eJNBPaSnEnegSuOF0NgMtrd9MRHi83xjymwpa5FIj8peCAJAnFQlG4ks8ek0B144Tooy9hkOSCZz
 N7zj66wvC3vCoc6O_CrwrSZREMp4h3hsJgtiDBlR8zMa1fy9cnpN7zEwyToQVaB2gN4SUF4h4_gf
 DR1IA442Wm5WgqA0RNXQN7lOFuC0BCYeeMNRXNq0NVtxrsS_eL3gH6kupP_p_7w5uQEjXljHwjW6
 sZGI9qBrnQadrASb.wOxCNJxvja_QjKutndtU0_M8dZ_WT7srYHZ1lWIPboMS9yRtWVDOd3WyCty
 UusWQ2EwOOBVWucXT7KntXBMyYpzQYFYSSWOjg7cIRcL_xTZ3pxRzgEhaIsTwAwE_z2RL9APelfV
 5Kig1SpclGk.5zV4m_mJBJ0S_ig_a6oawcWNhPxgwlwslnP8gU0PkSMnqv4c5lb5.cT4kftE2.tz
 aZ7wvYUjs.7t.2QfHUyuq2Nlf8_SFTCEEFjB8CKOt5nYybbOUyrO.2MQ7vHq.y_lhqcSQvVNwZo8
 qW0bZlvr2UmNkjUdtMF8UUIUaBTBxC5WOCsT_Akaxgm7ZCKZgP0EyfgF4wrS4TeJcGpUesSzO.oq
 EcLSoZNSxXkSk1GbvxnC4UqpHJPtGSuHiZgi2wFPh8eOZoUEt4CmdPjHI6sjZhZXVP9RkewgH85V
 EQwMA5xXMVFUfIdJIIJhY
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: daf7dd98-8550-42e7-b40c-ea06d513aae0
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.bf2.yahoo.com with HTTP; Thu, 18 May 2023 13:27:18 +0000
Date: Thu, 18 May 2023 13:27:13 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1079039989.2253075.1684416433644@mail.yahoo.com>
In-Reply-To: <Q3lxvAVxiFJQX7dWAqOa9E9lBCZ5idI6TmEWSm4BA@lists.ettus.com>
References: <Q3lxvAVxiFJQX7dWAqOa9E9lBCZ5idI6TmEWSm4BA@lists.ettus.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21471 YMailNorrin
Message-ID-Hash: OLRP4QV7TFHBWC2S32X3HOTNGTM36ELG
X-Message-ID-Hash: OLRP4QV7TFHBWC2S32X3HOTNGTM36ELG
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 Setup
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OLRP4QV7TFHBWC2S32X3HOTNGTM36ELG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============7743785251064483432=="

--===============7743785251064483432==
Content-Type: multipart/alternative;
	boundary="----=_Part_2253074_441547195.1684416433642"

------=_Part_2253074_441547195.1684416433642
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hello,
I have got a new X410 USRP. No NIC card or cables came with it. My target r=
adio bandwidth will be 400MHz, so the NIC card and cable should support 100=
Gb.=C2=A0I have looked around on google for shopping options. They are expe=
nsive.
Just wonder if anyone has successful experience in setting up X410 running =
at 400MHz? will really appreciate the recipe on the HW, SW and configuratio=
ns.

Thanks,Hongwei







 =20
------=_Part_2253074_441547195.1684416433642
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp11624f89yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hello,</div><div dir=3D"ltr"=
 data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">I h=
ave got a new X410 USRP. No NIC card or cables came with it. <span><span st=
yle=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, =
sans-serif;">My target radio bandwidth will be 400MHz, so the NIC card and =
cable should support 100Gb.&nbsp;</span></span>I have looked around on goog=
le for shopping options. They are expensive.</div><div dir=3D"ltr" data-set=
dir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Just wonder =
if anyone has successful experience in setting up X410 running at 400MHz? w=
ill really appreciate the recipe on the HW, SW and configurations.<br></div=
><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-set=
dir=3D"false">Thanks,</div><div dir=3D"ltr" data-setdir=3D"false">Hongwei</=
div><div><br></div><div><br></div></div><div id=3D"ydp8620b65ayahoo_quoted_=
5142283320" class=3D"ydp8620b65ayahoo_quoted"><div style=3D"font-family:'He=
lvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">=
<div><div id=3D"ydp8620b65ayiv8910329126"><p><br></p><p><br></p></div></div=
>
            </div>
        </div></body></html>
------=_Part_2253074_441547195.1684416433642--

--===============7743785251064483432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7743785251064483432==--
