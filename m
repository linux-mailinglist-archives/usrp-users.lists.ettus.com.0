Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5E2862D38
	for <lists+usrp-users@lfdr.de>; Sun, 25 Feb 2024 22:36:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 72AE1384FAB
	for <lists+usrp-users@lfdr.de>; Sun, 25 Feb 2024 16:36:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708896974; bh=XnNCDRGhIzZfCdrqBvW0/cqPMqjcl7iallh1yxs5kFM=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=oUaOUoSYOlPzegMyLgZeOaSoPudAT/CyaW5h0kpOw97eXzjbS66nyx/qgWKCrwgU7
	 nQZm1xSh6kYe2IIfUZ8hZuGs/X6EkJqRXhZDP3UNTMZ9coTttYWYFP9+J+B1xHzwxE
	 gGMwUYnCRPY3v00+9aKlU6cq8c7t55qeT08aiUVqC9dpnMsZXR/iXVqwuO/M6vzqEM
	 M0B1sVxgy7bSAaMHYHc2/97Ov8V1JXvSdeqSG3aFIYI8WJJjrRMt6/b0l2DzAKZCap
	 nqXrm88L3NoINEwOtQ5EqN+DJuKP+4s7tOE0t1jJ635BON54cHA0JGmM0UPcfUZQe0
	 26XWchumsiP8Q==
Received: from sonic311-14.consmr.mail.bf2.yahoo.com (sonic311-14.consmr.mail.bf2.yahoo.com [74.6.131.124])
	by mm2.emwd.com (Postfix) with ESMTPS id 730EA384ED9
	for <usrp-users@lists.ettus.com>; Sun, 25 Feb 2024 16:35:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="jAwSoGZK";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1708896902; bh=JkgYFoz91p7e62T2EzxtdfsyTXwjZsVzkU9F7THCUVA=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=jAwSoGZKsDSqQRslf+h8F/u7DhpAkfIorK3Cj0CK1ND4ixs0q9Tt8nHQM4TIF6WV3Z/gW+dB8BcSBijx4qEdENiRr7f1sb4S6t7M6k0gFRo8HOCZfgZ9SLaIsX2P8nqIvWgg7IHE+RwOpcP9LKPaDNw7zbA2DLLuNXKp/ErY5lW8jSzpzUT0P6IiJXob8dl2IUuD6y8d3Z/uDp5N3wwJPFYbTIn3QXAdczOO47W2zuRSG9yoCMZ6idnQy/5xhbs2Eu8oGUCRzzxalYOJRLUuICwQLsaCZodCRXv6Si4I3+Kz+ss99zgxQQXh3xeOKOTmTfaYhiINqNlS6f4lu9tgCg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1708896902; bh=XZrtH4ag8zWRfzHxYddcNNaIUDBUeXxAsgagE9+daNp=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=jVgcfQR3rGPg/NnuYboOW1AHruRb7btz5+HQN+YEiAlWQn5WQ0MT7pSkDVBtEkWpe8yVovmWCRgPbHQh/OuVZpGVIf05EwkYtNsMbAJfxYg8ry3FZj/iuVJNErq33jfO4pFlGmdTUgSQGi1SKcIsl28epRs/6O4KdS/S0nVc7+W4d6YB6zfyMx7ew5OlckuD9o+p4X2KLvz6BbbYZ66fK9UB0Puq/froZSLfEZUIptbl2Y7U4b430LubPfsfUbaMvlrbEfeJUw0z654BDHVyXRWT8HsMkpqWHyPjKplChTbjW47Kq9KryN4zUf+N9SmoA4s4gNQNZabZF0Aw/MtukA==
X-YMail-OSG: tHjdh30VM1kl1wMeMBmUfxY_ToEoc9oBASVHcs3RnMu58nB66AtbKeMJ9JHj0WG
 OyX9EFapXgcDmFijKRVpfQrNLorwHiHhQt3rhHWHmo69e5WHtiHTDzfWK_LkGPQTogBu1cbLwIuF
 zHJPse41rb.ymSNcBbW5VG7.I4o.053Y1c_v_hiY4cZ6F0MMyBAmO9AFsWDHuJXl3gm9Rz0Jw0Yd
 HMB113pNKVD1NbWRf7NG1e823Y1n9ct7Xx7s07VM3WqKF8wLwmOO._s9Og0dOQMyA4s6maPeUvSL
 N.ixYd323hZtIOL_zkR7ErqlKAA82dYKa3Q99WN3ah_K0G79QBsoa8NADm4rT9qfCwCoW9jVUym3
 AtmJLTVRntrUnTprU50luup.Quv0vmHEB8vX.eEThot3Ngqa_NKdUOqA7Ez8DdRYK9B7GbV4Iq5B
 JkxTJz0PJzGBgc2ih.DaPAqLqmO7bX1wXI._QEXjAZvDLQpGxFRYoCAz0mW3HJx1ve06TC3JOmR1
 .6phTS2eL_p0x0nWWvjer8ydnjBqsuH3QkUX.rQh9WRVM4NYU0ypiXJZxZlXIbyJdklI.pX7LTnL
 NrLaNoHuza._CqgFVYm4LTYmYbZxh3fd92uMTpMW8b0KHim7uwIEH6YINLbZmaf9oS_C3CTgbxA6
 bJrTCU6etea0OFRNb9GC8meN0Ria9IgXKFEF61TXLB6UYgPrZXg3hhr8K2.ifdY6XyfHHOioZj2h
 oGSnbF1MbBsvTV3.KoHK_5jTz9BHwcYITck_Ng6oxR4LTZeYoH_Cp9W6P.ITSijwSO913KjbrTDA
 Yv3q0kvQuasTjOivVDGosVVqzvJsmkJNjGhzsivDHfV3obuQ75ups1xzLZ1YNmdYJvJrqe078Iyo
 y7sDly5EArJnoVeiIYVipf61iJQN6nFdi5gQnGliQUUsihOweI9aTaJrUF6CLUF6l4R_2wr49ejx
 T.faUs4Mu.zlwixDbS8IGgbyT.fkFW8TtIq2MdAANrBJtvbBE_lqbqg49ayg6wTZpffoBHXGLeyz
 SMz1jY1oG7jol_phrrSL1rYh4A4P5IwWVBlMYGw01zOJaHr_MwWoFn2I11onqR1oziMXKdUDlH7D
 dvRpQSJcC4g2eTw7X71jJFjZUlbAuR3ShvVP3H6ylOvCWVf7MUZ3UU5hcdKFZJ1f.5DWCASeZmYK
 xFJK7hrHugqUIRseLO2FHb8W8gD0..yGmNzZCgElLQ0YE0iFczquZUZMLdaaW7l0pYScCjlneZxB
 UD05ZYmBKDO77uOHCo5gCCtaZRTPmVv4mKOsdZHJLmT6momuYXqFyt2byFiw_3MvP1nDWVqjxPi.
 gmA9jDRcw1ttLYr_jt6CLABCumZHA6h8iYut6jmtVYx3_E7msrRrvwXh0SxMT87RFHAK0Vx5Sden
 TiU47tKb2rEp4bnkYu5QBjtWdOoMbWXJ7iCwas3k41gNC1cp5X5hykk8j3hUAWOgMaA840PGx8gV
 WiDC0eZEZVwe60nI9por4kKfp8P8Cf4f8kmNe2UnAKH_LXqnww.lft1YBKKblZrfUp_AEoPMMYGY
 9cA9lQEgiJ2WkROLBMZBZQqDLVlr8igzOYJO8omv8kRH2W1881Fph0vxvRJdu5q56dRAZF8.1nQk
 QalXbl.zpm6dLxnWK9RDyoujj_9kc7AnB6RPqPwsoAvEbtUtDkO432ZrIhhp5UTtJ2qja2Pm31si
 FimmzSZ0oKn57FgTeqsTzOLehg7cTp248nh_XvLJW7Gml9DkP.jwOPPjlekBcnD0pWI2gqp4GGdW
 G_ol5UanPSQPlJDK58sno_LBad5xa3kVwT48xPkUH_iqqJ4Vdv3YLhcugkXAT3c5osOzvJL.DbYi
 rSCU81KoAibctpJTOUCZK59.AktG9wr.zCzPHyxQ14nsGbn_kgArn7oAENm7U0IrUSGW1Wfxykwc
 _ng8YfAlSoYaaPPGprrNJu.K9a60Fdno9sQohV8M8xuMcOI5G15tzTKyWCL_2OcPMbWozmMXNDly
 quxeM9706gmlD6JMFaaMssjWcqQvRWgPOxVajP39nhwYtsl28Hv8Vn_1v9H4LvexoxE7Ct6oL9u1
 bzOHhqwZIM0cvARJ_cZi1xW7uObXx4mNXVNTETO5DlWG5CMS4wYHtbGl9yN.iyinmN.sIK1nuynK
 _3bvdn2_NsP8_KbdRA8RoZCe3pNFmib6rDLJJHKf5sjQtRKGl0gC4DczbnBnHph3fPQ.U1JIJHiM
 nXZh_ZA--
X-Sonic-MF: <rayroberge@yahoo.com>
X-Sonic-ID: 888abd04-60a8-486c-9a16-e8a38a200e27
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.bf2.yahoo.com with HTTP; Sun, 25 Feb 2024 21:35:02 +0000
Date: Sun, 25 Feb 2024 21:34:51 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	Ethan C <ethanclarke365@gmail.com>
Message-ID: <227461359.311534.1708896891513@mail.yahoo.com>
In-Reply-To: <CAM0spwpOGFZoQj5Ej4q1rXU7O54KpPKHRgOY=Ps2XHfAOEVVfQ@mail.gmail.com>
References: <CAM0spwpOGFZoQj5Ej4q1rXU7O54KpPKHRgOY=Ps2XHfAOEVVfQ@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.22103 YMailNorrin
Message-ID-Hash: VZ5QYUUB3JOHJCOPWOVGX4FWWFTW7A6O
X-Message-ID-Hash: VZ5QYUUB3JOHJCOPWOVGX4FWWFTW7A6O
X-MailFrom: rayroberge@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 cable for GPIO connector
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VZ5QYUUB3JOHJCOPWOVGX4FWWFTW7A6O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Ray Roberge via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ray Roberge <rayroberge@yahoo.com>
Content-Type: multipart/mixed; boundary="===============6336228149833378949=="

--===============6336228149833378949==
Content-Type: multipart/alternative;
	boundary="----=_Part_311533_1709062410.1708896891512"

------=_Part_311533_1709062410.1708896891512
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Ethan,
I could never find any pre-wired cable assemblies for the E310 connector, b=
ut the housing and female pins are cheaply available:
DF20A-10DS-1C Housing........................Digikey P/N: H3143-ND=C2=A0 $0=
.30 each
DF20F-2830SCFA Female Pin............... Digikey P/N: H3148CT-ND=C2=A0 =C2=
=A0$0.10 each
The crimping tool that is commercially used is very expensive:=C2=A0https:/=
/www.mouser.com/ProductDetail/Hirose-Connector/HT302-DF20B-2830S?qs=3D7H2Jq=
%252ByxpJL7ruPcF4WDUg%3D%3D=C2=A0 . You might try an alternative crimper, t=
hey work.
Good Luck,Ray



    On Saturday, February 24, 2024 at 09:12:48 PM EST, Ethan C <ethanclarke=
365@gmail.com> wrote: =20
=20
 Hello all,I am looking for the part number for the GPIO connector (J12) on=
 an E310. So that I may buy a cable to connect to it. I can't find any info=
rmation online nor on the physical connector itself on the E310 I have.

Thanks,Ethan VA7MNK
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_311533_1709062410.1708896891512
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp72819637yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false"><div dir=3D"ltr" data-setdir=
=3D"false"><span style=3D"font-family: Helvetica Neue, Helvetica, Arial, sa=
ns-serif;">Ethan,</span></div><div dir=3D"ltr" data-setdir=3D"false"><span =
style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><br></=
span></div><div dir=3D"ltr" data-setdir=3D"false"><span style=3D"font-famil=
y: Helvetica Neue, Helvetica, Arial, sans-serif;">I could never find any pr=
e-wired cable assemblies for the E310 connector, but the housing and female=
 pins are cheaply available:</span><div style=3D"font-family: Helvetica Neu=
e, Helvetica, Arial, sans-serif;"><br clear=3D"none"></div><div style=3D"fo=
nt-family: Helvetica Neue, Helvetica, Arial, sans-serif;">DF20A-10DS-1C Hou=
sing........................Digikey P/N: H3143-ND&nbsp; $0.30 each</div><di=
v style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><br =
clear=3D"none"></div><div style=3D"font-family: Helvetica Neue, Helvetica, =
Arial, sans-serif;">DF20F-2830SCFA Female Pin............... Digikey P/N: H=
3148CT-ND&nbsp; &nbsp;$0.10 each</div></div><div style=3D"font-family: Helv=
etica Neue, Helvetica, Arial, sans-serif;"><br></div><div style=3D"font-fam=
ily: Helvetica Neue, Helvetica, Arial, sans-serif;" dir=3D"ltr" data-setdir=
=3D"false">The crimping tool that is commercially used is very expensive:<s=
pan><span style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-seri=
f;">&nbsp;</span></span><a href=3D"https://www.mouser.com/ProductDetail/Hir=
ose-Connector/HT302-DF20B-2830S?qs=3D7H2Jq%252ByxpJL7ruPcF4WDUg%3D%3D" rel=
=3D"nofollow" target=3D"_blank">https://www.mouser.com/ProductDetail/Hirose=
-Connector/HT302-DF20B-2830S?qs=3D7H2Jq%252ByxpJL7ruPcF4WDUg%3D%3D</a>&nbsp=
; . You might try an alternative crimper, they work.</div><div style=3D"fon=
t-family: Helvetica Neue, Helvetica, Arial, sans-serif;" dir=3D"ltr" data-s=
etdir=3D"false"><br></div><div style=3D"font-family: Helvetica Neue, Helvet=
ica, Arial, sans-serif;" dir=3D"ltr" data-setdir=3D"false">Good Luck,</div>=
<div style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;" d=
ir=3D"ltr" data-setdir=3D"false">Ray</div><div style=3D"font-family: Helvet=
ica Neue, Helvetica, Arial, sans-serif;" dir=3D"ltr" data-setdir=3D"false">=
<br></div><div style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans=
-serif;" dir=3D"ltr" data-setdir=3D"false"><br></div><br></div><div><br></d=
iv>
       =20
        </div><div id=3D"ydp49cface0yahoo_quoted_9611420279" class=3D"ydp49=
cface0yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Saturday, February 24, 2024 at 09:12:48 PM EST, Etha=
n C &lt;ethanclarke365@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydp49cface0yiv4821296982"><div dir=3D"ltr">=
<div>Hello all,</div><div>I am looking for the part number for the GPIO con=
nector (J12) on an E310. So that I may buy a cable to connect to it. I can'=
t find any information online nor on the physical connector itself on the E=
310 I have.<br></div><div><br></div><div>Thanks,</div><div>Ethan VA7MNK<br>=
</div></div>
</div>_______________________________________________<br>USRP-users mailing=
 list -- <a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send an ema=
il to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br></div>
            </div>
        </div></body></html>
------=_Part_311533_1709062410.1708896891512--

--===============6336228149833378949==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6336228149833378949==--
