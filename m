Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD007424573
	for <lists+usrp-users@lfdr.de>; Wed,  6 Oct 2021 19:57:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6B36C3840CD
	for <lists+usrp-users@lfdr.de>; Wed,  6 Oct 2021 13:57:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="k8vGkqn7";
	dkim-atps=neutral
Received: from sonic303-2.consmr.mail.bf2.yahoo.com (sonic303-2.consmr.mail.bf2.yahoo.com [74.6.131.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 89B73383ED9
	for <usrp-users@lists.ettus.com>; Wed,  6 Oct 2021 13:56:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1633542976; bh=nulij3uRC8VUmG+gGC0EXvEzbh47Sc8iVya9XvZEGko=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=k8vGkqn7iyxIkNIyU5b8dpCLTtgWWT+acnmCssKDqm0opJk3Gx8cqTeEERqhC6W2C4K2h40GyMSg3ugzZloGXluPAno/ZUtyeLU8hlJzFi4qHcuRPkO+RjoDM4oJ0DTqB+TLtxd1H0f1rmCs3bgf2zbF9ZZPxMHdxZ8wITak1Y5L4aq1+EZ0k2Sx6t9KcqCE2khU7Gc2ge7gYV+vxotCSQxUB+ZVtK2WdrxGhTgSngFMB/89ZXF2UTvofBc7tPKazaJCQWBviBYWyMKbIDLlykvlCcOI6uxpSUqgztnnK95ne2nNrBZoD37uVYi7qOg8yqlBxickG0y50aBZ1iGrKg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1633542976; bh=6GuW2nv9Ws7uLz6haey0LNouqOxSg+IJ1fYXaeyym3e=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=IN7atzPguUMqMPkC6vVctHvcyJLeVrcB2+sqfY9pAReckhumTDjX1W0LmQ0xd49ENBYW4j+n2nnY7nhPMq7z2D/hJmp03Oo8kiOfvvVHQoPesKeApq6kQIFxn+ifkPBlo8qW6Ke37th97mLCQc6m2R5rfWlNrf+tWDzf5APm1l9S6AzqhzdJ5fZLHJBpgFr2yAUf6eeScaGxvbBn5y+ekHPnFIGWPHhnkGX8fH6KzPSj5MPutjGLNk70O29VVG4Wy7AH5DRuZcBhmZH4OOKX66HZloQ33oKuZKCAkwIBEiLyHfXfrLRB0A9POlqHbvmII3pJyiHA1prucvh9wpO4KA==
X-YMail-OSG: XvLy6ugVM1klYkOya0.q8c.PzKri8aHoMo8pHtSmTdteT4A6CGvEYbFzqwxn6to
 _tN50CQtIkJ0b6ui2EwgxwPQZc6S0585ROx47y7v9pSqGzMMtL3eedNVyyJ7XQnHFjPJrePfEtW.
 hkVqwlpQRT7CQX1_OPXnXpmCIPKDZsI5Zsn6hXmSmiSoV8sJ9vIixXbIc0hfRHaZfTfKeHSdEvXo
 2ujMYHQwIZmW2p1V30SNO3HTODC235bqaIvANDnGmMKyYLhYmtyf65mk2OZiWclBJNGKeV7gOfzH
 9bPKkUaRdHOop5E98uekzImVWAou2myLRE8asp_udvnN6mRwN_JbrX1qcliNs56ETF3O1fePE34o
 .6bIdfjipxTKYZb.bFUM2B0K0LznWLVi9AJ8T6HCT1WMhG_KkqO7Oeaw_bZyyOi6i5kshV4KecSN
 WNTntckmyYfr051Gs9oKp95.4ZAJmEg8vWCoAFmtJ7sBe_suGhOetjF.zZspSi9.I8AQVNttl_ke
 Y0L4xgOOvUg3m0DNKtBcGUieS9d_xaXLWTqEFzEMyvyMLcJ8vsvebeB20F.fTJ4UsRdBE4uSHNxV
 7IcP8gMhpceJxKI2IWW9wYCnqEFJxVqxtccvFZcELv4oKWSsGYgbkk04JIP.jpfoR4u7FRlLD83g
 Kby_m78eewrGahAoR3P6mEe2qLRckf_Z2BWKGNQGpf88a5abLdZAAcspXhn9xpA428Pssh9nva8a
 vjxCNV06SDm1H4nyzcQvWLJAYbkJB09xVaKGGOFPDO3WDmduU1bZ8XFwNPj2FL57MUEmJa_SRZSQ
 YtXGbpdC3lqngpuS19_UqvJw_CAmNu9uubWTspJ9ezp_VBCQd5aQb2mu6fGPvfTWPyQuuZ1.xKQF
 vZKNRFwwaDZ0z3aBQuL5VTpS_vDhWuJR5slhJIAqPigH2WBidzPxeD6wKYNNi78VU1f8SEahn60A
 cXwbG2kPZ_iYmnPh7RGLef7NNlRyqth_uXLXop3MMkZQJkvsASrmtQdpVSWI9eZuEDczSBGYEaSw
 FVVg9Qm159_p4UltVx2kLba88Lmmrweyk.Hg3fk4hoXzBpv_costP6z3L1Kcm51r9.ugh8JILObi
 R_9eNUXVZ9v_20ULNMULoKDLUBB3RNTDu6SvBqgO2LX9FskVL6yUUWxT218ChfqlDzGnxjliG5Gh
 LY0EWZNICFAK2zTDK04PhWfYcxZfcoZxALmTgSstVVRjG_FqVW2zR_jm6v3ZNzDNfo_OkGUCnI4l
 ZVuqpFdJyspCyirqqgVTNns9cfy5vX8SmkbmwR9uZNYIriB9QgG_QzB7KQq5jiD3PbwarCmFRFJH
 zM4DVrokzNjd6Zdg16UWoN5Nz6xDDzkSgYCi3SdfmZmfG02dyp5POzg_VI8xO1go0tO0gx_Gw_NZ
 PcW6tt7.ikW19HierjUabtzHrHiXoQ5jKRYXYyNYHS96aYZtvSzi5zn.CNFbmdGQJgp2mizRLS1c
 lRtWCun93A5R75d_RVSVggjlJdhBmuXcSm8gZ2z.l0rBcfSKmLZKZL6SR_72UCxAP8HaXBNxzWZc
 OgAppq3pHxnNIwD2LhXm67seGfdiSX9HHM0j_.F8DPSCbDzdO9ZNZxzmWTUc0ZXKzhpaDvXNyz63
 VdzRfTMa3wymnNsZ6MeHDjNgcOe21mZw8FOyq0JTvvavMIO6DXJlI1uwcTE3Ysy4HlrSnPJoDnMU
 lgehBVTUEifV_q1_t5DiOu2jXLbQdRatgcSnFQy3wsWkADtZQvyz6KXpswNO6w3_U8qB9dZ3ETpF
 I9X8Zc_MORqVi76Y4i.qtC4zIFVU7qBu6sgh.ZuuiZ8qRJcYE4QtUMWz2ebYxPp34QsdZm7g5ekt
 oJIeqkXCiZ3Nb_4uCyo5spl6aIZ8JN3H9yYjyzPdyU.ss_SIsDOyy_0J6oO2wvwy.7v8cpGbHBIW
 ZYvs6GTm3hfNw8CquZf.ilZLLuLifWo_6AlKbLpRPSvJf2XjigSm97p5xbyOQ0fuFMMuCnZonquw
 fNIAU6mQhr0hPpR6wK8Jev5Zx98X.FH7mAO_Ms2DYCRztJbOa5T7MPHLUkshIZM9GhkwWH66gFwj
 8ZQQfuevweGUVYy_19nxSWcoDDJKkECOPABwMJY.E6yezIH4.Hmy6xa2cExGfOkMofC5QdxaZ.tf
 EBnAEdBFc4QUafbIS1ZbGK7TyHlao.Q334VzYbIKiu0Qg65alQ8mnDYWeJfDxEoM23FcLyE3iLt7
 IzLTAyVZxExP_Og3e0716lrUWPqibjGDgw9omq.JsYneaDK38oeSKOIh5SOkiC7RBlrc-
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic303.consmr.mail.bf2.yahoo.com with HTTP; Wed, 6 Oct 2021 17:56:16 +0000
Date: Wed, 6 Oct 2021 17:56:11 +0000 (UTC)
To: Usrp-users <usrp-users@lists.ettus.com>
Message-ID: <1607813094.1558445.1633542971951@mail.yahoo.com>
MIME-Version: 1.0
References: <1607813094.1558445.1633542971951.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.19076 YMailNorrin
Message-ID-Hash: TBWNGVVV7TFYTWLOM32JZLK2P2DBJHRI
X-Message-ID-Hash: TBWNGVVV7TFYTWLOM32JZLK2P2DBJHRI
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] I2C communication on the USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TBWNGVVV7TFYTWLOM32JZLK2P2DBJHRI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5026297021619134151=="

--===============5026297021619134151==
Content-Type: multipart/alternative;
	boundary="----=_Part_1558444_1578096426.1633542971950"

------=_Part_1558444_1578096426.1633542971950
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Currently, I have an app that I've cross-compiled for the N310 and I'm trying to read data from the I/O Expander(TCA6408a) on the daughterboard, however, I'm getting an error stating that the "device or resource is busy" which leads me to believe that there is a driver already using the device. Does anyone have any insight on this?? Also, is there any information on using I2C for the n3xx devices? 

------=_Part_1558444_1578096426.1633542971950
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div dir="ltr" data-setdir="false">Currently, I have an app that I've cross-compiled for the N310 and I'm trying to read data from the I/O Expander(TCA6408a) on the daughterboard, however, I'm getting an error stating that the "device or resource is busy" which leads me to believe that there is a driver already using the device. Does anyone have any insight on this?? Also, is there any information on using I2C for the n3xx devices? <br></div></div></body></html>
------=_Part_1558444_1578096426.1633542971950--

--===============5026297021619134151==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5026297021619134151==--
