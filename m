Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A3D5FB816
	for <lists+usrp-users@lfdr.de>; Tue, 11 Oct 2022 18:16:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F17E6380B29
	for <lists+usrp-users@lfdr.de>; Tue, 11 Oct 2022 12:16:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665504973; bh=Ru/SuHbp5YXq2QEEhKcrScl+227eNW7rtXz0mZ68YuU=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=uFKAbFyg8FPJ4yzd91nGdkTTA1QZbD3QxzdL67JmyoOnzcDInyGI8meBCiP0ls5PY
	 PNIAWAZiZIw5qN6389I3lc6hyHyzeei5b8s9ye1SIgPESeZ5/njt+SX0bHilU6NCXG
	 OSsq1oejzXUP983cJRIdo/sRfec77wW6CjTDcI7tJ5U7u3f3v2wh6OVkW3Z6FzdDFv
	 fNZrzdPzVzy9PmqicPfIrGyy2UCNU+liJVyC8l8L4fLQ60y9vQEuztcjl74xdmE3YZ
	 +j7u+Ut+ZxU/uGkKzNtuMRg4ZzsxZx3Oln6WUBOkGIhlksWB769kn4vIhgE+uBFKAw
	 cczUMfaQbP6ew==
Received: from sonic304-9.consmr.mail.bf2.yahoo.com (sonic304-9.consmr.mail.bf2.yahoo.com [74.6.128.32])
	by mm2.emwd.com (Postfix) with ESMTPS id C7A8D380AF3
	for <usrp-users@lists.ettus.com>; Tue, 11 Oct 2022 12:15:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="rVqAxTa7";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1665504924; bh=lK5gsaZKQEBjZuLLkgvFgsBLEO491DqBX6vN3MJgw7s=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=rVqAxTa7h+YzWLoZJy2AyHrRPrUM5xJJhrVT5fFhmPEXntUAP7P1K3jxXosphGNGRFkKfcwbh5gFjwmjn1dLHodyk1GuXEfkjtoaXdzzuUUUWQ2fT4q3qDJ4ioW9+bCkB0nGe4xbNEVd4zMkzAxuStjdV8bQcuP+ZCyB5b9HbGeh9vTrjMjmTrHJfp10J0rfsCVrcxWMtbfSXx21Q392N/YjACVJm+Q3v/1IkQWNePzoY4SqTmqkmRFaWLZ7vBUGRNXV8ZW3t4YcESdN1612PUmykyAEDLwRTyAfHpkFvUvGUwNuLpSB3fa6D3lf18FZU02arF9PoZI3GOX9AizIpA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1665504924; bh=0209+PuHN8TJBQ8LGI1vRQah1D6ZOJckNU32M9OzPni=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=aeNT21TA8SYZuGagxvQAIPQ/RXjAtQBkl9CBGr4OWObvFJ+gH9pQSYNER16fj5EC0cg/czIt/d8Yhnu80/OQwZuZv4en3sGcXy0FnoFbuQkDcRiP/3WQFU1Aqe1czG5RTp1EmmrienHvcCu7J8LrFegmQbfVXcwq8+NS3GJyLHQENg3enOYUb9zyms037Wp1PsmHLPLCY0yVB7ZOex6QPUm45ruh4sTf5blgczuXyxmvzrdcZNnU/LQUhAZT4FCUbSQpUihn5FHLBM59EkxhX2zCZWlTI3UyVIPwMANPN3h6MDXmSEdNqnTNKtIbTnoc6bcCD0W72pXcMm7S+ZYrog==
X-YMail-OSG: W54nZhoVM1maHuwawaeIITHrq0cPF6qVurxbF3QqLX2F8hUcROhBbexJdgOs8zd
 35JBh8y8xT7ez6kIvf81ElczSHLem91fIxW8kKzehxi8jnZJYWGpWpFvv7HSIEmQYVCTZJOKaSLe
 bxKXpSnNAG94XZVGGNfd3PIsYP8AmWYxd175i.VrZapQpBTBNh6yGs1vERYVpGNQb_s0upIXv8eE
 5ZVxl6f22BIsS8uTQEjK1yFsef1LvoLdC.Uy0RrG41Ea2SkXWsuTTLcQ1hc70BoN_8fmF3uYum85
 XU9kqieUhBU1qFIMBpdtbKLAIKdS7_B_84X0lbfW5bO70bMsuPlI06C0iTSy5XYEREmRC6ymO59T
 PdG_JNAZ8sRcFWF2Mzgmn0EZq9wFxgMANmm1N_iTVQqQ_B6H.Vbjyyh2pMcwHZ2yS25mpSF.K7q_
 7JgAYkqTo4bYLbDPNM05Ax09PUrusYLZZ4ZY.A4rm01yJhdvCaDaS9n8fQuMU.L77NBBQOyciSWG
 p2tXbTj0_yDQxMZEZwhzs8j1aa.YwYCXD4oGxY_1Dt7UXzVTLFljcVLxcYe7CElAb6XiaBz9oMbs
 G6ySG.6mTb3i8QM60NrMCrrXVwC.uY5Mf7tWggEUMqpXTAY_X9g.O67VOcOmSa_gBL8f6SrwwtCT
 hIpvMUv8yvrGYwfl7PPOFCPxm5cesvyiiPfcePJ6xlJAyP6eHSK_RL7PQ6g_KHGxLBGt.TdvuFQR
 VyzqaJNK1rzWQIyqOdHZLfEuizp3577oFud5n8q9_UbNSR5Lc8tb_VONb_xoVyzl2USDCldJBsyQ
 YiB2WwxnoGJH.CHx2P4w7LZE2VWRhkdwXAFNopdEIHntFpDNSwXDA1EGx08r62JYDCDfwTedd1dL
 9HCSGDXEyoE9X7GEh4opCVkrA4tmt0I7wP0Jn1PWLEl6azQ6RKJyA8EVUKONs2EIOueND2XL4GLO
 Yl8mQw50psiJSq5.npTrylpTehb.zwtP56WqfW.cruNO8KIZB0QadNZ1VgcltCXxUXB8aiMp8dZ1
 sYj6KLH5VL9slIJTb5UU4WmffJhLr_TkK1Ru45Ewz.JbSw1q.PGfzjMk6qBH1OMo9qBdYcnwaG9E
 KtHOf9Yto0vt0I78BdhildH7cdYFi9PBT_jPmYw5Y0irb.bw28irCJDqBgvpYuGESrvoPf9kFuh_
 eSPJmXmYo3wyMBZ8TVE3xehr2OWoVFjPNC2YiUA0bYWJyJ9iq9AK1jyN9E_of3a3EPXxvR9.U9Sl
 5YuzkAOsoTke629q_VkktMOpLxk_phVUAjlmtDIZCjUiQ.nfq0pcp5xvHBd8_7sz3pBRB1Yy.Wv5
 i40IA8LXO0FWkkIeSV.gPScTG4v3Jb8l0S7Azeo9fWnOiEKZp_oDOaJ7xgCSmMYTvrpLq0Tltvsq
 2qZGXV5AVMOKBiYEHz7a161vWvoejov_LKPOiW2qXLKZMXVfSLBLmDfMCMlvbWYzvabILzepaloo
 NXY1sINpKpCWzzN92FSSjMz6sPszQMylRIAnkG32RPH1OCXW8gayyd.P3mnTdbaSGjysEl2gSjZx
 eyx85h8lAy8VjZNZgME5t7l_lv5ZUAwoLTDBhZsWaxUmkCRW8IyVRwLQEXnV1u.7ihP.OfXciTi2
 4lQlqJlbWq1HnkisuTPzfInntrN1AdrcHI74xZdBrB9ykEtu5tuQQZLmbgZkLvZ_sX__EeEKxLEB
 0yZej_qoZZjKYiHzBaKVLF5R1enC_RAni4dx5iw25Kgv9WrPNOXNOwouhgOTQSGMrDO5ia_kLiCG
 q1URObto3d0CRsjJeoEhkEy6GEoLCAZ8h6dGJYOkD.Nj_4BDNqnKcCYABuVEidLPq_1BTwZ1FTuG
 W_JM2bpqkbu7z1Awy3T3DRJSM5CRulhA6gr.w83A3SNz1p9lu92PC7zsB9_vrftxkkhXoDsxhDk6
 Xx8.oRD0hUTuQfFYQ8MFK_ycjnx62Dg9X72qv7P0YhM0eTIzkr05mwqbREtC74QZM0jETv7LFHDN
 YluCfEiIR7uPkf4XT6A6xHAgJgEs9aYk1RT5Y_5YiYUxiLpuy4tyQFfO1zwUzD8vpn_0Ex51GxPx
 flnnvz5kSM1RB2sXEH0RX8cXAN83KwXQHyJu5nk1ROKSglAMnfYRd.EhtEieDNBMAcOTgA42aNLX
 635HX7L7AZE9gjMFffw4BCvJllgWmp_9pwO.uLWCQ1i56SvarKEdaHd0ULNjJ7d6uQtDIyw.NH1T
 luyruGA5U7hndlTzCoNiv3OD5plKj4vA-
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic304.consmr.mail.bf2.yahoo.com with HTTP; Tue, 11 Oct 2022 16:15:24 +0000
Date: Tue, 11 Oct 2022 16:15:20 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1567317201.188112.1665504920071@mail.yahoo.com>
In-Reply-To: <DB6PR02MB2981930195E78445C7C9AAB3E7209@DB6PR02MB2981.eurprd02.prod.outlook.com>
References: <DB6PR02MB2981930195E78445C7C9AAB3E7209@DB6PR02MB2981.eurprd02.prod.outlook.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.20740 YMailNorrin
Message-ID-Hash: T6GY2YIRVFOJBW4GPLETZVJRNB2WK3XC
X-Message-ID-Hash: T6GY2YIRVFOJBW4GPLETZVJRNB2WK3XC
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.1.0 speed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T6GY2YIRVFOJBW4GPLETZVJRNB2WK3XC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============1923179150692849415=="

--===============1923179150692849415==
Content-Type: multipart/alternative;
	boundary="----=_Part_188111_1323867602.1665504920070"

------=_Part_188111_1323867602.1665504920070
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi,
Some of our USRPs are using UHD 3.10 because they are in old systems. and I=
 am also using UHD 4.1.0 in some other USRPs in new system. The USRP produc=
ts are all NI USRP 2944 (X310).In my applications, I need to use PPS signal=
 to synchronize multiple USRPs. After applying PPS signals, I read back the=
 time in USRPs one by one. Because of network delay, there is some differen=
ce between the readings. However, the difference is much bigger in UHD 4.1.=
0.=C2=A0
The interval between two USRPs using UHD 3.10 is about 0.2ms while it is ab=
out 1.4ms in UHD 4.1.0
Does this mean that UHD 4.1.0 is slower than UHD 3.10?
Thanks for any suggestion,
=C2=A0Hongwei



------=_Part_188111_1323867602.1665504920070
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpf0592c6fyahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi,</div><div dir=3D"ltr" da=
ta-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Some o=
f our USRPs are using UHD 3.10 because they are in old systems. and I am al=
so using UHD 4.1.0 in some other USRPs in new system. The USRP products are=
 all NI USRP 2944 (X310).</div><div dir=3D"ltr" data-setdir=3D"false">In my=
 applications, I need to use PPS signal to synchronize multiple USRPs. Afte=
r applying PPS signals, I read back the time in USRPs one by one. Because o=
f network delay, there is some difference between the readings. However, th=
e difference is much bigger in UHD 4.1.0.&nbsp;</div><div dir=3D"ltr" data-=
setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">The inter=
val between two USRPs using UHD 3.10 is about 0.2ms while it is about 1.4ms=
 in UHD 4.1.0</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div di=
r=3D"ltr" data-setdir=3D"false">Does this mean that UHD 4.1.0 is slower tha=
n UHD 3.10?</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false">Thanks for any suggestion,</div><div dir=3D"=
ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"=
>&nbsp;Hongwei<br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><d=
iv dir=3D"ltr" data-setdir=3D"false"><br></div></div></body></html>
------=_Part_188111_1323867602.1665504920070--

--===============1923179150692849415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1923179150692849415==--
