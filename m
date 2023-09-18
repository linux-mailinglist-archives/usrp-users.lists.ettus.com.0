Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 898B77A4AAA
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 15:40:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D5B38385E12
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 09:40:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695044457; bh=MANX5dNQZGoyu3g26LyJDLI+M0an9DrfD/+SHnL5+y0=;
	h=Date:References:In-Reply-To:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=zlIbSucVfUUPicIqcmgEY3z7/CHDnT8SUOGEQIO2of+nBIibrIYrF4LKxdod6adE4
	 QvaUBHwGmyZ0+tIXmiNi4KgShhpU/F77J2J0zd0fmc2CSSDuH3PBbs52y2SycFWw80
	 E5xyEuw6qbWWQcCuzuIovYXTd6PSwvllc1AifLy6gQq0Y1E6B6DCdsJOReSVU/MyuD
	 LsYKEfptVy6LbqbUAOH6g9UNTRwot0NZshDEQam/ynAKwW5IZdzocv5zmSWYcqPQGx
	 XEd9V4nVlk55WFtdjYHj0tMotO9SFMKkIDVwNYLbw2PaAfDRdQbJ8VvT97delnR8zc
	 teh8Rya9c8efg==
Received: from sonic313-19.consmr.mail.gq1.yahoo.com (sonic313-19.consmr.mail.gq1.yahoo.com [98.137.65.82])
	by mm2.emwd.com (Postfix) with ESMTPS id 1B074385D44
	for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 09:40:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="hNpB9nmn";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1695044407; bh=+Z3F1PETUqKFVO9HyuveWlrKSwJ5cuOfaa32M21fK2g=; h=From:Subject:Date:References:Cc:In-Reply-To:To:From:Subject:Reply-To; b=hNpB9nmnaYoBLdbKPub6cF/PXtaNtqb0PK7yDfTKVTpVH0hSNfPGa+MGes06WCypuJXiF8bYK8rcOtE8g8BYIg0UC86R4yakSIO5irvq35tUZs7VS6mMVtuaJmwDZ7A7n0jyYB5KElw+gjbFSY1tqF8QuhVrX1Thg4Fs3F2TNGpd2DxndB38skgJqNHjWq11p5LEDzK6uwUJncftvfGEJUlT5HR7UNPSYBSd4zU9A9e0H7bcPfN7PDx6BvzVbxozjKY1SXqHjzTLJRk5wX2XMSOh00uccOAp3HIaR35IIiA6/ut6aPf1KKr/0GQNT4hcRomeBa8W3IARMRyM+h8iMw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1695044407; bh=C4jQNmJPO0wj7APNJt31L3Zmfh9NmAO5NFhLz0TtI85=; h=X-Sonic-MF:From:Subject:Date:To:From:Subject; b=Y2Xb/GZiCFmyHjMDx/zZHADWwpgrM7HKWyZzsVPaAMJu5+wGYVW09GVS7wT2H5+6bqk4QEKl7nRB/kGzmcZoYItDMAHguIRlfsnb5lBbaW28eoUEH1/ceGJIsMzDj6kXG967sO6ytUGEIHlNYSqYNCCyKJVaCrELB3sQJEZAAZfi15xEpkxmfxMhywcmb47IuZmbgwTe3dtIeDURwQvGl4G0SUznpbXWC6HpYbrZOZjYy2DP4VNUFALnCIpuJKAWbqHTKYgFc0b9ioxZZ20hJVsHDClG9Esv4LNcx2K1qcPZPZ+G5pR+U0WbVnWK7/kRn2ZhZT5Z8gwnSPNRJp1cKQ==
X-YMail-OSG: df14oDYVM1nGjHgTda6KxkEE7oGSu0qp6Oy08WhSi0njj7tiP5t.PcDUawM3BW1
 _p1FEgje9uG5MzFMSpJgQTyv4_PEJNBr34DbVEl9cLxA3emPeWN8PJHy4leNk0bJHHZZcZ9L0Mz_
 2LDsOPto5RLS8rXAOjp_uypyCU0ObsxhiHClrLNPp4X.EA2J7Sg9kwZeH5.mgT1Ny9Zsjg.cwDQw
 0SwUTJh6pevj_QHx8H9dnwgMm1RdLm0h0gKiIumDldBXd0DdsAoEYALvufD6nRIzQqv0xg.Q0z_4
 Ng1QsvOPVqz5r18GrI1r450i5Gh_x6AOSZ.CqT6kmJItCZu4hViWkxzjMSThpvedNrE3dMwOGEZR
 .VrfVIYi8IEBlGEXF5xWX.mrEbCSgRoIs_eC2pN.hLz0qbkFFi56Epcz16Nf_wIrY2zVBM.9jyE9
 D21.dwizxCoVckQW6BeAK3xZCqSHUMzcwpVLO6w3X_KxfiTRfHYDMOVGdnJPUPAwDDkp5OWav03X
 dPAyGw1nR0S8QPt790CxVZM4Sd8LCWFjmaN2C8BlEiq4yCtoWjdYIuWGYKF2H2NWgnXebtbcDBqC
 hrDkpB8FAeILsWzYsas_dl.2JN2TQitNq8pjFn_KEZT7lfk.B6QDbShxzml_DwosdbNb0MbR.C5l
 jn6DQ1OkvgL8okx06aj.1osmg98RMFUA8DQvyLrBPlNpv9._4LkmWxQ9e7YKxHTcBpKUDiRCxT6x
 lvPGzCJKxp9us8KocmUmUcnLRjsJUZTSQaMUvi7wSTVoSHuAb36JNppDS5rTATx4oIg4Su9npLC8
 qQt7qyiZPciRC2ZEOv.BSZNiP3THBorhIMK9mARKC4LYG4ww3Zo_ipANaIahRobbiP7jyeJ2woiv
 Oa.yBZBQ7ozrnnIPau0pb_B5XA7K88XoZ3RPCd61uhErI.NP_WmpZ9P7L9jydhp3pX1vAL8ugsUR
 3BSMDENvDLKuR08nTme0rC1yCVsfSWx_qKw7Ew8gnuO16MbSvY0tgMYfXehe3LP_v3K6KPKZcppQ
 FZrXeBOOqXA8n2x_XvGlsJO2aR7WooLpv7CSsUwCRFn4Yc.c1tGsmS2VVPWrXs1vVwqlpEHfB03n
 rNJgrxwziz1X0yKaqAA0O8lZ9gomjaB9p3AeCyQ7vI5WlFxLtEUJFMoouMEnOSneqosPYd4Goi1k
 4ubnxbkAg0XVQRx.dSqMNxOGjewOsdfBwgCacIHR3CzQNgfucJmzMsI47.G_eL2ERu7LZUwbLGKa
 GglTu0pJ3UM1I4TrBZrdg_BwabDZwJfjtgg.0MdFUnclgkw_lTY2nRZsvx7Jy2wQoPD4Om_vkSR2
 cNnoB6ObF7IeY04UyPTPRsLAJEH4maC_jfeV_yXgNb7EN39k.No6GUxXEwnXJqgMTWF_OeksohPm
 31uFZ5FPOQXI4L6U55VU8qkknjFwLUxPykcIif9A4IbfNrZblBx8BCTHXvD2PWn0J8plCX23FFR7
 hb8a_cD_KUbd0NQ5gcUlwiuG_hZNV7x0ulzs9uKyMGnfUR_V_r5vsMwiAfbZfYvZ8B5LH3sF9uYZ
 e5bJWvmJTOpdVE952IE3Nx8s6NWQNX3ul8d6XJ265XQYbKCJSDF.3NnzpQbaKAIGE5Nj9f3V2LLV
 cZZ8powbT.D0fxVT9pPb6IapF4Gwl40YUouDf1Q7wdF.bAb4YbsVSj9I6fjoFpKJ0js1JzGEgeK3
 u3CF1bdIOh2L7oc0dBKSrZU5AFgTrdr6iibNr2sss2TQe_.PSj6TSK3N5kWKfFo8YCcvz28F9Pbm
 fjto8KpbPykbTnVAUhC.IqhpjzIhy8HAUMBPbiJccmTr5PEznjgPcb5AoHg.rAwlbQulqdaqetoo
 z1gUsEwVr.cRLLwjlM4yb8MSsLiw7N7KmV3Kv74tUaviaGRoWzAhN6T5Kh5o1JzErukijCcgzvl4
 VfWuuNISC9eq_Jo.ooVCPhBBG0GGNhNl_6vG3l.QkVqJF9oVPVhdLkvwlVMpoMXzrYscRtx90IK4
 74eX9CrZh2wOw784FUHiIyV9tKrwxocB7DnCfzEdzRKOt.oa0_Y.EhNsFfjKBG_mYh0WKkAx.9FU
 oHrr9gZu16it645SlsFA_.1d9W.1HdxCmETrohMN6usWC6IENUufBNTErbxy_hiAjQa9W.uz5v0e
 4bixv252KNZfSIOPOA0LhHRGLvuDFU4sqWRSNvRgolLcfvQ2Hl12ToUiqvPSepnZ9Bc5nQnDamIw
 ZJ8YQaqOuah1RO6RL6Ry6A8C4sOaueNJFa8p2NEvn
X-Sonic-MF: <mr_samuels_124@yahoo.com>
X-Sonic-ID: d8db933c-1539-4d36-80d7-1dd339d8bfa6
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.gq1.yahoo.com with HTTP; Mon, 18 Sep 2023 13:40:07 +0000
Received: by hermes--production-gq1-77657878bb-9nwx5 (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 0663703455da22db619ce3af6f248d81;
          Mon, 18 Sep 2023 13:40:06 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Mon, 18 Sep 2023 09:39:54 -0400
Message-Id: <CBCB0B64-FAC5-4E3A-8620-8ACA12366FAB@yahoo.com>
References: <91a613a4-1cf0-6f8e-ec88-dffa72b93906@gmail.com>
In-Reply-To: <91a613a4-1cf0-6f8e-ec88-dffa72b93906@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Mailer: iPhone Mail (20G81)
Message-ID-Hash: Z6VJPDTT2JFEFIFZ5ZOABQ7OHA27CLV3
X-Message-ID-Hash: Z6VJPDTT2JFEFIFZ5ZOABQ7OHA27CLV3
X-MailFrom: mr_samuels_124@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Unsubscribe me now!
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z6VJPDTT2JFEFIFZ5ZOABQ7OHA27CLV3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Johnny Samuels via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Johnny Samuels <mr_samuels_124@yahoo.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SeKAmXZlIHRyaWVkIHRoYXQgYXBwcm9hY2ggTUFOWSB0aW1lcyAtIGFsbCB0byBubyBhdmFpbC4g
SG9wZWZ1bGx5IHRoZSBwb3dlcnMgdGhhdCBiZSB3aWxsIGJlIHN1ZmZpY2llbnRseSBhbm5veWVk
IHRvIG1hbnVhbGx5IHJlbW92ZSBtZSBmcm9tIHRoZSBsaXN0LiBUaGFua3MhDQoNClNlbnQgZnJv
bSBteSBpUGhvbmUNCg0KPiBPbiBTZXAgMTgsIDIwMjMsIGF0IDk6MzcgQU0sIE1hcmN1cyBELiBM
ZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+IHdyb3RlOg0KPiANCj4g77u/T24gMTgvMDkv
MjAyMyAwOTozNCwgSm9obm55IFNhbXVlbHMgdmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+PiBJ4oCZ
dmUgdHJpZWQgdGhlIG5vcm1hbCB3YXkgdG8gdW5zdWJzY3JpYmUuIEFsbCB0byBubyBhdmFpbC4g
SGVscCBtZSEhIQ0KPj4gDQo+PiBTZW50IGZyb20gbXkgaVBob25lDQo+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4gVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+IFRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCj4gSnVzdCBz
ZW5kIGFuIGUtbWFpbCB0bzoNCj4gDQo+IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
DQo+IA0KPiBUaGF0IHNob3VsZCBkbyBpdC4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
