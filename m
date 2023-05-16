Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19480704896
	for <lists+usrp-users@lfdr.de>; Tue, 16 May 2023 11:10:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AD422384BBE
	for <lists+usrp-users@lfdr.de>; Tue, 16 May 2023 05:10:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684228233; bh=fIPXsIZthVVPv7LHhauk/pmOxK9vQGfCXD+tt4jm7f8=;
	h=Date:To:References:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=x9oFm+zyiMNfaBkiBmXFph2ubnBoNsHOdpaNfWH4x32p/LhPBdJP+DLF5Turw9RJa
	 uj0sKz9t10wFKdsaK24f+7UmpyrEGfM4PmED84vcnSRnTZEoD9HxhXGQ4QtKblZ227
	 GnX1iZtsx0emGlzV117GXWHbjoIKGiTeiQnaveKDX+cCiDvlY40o5GwUYFCkujAgJb
	 zshb1OVv8o6w7YAqg2Xhbd2WhkYUqiSZZF6qGs3ttxOuFbRubm9Db5aMSxFtgDWxTE
	 Iel4UhEY5PdZtVQ3IMBWPQlK7Iq4sRcwj9bbyVYJWrQfHw0zRGrUMAh38S4vypbFeR
	 IiklAzdAU6g4A==
Received: from sonic302-20.consmr.mail.ir2.yahoo.com (sonic302-20.consmr.mail.ir2.yahoo.com [87.248.110.83])
	by mm2.emwd.com (Postfix) with ESMTPS id 6ACC3384B48
	for <usrp-users@lists.ettus.com>; Tue, 16 May 2023 05:10:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.it header.i=@yahoo.it header.b="ODDP1Eye";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.it; s=s2048; t=1684228202; bh=MyN4c3bbU1MO8835ZmushunsVcjgKf9yyb7VuxzY4do=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=ODDP1Eyeh10lINdb4d2Y6ES4aMegvET+JPulRmzWlG/48jJFNp+qWFkHSXzN5BNDbfLtMfFUIKR0KFmxOlqd5L4rhsAyzuagg9qTv/S2KKZy5NTFYCDxA172qjUYsCMxcrZ+DvNeMHEkQajcGYWDn3meb37Kj4ZD6mcsX2/QV5Xpw/0iIpY6oIJs9/9GnkPAtZPE4No1Tr9d74nR/ETSTMLxiNpPeJMI33S9dzFOR7PKyOwp6fWxCrmfxNoxt33UXPoFLKLI2iyeS70hADVwkKh2qJDWOPSuK22RC+jZ1hss03S49+EUnwRzJb4tOaWw9FltgyOU5im/7SMEELg2Gw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1684228202; bh=NbleDoSCgYMtOOhSiYzSGky9/jHk/pMz+uBmC4+5TxU=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=psNhDuulYGCtjgsVH8aBUzuWmrMKnAYVljhyVKdFCx2x342vMTanyDLljIQdbai6R5z/0VomOyH+syXBzc+Fql+lkCoMdvMcjF9Hxze4U8ZGXxdxtfictv8s6O9QGnb1ig3bGgdoMUuRRBR4eawCtoss4JYWWUuG7SPYJkpIqkyCVKkWaW2rTk/4Fx72X5uQejpSsITlOLLZgM7lgZLVPolt4PUMm3TsQuSjLQviW4HIIBHxpru2C+MAyd3mgsga3HSVXv4eSRhPW+Zl/KW5XoEoQTm+Vy/ZEKDWf1GcA6vqQx7DrS/EGc6reYymyF/Q+AvA92rLhPiMTl89gSqWPw==
X-YMail-OSG: IJ3Ns.UVM1nWoCQSUMZ59xsiBSSWluGuTn1Fsk3rtMeeT4DbVIJwBnpBP0oy0NN
 7CKNbpGfHXYTIsP5AakwlwiLIZspmMK2DfL3xkaPnx3iNB7Wi8Ont4_OZxvhRkI8P_Ds9jFfnf6x
 E_X8.FIQgYdhhV.M74EVzlHLlO_dLIN7C1aRVaIRfMj2tByxob_1YvDZ69az49nRIFEnnnkRgopY
 4s3reVZ2B16BisKy8m6VOO1U17EjANX2.cs1SFOhPYQ9ZlVNw0yHr2gXelptqUqzbNWR4vBs_ATr
 ZaQzGtwSC5OQlKvdx15nVy1Tnta.edWNIgiq6ahiG1B4AtayAulFGiizOeXhUrD1.YFQna632a5X
 yMetAtIVv8RR7E_4.nFoMF39xm1DD2ztOjDPvKAMNriv7IkpCtdXfrnVNSpD6TFwi8gQio8kDQ2u
 2j3LCuBQQPcoFRNEgnPZMuRBVpq4mW4emIJDvemT.LEWNKxpnQQLQT5lnHWks5IE0mt4IpOq.pbL
 8lbFzT9xt9aFJfPQTWt3BEQr6m.BPQnGV8QQpKq6pzdl2WwKblRWEQvc0qvmRbyV741TEB7Qzevo
 FbkmkUoSvQ5GJxLbPQGjHKi6l1DNkHvS2BrCeCshI.KthFGCG7.uRyqbizA2N9kkXZmvaV4nzh3I
 XvBsMtRvsWoFMoUV7OwZBosUiJ8h5_uoC9ylBJZDpmL.Dy4TXrQjIj431eoNXT522ZiLz9tGbJSC
 WG6pXQm_nk0_KpG3uzWSkh2LL7Mkp6SKXq2rv6x4Er1vYnVGcjhupOgkmyL1lcgnYQo.a.o4WwkN
 MlKYfiKlostVyM.qlneTQy.4ONeoEesktIcwUNoTXNlCQLlTSXHNcI8xXWnVg02QV3nDLNbmR.P4
 jxqxYRjNuF_FioQDWIzZHU_QW8epLOshd.GS6h4Wyuwv7b0FtDkoAI_FqOlHOFrFifnsGhop7rzK
 G1PkKjNiaoj17mKNvOmvt5AeEJtbnKeH4Opjn7jnJTY0xH7lTcEUdgKtVw_AJ7wJ5iyk8kdGYrV_
 GvkYHusjoEoLsDlZjwHTTtC7rJg4WSZAZeEndBr4GaBh9kb4s1RwtyTwRJuftKGYIaIR3IF3ZC38
 C0UKsQybKFn44rtrPILiPPsK3YaeRgjX_.yvTLxmqM3DieGYXQeh0.WZeN3Dh0Z1jEZUGnp1wPoq
 VKlZEwLt.5WUI8P8hj393eDj1rs5QCip0dlLkXCLrUQerXFyNYp9I9SjYiMZRBrY.olmKVYr5KM2
 9S6C_K1wtyVXUfHu7tfKD_DkrQgqr4qnXyVkGDoLtEVG9Z7caPYp3.PJPSHa9LY2WOoVcq4WS8ZX
 xBytFsRmHzDp6EeeDTYjE4z3iw.5UxB.x_1Txa.Mc3fUB2jM2TzY66Q7CMm76XrN1MSOrrEfnRJa
 6R9LKa4gducV3saPCbeek13x2AVyVzDekaQ_mL_.ys8Zehp4jcQQNdiwG0HBpO8EEmFCSrMa0NCR
 9dpu08J98qt7XiO4doA5eLEn7ijcf6eAeiF43shTrohIoHREkt3driw0Jp7vPdhsdgRWTFz5kCpF
 0gLyPs6sHeyCVzUHMT6I_Ou9SIUxsAEGS82K7qGYcyMAAF2aRvDnW60h_JEkks6Rvp.k1NPDcnAs
 jF_vkiSk_CyyW2NggGECGFhG82UKr23cY8fTGoxy7BCDODEfTb0lOjf3YMhazoC0npN4l5f73iaY
 42Z4DHv6LJQuy3kh6t1EZz9wNc5V5DcVi_P5kfxRCS1umNI.oGcvEx4KZ6o1et0YmzFf6l68GzwO
 kGg.qvChjOSSfPnjL4u9JHmw9kJA__wZB1eUk3JRZsfGh25OqAylszkXpwXXiYcJ0DkCJsecmu4U
 cJcVQlh9501QuSA4lqXLcHTAaV.8f.Wg4Ibag64VKY3K9.LvsBv0xEoxSQ7qkFOQyHckxiqFkJMf
 6mwJanVYzxPz8ULaq.kNFEP7PuvhVTrFvBkmWm_Y2vPbM7Jnq6DOhtvYrWKFrTEwhIrjRBWltYuH
 OH0r8TsZ6gRikxO2r52iBVIfzP01j.n4FJ4OXAQ_.xZI9XtWnEgCf5.iAwclh_OlD9StHxTT6zJI
 RXb_HL26HREtaY3LftY68Hsj07AF5T.1d_pxEZL8FLDrjOH28X_N74fufK.Fwpgs.YAzaPZ4y7Wo
 uELYUru9dp_M3ZXP9mSOeG4jiNgOF_uBe0A1oF_YT16gxN63Bw436uwraLcPM8MhJhPocHA--
X-Sonic-MF: <djtandrea@yahoo.it>
X-Sonic-ID: 9e56659f-adfc-407b-af3a-c47ec9fdcfdc
Received: from sonic.gate.mail.ne1.yahoo.com by sonic302.consmr.mail.ir2.yahoo.com with HTTP; Tue, 16 May 2023 09:10:02 +0000
Date: Tue, 16 May 2023 09:10:01 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1996905205.4381093.1684228201264@mail.yahoo.com>
MIME-Version: 1.0
References: <1996905205.4381093.1684228201264.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.21471 YMailNorrin
Message-ID-Hash: PDU5UOW3F647T7LLQ2R536HXMCSJH3F2
X-Message-ID-Hash: PDU5UOW3F647T7LLQ2R536HXMCSJH3F2
X-MailFrom: djtandrea@yahoo.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 independent  executables
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PDU5UOW3F647T7LLQ2R536HXMCSJH3F2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Andrea De Jesus Torres via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrea De Jesus Torres <djtandrea@yahoo.it>
Content-Type: multipart/mixed; boundary="===============3068232241364162985=="

--===============3068232241364162985==
Content-Type: multipart/alternative;
	boundary="----=_Part_4381092_593029509.1684228201262"

------=_Part_4381092_593029509.1684228201262
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,
is it possible to use a single X300/X310 equipped with two daughterboards (say, UBX-160) with a single host connected with two Ethernet cables to the USRP with two different executables?
For instance, is it possible to run simultaneously two instances of rx_samples_to_file each of which receiving data from a single daughetrboard?
Thanks,Andrea

------=_Part_4381092_593029509.1684228201262
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir="ltr" data-setdir="false">Hi,</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">is it possible to use a single X300/X310 equipped with two daughterboards (say, UBX-160) with a single host connected with two Ethernet cables to the USRP with two different executables?</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">For instance, is it possible to run simultaneously two instances of rx_samples_to_file each of which receiving data from a single daughetrboard?</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">Thanks,</div><div dir="ltr" data-setdir="false">Andrea<br></div></div></body></html>
------=_Part_4381092_593029509.1684228201262--

--===============3068232241364162985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3068232241364162985==--
