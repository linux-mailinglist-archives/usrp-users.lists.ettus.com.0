Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D98DE7A4A9B
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 15:34:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DCC71385ABA
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 09:34:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695044077; bh=gSKlef20V6a0zl+YKbFf6egzqbGjw2aLJ+bWI4tMnYA=;
	h=Date:To:References:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=PT6TQFM7MaNIuwjBjGZfczVKQMSdA0hqd40LMwqNoNl/u1YPqu+xn48ScWg12+jYH
	 I6ujg8PEUWsuNBnUTA5xlp5qLDA9lHumzCnH2GgKREI2nJ8M8l97WEd8Jx3fFU0EVM
	 SVFPVKkErT6nD/rzgGz+95txPH7SbJO7feP8L5ChwsrO+6Uwtu6joJYnEqNkw2J4rD
	 fL7p4LuAxnUAhl1S8Ohroo7Lvqog3e3bk2v1r0/G1ziIkoqpOyCENgBnt9YVmj29ac
	 zMv/xH/Wu2Ri8ddIPf7M28CX8rTaSMzWsPUyPP3Y4ZHyp6TQ+lpGQ11OosN7AstmGF
	 ckug4Pbtcp9Uw==
Received: from sonic304-24.consmr.mail.gq1.yahoo.com (sonic304-24.consmr.mail.gq1.yahoo.com [98.137.68.205])
	by mm2.emwd.com (Postfix) with ESMTPS id 57DC9385A9E
	for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 09:34:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="ZeIMh3W2";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1695044059; bh=DLgi7yNMc0K3CFOC9Ivc7NUBLB7q/448pciO+Zu0epQ=; h=From:Date:Subject:To:References:From:Subject:Reply-To; b=ZeIMh3W2ZBSKevH5EmjuyqkWz2HYQM+mKTE1z8oBpUz5itpZ81Zv/IJAXiyHomKcRuyb2u4aiCHXA+HL1RmZZb2kODoYVID5GBXwnReeBx37tjoZi+v6MY9l7czsEBAJo4UuerAQG70e/ruTBDDUNGf5wSPW+H1IeYYWp/dFPftIRtn0QRPqO//6rHJsOIzWs1IpcAc7u9ybwA4N7LYi3ix/7SSv/rkRPUX74mBbzOY9GJQzFeEk7m7k1yTat3vmmWryDqWmTiU7Oe1NCZxr4gEesPlGzBaBcDWihxfdQwG5oYmjQqY5F0Qv5Xl3sZU0WflPscZBafYTrEqR6G2mOg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1695044059; bh=2z8uImrrynlohb+OzLWePpgBkm2NifUgQVDFBulFo1q=; h=X-Sonic-MF:From:Date:Subject:To:From:Subject; b=N41jQ4eHSPt+gtxjPa6/Ar6gtTrpJeg0Lnm/z6k3qbuKhxK3WPnaXxG7TGrK8296yCUUdRc1V4LOvx51hQNo+oxc4qDTyuJ3POftj5ca+UTyUO5Ftn2Sx5XeR70kq+/aT5cSk9myp7Gxh68IE4A8Qq5Y8uWl4AIuXNl1H8dmIjoLKteoufN/NpK5o3PgJpT93QU04d/Vyn9V3fu86ac3xX5aiBu6An+qMbPCPuyUfRckXUYOZDb06i/pDRmjpo1izfse3owusVrJ3D5jtKOh4+qK3A4iZtnshHw1bgUDv3Un6q9YoJBLt5fSbaN8khgGCPPDbjgfpEKhd68/f7/u8g==
X-YMail-OSG: YjmQNi4VM1nAqb2NKxnWLCAfefq30nCOR9YZ5D2sgu_dsAdbSAEjcQJlxbY2bGa
 JCGXrkeYghu4PynJdY_vGMiMLyKZVrMQXIXxrvS.gGE51ntcPH.RAFXiSKDO4me9rPvqPYNe5RFV
 bntToDgGh8pMi60g8Do8IKopcYKUKi6gaJTQYoAWBS_FpPR38eMwnNK9hE0GrCkmv539bbLnJkQQ
 7Jsa8QK.c1uDLsn4f6ZEzcw3TdRUxT.uDo7bui87urnePkinHRiBBN9AiiL4WJv.5DaC9umS4cXf
 uwj0zNsz8PqzA1uqVT7fm9DC02eVSmatl6ngKgDa34FJysW8YIC4wtaKKxO7x_Bg6enrXd52GWBA
 rxvBpmLnVAwEEWaIidXwXb8X1x3epYkA9OF1VrsvMSuBTnKdv5TXx1.VurdhkwKLxylGDPDSK3lu
 CgGchNHzaWuMlQWG3yUtx1ViIrgqF_2Sd.P_ZaXZp2nvLwUpdn0.qsvcJc8jG3i4SvD939rsyjg6
 qJW03gVzElQT_G0M4LobrYmfPcYP3rZamMrlXLXWOh4mz5glg4wUg4KG73BLuS4Ud3g6WOb.QQG.
 0MYdqGxV6r0c_s5.7vrQZxEXdy52gM_5TepjY6D6wes6DRRAoqF7.p3W8AEJmw1lilLvRH5vTNZm
 u2kU4MEXGVo.Z68N6qSC87jk_BkZ90rGSgjCkUELLRNLUALQn9.4mEYrUgvDcrS3uRLPpTQzdZ6Y
 w4f5TdPV8gbLWxyxx7.ww5dNxFSKfLkCj80QSIiPXRtHR6e8Cys5otA0uLq2seBI0VfgTlg0VSFv
 CuHmOVvE_n6K_Cs8XLGd_NBLZKEqxphIa4sQ_fjOU5bprqrI_X2IDK_32b0QGgpJdQlX944UW2nJ
 AatRcKr1nQR3inUrqb_7f.3p8OEijLa8JdPljUfVXdHI1qMxS4DMZN0.2s4_Xnl0IITGho5Ks5vK
 oA6qZgbw2m6Hp3Z5o_3J3IvoJjXDxzYXYmuRicgEruCxELa9PQlB98jYsh3Sf2E7OLqkw20UH6wA
 zJklOYtLFzYN5jwK5uBiJrfh7FNhu4KRTn3fbZYoYgoELwLxfKZj2PzsupWVA4Hhtfuxo4mxwvsm
 LNsupd69Yah21eNvlRh910BrJiqldfk_fBDzyJeW.DaKOB4XoPui1cTnXzlNTHdd_qT6hqj.5b5A
 bSWk4okboIWB0HOV4Wjw70FAEIX01Famvm_DjmptYmf2UPgC5OPg6nWhAiNrqIb3vI8eG5QufYr1
 4SFmqLJG8TKIIAwJ0rIIpM2_ZAs2Rgyo0IC9kZU7X8po9fOvVUida7esc1GGfOypWuBpF1LukUUh
 iKEMI70B9ReSAmyUS96GDXWnbHOnYtM3kVD9vYR9AShPKYqK67onPZxKDpdXNZifdu7Jed2NzRp7
 yrU3bimOm988NldjAVqEuiyChxYaUXCEP6fqeJVNavUc9twuwoj3ryvNLVTgzctEvsy8V0ZBdwVm
 5Yo5LiwJYXkmqKAwg9vJ8aWPKIvoxZCDn6T2JbrSHDu9cmOHLRHbWtoztkgFAZOi5D_uN4njk6yX
 66G2wIg7jHp9OUaa44wZ0ftMPy_9WpIxOWQIJeNjQNp1FJx24j_gJH37ZoxcjuywEIqA05K_Yqxu
 dAuE_OTCIG52tRpMYBZTxNsHwDJXXeoL5IByfk6oTi2l5AwbZdVuRkGNaH1uPSr1uAUs_acG0LZ1
 QMrvjZismEt3yb60yR9DDA1suvJc7M2n.dsnNVxELn3_gI9vSp9llsFRKPCzH54vV20s4vvRbfPJ
 9zMwz3pMfnYOb.x4bu_SvLqGK.YfddkQHmDGbb4zDRhAebR.J1bZuPMibG5mAuPerquKTrzQyKa.
 b_CwE4mXFn6gSKStEjGn.57vtbSy1LPsGUh5K2DJ2omEUqj1DlAPbyi6c1QaKybadHg5sX7xzjXq
 Py6Yu7ZxFxWUpsyV4Ig7ZA_r2Jv4IFrIuBCznW284SMRf_X1N4Evb7GPbO4pG4D9WtEHJyDXy_8e
 K8jxoDfyaCjuNO2.6GpsAJdBrW65DIfWbyZ5_Y2oZG_Hy.NJEOM2Jr1Xl_9eCoq8n_6K8fxWJq4_
 PdeQkfAiGUaYUJt9Rnl8YaGptkzwQ_6OUZIx44HS071IEYJSk0U8X7Val3Y02CEULupiSF1Pmakb
 XStCaMJ8y3x2uIZaowI5OBR3z6IK0N8Yck7IF0lzuZS2QQqCtf5KWmBw.q9SFPYJXGHdJyzk8Pxj
 HohzXhvzyNtfocLmG
X-Sonic-MF: <mr_samuels_124@yahoo.com>
X-Sonic-ID: 26843200-5b8d-47c3-9b09-7efc50a058d1
Received: from sonic.gate.mail.ne1.yahoo.com by sonic304.consmr.mail.gq1.yahoo.com with HTTP; Mon, 18 Sep 2023 13:34:19 +0000
Received: by hermes--production-gq1-77657878bb-d5lfb (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 52464af135d0f1c4854392e7bd3e5cab;
          Mon, 18 Sep 2023 13:34:15 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Mon, 18 Sep 2023 09:34:03 -0400
Message-Id: <25BD013C-32EC-44DD-9AF5-46AF392E999B@yahoo.com>
To: usrp-users@lists.ettus.com
X-Mailer: iPhone Mail (20G81)
References: <25BD013C-32EC-44DD-9AF5-46AF392E999B.ref@yahoo.com>
Message-ID-Hash: HXU2H2ME7B5I4PRUEXPIYH47LGAPGEYK
X-Message-ID-Hash: HXU2H2ME7B5I4PRUEXPIYH47LGAPGEYK
X-MailFrom: mr_samuels_124@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Unsubscribe me now!
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HXU2H2ME7B5I4PRUEXPIYH47LGAPGEYK/>
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

SeKAmXZlIHRyaWVkIHRoZSBub3JtYWwgd2F5IHRvIHVuc3Vic2NyaWJlLiBBbGwgdG8gbm8gYXZh
aWwuIEhlbHAgbWUhISENCg0KU2VudCBmcm9tIG15IGlQaG9uZQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
