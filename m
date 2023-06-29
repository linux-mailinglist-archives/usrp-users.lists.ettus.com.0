Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BD3742787
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 15:36:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3CEFF3811FB
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 09:36:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688045793; bh=TApGwYYjllJ+eHdu0643W3PkpJAcViW4nyGndA+DF7k=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=q79UIc9KvIHLMYTmq2br9d19O3aBGQu3NDvaat8z0Q4/4EnVZoq8KqnxCF/ZUA8ue
	 BxmniTec90VCUBYeIADXYhK0Tn0heDPHB49NMCyAce/IHU5Bg2s7WaMwGbpC2SQiTa
	 c5SX64ug7SWJACbooSgf4hSZYdDg/g0lryKV3CWEBy54rAGHDz70g+McTAmVu/ItHC
	 DxEc0Qy0ehFs31zfFm1+SYmystUvBQ0tG+GvKKROPfa+tEEazUfJJsJaaLFAVkVEGj
	 /7e9YGcPUANd7l+WEsVjGh9Ok9FNBqfNHmfwbA90tSgVTnQLubd16d40TdQqSBTSsm
	 6OInVTrdD5mxg==
Received: from sonic319-28.consmr.mail.bf2.yahoo.com (sonic319-28.consmr.mail.bf2.yahoo.com [74.6.131.83])
	by mm2.emwd.com (Postfix) with ESMTPS id 52470380BEA
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 09:36:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="TESkU6eD";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1688045769; bh=JHAjvnvaNlofjeIShdcWWSCrBkQ9xCjY6Yc84h8yEGY=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=TESkU6eDfiEoMXScxvrtbMB8jTYpJqJUOSWAJFtR2yvZOM4DD5wo94xDgXQH3UVN/E3vPtG9R+k1j6/nN3Hv/9wGGxBCQM8HNJzBk8w6KiVW2BoG+dkvMcg2evWi2gT3d/9vVj7A7pocXE29AdJCgvq3HhhDoGAr0T+QqUCGEg3suJfSXUSeV4eRMaU3XmqQ99gR4SN/YSpzgT7xjqdCToAolDm2j+qb62NqP08JcJ917sV3bh1EGHbqr4iMSoJFyxIC5rETERbbRQEPvyYqJC0W5BVUoH6UGf1eRLq3LF7lD9A6KOEIeRHUNKmM7GR0t3pUpXa6SIKhLAjatTkhsA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1688045769; bh=l/SLm78ZU4lMC8iHY5GpvsDuuvPvIyUtgdPACrIvpL4=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=Rp4zVTE+75TvkEblJYl41GJKt2uPNdWFoMT/lBB+c6M72p5Q1ihzjMRIZrSRWLC0ALHCa1zBwL/Q1TzBVL49dchcyblzTAzbF4cDfZ/UfMwY9Kjfxu/XcUaI5WlKq/G5+LOVnQmpQUUwuPX5m2zuBuBrj4ql5bcQpJv7WrZZ6sNhVBArx8GbTdCNQkcYWf5OM5/MNJMSNqg8370hDn4sxF6nMmm/8D8RbcrGY2J96ArT6DeiuLQSBaFVOWpCG+fsM2JbxmkNmT0UANWIUum+Vy9k+f3AZcQdGCFoxEKtam/9Xdd6tF5K5yNPlMGeyiD4u3clIQsCV5V1Ic9jNPAnpQ==
X-YMail-OSG: 5apwR4IVM1ntrGY154ikZwoMz_R9uuSoVaYo_ghV9VBg9F4GKvd8asb7eqbRtT0
 tpkGsxVp1SR5Bv4n0TogUiXjs7Cwdqcyf1kj8Yav4XdiBAstWcipSXSubWh2ZYszS2BDfCN_1BCJ
 UGTdSgofrIw2XOOTJF.ETL4vIKed2m0lNUHqyDkSpbZAoClYU4C6r9Ir3VlPCRV8Q53z0rBSEglJ
 XzmraMSLT6VceWBvPEhIuTpv159IuOh_NjBlowOnrxTea36KXzvu_pvi1AAg6kySwqHivPnCIRtp
 qP.8Dtzj7K.DAEbd.Zju9Khx8tQlhgQPv7xyvvxeO.NiGVfTn3LOXOxZ.2FL6Dd0wpEefnPU6UmG
 CuuAU9h.BBKU66F3Us7tTQWqnj.iprWBw3Y_v0OllDL2ep9Lt8aFK78XywfsJKw222G7NabP4rwX
 9mYrtDhRoUUYWVYwrMWIWU7vn2ozkcuaX7BcRztrFRK0kJfgNCb2q0N2QVD_pC3BUgVVte5fd7fg
 ZrLH18yMoNtHt5sRhyOyCrejMCOwXnNp4E_xld4Run2BQF07btfOu2XDoUH_XyWung65CFq_yN_T
 oTm_ge.l6yQvlmWPLXNNqQsnET9iAya0eFTQpo.NhLdkNE8gKFTNJR4SqxurDBsRRkRdnAL93bRD
 txj1BQ3L9jd44avMNbRO2XjLJbO3cDFVSlNQG3H3E.tXin2L3zkhBs7Fnhafvb6_5F2EP_JuHK1X
 puZqwm0bF4eQjkVPXud6.VUoa46gDQ7uK26Q9O2ugzrJOHUllRqK10cBsxBZmqxLpRcdELfx1KqE
 Wjpi4Qnt8dwpTmhj.eOKsJ7SkqJc5mFRKIToOJTQy4mcHvePT7Kq2gevs8acDSHAFMpBiUrLSoiN
 3QdT7moVf2GZdfBYr8qOZNU4M1g26Ef6h8H29RM9TH_katRATH0S1438ckHB8XwpHsBo5mdVfEzR
 _boqpykqjj7q.julg3E.81a2f3IwMm5tNMvVvkSRXw1avcIm_19xCOQ2o1FUdhk5NWK5YucwKeeb
 lCEm3Ju8pmMeTMN7QVZdo2bOTfZArN8LgvGGTZcInZwHxJEUGGtaM3wT2z9zNdoZK75LViJy69Vw
 .OfE1tSO5CJuUmJssxanf9MEjEn3QgoIBHm92DQFzoirKz7il0OL8f8.rRmVFRrcnBBxSTC_SHhX
 8Ntv87AsLVBbAiLCrTIbLfFVnv6n4UiiVeji54Zd2YTrWDwabVnCmsxbupvq0canaYYzskB8WUOI
 TNgM4_vaXJq2b_fLAxZHBf14roYy3KRFB8uAkeCfBSyQzgzlZncFsYBK2ICZtB1KyGAyGzBJ1ls2
 hknO3Bx_hiF6kT_I_5Ei.g.KhdQM_Z330F7o4WDFTOsuMsnrQ9.73ZBfdPk.inDwS6Rjq5.2NUFT
 N96fwrnbUOsWGX4xjqaqpePnX8t.6KD6GfRnmXce6oUsrNMzEptEL7cIO0bfbjDcQ7pR8mUX6RVc
 z53oK5O5UtmQ_oturRv9Hm24QQORJvNqhw4XTaVuT3sja3nymcLoITBJOPX4F0BKOT50iYNyw13z
 XfCHqq8WpPk.pLSUTw_3qnp3ER1DnmlOuhPyOxd6uo42D2AKUgiLXC.IE9EfsR2SMZhnpYK1BzVR
 wRG5.utNmuUCr8bls6oORPfsMwxEOd00_qg54m0FsAIhv3d84wWEeqTjWsx19s9m888VYtddRpcY
 pXUiGCqTZTYbYB6hWXvexu2ghc4qDLpB4D6B.MzsgRW9wtNTuncQSLHZQavQPTDWbJhda40P0OhE
 HnSRoxtXEdptqSFYQrKBWrOCsUreqtoruV._mfT8GWGNg2qTXW7rQNEg1nEXiYTf1YzG0nw5KRoL
 IPfVhTjdDXZzEju66QaLoq1tfuj20IVAdbi38KwLmiS4I3py8IFDLLfWhzu0eADtebxqgfH6nuY5
 qSmu9RUe5y8wUB7EJgBt0_guA20hih9k8c8u3RbJUcD6u1XaSX.K4QCC1bUEoaTAuMpLdUIT9zAN
 I9qdMZCqK09HZmjFVKxoMfR9zT.wT1mDGOlnDdAb66qmqFjDmW9sZR48GURIFycE_nMRi9zOM3vM
 1hZ9JfWxMwI8PlaJ57bXzbw3TBgeoTeJFE1dlVugzBbzPTjVAQ9hASkBzC4z9sxdXbwlQk1RPUG7
 F0q3sJbO0j.wWgjxFGEgCN25DFFehV6Xbxfq_3GF.PfNW9xVZAhSacntFKGT8nlLJnsUyCtBO2Hg
 oVsm8HQ.3hXFGBSP3xXC_
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 24ec5a89-1010-4ffd-aee2-69e58686adc3
Received: from sonic.gate.mail.ne1.yahoo.com by sonic319.consmr.mail.bf2.yahoo.com with HTTP; Thu, 29 Jun 2023 13:36:09 +0000
Date: Thu, 29 Jun 2023 13:36:08 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1346881245.172465.1688045768643@mail.yahoo.com>
In-Reply-To: <ed80e51a-be7f-d6c0-7a25-3c0c7d19e4d6@gmail.com>
References: <CAHRiTbnF-aJvp9RCXAHnFgjf9kcTvEYOLjdGrKdzw421Oy3zLA@mail.gmail.com> <ed80e51a-be7f-d6c0-7a25-3c0c7d19e4d6@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21612 YMailNorrin
Message-ID-Hash: RBE62QRFCTPWYEFDRAI7UTBPELNXGYEG
X-Message-ID-Hash: RBE62QRFCTPWYEFDRAI7UTBPELNXGYEG
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] LO carrier phase difference
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RBE62QRFCTPWYEFDRAI7UTBPELNXGYEG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5237802270288645317=="

--===============5237802270288645317==
Content-Type: multipart/alternative;
	boundary="----=_Part_172464_1916301787.1688045768641"

------=_Part_172464_1916301787.1688045768641
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hello All,
I am using X310 USRPs. I did a loopback test with this USRP, that is, Tx wa=
s connected to Rx (with a 20dB attenuator between them). This is for checki=
ng the channel status.In my test, Tx is free running without stop, and Rx i=
s occasional. Both transmission and capture are time-based, that is, signal=
s are transmitted at specified time, and capture starts at specified time.
Master clock rate: 184.32MHzSampling rate: 184.32MHz
Using the captured signals, I can calculate the channel coefficient. A few =
captures were made.
I expected constant channel because it was cable connection and it was in t=
he same USRP, but I found that the constellations of the pilot signals rota=
ted when comparing different captures. I think this can be caused by the ph=
ase difference between Tx LO and Rx LO, but not sure.
Questions:1. are there independent LOs for Tx and Rx in a USRP?2. Is the Rx=
 LO on and off in test, that is, it starts when capture starts and stops wh=
en capture is completed? So, the LO phase offset between Tx and Rx is rando=
m?=C2=A0
Any feedback will be highly appreciated.
Kind regards,Hongwei



------=_Part_172464_1916301787.1688045768641
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpf2fa5bb3yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div id=3D"ydpf2fa5bb3yiv3133820541"><div style=3D"font-family:Helvetica=
 Neue, Helvetica, Arial, sans-serif;font-size:13px;" class=3D"ydpf2fa5bb3yi=
v3133820541ydp6f909a1ayahoo-style-wrap"><div></div>
        <div dir=3D"ltr">Hello All,</div><div dir=3D"ltr"><br></div><div di=
r=3D"ltr" data-setdir=3D"false">I am using X310 USRPs. I did a loopback tes=
t with this USRP, that is, Tx was connected to Rx (with a 20dB attenuator b=
etween them). This is for checking the channel status.</div><div dir=3D"ltr=
" data-setdir=3D"false">In my test, Tx is free running without stop, and Rx=
 is occasional. Both transmission and capture are time-based, that is, sign=
als are transmitted at specified time, and capture starts at specified time=
.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" da=
ta-setdir=3D"false">Master clock rate: 184.32MHz</div><div dir=3D"ltr" data=
-setdir=3D"false">Sampling rate: 184.32MHz</div><div dir=3D"ltr" data-setdi=
r=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Using the capt=
ured signals, I can calculate the channel coefficient. A few captures were =
made.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr=
" data-setdir=3D"false">I expected constant channel because it was cable co=
nnection and it was in the same USRP, but I found that the constellations o=
f the pilot signals rotated when comparing different captures. I think this=
 can be caused by the phase difference between Tx LO and Rx LO, but not sur=
e.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" d=
ata-setdir=3D"false">Questions:</div><div dir=3D"ltr" data-setdir=3D"false"=
>1. are there independent LOs for Tx and Rx in a USRP?</div><div dir=3D"ltr=
" data-setdir=3D"false">2. Is the Rx LO on and off in test, that is, it sta=
rts when capture starts and stops when capture is completed? So, the LO pha=
se offset between Tx and Rx is random?&nbsp;</div><div dir=3D"ltr" data-set=
dir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Any feedback=
 will be highly appreciated.</div><div dir=3D"ltr" data-setdir=3D"false"><b=
r></div><div dir=3D"ltr" data-setdir=3D"false">Kind regards,</div><div dir=
=3D"ltr" data-setdir=3D"false">Hongwei</div><div dir=3D"ltr" data-setdir=3D=
"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div><br=
></div></div></div></div></body></html>
------=_Part_172464_1916301787.1688045768641--

--===============5237802270288645317==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5237802270288645317==--
