Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C47ADF118
	for <lists+usrp-users@lfdr.de>; Wed, 18 Jun 2025 17:21:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1589E386167
	for <lists+usrp-users@lfdr.de>; Wed, 18 Jun 2025 11:21:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750260115; bh=Ic9rWASvuxxPk92NKEgfT2sjylp9BqbLktWaVXSnIDo=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=iEsR7oJa/az91s3+C08eHJXXJFX02wREtDPEfyw2m0XYxuStu/ph4nGMgBGmMkV0i
	 hjYQC17kPDYwvIXIQz///sWGo2JQ5nA1oz9pcztNShLqV47hDa9UOFjHutzUy37pfC
	 e7iulU9si7qMtLXN8DxBbmR8s9Y//Q1+tU1Kwjr2o+uxpnNCHciwfKEylTXB4e3WlO
	 xdX9lBXB8QupXYK6ytJ2dqOkPjbUiZrIcJaL/CNtgzTm0QcHnlJ6a6M5l4oajTgBQb
	 msyeiVK2haF8VYJNgz5v2qIe9RqTdx9G6fVmS43QF7JBE2IkLteZNxZzI/liRJLEzL
	 DUHFEBiW+1TVQ==
Received: from sonic317-26.consmr.mail.bf2.yahoo.com (sonic317-26.consmr.mail.bf2.yahoo.com [74.6.129.81])
	by mm2.emwd.com (Postfix) with ESMTPS id 3F10E386123
	for <usrp-users@lists.ettus.com>; Wed, 18 Jun 2025 11:20:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="IBTGflal";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1750260051; bh=GhSvHieGX6zVDx3XQWCDC31Eh6fTMAC4BvmVyAVkfDw=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=IBTGflalEIROWENFeiwPb7qEAj9hgBo1UkesqjjjBoAVdjkHOy2+IYCCFlFbQQNlGi+ykrY5ylmWWTDron5bd49QEOpSUEhmslXCfNLVtQBesJpPkJY+JtkEBNmCIVSX7+53PG4xRL78BJsCoZCmcDKPXe/J6nVsSzNFLgPcXI36mNxd3fgJHcvFf61RiY5Jq35VEz89rWdJ46yOKQ31QR5Crrfb9L4/mzvSHwng2WSywucSKOF47lD+wZYuUqkaLsfgghL2H1MxjjZytBvuCeYAkNviRpU91XUBEmqjVjAWgfinOLaVdVzmdR2xiqwXZHYeWzpoDeM+DJSC2SwP4A==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1750260051; bh=EX5w4rj8LNyqKnUzVbL1wKLXCs/++kgcMZryCnFcXR3=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=E7J91M9e+WeDyAEuYUH2lEIu11iTfQe1A5w1UO+PqDN36RuDs9GoIqC469T0bWuNfig7hJa4YhP0tmFPgW/oHol3x3UMI4F/77s03+BcgBYqqdCRiWzvq0qrVOzZChi6JnXTO0XTVUOxmDC104XA5ePfZy62gtex3JcxFDhP8YS3Eq5+y3UX3+NcREQ7o4B0PYcVnV3qMsGM2imKPKk62FJ6dcI3v5PKaFasKusjS6Wxp6L36qnj1FquPZ2zgiEumG/rAzslfv0XpAeaLN7NLcBEtvK6X9rw9CQe3/64AuW+9qvqBq2o017n2ZKYtmJ5AVVTJHafc/GS+4KtgVyXEw==
X-YMail-OSG: szWX0CwVM1lDRvpM8feSyzUxgEWheXcY9GTkCAMmFkLQSwX2a51xATkGaSd1kWy
 J9OAoGEhFRTEyVuIbVy0H286X1wL687Q6cFD9E8taDYSgfQxhFF0HdLBQwUv67PkSr67QxeSP0TY
 ZY5ojy9SeA_uJ6bzbmlcg4.EpvuG1_jW8QQdbbOPTwwDhCy2pQveM2yWnqd50.C7cfGnquoqpLYB
 5KFtnHKx4CohykDdf1boMPIC0icczbUQSR2AyR7D7KL68yQqLOJOnwj7uHUaamRw7F3L2aHuhOCV
 hlLdQV8gp85n4xAwfR93oL5P5pTGEmXpZ5btMbjERkt0jUNrUTnYDf9VtZwYkJ4GdHubjFf7ZMZv
 .PHQHfsiZHesRhQYQgXGSPHqr17oIYr9C.THtmL5Om071EbV4PBASIOafX6fHB6Et6C6S9M1O1Ph
 Rx0LhtiZqv5SiHzJSnExvMsCRLqV0AN3.FXS6sm3Qq_0hXhRyAPNEYgykUffT3o7M.kxOvyPOuKM
 DnRje4MmOlModpXVeuP_3fYqn5KJPvTnPz6LXt93f8najn7fXMbZpzFMvhhOC_aJhGCxOr5AzHKx
 xBMX1kvHABN9OqPBoLRoMb5VQPPMyvamihydKVfTDUzZBWzS0QfFB71QTCKwbVmTlub.4C9Y4EfG
 IO59RgoVzF.PsiALPqdDT2uK4UUuQaI3.imXaaMGKvXL5R6HntG8UKwcffNBrdHba.tOnT4LfzRg
 udi7HLlw1w2t6OyHmPhoBrMiyLubUIN1poQtiDiLFj5XaFfr74guJV9oXkwpiYMUx2xLXES8qn_z
 rJuaLNakgSMYSPjkBR_.MLtp5nJwWQ1zy4gJZ8SpmmxA7k9EUlCABK14kWMGqxWItbjmvzT.JRPp
 BMh70Gd.Y4Eb5CfM_zugYBeKQ1dJ2XG8A_S5WcfCT5UvHjKwZi5vJE3D6aYjTBUfE4Zvl7W2Kf8r
 dnAwaZQwN6vAuEorkbcuqD8ursM5z.XGloZYtkQQ6cr7wH.AYn22mf.l421mnQIHcPw8ma_k2A0A
 2eiop3jocwx0PgMRQZB8q4K9J.PD0_lsBOWepfMI9Aw7Ua81aiiPhfbsxmvwyJZ_y7kLEoITuk2K
 YZnM7A4PcBmJ5fCckDDk5a_o.f7XJjcbd0XLYvkZoxvwo4z3wiL0BxmIkL2n8E4HUGOe.Q506fzI
 J4CZ72b846tWMFHvv.5wgErYY_TOQxqAH.lZn7b575JpzhILY2lR6m7xXanJ59Vre95vqZ3o7VQP
 tYI8hT4Mmu3.0E0368DxJzVMUbv8npA7JLQpJ9RJzR3TrMcl_yQaslQdpl3cmlQdNrYQUg9v37E1
 KKEqc96SyCknvRyJRjxJT6jiAXHWP5dVRlvPX1jNVHHtACmfSC3mIc.W87LeKwnlpYjqILMMzXoj
 zbGOLvkfEsVJuwZlvP5qYqhKsc8ViTUrmJzelmTdo5GMlGnRR_Ls0YvtiAeHdIhAqzFKaiSfwvlu
 MJgcQ9_1lyYVaBlPaWYrcs2pqpz7cCz7M4sYhokHekb0cAYmYmYJr8B9oQMZxg1eWn6KSufFEUZ9
 2fXW7ih5mdCzqgPePYHvBZsPLTb_fsoyT_odmEA3i2CcbR4jIzzif_90bmPzNlOAXC4lVAGDengS
 ivOqKNoKl.ipvUtuu6.PecMZ06IOtMijMn4j7Sm82ViKQr4pTck4BLLmKHflgKHblpnW83n_Kvmr
 d6B6BegLIP_u7DH7DNgpVSnpsaZ5BklqtyyUOTb6dq1Whns0j3PnASHVeb13GsOmOgW4L0lrTNCp
 HwDP1J3MYUiBSwq80otgoCnbw9s7gQ_DOZyCjXIDSPaXuUPrO9w9UcLsW7MBE41SsRCFiVA2DF7o
 4IoN4GKbjkRYGmli9KGWmQ96pxBcmkMzbQ7r3wWnUuq1h8eHAENXLr_T3IBnVwsXcZ_UMcTv1SWo
 Ww5aW6v.9lXzv77hOzu7iFMZxVLf_GlAVE.6yInEyxqGtuH3Ul6PecnjNAtfvAgXrgoDhiTv8WSH
 qjBJBLo93B2A6L5Y.PY8F2okzYvo0g.NfmTIV7.FeclDR81hOd4wXZ0BqIyfLBJ7Kp2LgAxbzZ8m
 ecJrXvoi6eK_dY5i5LJosQ9SdoC06VGvf4tMCiaoAGh7uCbly4CzEN2hWr_gbkS8FT5GqeJ2y3ox
 hUONU0cUtKX1dj3BkV07.amraXIy4c7r7uWOokWhJiynX6_32jlWQutqYYNj9oKV73UZHd.DkruD
 _Gr3_BhfXctOaPQkSY2bZwd3iKn4XCbPz3h2JGXYXNNDfng--
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: e3300a32-5504-4b28-baf2-ebc44a968b14
Received: from sonic.gate.mail.ne1.yahoo.com by sonic317.consmr.mail.bf2.yahoo.com with HTTP; Wed, 18 Jun 2025 15:20:51 +0000
Date: Wed, 18 Jun 2025 15:20:50 +0000 (UTC)
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1162576844.1012378.1750260050258@mail.yahoo.com>
In-Reply-To: <CAEXYVK5vMzrReanTsk4OL8M0D5+c=gSdgjAA4GJGEsdh5f7wVw@mail.gmail.com>
References: <CAEXYVK6rYFpX8dJErUdGkqn3e56eifN3COXmmqmvvStu5A9AHA@mail.gmail.com> <CAFOi1A6=_+6Ej3wzk55ezeyK1EEFEWrBaJN7=guEmTD9AD1Pfg@mail.gmail.com> <CAEXYVK5vMzrReanTsk4OL8M0D5+c=gSdgjAA4GJGEsdh5f7wVw@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.24021 YMailNorrin
Message-ID-Hash: 7MTMVWLU5WP3Q2D5KM7GULJPO6YNQMZE
X-Message-ID-Hash: 7MTMVWLU5WP3Q2D5KM7GULJPO6YNQMZE
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] ADC Self Cal in X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7MTMVWLU5WP3Q2D5KM7GULJPO6YNQMZE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============1823877987576160066=="

--===============1823877987576160066==
Content-Type: multipart/alternative;
	boundary="----=_Part_1012377_12572342.1750260050257"

------=_Part_1012377_12572342.1750260050257
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

 Hello Community,
I have two X410s with UHD 4.5. They are sync with an OctoClock, so I am using external clock and time.The problem is that whenever I start a test, X410s do ADC self calibration twice, in the 1st time, they calibrate with internal clock, and the 2nd time is due to my configuration of external clock. Self cal takes time.
I need to run the test many times for debug, which means that this self cal is run many times, but all hardware connections and software configurations are not changed in test, so I hope the ADC calibration can be done only once and the cal results can be reused (e.g., save in a file and X410s just load them at the beginning of each test). This will save a lot of cal time and this is the best solution.
If not the best, I can accept a suboptimal solution - calibrate once rather than twice. This means that I need to configure external clock in make command. Is it possible to configure make for this purpose?
Any suggestion will be appreciated.
Kind regards,H.


------=_Part_1012377_12572342.1750260050257
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp63f5324byahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hello Community,</div><div d=
ir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"=
false">I have two X410s with UHD 4.5. They are sync with an OctoClock, so I=
 am using external clock and time.</div><div dir=3D"ltr" data-setdir=3D"fal=
se">The problem is that whenever I start a test, X410s do ADC self calibrat=
ion twice, in the 1st time, they calibrate with internal clock, and the 2nd=
 time is due to my configuration of external clock. Self cal takes time.</d=
iv><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-s=
etdir=3D"false">I need to run the test many times for debug, which means th=
at this self cal is run many times, but all hardware connections and softwa=
re configurations are not changed in test, so I hope the ADC calibration ca=
n be done only once and the cal results can be reused (e.g., save in a file=
 and X410s just load them at the beginning of each test). This will save a =
lot of cal time and this is the best solution.</div><div dir=3D"ltr" data-s=
etdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">If not the=
 best, I can accept a suboptimal solution - calibrate once rather than twic=
e. This means that I need to configure external clock in make command. Is i=
t possible to configure make for this purpose?</div><div dir=3D"ltr" data-s=
etdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Any sugges=
tion will be appreciated.</div><div dir=3D"ltr" data-setdir=3D"false"><br><=
/div><div dir=3D"ltr" data-setdir=3D"false">Kind regards,</div><div dir=3D"=
ltr" data-setdir=3D"false">H.</div><div dir=3D"ltr" data-setdir=3D"false"><=
br></div><div dir=3D"ltr" data-setdir=3D"false"><br></div></div></body></ht=
ml>
------=_Part_1012377_12572342.1750260050257--

--===============1823877987576160066==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1823877987576160066==--
