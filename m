Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDF886CE8D
	for <lists+usrp-users@lfdr.de>; Thu, 29 Feb 2024 17:17:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4AB4838512D
	for <lists+usrp-users@lfdr.de>; Thu, 29 Feb 2024 11:17:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709223436; bh=DuVSzQIKz8UUwgyn3KKfKzaxIZFQKR2yfDMqo2nzrVc=;
	h=Date:To:In-Reply-To:References:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=mhZ9sE9TRz5JFH0SrgxTI5bwg7zu5Bj/zHaOMzt2rjCyoFiTESVDpA+8ZtZBeQOJA
	 yMvZi62HXfOpTxieCSPv2DT4THPF+4ZhsUIWZMVz3RkEPPiSpMJOwObrLyDIxcphJ1
	 f/YEMW72zHeVEZw5Ak2H6pK2x3eqJ0oICcb5qJmHdRwMmMBdld66HPz/IaCOCvfm1o
	 JZEBj0awNagAAqTNF4ol/RZ06/3b574tquG7aZkTI6dP0+CJvUpuSgpe0Y23X8A0Ke
	 RZJE4aqsds9osBtJbCplKaEy2f3A90/Dx+l4VLFU9/DPKoNsUTh7zoFggvgBMsx3U2
	 W/9+8MIgx8mbA==
Received: from sonic308-2.consmr.mail.bf2.yahoo.com (sonic308-2.consmr.mail.bf2.yahoo.com [74.6.130.41])
	by mm2.emwd.com (Postfix) with ESMTPS id E8A43384A48
	for <usrp-users@lists.ettus.com>; Thu, 29 Feb 2024 11:16:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="moEu8Q8z";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1709223384; bh=l0lZi2cYF1UdX/xNq5KgwonM2dwVMgzep+Wh4yxBEvI=; h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject:Reply-To; b=moEu8Q8zZNJCb7kr5ZtHSmF7ESJzMWFcqDZs52MpU2Wxg/IALNlY2ZiB/HeJnhhmb+i1VI8MIJf5+8NGfSYgq006+2txmyunigh6Cdpay0TyKnptXhZx4sWvR2OMkmWOaNQ1EAWZTJr7Gkz8zedrgbQatwUYukSV4D7n/JIRqog7q36Z/OYoNxnJXin6co5lpvwAKqOrPDT9RQZX5wTIan9Rkj3zZCecA5e0ADydPxk8gD63hf6hG6QxNg/ALZSQkK8bqQ+P9DcLhjOgZhpIhbGQZz3ckB0Q7jeTG94XwNCSYbnVYd9m5oSB6NlGVGboDXTImDgkQSMZdApf6wsNGA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1709223384; bh=t5KiR71IzZQj90OztFWE2oRbjssL0MwMA2Xez716rgF=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=NJDwrKzmpVDuLVTP/fp+uTghz0BFUBhrtfcm6yaXvZRgkCUXGBLyGZS7ZlaMEQPUSCRBhui1TgeRxmbKp0P17BpTN7Fn+yGWy3shqSuIyB/erZ/RpHT0DfueKxQjrt9dVZePyUO++lfbS3UpGa1Epfwdbmt8QzCN+RVsTvRKxTFHXDJoBRU0fCMk4DwknV+p5qs+ZmGk4mi6j19ClHM4/vjQRhphrsLgRKg1QXMef9iikkk0Cch61srhM2xUqwizAn9dND6IhyEtRGjoJJgjo+KkFWW0JrF7NEbADzD1+kvi8Lkh+h+TmIzpLsu8D2iNhZCXKbJdcSdiGWXYdoKrrQ==
X-YMail-OSG: z9lfABEVM1nVqirGDBazQ6rO3KKqn3EeF6gm41J5Z8BfVDDHuFJPlHqsbre4HDB
 6kTbo1g4plU0Z..pYIgV1W6lfgAQKoIoTpTiX4GKdHyT2nsEwn5kRPTUizrqpvP3FCKB4sLfo5CL
 ZHi85EX_sFXBpR87pe1_wfttGatlMe3BCZ9mYW7hbnv0r46pYJ6KMFL_mTnhT7fn_wqOdZESXoP3
 dI3oE7Ex8isgI0srRZsmGuGb36bv3t8HcAyFNbb9hUV.Zspv7w46EjUQvV7X56gT7rPyTQhQ2NMt
 3Vo73AOLsgq9OeDfZu3DjwyErsZ31ZTuh9e8GtxVbLwaCOSEk8koeQ3P0h7XU3TFTGGEGrC.TZzo
 eFcm9QieJy.p.7Lz_4S4xuftdu2n1LSc0..lI71DSvlh2EksxMjHv8vrVTLBVNcf0vrG4NjLkGHN
 GSeA3Ie3z9Vi9Gu8l40ckznjV_jYDvTPuwBn2Q2vxD.Nr1vRQsxDpTokkwXgBuxY4WSiebNh4y3O
 zxpHX0EbPl8uYnv72oBfKxrszj44ZmMdRDTzPhitfWIAlQXLz3hbK2ShcY6eRUY8qR8hC7uevY5K
 8Vpf6c8zTkd3glmWjy4Z9_KTBeeGAzJ5PWWtSfa44OYlCLETXxMUNrEUNDWD4Wp6dIg2laFWcTag
 GAA7tpY8hSJtckrd9YQtvKBjIgNWgOaXKQEL6eOfRRD7Q7BiF18eIBg7PKiATxE1KuYVyTxENTpe
 6epsDWpZu9jSlEhQYBYfqT6rrv33nyDzHZ6zKehw2CTzmprRzAg_03_cv4yylRZwpmhlD0K3Y2y2
 hpidVTEt12RCTh.4ISlGqIskf2lNimGNSqsf6s0x9rEB4iWv2XhrikSDZlT6Cnti4r2wqfuA5QNl
 _aqOGbkk5yxUuPSQU6GClRy4FWzAtCjzP.t2KCHO8hkmHGYPVCZL0Vw6wHvBnzMU3Q3bUiGEaenP
 Gjw0Z7dnvSDf8fLORffv2kcqOmrFnu3WyCyixGtdpN3f_7znz49B.IPqxV1CCKzGvaWoZBraIU3V
 E_LraMsHiSlv3r7TosntxRKoons4v6BscxjsA3ousxDy9qjJrdCFs8UUF9SKIUHi.iK3CyOUQ32R
 BUwNZG.Di6miT5.Gb3Ubeu2Sf0sgWAWbVqWs8hrO.5CJnd4CNbrrbmZsPcP_c_Z.s_yGIzTbyr5z
 lCOopoOEd3zcvMWI3.hqRG_e2tI7_xIZx79kmbjTEsktAd08n_XLur5icpzmddtb78e3xBz9qEtx
 DGu0OYCXlp11UwpzPmQjZr2ZxXPhw8QiynFoCsMyIJFiXbZn8Pf6vjfnFQiugGLHGkTdTEM8uk5i
 cA69kGGoBY8kgVTXBVJDHQ84G1.mYcFpISMF3spl23Jg7biqsyWO0dfXq0V7MpuGEy_IGJnBIDVq
 F5GauoaWCkAJXgxMsDjy2N9wkjPx_8iIcfScZW8LBWGY0_34TWcQs7WmwNYLauWwQgvS2eU1KBqZ
 h4CUNiJuU6AxPMLG8fVzDeQc3g1XcJIZ8yW9Yig.DOaRBfM5_Rl688SEvxXgCSBwjROgfnO0EQgg
 fYsO.VXUBtfwWnSHoUssdXs2sEX9.YD_8Ni8QvGrloazOsJEIMsXAJm8rDuTr8dU7HLmLR5Bz0w.
 7yRTmJlrF14TWcqPWdpBJx8F0XKOu8cOZMZJnXSCn3VBfvHRCnFuT_x9AOiQHpbeoxcqKb2wLoWX
 iKdwYHSvjLMKry_DAwzJ1h8.q8LkpKwjE6DIvg2QRRQL_xiiYnEvnaJoq0NKLgy8J_r_d6Bq2DUh
 f8Cwp90wneApd94BbTwotbvrBhhnPuWp43gEBbGgVaMR39QrdpfyZLLc4Qc7ANFIUXQqbQWDI5nU
 aOupXSGPm9jULosWYlF3975F2lsuf8n3ASALbHZnMmd.wrXGQkUVrwrMAwzCY6A4I8.47oEGreOo
 DqmnqF5N9brPKIwChKvkjThNR1AifUjQ4PU8SXFzVWw0AU_v6LvhCl3C2navOSOJ0SseEFMASnfu
 mJwcOYQunYp4zjmx3C9ImWCNVkxY4EeVu7zzYiS2SkVzZiM_fJBUg1o0YudHUCEcboe.Pr7t4Ej3
 1lP0jxDETsEvkWMdzV6_x1nnhCSk.na7s.FS6Xn4jUVRh4mYYdRCq9YqOnawyOIPDm_36qvau28k
 05WUW3etHDmhlLRX72PKkmaZnNM05K09SYOoU8WgifIf8Iwl.r1A_nwdxxTogTgFAhjgHXsNP4re
 KF3WVPPa5UgUUiCU4Kg--
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 3c29b5e6-74ec-49d8-964d-37e2841edf04
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.bf2.yahoo.com with HTTP; Thu, 29 Feb 2024 16:16:24 +0000
Date: Thu, 29 Feb 2024 16:15:56 +0000 (UTC)
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>
Message-ID: <1183809641.1373133.1709223356748@mail.yahoo.com>
In-Reply-To: <aka6xamd3wy2ulbzyegu6hhdd6vbdrts3x44h7v5hnfdn7e4c5@jgm4phejyom7>
References: <CAO_U4K7iMNWLhLRdWozsXxNQHd0xvp611f7LXQQhSe=-hz+ong@mail.gmail.com> <1464756341.27900.1708721099612@mail.yahoo.com> <ffgkaaf3warhl3a55gke2cy56dxpflshudyse6fnofkroeu5sh@g23xn5nzi35x> <165749366.400969.1708941965618@mail.yahoo.com> <aka6xamd3wy2ulbzyegu6hhdd6vbdrts3x44h7v5hnfdn7e4c5@jgm4phejyom7>
MIME-Version: 1.0
X-Mailer: WebService/1.1.22103 YMailNorrin
Message-ID-Hash: V6UGCCK42VQUFW2ZTOW4KLJTU3XH7QZS
X-Message-ID-Hash: V6UGCCK42VQUFW2ZTOW4KLJTU3XH7QZS
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Pedro Vieira <pav.vieira@gmail.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OFDM signal transmission by x310 presents a peak
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V6UGCCK42VQUFW2ZTOW4KLJTU3XH7QZS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============2849895723810388553=="

--===============2849895723810388553==
Content-Type: multipart/alternative;
	boundary="----=_Part_1373132_18794401.1709223356747"

------=_Part_1373132_18794401.1709223356747
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi=C2=A0C=C3=A9dric,
It was instructed by Ettus engineer when we started to use USRPs a few year=
s ago. This is because there is no internal loopback path in circuit in X31=
0. By the way, we are using UBX daughterboard.=C2=A0Maybe this is not docum=
ented.=C2=A0
Regards,Hongwei


    On Thursday, 29 February 2024 at 15:05:37 GMT, C=C3=A9dric Hannotier vi=
a USRP-users <usrp-users@lists.ettus.com> wrote: =20
=20
 Hi Hongwei,

On 2024-02-26 10:06 +0000, zhou wrote:
> For X310 USRPs, you need to loopback connect the antenna ports.=20

Could you direct me to where you got that info?
I never encountered it, and I am not able to find it in the Ettus docs.
Doing proper calibration is important,
so we should ensure that the Ettus docs give the correct procedure...

Kind regards
--=20

C=C3=A9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_1373132_18794401.1709223356747
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpb73209b0yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi&nbsp;<span><span style=3D=
"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, san=
s-serif;">C=C3=A9dric,</span></span></div><div dir=3D"ltr" data-setdir=3D"f=
alse"><span><span style=3D"color: rgb(38, 40, 42); font-family: Helvetica N=
eue, Helvetica, Arial, sans-serif;"><br></span></span></div><div dir=3D"ltr=
" data-setdir=3D"false"><span><span style=3D"color: rgb(38, 40, 42); font-f=
amily: Helvetica Neue, Helvetica, Arial, sans-serif;">It was instructed by =
Ettus engineer when we started to use USRPs a few years ago. This is becaus=
e there is no internal loopback path in circuit in X310. By the way, <span>=
<span style=3D"color: rgb(38, 40, 42); font-family: Helvetica Neue, Helveti=
ca, Arial, sans-serif;">we are using UBX <span><span style=3D"color: rgb(38=
, 40, 42); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">daug=
hterboard</span></span>.&nbsp;<span><span style=3D"color: rgb(38, 40, 42); =
font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">Maybe this is n=
ot documented.&nbsp;</span></span></span></span></span></span></div><div di=
r=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"f=
alse"><font color=3D"#26282a">Regards,</font></div><div dir=3D"ltr" data-se=
tdir=3D"false"><font color=3D"#26282a">Hongwei</font></div><div dir=3D"ltr"=
 data-setdir=3D"false"><font color=3D"#26282a"><br></font></div><div><br></=
div><div><br></div>
       =20
        </div><div id=3D"ydp66e1514ayahoo_quoted_9724218575" class=3D"ydp66=
e1514ayahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Thursday, 29 February 2024 at 15:05:37 GMT, C=C3=A9d=
ric Hannotier via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div>Hi Hongwei,<br clear=3D"none"><br clear=3D"none">On 20=
24-02-26 10:06 +0000, zhou wrote:<br clear=3D"none">&gt; For X310 USRPs, yo=
u need to loopback connect the antenna ports. <br clear=3D"none"><br clear=
=3D"none">Could you direct me to where you got that info?<br clear=3D"none"=
>I never encountered it, and I am not able to find it in the Ettus docs.<br=
 clear=3D"none">Doing proper calibration is important,<br clear=3D"none">so=
 we should ensure that the Ettus docs give the correct procedure...<br clea=
r=3D"none"><br clear=3D"none">Kind regards<div class=3D"ydp66e1514ayqt29149=
18068" id=3D"ydp66e1514ayqtfd09939"><br clear=3D"none">-- <br clear=3D"none=
"><br clear=3D"none">C=C3=A9dric Hannotier<br clear=3D"none">______________=
_________________________________<br clear=3D"none">USRP-users mailing list=
 -- <a shape=3D"rect" href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nof=
ollow" target=3D"_blank">usrp-users@lists.ettus.com</a><br clear=3D"none">T=
o unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-users-=
leave@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@=
lists.ettus.com</a><br clear=3D"none"></div></div>
            </div>
        </div></body></html>
------=_Part_1373132_18794401.1709223356747--

--===============2849895723810388553==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2849895723810388553==--
