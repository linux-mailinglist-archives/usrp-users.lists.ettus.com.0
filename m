Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E016D6FCB3F
	for <lists+usrp-users@lfdr.de>; Tue,  9 May 2023 18:22:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE873384534
	for <lists+usrp-users@lfdr.de>; Tue,  9 May 2023 12:22:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683649350; bh=/ST6+kHFZpyt8dl53avthj+krynPfyVyBDUo6ndPPnU=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=WB1y8lF9f2Bn1Ephzs2SoSpmv4SBFbZut3K78lm0NAXZjXDqDjpHzDFojpoBCi414
	 LCPjl7vpCWzaQarfjEzWD2m6YocAt6k0VVwzrRCs3Jd3PevYLX7Ge5DDRlwMbOjZU/
	 9uG/PpzkUTuqKQLWSa+DV+B8yUu6OD86l7jGcPthJQf5fOrzVc010V5jKVOvjl0lRC
	 BeUqgJLsRIwDTZY059gJJVksDyQeOriv5Bat6TdwSHCDteuBaAHc5OaPyAliUH6sz5
	 jwuamiPwro+4vjx7Pgv1XM/MlAxBUlNFR79X2Kgzjl58WHP2DIW23WxGl3hWLrNU3o
	 w6lKSLROZ4VAA==
Received: from sonic301-3.consmr.mail.bf2.yahoo.com (sonic301-3.consmr.mail.bf2.yahoo.com [74.6.129.42])
	by mm2.emwd.com (Postfix) with ESMTPS id BB3F1384218
	for <usrp-users@lists.ettus.com>; Tue,  9 May 2023 12:21:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="XdIR8jDz";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1683649309; bh=EvdK92yNVLhCdBNZ6qGx3zQ+dVoKl7gPNZtagFDnIbY=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=XdIR8jDzd36ZHbWif5Sb8tH3m++NisSRZzB0torz2FlCDbZHjkjWEFwUzJ5mULRjvB8MIN1ZcK3ZyXFjRDlNuQIYrcC0gaJPejU3/RkPCc2lyVwyS+XjAIq+Rlp4UlxJiuWc7u5uFOAdxKo5DWruoVeWjClox/KomDxCZ1u7SES+hY1Wtz7nvu4fgSHNYrKjTyNF1ExEL5klXzHq1kDc3xdkshZ8qvvmg1fpKF8u1D8hD63KX9LKm9oBjoYTef9q2ihzJPr7Fk6CsecYTl1jLF34uxDPi6fdfLSevK6ZFngbg1aFawOkG+u/hqZofsqbEBF6rSb+Yt+bfQ1yq1klRw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1683649309; bh=MH9/4QquioKJy/zYjrsogpXf95G6HOTcdmYG0iX1fGL=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=Qm9CC4X448nkTrExxw9LbopBa3AtDvcQ7282MArVUKU1C91KuGwp/pauytI/+vuFJiuadYs+pKmpjXAJ25aGsWNgjO89OjFcr09PyNLmboKvIPvmzgTlFjWVt5qSCUI6XmD6Y85znH2+38K3JZdmblMFxO4A1JXuEQ3B1MhFo/hKda+uCqBm75BGaAFJE3VFoI7T2MrQIak7jTrPV9cq6Dr1u99NEuzzfa1zY/X/ldH1qr/dyYPu7tqR02GCxInP5EFNCmYBwlL1f+nuahpJpRJAJYZv5e59TeDF0aZ4FN1u4wSgT1v9k6FKUFjnFf0ayH+qMyHzaReD+xA3YQpPYA==
X-YMail-OSG: 4DTY0S8VM1mtTE1oPVXD.7pR.JvQaTkMstdsV5tktZNAHbZCOQse3EU4LJNijBX
 xFfuDoOl6uZqVwPMQAggb7J.a0Yp6WZrRcKt_gqxkhpy5P5f.rQPBJbZ4wNNn3VFRRubV474SSiR
 VBgCwXztjH3snzxNT7Zt4ptGz9BTW_9RHHesgaKWrjUN3zM._JVV1b5b2el8LW_3he2IQVeEyEtg
 jP597nsd05RRAyF3nsZe2dOuIS3gkzjfbMh4eqPWzjg6P6M.jQpKwZRn3X74HYWa88.kZKSxSG7H
 E3LvZJAjresmpMh3zo4NNYyOYLePD7oXbjkOx5v0EoOKWFvUatbNHot2dx_caOORLj8VTzjGXt25
 p1UCxllK_8s8zSl1uf82NsFWZCL39Nl9RBvnTUUv1XXU9vWNzd8BZt4OAD7DL4f7aUlYxVEM96gE
 _.aTSdpYx1A8cyubm1iVMmprt8DtRXbXgMavyLFH8NTJkBE6nAZqtOLcyV4ZH8Tqb.QjvVjIgAbP
 urGsL6SzJdNPsvFX6eZLyIoriGmmoYM6mUVl5CY18BwZuhnoa.u7PbPKtv6wTFfjsNDSPeFuYONF
 5Z5013TTYQBheLP7puJLRwR8zzCj7Gy6__MaUB.x9r4nUAQU1haclrWVwtmzorBuiqtSCzl.dYwI
 LRFtIqcmZVFT0jozooHA4F0QKNKlAb9CW1Hb1dM.fYyETA8CaZQYJ49BI8PNqONHSaAR1Cjfkbfs
 UgDHCHTqJyJXheb0juG.nWA4drI3llWacx4fFrDsTpgTxUkUFrT3Q2k8BtGOUOC3HxBY4HDIL43T
 5Clz2DHlrXtXiiAio980zcZDjDvZUubNLMFbKzADR2PF6qmmLnke5c3Dfy9RU6xXAJoN2fguDKfn
 xednRzV4R_MiqyQoMdTIBxVQdQS2CVaAmH6358YmATimJc9k3wXS4bOvZKXzJvOU73vKVnOkmipl
 UHtpkMbJlD8L.nQZ5EcmWwRClJUbcetK5eAwq5kHgUN.lAc68Aa0lCqCUugVgk5xTDvTHCziRyRH
 FIwFO3znpXDzP9KnPhb4F36BprUsOrQPP5NC__JONAITmis.CxqMC5KnPo2qMT1xK5p3VwwQhn6R
 GYvroFc1SWqFizsU7mfB1brT07_tQntBhDD82A3WYBt2B9cj3Kq39DR6NVLhQTLaBgwo.Mso8oas
 b5WPYVL_cwvn44qcevVWLlFEsqXPNyiE0iLpD49dIZWJnlh0DkcofqCpR4INeqsSSNrBcrLBFB.j
 nLuuPGUPqb7zKQRYdWFm9uoQ5JSr0MvpgUQ4VK37p66kLm7NnSjGVmDz8iq6yfJ8QSxaoJKFyxxV
 rXBa.Z9yWQLsWLz2oFCiwbdFJa1nTXN3PRBEaMjrzlo8i7.yqJidixbPTWsWNp._ZGNLiwXd47BQ
 7p0rioKzGw7vUwdkuw7guC_GdPOFB3DsWEOP.ICQap06ruIStZ9AfTvDss_siEtAFEXVlfCo9WWq
 Wk8mwcT_6NwKke8s7KU007dkGYEbRiM_CwmBS67_pn5gTkQ38djrRFWUAS5jpQh0XZmXbMCBbMyd
 PHnScWISjhkjKc7p50QB0IMsFAdJFC5Wpz9nm1fI_2USDu7ZszMABxbzrthpCdZoVTICX1XLVGB3
 lm22Tak.wru2LaSVdAt.ZNDxL1sO7DB8Rdq8o2hVP6nAQAxt2QT33hbUNMUH1Lp0nIXuszHdmBJm
 Fq5lvQ3r_Hi_uLeCnhdh31g.KY77WvF_0fjw0kwW22v_qY21S8PWqMEncgjlW4ITUxtzQv4b4Z2A
 AsDN2BV_otvOWn4HR621mRIMcv2Uy9_tfF224ffPqDhZQWAzu0fEyYo16Bu3owKlvKzIgZP3yy_N
 v5jK0ra750OcapXESU5s.7ZrdMj1ykb98XYon.5GlenUFjy2lT5IV8Uc7YfaBNy_FD7X2j9zJ6dw
 xwc1GHOT8vxesNpDnNw66qapuPxmfqjbQS5xdOqeSBbKYr8pXTC0MI0uoMF6pocq5wnaTzE9bnsC
 Jr_r6jJ5Q7.q_csC0nd2YruZzEjG_laDYYiSPvNWsjWNJD77N4KnEjkRD8JY6oDrV295kp4d4QWF
 cYdCEwbASKve2bmTVeLkj9JdSrqX5lc5vBmII8Y3CMAX_.Lez9B2vFLdnQaDI0wOHc0uVwgDvczh
 z442uLtpTXjftwANx6TGBcNI1l1DTGUFnyKM6hnd8MkeJlNSmOB_ndQMccZvsO3YPfGUJTN6oFkf
 ijGhNYaUIeyAmv3Y0E09M
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 9573ccae-29a3-40ea-9df1-7d8a19f8ad50
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.bf2.yahoo.com with HTTP; Tue, 9 May 2023 16:21:49 +0000
Date: Tue, 9 May 2023 16:21:45 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1556054227.3356110.1683649305159@mail.yahoo.com>
In-Reply-To: <b6UvUNXfjdwWK8OIBTsMRiSWh8Wx2yYyFeiFpzdd9LI@lists.ettus.com>
References: <b6UvUNXfjdwWK8OIBTsMRiSWh8Wx2yYyFeiFpzdd9LI@lists.ettus.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21417 YMailNorrin
Message-ID-Hash: NNZKB5R63CW2OIXJO2UTL5RERANFWT2F
X-Message-ID-Hash: NNZKB5R63CW2OIXJO2UTL5RERANFWT2F
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Can't find calibration file for X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NNZKB5R63CW2OIXJO2UTL5RERANFWT2F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4686876297529611561=="

--===============4686876297529611561==
Content-Type: multipart/alternative;
	boundary="----=_Part_3356109_1650313208.1683649305158"

------=_Part_3356109_1650313208.1683649305158
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi,
I installed UHD 4.4 for X310 and calibrated USRPs, but I can't find the exp=
ected .cal file under=C2=A0${HOME}/.local/share/uhd/cal/. Actually, there i=
s no=C2=A0${HOME}/.local/share/uhd/ directory.
What can be wrong?
Thanks for any help,Hongwei

------=_Part_3356109_1650313208.1683649305158
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpf691e441yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div>Hi,</div><div><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>I installed UHD 4.4 for X310 and calibrated USRPs, but I can't find the ex=
pected .cal file under&nbsp;<span><span style=3D"color: rgb(0, 0, 0); font-=
family: monospace; font-size: 14px;">${HOME}/.local/share/uhd/cal/. Actuall=
y, there is no&nbsp;<span><span style=3D"color: rgb(0, 0, 0); font-family: =
monospace; font-size: 14px;">${HOME}/.local/share/uhd/ directory.</span></s=
pan></span></span></div><div dir=3D"ltr" data-setdir=3D"false"><span><span =
style=3D"color: rgb(0, 0, 0); font-family: monospace; font-size: 14px;"><sp=
an><span style=3D"color: rgb(0, 0, 0); font-family: monospace; font-size: 1=
4px;"><br></span></span></span></span></div><div dir=3D"ltr" data-setdir=3D=
"false"><span><span style=3D"color: rgb(0, 0, 0); font-family: monospace; f=
ont-size: 14px;"><span><span style=3D"color: rgb(0, 0, 0); font-family: mon=
ospace; font-size: 14px;">What can be wrong?</span></span></span></span></d=
iv><div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color: rgb(0=
, 0, 0); font-family: monospace; font-size: 14px;"><span><span style=3D"col=
or: rgb(0, 0, 0); font-family: monospace; font-size: 14px;"><br></span></sp=
an></span></span></div><div dir=3D"ltr" data-setdir=3D"false"><span><span s=
tyle=3D"color: rgb(0, 0, 0); font-family: monospace; font-size: 14px;"><spa=
n><span style=3D"color: rgb(0, 0, 0); font-family: monospace; font-size: 14=
px;">Thanks for any help,</span></span></span></span></div><div dir=3D"ltr"=
 data-setdir=3D"false"><span><span style=3D"color: rgb(0, 0, 0); font-famil=
y: monospace; font-size: 14px;"><span><span style=3D"color: rgb(0, 0, 0); f=
ont-family: monospace; font-size: 14px;">Hongwei</span></span></span></span=
></div><div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color: r=
gb(0, 0, 0); font-family: monospace; font-size: 14px;"><span><span style=3D=
"color: rgb(0, 0, 0); font-family: monospace; font-size: 14px;"><br></span>=
</span></span></span></div></div></body></html>
------=_Part_3356109_1650313208.1683649305158--

--===============4686876297529611561==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4686876297529611561==--
