Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D08815FBB60
	for <lists+usrp-users@lfdr.de>; Tue, 11 Oct 2022 21:33:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 62476381924
	for <lists+usrp-users@lfdr.de>; Tue, 11 Oct 2022 15:33:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665516792; bh=8sQ/rbTjwR3E29ddL20IDeGs2OrkbUgNbSixc5lvyok=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=N0Y1RfIUwzP9n8earOHI2jGqhp1XBZPTQCDtcDeNPHtxGpamXGUKAT6ZxcLyTAFb/
	 kJN6vINcRmeLlhWITsEUOZwIJYf0SYMeauKNf3zVcg93uEBFNX8T+BG8JrW77yqjlo
	 E8Uzb2Ga8EcQOb1zO5/OqmPr4PFhqPO1uDYW1IZ09l83EvmY/pP4Aul8oHOo8kgQAd
	 XmUjIQEeITOBNOCozLWV0QTstTxfbpMkkI6vsZXn0gWho4KYN/47f58N/1f7vAmJkM
	 RQJvmJNITVqcK7WWPwRNF7pUDNL4/Z+RB7Zw3xwhAZrwB8qES13IbiUla4pYgr2rsK
	 NxQaPM4r5oHfw==
Received: from sonic317-26.consmr.mail.bf2.yahoo.com (sonic317-26.consmr.mail.bf2.yahoo.com [74.6.129.81])
	by mm2.emwd.com (Postfix) with ESMTPS id 2A554380D8E
	for <usrp-users@lists.ettus.com>; Tue, 11 Oct 2022 15:31:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="OP8RqzFa";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1665516683; bh=0Kky8gTRhEhwdSr2dT3LhJ3lheQYLomZHkyZTENG7Mo=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=OP8RqzFaw/UGrTQxZ9wclJdgl0/+L3QQezmtSilfbye6/diLPSCsNApKvZe6sJspzbtlQ6ltt44CmUT3Ln5wh1B8SPRWtjCfLYx2TxkKfr0xKxhhURqyzlF4dLmG0LNKyzriWa8PRm9wMVWZxyYmkwTd/gt6phf9DWmbp3v2NF++sP6tSmrZsnTZdasRkC82uqpu5nRgjzk5iDWSx2gmMjayFkcldqHo4rLoj9DhtxE8sQwdNjvjR1OY1wl+aGPNRxRq3SRQpt7dPhwAeOsqxYyx4bKYsKe1oNZaRy/UhkTaWvy3b+qsexFGQzAZljWj+j3ndIJVsMK4S0Btoab7hg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1665516683; bh=S1chH8BvWpnMJJn+Loly/rk7do2HHfHyX5E198RL2Pw=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=obfcVkz/bxbrGpTpn5xxH/JteQPuZS0YFHDutBZczFXLO6zwHN7K8SPdfrzObayZAbwmf7+ccjyJGvST6HekhE6RiIpOSgE/vhWwzyrsmIRZ2igEvkpqdAVI4KGrC2++wwIHC2moqULTjm4SojQU4Ccib18/iSpd6obTZy8KEIqzEPsKt+keGqSvp+tdvEH4c7styByJ7Kg8Ra6qiDram4ZXVlXnE+I6eL4A3pO1k7Tne4pVLR2S0wPrdxBHfOT1Tl3kRkPD+LuH6P4gbR4YvuaeX1oz6aH3sEerpT8HzSjotYeANINNQwv13ok1rM3k94jFDH7iKjD1SWIqeKZO/A==
X-YMail-OSG: D4YEeXMVM1k.0Xd.ODU__11jgFXPGZy0daWkp94pOPFT8KmuiQH1JSETFzUI21X
 V87W6cBUyPWI31L_scrcjjjbNjSuZ8kOHBZbLV3gBbuD.bKqWR8gmjh7qiWLifvHVt6n1jJ6cYIt
 lluY7DrS5Qi2M0b3enq_9FmN02tLSJLGGBTyC75ZDSeuULjrgsDtsvRkws_OTGT.vmr6wbHaip_K
 Z5qgPfCvz9TcKAeYt5dPh1OqAepr95NPajpopT0BQ8_bTxBeeFeNunHX_TbDvtIYbXCVnTuvm.v9
 kKHpYEyKcioWRkgqUUrGf3ZXuAiEkg7k_aLfulzGS4DuRkNMUlfTGowztQ6tZokhtNk657XfMKlp
 pMMgZZwIdTlVzNv2rOTtxdHi5Y5GabRquYdMwdycY8w1YCydlmepFbbF_7CaJVnIYKsY7Tw.L39R
 aA3GQXcKa1u_IIsofS2dXxjxF9WojakGLIhQWhL7lClCkHAV8Perfx64c1W8wYobhEcAR.2pb7ns
 ls1cQBperbwxWqfJ1jEnzkqXAHBw4MdNAdfko5vgsagJDc2EeEVaP1gqV2cNE3rMLeTOEHIh6yFI
 v9gDuoUGwr.4gv4dZ.hVnqamcCGLK06XPQYdA1FdjsUEHalMjZV8ZNfLMq4JL04tLkJ9INN4oXTn
 Xfh5ZehnAvNX1BweKsFXx7X_qXZ5itrVl60Kq_Y0H0hihvJ62.yCxPMFmA98vQZyGp4wY8tRK6kB
 _FBdil_ANQDJ_vTz016JGqGrbTdwM4ulYcfp2ogs8DAIJHjkrfoYrGtDA7AE6sgxbaAMLYXM3N6j
 PL6mDa31ljZh5i7J8ewMpJbtTIW8Y9Z2saNGHDtTdc9iwEi0M4x6clNzyxOcTG7hO2jMXlUnwXaw
 KVlrHcBDrSModEW5_aXJ2HWBYvPeNXg2BLHyt..TnmJK1qI.UtKixsJMIcNJUGNPyFkoIUKhew5G
 kn6XkVi8vjdpZ5lyjbxGGenhhYtpYQ9s0uKIf6Gu9ZH.dVu9ziBKs.Rkt1PBtzpgvcvfpRRi61Rf
 lyfeB..5.c8H9Rura6YECyBOssdSNA5oJ7VtF4W_Tjv_tkAzkFEDwqqC_hvouaPkM5i7uMJqPxGK
 HEtQdGRK1GSqwHA5mRC8jQ7W9TKkcr.OOr1LY68mE8TdcpKtf6lDvF4TQw6btxLWvwOVZNFp9SFi
 sEgxNR8HslXSfPCvMFBtGWobiyWM_iIpK_WfdCtHNEY0FtiG_0tLL78SA6XFJZ7XE4nZRWIuEIzr
 IVb3uzZHhFYaCZxhmcWde5ywEoKb77PqnrqituKJFRsC8PQVR.WPZF3HTeEK4HWALiRn6xnGYy_V
 WtKJsjKD49iOvrJAIG0Rg5rFR1hxfr9vGlBYrSoXSvk2vnL5SsV0uBDkcU1b5lo_cuJqOML4LVw4
 Y0.bHfT_4YI9mxQCEVd_4voihJPP_I5n9IzhTUYs7IHID5N6t12nUcCKK9yWhDY0JWRAun7j5rsP
 iOQp7cgcEV3Qcsbkd7vMObsS2dQecqpoJ5R.NBpL.5W_0OzRC2obwMlKl1L1SFpS_N07aaJ_vb.S
 r_D19Xm.3x53HpffySbgMfGphzFCHrxJKXkvcE9ASSRyvfaKZdaA8R8275FGUxo57NBpsdVXA9JE
 17kAHdIMM1oF.L5BAArPcaNIwm6XyRzV1UoUUx5_W.zvfG3ISPWumag3lgU7IVRJRASS.SEwmap3
 m8OgvDYZyVhnfogUKtIdXdNcEX4u.Jj4tJl.HEh7ZVLxzxVvgQH0G2.LogUKWRYh8tZkylat3FSc
 laAsOROBvqUiFt42DDX.86dovhUMrvEJyoNl1418Q4DN60Xk_oH3MnMwIBT4g7RfWrvBTE3Xhyjw
 L8FUlC1GjNqHOafBnPrnqGLNB3fiMtPWscvqsxoDU05z6T_DcdJaBcBLIBNmjUPU6kDHmRFwq8EC
 krNcHbQ18repQyIzNIi0KvoaUT_JKjrXU911hSlSIdLbIvriSlY2792Hy.R.K5zueOAtpA5YUuil
 yl3b44QeMQGy.yOl.xov22RSEWQoW_ZBsa3Aw28dkjCR3FkpArwWDWExw0kfJY.UKmhnllK.1qCy
 o.eSEouGGjbSzYCBNBn.qEFlsMS3quSMPobJETr6M4ZqiHjpTumwcHJeAPlNYBNqz3_GA5DoBo_P
 wQDTNIPKiTggd53nksw6Qp22pVw8ageoOgN6qztGAKkhkXsIYNSpIkhoWFqLHUf5Mof4U4JtrHgX
 PXGr3MS9xtHbPnTDwrhvRsiKgQCEAoXhW
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic317.consmr.mail.bf2.yahoo.com with HTTP; Tue, 11 Oct 2022 19:31:23 +0000
Date: Tue, 11 Oct 2022 19:31:21 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1416319753.252891.1665516681592@mail.yahoo.com>
In-Reply-To: <1567317201.188112.1665504920071@mail.yahoo.com>
References: <DB6PR02MB2981930195E78445C7C9AAB3E7209@DB6PR02MB2981.eurprd02.prod.outlook.com> <1567317201.188112.1665504920071@mail.yahoo.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.20740 YMailNorrin
Message-ID-Hash: TY7QDBUVVPNAWT3HRBMNSFXEKOFNE4J2
X-Message-ID-Hash: TY7QDBUVVPNAWT3HRBMNSFXEKOFNE4J2
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD and NUMA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TY7QDBUVVPNAWT3HRBMNSFXEKOFNE4J2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============2435102126189766224=="

--===============2435102126189766224==
Content-Type: multipart/alternative;
	boundary="----=_Part_252890_1374878734.1665516681591"

------=_Part_252890_1374878734.1665516681591
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

 Hello,
I am using R730 server to drive multiple USRPs. In my application code, I assign different Tx/Rx threads to different NUMA nodes, but how can I make the underlying UHD to use the same NUMA nodes?
Thanks,Hongwei



------=_Part_252890_1374878734.1665516681591
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydpeb0eb4d4yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false">Hello,</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">I am using R730 server to drive multiple USRPs. In my application code, I assign different Tx/Rx threads to different NUMA nodes, but how can I make the underlying UHD to use the same NUMA nodes?</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">Thanks,</div><div dir="ltr" data-setdir="false">Hongwei</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><br></div></div></body></html>
------=_Part_252890_1374878734.1665516681591--

--===============2435102126189766224==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2435102126189766224==--
