Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC6686279B
	for <lists+usrp-users@lfdr.de>; Sat, 24 Feb 2024 21:51:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BB32D38502B
	for <lists+usrp-users@lfdr.de>; Sat, 24 Feb 2024 15:51:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708807880; bh=TjDUqVC+GofJGe2xZa9DKbKuNEF9L6WiKFp6XI00xGg=;
	h=Date:To:References:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=fQGXTipmP5Z+k9EPlCr+enjGGk8HQ6hLA3fRNf3GBsbwJ7FmQvYcDtw+OHHaYmzxh
	 68RzRwVblcum/VCl5PCi/GnEPs9UWAFux5zVXdVbtRYfECQPjyRm3D36v8ACSXjQZm
	 TLCuD3DXS4n9jvy/6CtpIhkzUCGDN6KG0JkcGefGRyWGiY7bQVEko+rlpw705gweNy
	 TPaRt04LHxnclJH1dEqDTB91Y9zBuxrK9bu5PJjCJiKEojXEPhYbZTavBbxA3Ibkp0
	 +NO8+w/Xkg/YhawXjNeTHOxwHG0XX9EeJwYj1gfRogAdp2TY0CtadbQTaeP+Tj4FlF
	 Cmtjuu3EEXY4w==
Received: from sonic319-26.consmr.mail.bf2.yahoo.com (sonic319-26.consmr.mail.bf2.yahoo.com [74.6.131.81])
	by mm2.emwd.com (Postfix) with ESMTPS id 234AD384C3A
	for <usrp-users@lists.ettus.com>; Sat, 24 Feb 2024 15:50:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="BEjmaPEv";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1708807822; bh=iZuymSoD+ANgKnzivXOBhTLoEc9BGJxkygc2YRM8jsk=; h=Date:From:Reply-To:To:Subject:References:From:Subject:Reply-To; b=BEjmaPEv5rUyYUdSdsw4FPdL295DK5vDMElsyQA512ogARGKF9UWyWnnGSVeTLjoMVHbLMHXd2S/o/ltRpUDQTHeuiRsIdmIiXF8PdVPfQpCJvvZ+LrWnCXTgta5NCBNjRN9I1w9hHAkcIIxRq4hYu2RiVR3dpSYRyenH75ZAfBz9ina+W4aLyVo5o0Ehhej7Buy+jPO3R8zqZSGniHmDv+MPNoSysErYCFnZ9SJ4SbXbsR4EWgXhOzYRPOMbpbMiAahuzHXx/usl5Vn2ZRq8lgpUu2UaJAkvcMyZNI8VL1m9N1JFTvAzoQA/mncrmzFNGnzZW7taSm/hwm6/zUO5A==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1708807822; bh=CWd0W5ZgGkaqiSnPoK4qkU1oJeBQ1ns8e6ACEVf84ZC=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=VwfLZIF58frr0BwUmTIPo6L47eLI/pdkc0WOZ5HQV4Fy5w9joVgkzehDRVRn6k59qaGEtl0v5ZF/TLQn6Iy+lSbm98+RJgSDhbOGETzJIlGgyLa89xiMgya6NZefkb43YfmzP2j1NOsCeGyYftxIeaNjIHSSsnOAdsvrgk5PAkCBpCRNvOAE64i/mddiH1S1zpL/TRfcAcwdcUStYTN9rEDKntyQzHnkz+pHAfEKW1cOQrjCOPoi3QOAy0omSgll19JdHZIrvL5Cq7/OtBXWNpBo3+aB7NJseRQkYj21bZOuyYQdQDmAAT6g3TpWoZ7bYdNG5ZGm2KrI1rn/Tb7srQ==
X-YMail-OSG: j1CjhqwVM1lNEHDwp1P8.W9O_RSHs5TDK.tGJ1KyEaNqkK235WK1rk_CSlMh.1c
 Q9ShYn_gZeXaLieFFjVZTWBIWk7fNfT7X8IGUPWCQKR6FCjcyQRZHEDESB4BjUcoBeXpDZMJWSGG
 MfSku4oWUhoyBi4HiCLnTwI30CdTvA1m2EEIB9Jy3N3.TOreWPSazBILWPJHuIB3lO.F6moaTbaK
 Gr4KRGU6BGUmRNms5XHZFArkFSLIkxQ1py9v1rUbbUsD.oJGxRNGtGTtoc5zO2Vapa8jMNZiz4OL
 XeZeS4iIm7mbBjrwhSZmIoayhyK0ZqAuYBS1PURLhkEHCehMBFTXzClfbN3SHBFo7oy4oKHFCycA
 t9W9ZvFxx8clULwNK_J_9kFzSBSLsbN8ry5lx5_e7p4wyt5tcZLbwDt5PbsJKosnCSzshK1qAY7U
 hWkDyaMvFjZfSeUZf4XHgvZKnTnbBw6djM0A0bNoJBhy3hOPw._HFALSGQYZ9XNi5AAEAR1JyLhg
 iv2UROb6p7RGG.yiIY_nIbVQMbOUMg7K8tbTViCsJ4_S2qyvJqH3HNVPhLwN1qAbiLRFZ0xl9_yG
 nsQlXTYv8205l50vj0aCRCMKIoZju9FkINT7pMcqSNfriBqfMceZSiihzuSM2u.__.14YRQslq5j
 QxW3JlNYFnubBfxUhGSqFYHr.RCz5ClsqyDziEnyKddnBz9hLdIgnMo9713rj9gAGUeEeXIWQj7P
 8YYnrv7RvBo3TKeekGjlVpbXC_BGJ8MV0k.xnKWfJEqbawpg.LWmYA6lB4hUBm710GPQncEXEKN2
 uBqUmrFhg7LzPigy4Ya.Gb0rfXcQvBYkcQXnY0i4xssHiDqviawOo2IY0HGYo1Gq6ZSslFnVlRd8
 ONn8It_MW0MAP5EuvLdsTrzPUODBWJDMNzBLMtANXOQGTX2QyzxIgS4ao3YS0gUpAEbwocFVm9b6
 DdnKh460TOlGM3RDZFVvuCy8TgRHS_Nw.Xirywx7_3oUA7y4VzyEybt3H3_l_j_W4A.rSKZRvg7S
 U0GgWrZahwXOdkbzLJWY1L9lvfeqD0.xi7cFTmGWmpjvFyKOzN49eSW3KLggPEFDO3_fpxMNVMCJ
 31SoALNPbQ.ACcHNhnpnY7wD.Cb4aDuA_iBq4uTky.Euc0AxfyAy5j8BVj1OUymdhOkgnAU9_zVI
 4D4XAJYzAuXMkWRE2dPYH5Pd.bTX9vHrA6pob9g8rpKqWnQe1RUwfFJTDaIJdiwYgKW.tacmEs4r
 yfK3eIlN2ilOO7nZLhyzmgbIsbr10HqUyAvhq.RGonmarpKlNFH.xKt_KIlajxTl_Qoy_iLS3w7N
 UN3GaJ1UEF49Tx11_9JkuOQ9MnFsYCiMdpXTuJ.nw547q6uYK4hIaNO2Rz70dgCRkOb8VDtyS0LP
 G.qzoZNTQzlBDpezJ2MKw_W9quxDTXGtO5_0c43Sad0VOkGdLEoybO_ARuNyLcRGadgggey9drjY
 TerLOHgKaRMDQned_wJ4HfCy_xJj4ItgS0RPtC9.QpRl8XD_77F_kjXhiEQtz7m4y6poOh9mXJKr
 9LBkq7EbLRVQDZU5B..Rg1K4uZelSEIAKOT0GFhrNk.I0FRrB.B1JmVeSk.S9ExPUX8OOVBZllFP
 ePsbTHCwNIfeM7tDcv6gsJ6Zoa4zX4hIWS5YID4g6DtiznjJCPgwnu1P2xGyP9yI9t7frmY5syVX
 Sa_.czCuzMINryurfiuUbggi4UTi2BfDpZo7b8z6Z6dxxTCUI0148oUL_II.bdnlKtTdHADICgny
 jO30lmFJ8NXu3zI1gU_SvR5l2by7UuMI2KMRV6BuXzkIHPPjMf.us0fIDfZGEm1RkhirQ1zCE1ph
 hXFxKdllw0zF5aZW6mwAKH5PFhdC4tWcfY81Z23W8AXLseVGTUq2mxgm4ADa1COyZ6qN_uYEo6cF
 .PTdS6iGjcwoSiPC.mnzWxnkgu8k7H8xFK2Ijb6MDWfLPmEw4mAhgcUcZz4hAJ__o2qQdsfz_rUY
 BYEQdjHvbJzehshEWNRvzDT1Uvd6pE0yTt1_JQNNW8zsj8b_OSrc3iQpwXSCyp_tBR.lAFs4ywOZ
 Wi0PL6seP79zbzC2cXRFfuFb6IJxO.D9EXy5cpR07pYBpTxOBFCUWERcxIDe6SG3RsmZZlnqYni0
 qvf_kj72FFvh9toYVrsa0B4QKy5eQzxQ7tko9DohyJSxXITgcE4vbsnt01RCW0ZHawJZOe0YhoL6
 _joglSpsynH6z3ay8_qgaBxZnKEDS3b1t.emvTKQkjoJMSkFTUux028gIEVqSRlT5bVJCm2mlR4b
 nv1yNfdbguvcTv9peukg3XL2IVIX6EXI0cejGCCFjsSuLJTGwLLxYV5zI0ACuha7RARTSgiqFdVk
 1ai7KV3XoJkDv_XPZkz07SgH4oCgym20hVcMN
X-Sonic-MF: <amirhosein_naseri@yahoo.com>
X-Sonic-ID: 86295328-32f7-4f9e-a787-dc1086e61ca3
Received: from sonic.gate.mail.ne1.yahoo.com by sonic319.consmr.mail.bf2.yahoo.com with HTTP; Sat, 24 Feb 2024 20:50:22 +0000
Date: Sat, 24 Feb 2024 20:50:13 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <594483410.184130.1708807813286@mail.yahoo.com>
MIME-Version: 1.0
References: <594483410.184130.1708807813286.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.22103 YahooMailAndroidMobile
Message-ID-Hash: FPZAPGWQDH3D3LD4ASVTPY2UVYBU5A4W
X-Message-ID-Hash: FPZAPGWQDH3D3LD4ASVTPY2UVYBU5A4W
X-MailFrom: amirhosein_naseri@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Building rfnoc image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FPZAPGWQDH3D3LD4ASVTPY2UVYBU5A4W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Amirhosein naseri via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Amirhosein naseri <amirhosein_naseri@yahoo.com>
Content-Type: multipart/mixed; boundary="===============6445070670578660954=="

--===============6445070670578660954==
Content-Type: multipart/alternative;
	boundary="----=_Part_184129_1594630553.1708807813285"

------=_Part_184129_1594630553.1708807813285
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi everyone
I want to build my custom rfnoc image in vivado , and based on some tutoria=
l did this with running uhd_image_builder.py .But after sometime I got the =
below error :
Could not read script '../usrp3/tools/scripts/viv_generate_hls_ip.tcl'

Does anyone know about this?=C2=A0
------=_Part_184129_1594630553.1708807813285
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<div id="ymail_android_signature">Hi everyone</div><div id="ymail_android_signature"><br></div><div id="ymail_android_signature">I want to build my custom rfnoc image in vivado , and based on some tutorial did this with running uhd_image_builder.py .</div><div id="ymail_android_signature">But after sometime I got the below error :</div><div id="ymail_android_signature"><br></div><div id="ymail_android_signature">Could not read script '../usrp3/tools/scripts/viv_generate_hls_ip.tcl'</div><div id="ymail_android_signature"><br></div><div id="ymail_android_signature"><br></div><div id="ymail_android_signature">Does anyone know about this?&nbsp;</div>
------=_Part_184129_1594630553.1708807813285--

--===============6445070670578660954==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6445070670578660954==--
