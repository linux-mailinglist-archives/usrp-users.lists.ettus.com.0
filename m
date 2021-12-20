Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B07447A9EC
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 13:51:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2E64E384706
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 07:51:36 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="piEXdBMu";
	dkim-atps=neutral
Received: from sonic314-13.consmr.mail.bf2.yahoo.com (sonic314-13.consmr.mail.bf2.yahoo.com [74.6.132.123])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C41C384706
	for <usrp-users@lists.ettus.com>; Mon, 20 Dec 2021 07:50:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1640004632; bh=N3loJRPA1Ph8G7ep/orEcHLkGbC4w/rC/yPs8YMq4YQ=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=piEXdBMuQLvem7PO33XjgOuCJkT+JnikbVdNl8MVf9KOHkCrjF7CwVotf3sG7VaRipBpJpEkEqTKcuhdqwz/kHRhW4yyJeGd0LFiUDlkZNImdLsrC+o9/JC9ID5sYcEh0Twfcy9/8Ta4R9480IdPZf8XDMC0s9K6fYPBSByM5qxaN2G8nzJHyLcpXAlbzBVsa8Yc4T8yR97CfOGXUJRGpv2M2kFb0+esmbeG5gFVeOjzhyKnrDuzq1Sx9V1cfA0EzTunIJq9C87RcOjXy4ANYavIxG9ZC93lE4JUAcHGJTSd/TQ0G6JGbPf04eYd9AO+cfk/UmeKEhNl1GCM/2fL9g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1640004632; bh=zQIP7kaqKNgxP7jIro2r9ido6W0LjbdxkcuiEZbw1jN=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=AkY9FQrOz1fJ5aYKdxDa+D/Hjl6bYuSZmcVoxqCHb3mPb06nlXa+hsHCC9Xm6WyeQzIvOqpu4Zh1XnIdbBwLoa9tOBJ/qZR3wlRuNTerF+bwVzyxN+38xqWALPFGVV03KstK/AU6PhklN6w4/6+CdSbB40XF+jAoPYB4GPK5vtT4Tle1bsT9sW4lY8sPm7/e92/d1jBJDrW4VRNRA5dTi2NDgvFtzlR+dSk7P2EjZ+cupClBva5ZU7mt6T/0fPV5eWwuwdgUK9UnVJz+eLym+nxA9G28G9UrIGKK1/kmqz/6yKuahB1Hm6YluCCFzcIGEbwdv/QKVkEDO0otnw4roA==
X-YMail-OSG: v7d9PsMVM1np0_Bp2M2CfwdJ3D_vGMvBGVFuBweqZMRoSJrGrCxD_dH0Oc2T.B2
 lqId26bKVMwCvsgMJH9D3f7uNUTfcHSF0UNTWW1uLYP4RXGPBd3yds5ULtWcGdF7yEYfKTs5BfYp
 jLzSWtox_KIgB6QqX_UDKQyXW5U0c9bcf2kaYNdkHh0o8.GbrWx2TYaKR8c1M0poQY0.r9JMkeYg
 58J1_Nb4isUGPT5656mbKF49ol501rHzBoTQ.scXeUDHOTLbTGD70sHok18uA75ktNb6BkmVLRSu
 i0eaW8b7hH_jtm_0MaxQ3ktndgTFKIFS1mdKET23HGulEobxnTtYxEDt.61ti7l0ImvZLwenEAEP
 lLlCU17uf00i5qiLFnf9YdxPJ.DhUqBNREBMYHUiTbOQ.qbprjsMgZ.UMuoRUQf50YUhQc8LBoYx
 fHnEA24C4NpiEUTBEpYTYmQqtCtrYjiL6818TrN3feDHbcduYxqa161cOL4DwX62FJePOU2VQ.mo
 LQMAViDDURhuDxlP7t7YRycdQqZHtPreS_UMcm7kzUYLid5mygIv848wdG5fuxN2U0zk3h9TQ0Hx
 uN1s.FoECQJtzXP7GqdDcKmL9lNh6y.Lag3sf5lKh12v9iRaTWU1FQpx4yRfsNYiDj3b5KEEe5mz
 OKVhzErA7uBZVbd1d915bN9ZOL5q2Sj6.tQogysPaWM9Uen7dbKqWynj_6LNUKzqXFBry.Hfmtru
 ylAK6NeDOzRwPOlk7t8Ocs0qcdSxlmGHO_63Jh0iB_PwwmGr4esoZZVX25pxv_hWETwcxkL2Hgnt
 pG_boCq43db4yWQ7MDlbwM.91mjJZvPPnOv9dwZqWLUbwJkjCBfLY3zNbXlZBCG_RK_Nmpkn.wlC
 7H4kiFYUO3Q9ONQ9fvCb3uOjUdo_7q40WQEQVINmLBfsucMuEj_z6Hfuxrg_CZY6h42f6PMof6Zy
 .k8F.4S73ybednGRzVudxBlWl9a8qx6KcIQs7Sca23A._.fJQrrw10iPOM7pwkR1D2uyQAt5SmKN
 3PhraTThuNveEJW._QPfAJtMJ7B5UggkTpvO.sTZZcS6T0mOsRExYqeNlYBIXRXOw5hWzJEaEZYg
 y4VJXNdkJ0WVJZPawTjbE4_PRE.r3w5686lo82LsflSNDYwoj_knMdvYHOitx.VORDkhDFmqsq_j
 7bBfPtXyfo82Y.dPaxiKWuOga5NqEcdOeL9Ro.aYpJ3QAySvByS.twxxWQpv5Yd5tyCuCvQGakRv
 jA.ptpHZ782W.iQMvTR87plvRMP.lgF78wMaao2Kvpo0kFWdhZzm7nj04lriiP6GkJWxNAnQtrMw
 sYEYjYTZklIlIRhbJG9r5x.BrRDeKUeIw3Dn.yuYMtqfjiM4lmwQHquil9jR4wlTBK39.2asrA1C
 w1J52tWQ5N7C1leTZ4NMZSr4foS1UvYHmkrgy1OxJt9O1_AI41Yjgp8WgPftqBzaBCL996_eV0G2
 OAsUTNxDf8z4AAbt4h0Y4ObcYXAiZD2TPzKY.7T4Pzdfnk61sD526GBuda_KGhtsM9x7EnBobhZ_
 rC3AwuKX6B1frK5XgJ9lYPP8lklir2igNwdIiZDBtArl5w81UGYqBRBScR57QwMavIkznU8lMMYN
 Qgtr4Vhv0r83Tc2KlVzdr3S_XATe_Gj2XsLb4ObJ_GtwAQwISwX2dstWlyNlHsYCA3AtjH.5Gk9T
 EGo8jW6Ljh4BY0q37NLzlOygCKP89ciQWStAVtJZsmN7W_A53zUlC.gEFV7yt95aTMer0mUuKi.4
 9gUJDVRYUOtqTyUu_XwJNF0fBcaZTQns1mnoU8hgrBt8qlrFKYlrr51tztm_EUmewM26B1jcZG9z
 QGGvwSMPtw67FrOOK8bcLRgEjX9HvJ6Qo7fHyZR5IqI1fXYZAiHS_hB.ShSTRlPI_Jd05hz4dyXo
 _F2CSHiHKHMwEKyW_Ma6ETkzRJlVQ5_a_b2Nchno4nKV9sYO4myYrMhvkmV9LDRWSAdJbpgF5a92
 .wJ6DsMguQf7Awy7JOhuAbgGSwjdHdPbPth_ZgOrKsFgOiVok9bipuuxYq4pZMYgAzMBssgdbtkm
 V.NvhVAtKAayEOmB3qzFLbDIRtIOF4y2I1so9za6B.3W8Us1SANH5Qw6ccxIZ_KxSGKqgb2Whhb9
 f3v_zJNEijBBg34x4cQ0IQ8OWLpywsaDccDtwnURPOVBSKFRVVuN_GPWs3O9CugOlFzuun5Uc2kG
 Nl__2WG3T2PMCPWI6BBESCho-
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.bf2.yahoo.com with HTTP; Mon, 20 Dec 2021 12:50:32 +0000
Date: Mon, 20 Dec 2021 12:50:36 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	=?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>,
	Jim Palladino <jim@gardettoengineering.com>
Message-ID: <24577536.1842643.1640004636102@mail.yahoo.com>
In-Reply-To: <MN2PR12MB3312D4F731AD1C17F70ACA0EB87B9@MN2PR12MB3312.namprd12.prod.outlook.com>
References: <CAA=S3PvatKct3yuqkE+=j7n2YXmGJhb2nVzVvWTPyfMMay5BuQ@mail.gmail.com> <692f8895-bd3a-5b14-df32-122893d504f3@ettus.com> <39042870.1585115.1639996294719@mail.yahoo.com> <MN2PR12MB3312D4F731AD1C17F70ACA0EB87B9@MN2PR12MB3312.namprd12.prod.outlook.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.19415 YMailNorrin
Message-ID-Hash: IESQN35L5VL5V5V6N7TXBG3GAP2HCNSY
X-Message-ID-Hash: IESQN35L5VL5V5V6N7TXBG3GAP2HCNSY
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Time different between X310 and N310 USRPs using UHD4.1.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IESQN35L5VL5V5V6N7TXBG3GAP2HCNSY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4353368773619508393=="

--===============4353368773619508393==
Content-Type: multipart/alternative;
	boundary="----=_Part_1842642_719892463.1640004636099"

------=_Part_1842642_719892463.1640004636099
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Jim,
Thank you so much for your quick reply. Your finding is very interesting an=
d I believe it is very related to my problem.After some thinking, I am stil=
l having some confusion:Because N320 and X310 USRPs are using different pul=
se edges, their time 0s are actually different by 200ms in universal time, =
but their internal timers should be similar. When querying their time respe=
ctively, we should get similar time - the responses are their internal time=
s. But I am seeing 200ms difference.
Could you please give some comments on this?
Thanks a lot,
Hongwei


    On Monday, 20 December 2021, 11:04:09 GMT, Jim Palladino <jim@gardettoe=
ngineering.com> wrote: =20
=20
 Hi,
We had the exact same issue a couple months ago between an N320 and an X310=
. The issue is that the N320 (and I'm guessing the N310) detects the 1PPS p=
ulse on the rising edge, as expected. The X310 detects the 1PPS edge on the=
 falling edge. Note that the 1PPS pulse from the Octoclock stays high for a=
bout 200ms, so I'm guessing this is the issue you are seeing.=C2=A0
We ended up making our own custom FPGA build for the X310. We modified the =
file:
"uhd/fpga/usrp3/lib/rfnoc/utils/timekeeper.v".

Originally, the PPS edge detection looked like:
pps_edge<=3D pps_del & ~pps;

We changed it to:pps_edge<=3D ~pps_del & pps;

It would be good if this could get "fixed" in UHD, as it would be nice to n=
ot have to maintain a custom FPGA build. I'm not sure what effect this chan=
ge will have on other USRP FPGA builds that use the same timekeeper.v file.
In any case, I'm guessing this is your problem.
Jim




From: zhou via USRP-users <usrp-users@lists.ettus.com>
Sent: Monday, December 20, 2021 5:31 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Marcus M=C3=BC=
ller <marcus.mueller@ettus.com>
Subject: [USRP-users] Time different between X310 and N310 USRPs using UHD4=
.1.0=C2=A0Hi,
I am using mixed types of USRPs in my applications, namely, X310 and N310. =
The signals are timed. I find 0.2-second time difference between these two =
USRPs.Details:Each USRP is controlled by a Linux server;
The same Linux version in all PCs;All USRPs are connected to the same Octoc=
lock;
UHD version is 4.1.0 in Linux servers;All Linux servers are connected to a =
control PC which is the client;The sampling rates are different: 184.32MHz =
in X310 USRP and 245.76MHz in N310 USRP
Control PC sends command to set time 0 after PPS in all USRPs, then query t=
he time in each of them.The time difference between USRPs of the same type =
is small, ~2ms, but the time difference between different types of USRP is =
much bigger, ~0.2s.Times should be impacted by sampling rate; when setting =
timers, no signal is transmitted.
2ms time difference between USRPs could be due to network delay; 200ms can'=
t be because of network. It seems to be due to HW in USRPs. Does this mean =
that X310 and N310 are not synchronized?
Thanks for any comment,
Hongwei


 =20
------=_Part_1842642_719892463.1640004636099
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpbf121617yahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Jim,</div><div dir=3D"ltr=
" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Th=
ank you so much for your quick reply. Your finding is very interesting and =
I believe it is very related to my problem.</div><div dir=3D"ltr" data-setd=
ir=3D"false">After some thinking, I am still having some confusion:</div><d=
iv dir=3D"ltr" data-setdir=3D"false">Because N320 and X310 USRPs are using =
different pulse edges, their time 0s are actually different by 200ms in uni=
versal time, but their internal timers should be similar. When querying the=
ir time respectively, we should get similar time - the responses are their =
internal times. But I am seeing 200ms difference.</div><div dir=3D"ltr" dat=
a-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Could y=
ou please give some comments on this?</div><div dir=3D"ltr" data-setdir=3D"=
false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Thanks a lot,<br></=
div><div dir=3D"ltr" data-setdir=3D"false">Hongwei<br></div><div dir=3D"ltr=
" data-setdir=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydp2f3ddc08yahoo_quoted_0577239239" class=3D"ydp2f=
3ddc08yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Monday, 20 December 2021, 11:04:09 GMT, Jim Palladin=
o &lt;jim@gardettoengineering.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydp2f3ddc08yiv3164486821"><div dir=3D"ltr">
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
Hi,</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
We had the exact same issue a couple months ago between an N320 and an X310=
. The issue is that the N320 (and I'm guessing the N310) detects the 1PPS p=
ulse on the rising edge, as expected. The X310 detects the 1PPS edge on the=
 falling edge. Note that the 1PPS
 pulse from the Octoclock stays high for about 200ms, so I'm guessing this =
is the issue you are seeing.&nbsp;</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<span style=3D"font-size:12pt;font-family:Calibri, Helvetica, sans-serif;">=
We ended up making our own custom FPGA build for the X310. We modified the =
file:</span><br clear=3D"none">
<span style=3D"color:rgb(61, 60, 64);font-family:Calibri, Helvetica, sans-s=
erif;font-size:12pt;text-align:left;background-color:rgb(255, 255, 255);dis=
play:inline !important;">"uhd/fpga/usrp3/lib/rfnoc/utils/timekeeper.v".</sp=
an><br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<span style=3D"font-size:12pt;font-family:Calibri, Helvetica, sans-serif;">=
Originally, the PPS edge detection looked like:</span><br clear=3D"none">
<span style=3D"color:rgb(36, 41, 46);font-family:Calibri, Helvetica, sans-s=
erif;font-size:12pt;">pps_edge&lt;=3D pps_del &amp; ~pps;</span><br clear=
=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<span style=3D"color:rgb(36, 41, 46);font-family:Menlo, Monaco, Consolas, m=
onospace;font-size:13px;"><br clear=3D"none">
</span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<span style=3D"color:rgb(36, 41, 46);font-family:Calibri, Helvetica, sans-s=
erif;font-size:12pt;">We changed it to:</span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<span style=3D"color:rgb(36, 41, 46);font-family:Menlo, Monaco, Consolas, m=
onospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-fam=
ily:Calibri, Arial, Helvetica, sans-serif;color:rgb(0, 0, 0);"><span style=
=3D"margin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;co=
lor:rgb(36, 41, 46);">pps_edge&lt;=3D
 ~pps_del &amp; pps;</span></span><br clear=3D"none">
</span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<span style=3D"color:rgb(36, 41, 46);font-family:Menlo, Monaco, Consolas, m=
onospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-fam=
ily:Calibri, Arial, Helvetica, sans-serif;color:rgb(0, 0, 0);"><span style=
=3D"margin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;co=
lor:rgb(36, 41, 46);"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<span style=3D"color:rgb(36, 41, 46);font-family:Menlo, Monaco, Consolas, m=
onospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-fam=
ily:Calibri, Arial, Helvetica, sans-serif;color:rgb(0, 0, 0);"><span style=
=3D"margin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;co=
lor:rgb(36, 41, 46);">It
 would be good if this could get "fixed" in UHD, as it would be nice to not=
 have to maintain a custom FPGA build. I'm not sure what effect this change=
 will have on other USRP FPGA builds that use the same timekeeper.v file.</=
span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<span style=3D"color:rgb(36, 41, 46);font-family:Menlo, Monaco, Consolas, m=
onospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-fam=
ily:Calibri, Arial, Helvetica, sans-serif;color:rgb(0, 0, 0);"><span style=
=3D"margin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;co=
lor:rgb(36, 41, 46);"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<span style=3D"color:rgb(36, 41, 46);font-family:Menlo, Monaco, Consolas, m=
onospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-fam=
ily:Calibri, Arial, Helvetica, sans-serif;color:rgb(0, 0, 0);"><span style=
=3D"margin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;co=
lor:rgb(36, 41, 46);">In
 any case, I'm guessing this is your problem.</span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<span style=3D"color:rgb(36, 41, 46);font-family:Menlo, Monaco, Consolas, m=
onospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-fam=
ily:Calibri, Arial, Helvetica, sans-serif;color:rgb(0, 0, 0);"><span style=
=3D"margin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;co=
lor:rgb(36, 41, 46);"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<span style=3D"color:rgb(36, 41, 46);font-family:Menlo, Monaco, Consolas, m=
onospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-fam=
ily:Calibri, Arial, Helvetica, sans-serif;color:rgb(0, 0, 0);"><span style=
=3D"margin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;co=
lor:rgb(36, 41, 46);">Jim</span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<span style=3D"color:rgb(36, 41, 46);font-family:Menlo, Monaco, Consolas, m=
onospace;font-size:13px;"><span style=3D"margin:0px;font-size:12pt;font-fam=
ily:Calibri, Arial, Helvetica, sans-serif;color:rgb(0, 0, 0);"><span style=
=3D"margin:0px;font-size:12pt;font-family:Calibri, Helvetica, sans-serif;co=
lor:rgb(36, 41, 46);"><br clear=3D"none">
</span></span></span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<span style=3D"color:rgb(36, 41, 46);font-family:Menlo, Monaco, Consolas, m=
onospace;font-size:13px;">
</span><div style=3D"color:rgb(61, 60, 64);font-family:sans-serif;font-size=
:14px;background-color:rgb(255, 255, 255);">
<div>
<div style=3D"max-width:100%;padding:8px 0.5em 0px 1.5em;" class=3D"ydp2f3d=
dc08yiv3164486821a11y__section ydp2f3ddc08yiv3164486821post ydp2f3ddc08yiv3=
164486821other--root">
<br clear=3D"none">
</div>
</div>
<div style=3D"display: inline; min-height: 0px; z-index: -1; margin: 0px;">
<div dir=3D"ltr" style=3D"visibility: hidden; z-index: -1; min-height: 160.=
652px;">
<div style=3D"z-index: -1;">
<div style=3D"z-index: -1; min-height: 160.652px;">
<div style=3D"min-height:187px;"></div>
</div>
<div style=3D"z-index: -1; min-height: 160.652px;">
<div style=3D"min-height:306.133px;"></div>
</div>
</div>
</div>
</div>
</div>
<div style=3D"color:rgb(61, 60, 64);font-family:sans-serif;font-size:14px;b=
ackground-color:rgb(255, 255, 255);">
<div>
<div style=3D"max-width: 100%; padding: 0px 0.5em 0px 1.5em;" class=3D"ydp2=
f3ddc08yiv3164486821a11y__section ydp2f3ddc08yiv3164486821post ydp2f3ddc08y=
iv3164486821same--user ydp2f3ddc08yiv3164486821same--root">
<span style=3D"display:table;width:760.415px;padding:0px 8px 0px 5px;margin=
:0px auto;table-layout:fixed;" class=3D"ydp2f3ddc08yiv3164486821post__conte=
nt"></span></div>
</div>
</div>
<br clear=3D"none">
</div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<span style=3D"color: rgb(61, 60, 64); font-family: sans-serif; font-size: =
13.5px; text-align: left; display: inline !important;"><br clear=3D"none">
</span></div>
<div style=3D"font-family:Calibri, Arial, Helvetica, sans-serif;font-size:1=
2pt;color:rgb(0, 0, 0);">
<span style=3D"color: rgb(61, 60, 64); font-family: sans-serif; font-size: =
13.5px; text-align: left; display: inline !important;"><br clear=3D"none">
</span></div>
<div id=3D"ydp2f3ddc08yiv3164486821appendonsend"></div>
<hr style=3D"display:inline-block;width:98%;" tabindex=3D"-1">
<div id=3D"ydp2f3ddc08yiv3164486821yqt49578" class=3D"ydp2f3ddc08yiv3164486=
821yqt1332618028"><div dir=3D"ltr" id=3D"ydp2f3ddc08yiv3164486821divRplyFwd=
Msg"><font face=3D"Calibri, sans-serif" style=3D"font-size:11pt;" color=3D"=
#000000"><b>From:</b> zhou via USRP-users &lt;usrp-users@lists.ettus.com&gt=
;<br clear=3D"none">
<b>Sent:</b> Monday, December 20, 2021 5:31 AM<br clear=3D"none">
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;; M=
arcus M=C3=BCller &lt;marcus.mueller@ettus.com&gt;<br clear=3D"none">
<b>Subject:</b> [USRP-users] Time different between X310 and N310 USRPs usi=
ng UHD4.1.0</font>
<div>&nbsp;</div>
</div>
<div>
<div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font=
-size:13px;" class=3D"ydp2f3ddc08yiv3164486821x_ydpf2317585yahoo-style-wrap=
">
<div></div>
<div dir=3D"ltr">Hi,</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">I am using mixed types of USRPs in my applications, namely=
, X310 and N310. The signals are timed. I find 0.2-second time difference b=
etween these two USRPs.</div>
<div dir=3D"ltr">Details:</div>
<div dir=3D"ltr">Each USRP is controlled by a Linux server;<br clear=3D"non=
e">
</div>
<div dir=3D"ltr">
<div>
<div dir=3D"ltr" style=3D"color:rgb(0,0,0);font-family:Helvetica Neue, Helv=
etica, Arial, sans-serif;">
The same Linux version in all PCs;</div>
<div dir=3D"ltr">All USRPs are connected to the same Octoclock;<br clear=3D=
"none">
</div>
</div>
</div>
<div dir=3D"ltr">UHD version is 4.1.0 in Linux servers;</div>
<div dir=3D"ltr">All Linux servers are connected to a control PC which is t=
he client;</div>
<div dir=3D"ltr">The sampling rates are different: 184.32MHz in X310 USRP a=
nd 245.76MHz in N310 USRP</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Control PC sends command to set time 0 after PPS in all US=
RPs, then query the time in each of them.</div>
<div dir=3D"ltr">The time difference between USRPs of the same type is smal=
l, ~2ms, but the time difference between different types of USRP is much bi=
gger, ~0.2s.</div>
<div dir=3D"ltr">Times should be impacted by sampling rate; when setting ti=
mers, no signal is transmitted.</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">2ms time difference between USRPs could be due to network =
delay; 200ms can't be because of network. It seems to be due to HW in USRPs=
. Does this mean that X310 and N310 are not synchronized?</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Thanks for any comment,</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr">Hongwei</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
<div dir=3D"ltr"><br clear=3D"none">
</div>
</div>
</div></div>
</div></div></div>
            </div>
        </div></body></html>
------=_Part_1842642_719892463.1640004636099--

--===============4353368773619508393==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4353368773619508393==--
