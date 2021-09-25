Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFBC417F0F
	for <lists+usrp-users@lfdr.de>; Sat, 25 Sep 2021 03:38:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E8F6383F5E
	for <lists+usrp-users@lfdr.de>; Fri, 24 Sep 2021 21:38:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="GAJJPm3o";
	dkim-atps=neutral
Received: from sonic311-15.consmr.mail.bf2.yahoo.com (sonic311-15.consmr.mail.bf2.yahoo.com [74.6.131.125])
	by mm2.emwd.com (Postfix) with ESMTPS id 9E474383ED6
	for <usrp-users@lists.ettus.com>; Fri, 24 Sep 2021 21:37:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1632533864; bh=9qdXh5OvHs5tLFRdTh++G5Wgt5+TBDQJ6lSb6i3erkk=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=GAJJPm3omPfwOx1iVCqyu3EMy5DGZ0z5LWUsclPaoiHsALHxp0UFgzjO6kslf3fCTPj/RRabFsgrQ+pIxgHPBEL0WHA2LXk4HQzhwPBwg/FoTX9kdNPHAb0lOoeaKbf+Efr8RUXu7lu6wp7BW91wn+eN1n9IwYbIlSN0X9+TVD4TsrUjP0ItdL/f269i5Or+ED9US4fUX618fHpRFzYR6C+k7aix160IaRf196x1wDrTDCW1XXRo1H4h9h7ETAOjgLrpzooyFMbyM8P12fWu7TWV+kk/maclO6n8OMmQgdxkGEDd33PV6BN4bhzTMnNPOmKvcSWd7OIn39mhIm/RHQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1632533864; bh=GCu2eizpnBdmid8N8dvNO42drJEepwTFpMDV6eKKRWD=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=MOGTKuIoOZH1OyA8x/gC/dWF8UfnkT0bJkA7C081EaDKc9hVOLrt+AizAHsm9wYOzrvvnzxCkHvbYrtPtYTccAWSZnksExjykyMpNO6WhjNfuVUBuewl33p7gqEXykBF9vKB3S2VxLYQKtvsth+dk0nWh3Z+52k7QCQ+MW3CTCUTXb2DEscB4DpipB01OXnSEZnZbmPyvohX6z+uGjIVp4+TaV0WPGD/Jl1yCNglPPuyTsBmo1x0rBSkK7TXA2iIa1BM05Bm/DdwjPCHRjtrTbM7stah0iptvRzaEeFfoiMn+Sdca9CS/XLTF8HNzU/BIEbEyXz5CQZtEhzpG1JNng==
X-YMail-OSG: eyjWwY8VM1kY3zU4dFOKjuLhoKyyaffvy3KJGvpW4aRs9knjcU_wWVxrxL.d6vd
 6i2Wsc20R5.LBxIJabCPTv4nSU0Os69VSkyPRdiW1nl6ylEtCx9pJ.PkbhlHaIZ.UrK6wHCo4kBf
 Vsu5Ng2ZL6EEM5qG7FZT9WYuszrkUN_11TaRyaC9tOt8hBcP0hyPJ7h2IwlLNlJoGyNikkVmLozX
 SNNmN1hh.Q3Q16QwP0bTjG3ahw5vSn_qhipIdCdWtV4W2bmBuOkGTtza5OZdtqVXIWTE5APt2Czy
 BAF8Z49GiTgQ4HIzY62uuNGbXcH_2nXXsFX.95t36U1f22Bk7Pn8688xvJVTNZ4RRHBaHiC55gjt
 FKPDevbZCpMqagXRwgYjEhW2xVbg7wuxvzYCPxNnvy8n82xEcjflQSwz4lUxmkFV48Tvpm8uc2FM
 oVZOAxfURLdkxFkCOmMu7z5H_70FOQkWHxoliy4RrZkau9qYBvBgU1DWjA4i0ds_6arDKOJmjFCU
 XtrOVG8oKqM7CBz2aiL9CgL7iRCilA2dXS5q4K1FprYZkN7JI4ynKqDAF_FKiZpOlExtnpAZbTSa
 xxCRFRIABcYQrtquPabqkYCJgE_lmyML4hwLQi5MYg8Rp36BgEWqNAvFRkYGBzMYHS7N_ffZ_WHF
 Na8kYJP4eVZ63dn9Gor1akNnoK9JR2ZDrKvYf4HUmbpQD8wKMx_m6IQfM.kn09c4hs_3IOqvgXP4
 IBJTHInM6aJgRtq80.lHIQa3Ff8JozZZBiA649wY4ZN4u6XbYvzdnOSOOYst2I58Nwx5_iTDuKGn
 KieyiumElELwnlL8mct0T1uXJ1J3EXUPzIFEpelLjlPQNZO2T101MHnZzLceOJfp6u0Ip1_hiNrD
 dMnic.2D0qoOh0Imbvr4B0ob3HLuvAJD5d0Xjmmcfuz69VHRn7jOXbaZxLIVE8Kx8MFEIpF2nhJX
 zclZoW6pAJTraYOwNeOk3obcF1oZ_hCokZReg6LJMuU.7uhL2KmY.AyjIFWpJE1NBmvURhXk09pY
 WfaTrokC3W7QCZWfdixWj11f_UzrRnHnyZVZcK3Or6L31ZFKygMfgCB3ypgcXIj49VFj7dlwpJg8
 9vOvm4HuKxY6ltutacm9hcpeBKys51lvj1SBKCImqAv75byFQf_5XJtBQRaG_99WX5hAgAK9prWP
 6XTIbRQM3DrA3B8Ykui4ISjfhnCZ6U047ghxWAiIfemiOPeKl3J3QiDPzjjSntXSsClgAF1yyE3A
 Ae26mrKYZ26HU2RgUDKSONSywe_NbcdiFyYqJ3Z2uCQ3zTYYqWIiPC57XGJK1rAFbin7XxNk0L87
 I73onbOqlowRBeYCJCB6lQJJAIlq6FnUEvM6g.WtZYLXN_4WzuA7DP9.DqvL4n4o4lofrXeySTlF
 BjspCOSXKI74JC.dwMgyvifr3Lo3re1j7E.8GL82vwS2FfSbyOiipL5FwJRU4U6vMaePKxHDFG8R
 TvG_79nkiktPA9hNnUIzx_MAuGIYAqc8tvn0Ya1sUeQ44fDRkIIra0W1GAygaDV.wW9wThxVzh58
 mMOzzNuNdXXo4CO_D_MVEOBcm32jke5l85_G.PoWA6Sh_2GaWr.PnWJQdQnlDK4gQ0PkDpQFWpBQ
 svtUZmtpIL6LOMRE4HDLRQftEH2UdfP_01jZJlKXFy55NqY7KDNDy9DtlYv81wiHzgQZhsBCFMEP
 VBxfFp55JctZD7RT2e1aWnPTYUbp5OY_VEaH9m4_SnZFXaEItk85vx46kxS3s6.M0xTXDQlaXl.h
 lUQIUZOjO1BBHOtj3PTN15IFphM8BeTLAjQOkdYwkP9Mq_EDUSbyQly7gWvj3qBtTv3ig31gd1s9
 BxhOQYI83CQT.zgHahXMK2WbpjtDqLGnEtlaWwzfOHtS2_Y7m5hZOI2Y._I4WKwWVicMcevEjoSl
 BHaiTW62AAEDFDZHDyDdKhEHgOKeCkLXqAYXWtwdgYg2.3uYJsCR.itzkcfpcQ1BqdJnX2CojHlY
 VoOVHBuBfKhMjKOPjwSYEEMGF8x0lIGVuZiPi9Q76b.SuB7ZENd5GD.V7bAMcflr0xFiRN5T6OR_
 jN3HF1KryEK6ZZQANGmum97U6bW1U1qzaK1MNySflQ1gBDHyrk3JOxFhoSB4psDphDkWQAuHqDqr
 D7CHCZYxQfTHAuFrOUXmvxnb0869FxLjhKMlGJpMxIpd.gscztefrEFdwtpn._8F.Vak.SeMoRpQ
 YdVSqoEp47CJ._8BY_RrWlVzIWR5K9wjI_ghmCUJTsSqFRilV3kvgf5_5tQa5uI5Nk3qYto37BHj
 O
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.bf2.yahoo.com with HTTP; Sat, 25 Sep 2021 01:37:44 +0000
Date: Sat, 25 Sep 2021 01:37:40 +0000 (UTC)
To: Usrp-users <usrp-users@lists.ettus.com>
Message-ID: <1044876970.787254.1632533860249@mail.yahoo.com>
MIME-Version: 1.0
References: <1044876970.787254.1632533860249.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.19043 YMailNorrin
Message-ID-Hash: 2YEXL55DS4S7AYFXP4MGD3VAZ2ATUKAV
X-Message-ID-Hash: 2YEXL55DS4S7AYFXP4MGD3VAZ2ATUKAV
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] make test fails when building uhd
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2YEXL55DS4S7AYFXP4MGD3VAZ2ATUKAV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============2825621812707830139=="

--===============2825621812707830139==
Content-Type: multipart/alternative;
	boundary="----=_Part_787253_1577115317.1632533860247"

------=_Part_787253_1577115317.1632533860247
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I'm trying to build uhd v4.0.0.0 in centos 7 and I seem to get keep the sam=
e 3 failing tests as displayed below=C2=A0

The following tests FAILED:
=C2=A0=C2=A0 =C2=A0 50 - pyranges_test (Failed)
=C2=A0=C2=A0 =C2=A0 52 - pychdr_parse_test (Failed)
=C2=A0=C2=A0 =C2=A0 89 - mpm_unit_tests (Failed)
Errors while running CTest

Will uhd still work correctly despite these errors?

------=_Part_787253_1577115317.1632533860247
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div dir="ltr" data-setdir="false">I'm trying to build uhd v4.0.0.0 in centos 7 and I seem to get keep the same 3 failing tests as displayed below&nbsp;</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><div><br>The following tests FAILED:<br>&nbsp;&nbsp; &nbsp; 50 - pyranges_test (Failed)<br>&nbsp;&nbsp; &nbsp; 52 - pychdr_parse_test (Failed)<br>&nbsp;&nbsp; &nbsp; 89 - mpm_unit_tests (Failed)<br>Errors while running CTest<br><br></div><div dir="ltr" data-setdir="false">Will uhd still work correctly despite these errors?<br></div></div></div></body></html>
------=_Part_787253_1577115317.1632533860247--

--===============2825621812707830139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2825621812707830139==--
