Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A29A070833A
	for <lists+usrp-users@lfdr.de>; Thu, 18 May 2023 15:52:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7CC8938478B
	for <lists+usrp-users@lfdr.de>; Thu, 18 May 2023 09:52:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684417977; bh=OaXA0dv7sfRQflkeioDBPlW1Dk1EK+XOSBPQEPZ1HdU=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=qqh+sPdZ6IO4qUc6zHJmjDDw2sOpox89CSXFAmlaMGXrjPbZnE+ldDRHyT8iGichu
	 1RZCY6+9c4SEf5sqASwps9cM9HuTtZN51MPzgNOI8wfmA05bjcsGA8PoWB1Lj+oD6c
	 myRiVTa+dMq/qopCE4hc+vKIN/OVu/jXp9lX6h4acZtuWgZ3zjlEvSTz9SbGDnVx+c
	 eF7JOjscDitbswIfEDO9pAvohAoRk8ppOX4tbOwYLzQ84FbB8R4A9cHe8p57jnpqxy
	 93ihN2lpp9FPa71pPYlFjJ97kiYIUCk3tfAALl4Rs/0K2Zfni83bfXv022/O4jreEh
	 fiD/uXTj3JMMQ==
Received: from sonic304-9.consmr.mail.bf2.yahoo.com (sonic304-9.consmr.mail.bf2.yahoo.com [74.6.128.32])
	by mm2.emwd.com (Postfix) with ESMTPS id 2E7333846BA
	for <usrp-users@lists.ettus.com>; Thu, 18 May 2023 09:52:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="FkT78vrs";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1684417949; bh=WNxKMqKILdYNlVA27XUF6GAYHMK88C6mk3P+mw56fkU=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=FkT78vrscSVMGLwqd+bytgEang+X/sLiC7A+1gIuk5P0R6He+nB7bdeqC09pSr1AuuFOesrO5uNjYoxz2+XAkSADvuZOdBUUkiAV+CCTwzlvJ9ArpYDcICtcbCDKmrfbQiejW7l10rBd6iUcg5CxNJsinYYzgAngBUQbk/4l4xmHyvra+53sIdTBq7CahX38vRhU9ekFNzphp694CkFTSZJqanEBUsmb1FVQeVCKYXlrKscrAoCjq3hsd/DAIgs0B5oVd8a4f9nW5tcu6uHmgJet2opkGlZyS6qnrI0sGaLzPcXVh6Ty6Ico9lGoNnu99ynZ8VPJbOb7VeXqd2Be5w==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1684417949; bh=eTmSWmED6smlpIBu5cDM6Mzg9dnOi4dZcy/caE47FK2=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=fd4NbAZqMNy8InfWp2xLutSxCA2TsYmRw+Lp6yw1JnD5KP4kKJpb4v0GEoNDI/Xjd+VOQCcf59P8JNuZTDEWzzpn9DF9RuWPWc/WRNdcJlWVLB0QVA+YLbfbfONol5WeVdLyGKL/J1OATJInzIMoyF1KhUxK68DzU9tVRNIh78If4f7VpBUE+s5OI8DxAtW8iFTUhshdCP7GOxDUv/+DXNbXeC475RC3LEH5xlvsp5rMfeu3P6h/MSGthSbDnQebHNBc08NXwHyLXe/nT5XBa0ZJaTTdwyrynXlRCuwR9o49X6ruFONJqnPl02HAm3WcT1Ulkpo/iwV5oBSPAqpj0w==
X-YMail-OSG: 5EWIYWAVM1lamEJnbQHyC9asZmgWIrGiVRyh49h03RTgL7wWmGxpiowxKQ0NCnm
 A1kEBG1TYYTywc20ge_wplnqsulMPdlV0QIivWTLtKVgDAlQ1NJWTVcjDH_Ftw8wjYd5owr39NFv
 cqd_5hxK6Frz6PPRqP3IpglvzigYdOyWRJ60NDDTfBtKUj2gwyPQhrU5bz7.qP5dSTR7CPVL8uPk
 yvBgcSE.DoK597j7l69Eo6DfjK1LvUAHxX0lrd.1IJUHoME4WZqic_JzgiXIEd3DkB22ItCDE3Lc
 qn7YDUySAE48DuZYFUDqxoUd08sFKKr2VK.oNyYCh4tr0eqolGdGUOSQex0MWnDdbJiF5l4BLpT2
 XehOwhCD_jTkTUm_Pz4fMf8ckWqn_opQDChQFLN1v7To_mPJsD4kiwfL4C59sCoKPzcTFgXRUeuO
 uclStAP6lfZyIaEvCzYmIcWIduIOghuBD_BV__oDxUoPAeJWr6rnEppOtzbDqZloJRCoRSgJkvWp
 mc.hzVdBgvS8g2EnWv33m18sa9Jks4D.w0WkmlkS.kchl956yxcE_S3thq5TXSfx4HeBtkC2CrRw
 HtyQpVPX1hsxOUDNZBpVBtM7JZUoSBNoI2YxvRmnSAyiaDoec3DcK4Q08nTU2cue8fhtqqdJdOSf
 H8cuy2NroRholR79YBvCiGEuLBAkNKekZLdo72jVzmC8LqQ5EiBTewvvNRK9pw9Yrc01gcuZ8whl
 rO5xZUOfDYS95_NFGwQAQ9c_EpS17P.din4gTvklMnIG_Jj0BBBqMAxrl0XbTVaEL__e.MEJxyAc
 LGrD3BSvmI9wPejAWeGKWXOJHOE9S1dU.uiKbtqnUDRmVk2cbkwIcVuB408_9rSe3TR46pChzdty
 _.LXvmx5.G1wiSQRKkUg0QK5iaux_4cxKtH9bx.UrQ_5xqxO1ztxdan4TBuJwpC.JiCnT63eF5Ng
 Hz4NdijncckNEy_o6PwNwLs8pNHAFXlndsFwlbbCMejZsRoStQUl5D8Vy2Dx96Uj17dev6DhjEwb
 GppXHsiI1pYtNfP6MP4pK0UrS1ZXk0hMKrKIQjhusw1E1EIjs4ak8_FSUFlTrXO2aG0n_spTkng6
 x7o4j.SFKtitPEECWvONSSOrQ2cz2kQ7vNu57_f_2Rr7EenwlbtGE.ay4PRkaqyXRKSMIYAN_0Km
 ipzQuCe_3SnnrXXp17i02PS_eF_FyBSX3WD.X6KjZYedAPqGcy0igbvqetm4RZ2.rmA8f2_ioeuK
 mHi85pIDxfkHCOFv8ykZj7RnnvVyJlncuUILhwt2580NjR4jOKmeo2H0GSkTHphBWvnEBawbcIzC
 5gtPsOEu9IHklak4sZQuDzlTPF963.7Fym39OwTaRGnXveXF59pkaTzoCIG_Jdq69Dz4WgqHZomJ
 g3qqxIcWpLx5N48w2cMfn6PDIRAWf1i00yGDrPDwncd6GsMgjRcxQVq87sWNUDsZ7HeGfR3gX_hb
 jLyZ2MzHpaEqMhom0I6fqjkYRdGejXz0YSUs8YmIrCS2zYIBrWH.HkiVoUCukzzT0qtXSiDWepWp
 YdiCsUlxFSi817bUN22H_sz7ss26HfmMDDjkErU_S700bmR_j3g7kEaNfD7PVBLyUBH0M4HNQ67.
 mynFcr1JPRGfmHzO_hKF3Yv.W25zu_657iijn0PZf0dBIVHoz2gFwuw7F1MwsrV5sa5Klc6FvVUi
 6q9OMooR8FYswhohLaobtesoO71GeNnj2tF0QOUrco6IOD7BsXgQsDp81XNLLjMfMRlIwiV8Ipp0
 PTk2F7yZ3jlkj_I9A_swbf3i.w.O1KpzDEWe5TIT08Ib_aHEMb1DFqIdw9IfaQ.eze_1Y5_YGmSS
 PUdW37Rk2_cTjgh5VOu0tVE_5WkdWY3hpijDlwexz_CWb9PYZSFtpinuJt3xrMVPWTyRCqYhqpZL
 ehYooXubUSoCseaCxbdRG2QE56SSG40r2R.HYbUu2FbZhj_Oh5jZhhkAm0KucJ7B2zNwl1b5myfw
 BwOxM0TGpmIqVIZD3KxPuKiHEKfYobX3K9UqfO1Mc9ACEvDYvpwSpnd4ALNMMmsWZ9LTGTE7lJ6a
 c.j2VcKNyA96t0ntSU8DyQ1j.LyhxAwRR1EeeCdweXWYE4JO3_LNTuUo1_.DTEuTk6aSt4QDtgqR
 1TPucmOWUfUxMzKxZbEIzVr6EkYUeoOpHpVD5mAS1..aW3_mYTKxhjYa.TQHZzQsBFuvgtrFdzqn
 MLPSCsa6dlS_AkYdoZux7AN4NqmJi
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 348c5d6a-d5ac-4dc6-abdd-f45332bd7f0b
Received: from sonic.gate.mail.ne1.yahoo.com by sonic304.consmr.mail.bf2.yahoo.com with HTTP; Thu, 18 May 2023 13:52:29 +0000
Date: Thu, 18 May 2023 13:52:25 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <45818175.2260613.1684417945454@mail.yahoo.com>
In-Reply-To: <Q3lxvAVxiFJQX7dWAqOa9E9lBCZ5idI6TmEWSm4BA@lists.ettus.com>
References: <Q3lxvAVxiFJQX7dWAqOa9E9lBCZ5idI6TmEWSm4BA@lists.ettus.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21471 YMailNorrin
Message-ID-Hash: BTGGILPWRDHDUO66Q3LNQOVIUMAALUOE
X-Message-ID-Hash: BTGGILPWRDHDUO66Q3LNQOVIUMAALUOE
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Format conversion in UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BTGGILPWRDHDUO66Q3LNQOVIUMAALUOE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============3122874048128444981=="

--===============3122874048128444981==
Content-Type: multipart/alternative;
	boundary="----=_Part_2260612_1117462001.1684417945453"

------=_Part_2260612_1117462001.1684417945453
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi,
When using=C2=A0 uhd::stream_args_t stream_args("fc32", "sc16"), what is th=
e scalar used in conversion?=C2=A0
Thanks.=C2=A0=C2=A0


------=_Part_2260612_1117462001.1684417945453
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp5675111byahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false">Hi,</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">When using&nbsp; uhd::stream_args_t stream_args("fc32", "sc16"), what is the scalar used in conversion?&nbsp;</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">Thanks.&nbsp;&nbsp;</div><div dir="ltr" data-setdir="false"><span><br></span></div><div dir="ltr" data-setdir="false"><br></div></div></body></html>
------=_Part_2260612_1117462001.1684417945453--

--===============3122874048128444981==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3122874048128444981==--
