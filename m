Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D126A10E3
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 20:53:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E741384236
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 14:53:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677182038; bh=CJ40yG/x4n914wDqIuqsy7vT9+JjEw38xpZPM0wE+3g=;
	h=Date:To:References:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=A0oS1J6mCf6aquMJMzAd3uBsAEN8DxJTieq9TxCgV9+mLJuhEowhtdvU8edGdlqfX
	 gfb6p7H9CWcFRnpfF5OFuQrFW2dt7Q5B+wU+Lo+QKyhGeoGOre9lMLZBLG0pAIL43N
	 8r6AeqTlJHw8voX+fbr3+gnBdyrK9nR31cWniL5CWmkpEYEn6V5AyXJrafP0nlSjHP
	 4lHw58DR/ihDKeBO2ICHvq/oHhiXKLPwSjQpZ58fRr9Sy6/y5pwAhkpDF0M+BDFOVU
	 UFPH1Sm/Nb4MSzM2jm98JSler4y3+oBDZfhARQWKhFErH6rdD/yrqh7XqUog3FOxVS
	 a5RWztzeNhcpw==
Received: from sonic313-20.consmr.mail.gq1.yahoo.com (sonic313-20.consmr.mail.gq1.yahoo.com [98.137.65.83])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B53438136A
	for <USRP-users@lists.ettus.com>; Thu, 23 Feb 2023 14:53:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="t+XoR5Zo";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1677182003; bh=MtO8yMmXuPusyJe9rKvxDYckB5b9akUdC8237otxtRc=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=t+XoR5Zoo2qIalClYzwAW18+kQ+62yMf8fjNGcHtIVt0aMBQkCTDdbi4+fti/1yGBbD9fCcPfHjJrup0CiDlwOyMrob53M0DSHyMiL1yDeDp4SLsotde5Zt4zAHubdRGJqw8T9+MmCfRab7OTrIZB33AzG5MtI+pfe3xeS6XC0PYcdT2rHSMPD3e6/OPbhuC2CMp9wOxHLbZA2+0SYyUaqPROaHpyyjQgtmIz319bXe2aR1dpZli1fBH0aB/PwDTwzmGyWR0h0FBhJkJzSg9Q7DHX1NKmAZYIaJdkUOqTMq1Cn8XIqRSFkok9jVPe5F7nxeh6xyeDIA8lb1H5Ypp6g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1677182003; bh=jD0jjN4gDqxAnnwCD3BuWYL1DtTmegfp5LDHHkgVnlu=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=AY9tpohqdDHJAmMQCgsOIGuT2P0MoEAdzwE+HsEh5FGkEWsbqXeEWVSYcd/i/LVxbmbFY5A7WUBAY4oTWTxdc5jNyFzGjVqGQYR+K4OjViMZ0aQUitQC5tZrCcJwCGVCOPY4UHIudwvhSmP11q/aCrwpkscOpImv2BUdKMTcuMrKnuorKEHZ8xQh3su7cJeVXgOy2Te7R9WbN1VJXaEdjHATvpsV2IXP1nqeTvDLTh5b3W7a/ElISRMfZ/kxMZPApn2n4+f9bu/U4sHM1eSqNVzFJ869t2RlJFMrdIQd1IdXTmltBIDOzwaP3axb752JVGKQuFVSkXQnsl4IFVJ2dw==
X-YMail-OSG: DIvuQIQVM1kYylWBTQ7tyyo_pcYOInnT4qTB2z9COwoUk3Ufcm1HBUtX5pYxVuA
 Ai3ZYjGWhvexhPqoh2ecUMVGfnwxhmOlXe3Dn3e1CSGD8ZYqQQM.Xu52dB19XmSRlPWPGPnvvJJ9
 hm2GsoM7hkFIMIJzIl_tJYA4e8Kbosr6bs1LnFwG7CgbRAbUCCM7ALZgcTUEn_BgJ9oPLNPQiXbC
 xhFs6Sl6Ya921ZWzGgYGrG0SaW0kkIUbnmqP5ZO2BEoKi51l6AAqzhMQ.MWv4sv1hGjxqe8Ila8H
 S83uCKxkv7Wtt0_mUKSOXTWwur9zrJstilr3wmjNVKoEFzBPDV4fgcg_82W3upPScAHRl68NwP5c
 wjnge2Wp_0KYkKE5gbCEdXXWKgSuvu8nFNXZXMJDg1irgw9paDDqHzzCnszWskuatKLIoYthH1hm
 nP2ybqkt6IHvAaGwV9TgnhKmWCUljEhW7F8af1EOEVd.rq3XoaXzeuzey1HksoVBG8KoRZ.ycImP
 t7TUGNzYyvoloE6lLltYJdn2kDq4dZ0mAucJHQ..E5FXeGI_XS6.0Q8z.q7yadBl4YZPKn86NFY9
 gEqPAbHRJLR05pSfNKmgJ26z0rr4CcmH3v4mkqYlExiEMUAaCsFp1lCx9WNGzPQo6FvDerAJBsKV
 ycYbEdHR7lNGYCku3D1wkp5UW8ddiHX0l_cqgRhMZDwvRzmapXyO3lSF6udBGR5ZzWKxm2FIsFOl
 GWhc9SpTnxR10VN6AkZjKoizk0F72DbszNA.ogjUane4JT2xa6c4TDexeCp4z1VQURbqm86_avXq
 b2oprbpYKdmZHsRfQybl1vNujMGWsHwh9Gq_ki2thbJGlh4RWRg7bTpO3YOujdipdtOtKTpnOunx
 Kvkz.6jDA8z39bUSicZ_NdImg2mh_u.98cnkOhzamHq_KVmH0ttCQr2g22HzDPly0bhwvMINwPzL
 5M95EfOvBPye9WA2nYiRBqvXUnOQUadNXgVEWTGsxI5GpAyxu9bjaVXQCr06BrDnS6_MD6cNpNVn
 I.dEn8xmLBjG8BBhF0NEhdd65NgK4a8xAcDi1tdtmYljYtn2eSt2_UIkzN5KiN3unWu922eg4vrp
 G_OHRJBSQTpabdz2P1Fmr4eKzLTVcIxqv2Y89cF7xtEsJgFXP.rB8KTaXp5PSACzbr2lESXN3_4a
 LYACg0czBj.rGLsxlUuH0zoE3EuCrJKQioOXC9r95Ks0Ycv.YOjn.qmXmQk74BqUxjeYSbo62Fy2
 tSDOgHFtqqZ10X0JeHHLA02x001GaBvvWaX5Lx7cpMV_tPcc8q4MAgOYpLhPMknb89GCOxNrItz2
 g7bsHvt9HDsVhRBVqJIPfkthOn4jgx9ONDg9o39T8n8KRcpXIx9V5.aVsK6pWCwZVp5zpvwm0BeF
 oUTYtU2uX2Y7uO1e3QMNwxpkgCDOqMVEu09ud65Yu2upoGK08MsIghoGoY9LjT520t4rRLz4UdMv
 RMv7_.5H0_JOgAlvMjCg0yf.bXMMkbrBvcBP0.JS1k_SBbkebeI7_ocfI3h2q6jbTETKXlGK9oMI
 0DkMfK0YpKA5ycnG_NR2X469iTmgBDciRpqEUZrlRkkkO92tEQcl5kQgkKNyZOJdVOVfMMqOFZSF
 5rY2AZLN72YAVq9bnZDszkXURiZw4updiUVl6fiI0gWX3t.MQKm00sl_We2UjJA_lB7OCuUL.SAv
 iN.PpQ.D6oMXR5YyOxS0_pjeKbVVkCR5grwHwfCd72ccAVg6ArrkBI3nB.33DkdnD57R03RBapNE
 SmJA3LqpZLPRAXse2.xoGw.qF4luLGzm6ugdmZq8VKY3N3M6cjngIDL8tN.j7uBFuSDBsEITi5eC
 oaSRlIyh9s6APbiHSMMoki.9hQh9aSVZRBmj75SUosCE8MoivgQWWHSj_5L_4d4zTVyguivswOsw
 8PYxXUKytMbS2oAh5RJlj80C1ErVoZkTpUce3AdCtQX_1Dd_OUccKxh3PI19qAd23VChEK1cAIfk
 _LgyeUO0sKJgdK.tkwqbMC9Lb1ZJOmKHaZvQ3TyKu1V7pj3zQKJsu.4ekamZ5Rhday6wfgl7.T_Q
 1hdUJCdvkrw4CcZM1OTghjOk9.97NIBsN4xNYnP6XkHCDWlgQ1uKzXSt6RWzvib.EpiGwH7qeuMy
 qgaGNXfOHfEu6M4o5jYlOn0GJqr_hvWPvo_fITZHxAw--
X-Sonic-MF: <hamed.zubi1980@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.gq1.yahoo.com with HTTP; Thu, 23 Feb 2023 19:53:23 +0000
Date: Thu, 23 Feb 2023 19:53:21 +0000 (UTC)
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Message-ID: <793986517.66025.1677182001996@mail.yahoo.com>
MIME-Version: 1.0
References: <793986517.66025.1677182001996.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.21221 YMailNorrin
Message-ID-Hash: WXAB43FKCKRJ4OU3GUSXEE6NRABGRSPS
X-Message-ID-Hash: WXAB43FKCKRJ4OU3GUSXEE6NRABGRSPS
X-MailFrom: hamed.zubi1980@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Active GPS Antenna For USRPs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WXAB43FKCKRJ4OU3GUSXEE6NRABGRSPS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Hamed Al-Zubi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Hamed Al-Zubi <hamed.zubi1980@yahoo.com>
Content-Type: multipart/mixed; boundary="===============8345713728181037553=="

--===============8345713728181037553==
Content-Type: multipart/alternative;
	boundary="----=_Part_66024_1880719323.1677182001995"

------=_Part_66024_1880719323.1677182001995
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,=C2=A0

I am just wondering why the 3V active GPS antenna for the USRP N210 is comp=
atible with the USRP X300/X310?
I have 3-5V active antenna manufactured from china, but it does not work wi=
th USRP X300. However, it works perfectly fine with N210.=C2=A0
The 5G Active GPS antenna=C2=A0 for USRP X300/X310 manufactured by ettus is=
 expensive.

Regards,
HA
------=_Part_66024_1880719323.1677182001995
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir="ltr" data-setdir="false">Hello,&nbsp;<br><br>I am just wondering why the 3V active GPS antenna for the USRP N210 is compatible with the USRP X300/X310?<br>I have 3-5V active antenna manufactured from china, but it does not work with USRP X300. However, it works perfectly fine with N210.&nbsp;<br>The 5G Active GPS antenna&nbsp; for USRP X300/X310 manufactured by ettus is expensive.<br><br>Regards,<br>HA</div></div></body></html>
------=_Part_66024_1880719323.1677182001995--

--===============8345713728181037553==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8345713728181037553==--
