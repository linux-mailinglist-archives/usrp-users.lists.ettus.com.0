Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 477D447A7C5
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 11:32:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7FC53384663
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 05:32:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="MsSLhV5Z";
	dkim-atps=neutral
Received: from sonic308-1.consmr.mail.bf2.yahoo.com (sonic308-1.consmr.mail.bf2.yahoo.com [74.6.130.40])
	by mm2.emwd.com (Postfix) with ESMTPS id D7039384663
	for <usrp-users@lists.ettus.com>; Mon, 20 Dec 2021 05:31:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1639996296; bh=4o0GoCfLuwzhgdGgB6BrWTFlZaAeTCs/XGhaoHAlv+A=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=MsSLhV5Z/D7w//A/DAgKCa4izPFsV0EmT10YGPKQWTGdyLQaAsAsBD3xDXhxtVvsWJxN1w4Z/9wyLXhm87BYkpvgmbRXll6xxnPfG6V9nh4WfcvmFluVgPE/uTDjXu9WahvMoU5R8R/sc9Kg3OGZBY3AToiFUdKTQkD8fNHJKc9p4u9TB+TOubahpNnJZxhPo7ik1RFrXTayjsJ2bKLRGXLBbKwMOT75ZSoRGxesy91l98U+Xg4j41tixiV2igRaSHC3okBI150Bur0+TUBUj620NyY1IR8XUVbm5UcKaTsAmggfpRIfCCAmOPF7+VAqLLd9wCGqv8qL92c6lF8LxA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1639996296; bh=HmCudBQrVscui+j1T2mH1Jb+XsMndFNSQ4WqjHFb9aa=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=bImroHnShNHYvPIwGeYOiuhnFH3AQjiiTbPYL6q8j8B/2h24vQF9pxRVS9zTP85TlTFra2S2zfc0dwl3JBU2N5nStOdvL4TDd0cNeXSB+v8LhdnRFdRO6bwruIW38a6MlXajCv1nf+AoolRDQqeUROIobJPkpDdKzFP75oExJMQYYq+7iELB2rEnqdFEh5LhEH8tk2il8BYjm0Eh5HqyADD+z+0ypMlkxQH+gIL9R2A3/6Dq9/758CEF4FUd6rXwQCZyV1WZ/Et3WLyw+yYmrr9AFhxdJmkA0o/xZFEqQrfk3uCYOWwz3nggYxuqFmKryYvrzqWCC5vtDVKXXVbXuQ==
X-YMail-OSG: okkOuLYVM1nLNOD.aj4ZxtFc2gKy9Pjd398Oej..r9qdCkCd0xpz5I_bQRzW8lN
 TME0dOCavSa4W2eduYRV_4cBJwmBAAANF.2J8uWWBHbm67GFcExOfASrxQJf7aDlv6qD8sj5coYy
 cnqdaNNVAA81Q0lGbvQl0Rjypu0LhQQPuVsYnXYwXz1a0GsSH.dfBk.moZ9JYMf_cPdqdqs86s.e
 YXamHCVALjDLUhdKNS2gfAvEl_5CfAc3c6IaQLkP3.wcLV9I1uzjZ2frrEHsp5jxBJirf_dPYg0j
 3_XkCDEeggwUXgbclh21PTAIeusDn3oLs.jDCcHmep0bzbNXpm7y3yBBCb2_3UYLCAXrAKmEj7D2
 M3lcP1rHJAvi0cnrLjJB4wgGaGVILp7C5FqjM3SBRNc20lvaxfx22liu1.nZ7N9JsGDODlvtJryp
 Xs1ecPVchOSh4kbdkLGREXxifxgFqs8U3CxJzg74DI0lhcliUBVAkhk8xGemHoTul3YqDuEDKUtS
 reeME0RAV7SoAl7DkGYZGyxIHAqHHINlUe3nS7XXPSfIBZJk6epVSRmpwWnD5a7Qsnk7ltfczZgf
 fmkQRhQaFb9nARPVYr.dwW7v89IY9MgglyozoqPvT3f005tygs6MpZAxaxSIgnL30YadDgsUlrkS
 SbX.XUc1dihVdAFAEEcT_V43i.LRCsU.q2dwJxe20WbFkDz4ckZC_2s01f8yNvPy2fp8Ra_a1L5i
 vpLAO88w1itu26bkNsqR5bD7dHn2u7pdcxSZKv3dl0dIKGZxmzDxzsAzKnCqAZnWVqXDUhGwm2BG
 blqyrDb74xR8IhbnbxYgbfZx6atwrIaleKpHD_gYAIhV1KZwoLCPCVClgoHhnlJyaafdMB1K1gd3
 ZnyiQtLwzxa6tBsqbjLlls5m0V5AveUx5M.xcFkXHfBj3MyT6KzYJwRcyfTWgShif2vGEGlwIs5K
 AdXu0z83foFEU9nxZ7E41.vJKXRiQh9wGueq5jQygl6w3tdCt_FkZW6C9oxjj8ydmoTivrA_qG1h
 VfcSXMwsNIkd6.ElZAETc6PmwauoLE3BBJ2eXwyRpDgYIdAr7k35CMdnMQSUNcxiD8ZC6MLGif_y
 6Hk9v96SjoYnW0ZDw61ttb3n0BQtYSTSWIGLHyY6TOi2UPGZ0MxEMfkj0xLWgAhPEtoyFFPSxIgj
 HhiMfh1XIS1lgzaJNl09kdyN5gH5mUlTIWAlKoxvflxM3nWQKHoEDJvLUQEksKCTKlXmWEWqJ1mJ
 G44CLqOX5wsQTVUF4c9x.9U5NarRjiHwVknZ6w6APqY02unGxJSv_Txf9rpWD4Gj6crh8d_ls3z5
 HiO.kwSXYkJ3cFUI8eKNCo41jrEv0AeIWRFIJjkNmKaVX5Tug5PAYdu_d2vEn6vDh7lZYU4.G42R
 McZM7XeAIMAnP3Rb99a5RU.0qLD8iYUJoo7N3m37GdigS27FgltteX4H5TlGuyFxvvZj4TYN0tsd
 coPZGGdS4n7L6PlKRpiXBDtf6lZxVTByY2yAGTJ6lB34q.wqSHT_Fhx.fXCiwWNeR2_hpPlsKw1m
 PI9rJocp8dwVnIViGsGMDKPHby.hNhdd4SjpxhTv0SUTleYTXNSh8zrkd4ZQp9NupytMY8zZr1uv
 CLlzp5GMImDgkvUhMJ4uGMuHE3kdeKruAMnTcPhe6a6Byk8CSMi9zBlj2qL5AIJ4E8CCx1CAifTo
 bnRmO.cc0yJ..zd9y6u0.ilJ_2BPI2SIvRuf7eS6DkRIog03kJUHBBr.dgoiPwRzyL_2Mpk4MOoi
 araIE5_oB2cQWN3kI.4PSdMx0lmfYXi4GJESDdt3nJwhB2iXlRjm41nM0hjRxRMHnQH5oS0V3TWQ
 IXcJPgfTWIb_pv0gcQgK1BIuU.guIDWpSnU.2.KUcopjsDxTEfh9WxCMMexTO1YpAVWLNDXifnrM
 9htFJziN6kYJKrTjpde9rssJlPew1AB8TdJ4JQBxQg6wT1tmIKz16hc.TYp09dTKCb5xyHqVRCZu
 UrO5qhQCF4LR0af8GbIBG8.zODmmG1BpFaPB09a.jEJaOvLWE.xGACdEhNRFHaamszP0_h5w5uuN
 p_dm5VRJlMwALn9CyWYovIl920Ywzt3ftOybSDNPb42aZvKgRTy8Ys11A0XY9CXHS53vmxxzXrLP
 qpU9sJPjGq.sTx_ax1ar6_zyugy6H2Alti5Z3UkqofVam7iMpox5tqu7jnNQTHxPAjD_h3zcF1Lw
 KJ_TuCXz6iAuWzahXH0dMwwY-
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.bf2.yahoo.com with HTTP; Mon, 20 Dec 2021 10:31:36 +0000
Date: Mon, 20 Dec 2021 10:31:34 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	=?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Message-ID: <39042870.1585115.1639996294719@mail.yahoo.com>
In-Reply-To: <692f8895-bd3a-5b14-df32-122893d504f3@ettus.com>
References: <CAA=S3PvatKct3yuqkE+=j7n2YXmGJhb2nVzVvWTPyfMMay5BuQ@mail.gmail.com> <692f8895-bd3a-5b14-df32-122893d504f3@ettus.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.19415 YMailNorrin
Message-ID-Hash: WUMB3URRLFHGDVTW3BGJZGFLSDRVOHOV
X-Message-ID-Hash: WUMB3URRLFHGDVTW3BGJZGFLSDRVOHOV
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Time different between X310 and N310 USRPs using UHD4.1.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WUMB3URRLFHGDVTW3BGJZGFLSDRVOHOV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============1531997510847308772=="

--===============1531997510847308772==
Content-Type: multipart/alternative;
	boundary="----=_Part_1585114_2028942358.1639996294718"

------=_Part_1585114_2028942358.1639996294718
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

 Hi,
I am using mixed types of USRPs in my applications, namely, X310 and N310. The signals are timed. I find 0.2-second time difference between these two USRPs.Details:Each USRP is controlled by a Linux server;
The same Linux version in all PCs;All USRPs are connected to the same Octoclock;
UHD version is 4.1.0 in Linux servers;All Linux servers are connected to a control PC which is the client;The sampling rates are different: 184.32MHz in X310 USRP and 245.76MHz in N310 USRP
Control PC sends command to set time 0 after PPS in all USRPs, then query the time in each of them.The time difference between USRPs of the same type is small, ~2ms, but the time difference between different types of USRP is much bigger, ~0.2s.Times should be impacted by sampling rate; when setting timers, no signal is transmitted.
2ms time difference between USRPs could be due to network delay; 200ms can't be because of network. It seems to be due to HW in USRPs. Does this mean that X310 and N310 are not synchronized?
Thanks for any comment,
Hongwei



------=_Part_1585114_2028942358.1639996294718
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpf2317585yahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi,</div><div dir=3D"ltr" da=
ta-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">I am u=
sing mixed types of USRPs in my applications, namely, X310 and N310. The si=
gnals are timed. I find 0.2-second time difference between these two USRPs.=
</div><div dir=3D"ltr" data-setdir=3D"false">Details:</div><div dir=3D"ltr"=
 data-setdir=3D"false">Each USRP is controlled by a Linux server;<br></div>=
<div dir=3D"ltr" data-setdir=3D"false"><div><div dir=3D"ltr" data-setdir=3D=
"false" style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetic=
a, Arial, sans-serif;">The same Linux version in all PCs;</div><div dir=3D"=
ltr" data-setdir=3D"false">All USRPs are connected to the same Octoclock;<b=
r></div></div></div><div dir=3D"ltr" data-setdir=3D"false">UHD version is 4=
.1.0 in Linux servers;</div><div dir=3D"ltr" data-setdir=3D"false">All Linu=
x servers are connected to a control PC which is the client;</div><div dir=
=3D"ltr" data-setdir=3D"false">The sampling rates are different: 184.32MHz =
in X310 USRP and 245.76MHz in N310 USRP</div><div dir=3D"ltr" data-setdir=
=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Control PC send=
s command to set time 0 after PPS in all USRPs, then query the time in each=
 of them.</div><div dir=3D"ltr" data-setdir=3D"false">The time difference b=
etween USRPs of the same type is small, ~2ms, but the time difference betwe=
en different types of USRP is much bigger, ~0.2s.</div><div dir=3D"ltr" dat=
a-setdir=3D"false">Times should be impacted by sampling rate; when setting =
timers, no signal is transmitted.</div><div dir=3D"ltr" data-setdir=3D"fals=
e"><br></div><div dir=3D"ltr" data-setdir=3D"false">2ms time difference bet=
ween USRPs could be due to network delay; 200ms can't be because of network=
. It seems to be due to HW in USRPs. Does this mean that X310 and N310 are =
not synchronized?</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><di=
v dir=3D"ltr" data-setdir=3D"false">Thanks for any comment,</div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"fa=
lse">Hongwei</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"fa=
lse"><br></div></div></body></html>
------=_Part_1585114_2028942358.1639996294718--

--===============1531997510847308772==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1531997510847308772==--
