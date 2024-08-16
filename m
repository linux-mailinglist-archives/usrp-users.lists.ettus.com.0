Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C52953E6F
	for <lists+usrp-users@lfdr.de>; Fri, 16 Aug 2024 02:52:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 24B0A3854BB
	for <lists+usrp-users@lfdr.de>; Thu, 15 Aug 2024 20:52:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723769570; bh=hQY0kUlQ8FoIFzvWgbtzYf5h608AyegkyG1FihsJCoU=;
	h=Date:To:References:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=tM/yUOmo4mPF5iBgN7GY31FdPOobsaXqpQ/HrJOFTDbX9qb+40I5Ur1J6z9S42REk
	 +KXKm5JDY1SymltLiA/awGAHVBqnNqK1X1KthtqBi1bYwnmyp7NIAQ2e6mSBDkt1na
	 FCnh1BFR6tJvSBUj7QrZsURpF8PyKBh51LKtxoNHMnReCGdJDZ8KK/F8UmwkpWOHzV
	 gps5bH8tPqfcgX8fvzhpR81p4M39p8XwAuaJSFtVSztm0bI4CV1uJfzqGB1kke7L/2
	 zcgHIyMhOwWJLxCVfJDqFCF2n/VnGm/Ww+ot6/8AZPsCec9dB/Aa0nNrP1I5wz0P4L
	 t+RaO5ye7VZ/Q==
Received: from sonic308-3.consmr.mail.bf2.yahoo.com (sonic308-3.consmr.mail.bf2.yahoo.com [74.6.130.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 0494A385174
	for <usrp-users@lists.ettus.com>; Thu, 15 Aug 2024 20:52:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com.au header.i=@yahoo.com.au header.b="glmqWIss";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com.au; s=s2048; t=1723769552; bh=uC1VJfeoKHnZRTJjPWWq+febNUuF3aV1YZwfs6UybuQ=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=glmqWIssq0j6Kx4CJsqQU62XTuwbSQyIqLbioECbtw1syHlUcaNSrldtYceEdCF2BBZEBlsN24rz0Uc7b9JSHm6pjWGOd77zl7PTz81KuUjzrM0uPFX5AL1LSgB61teN8+ngHkxa7iGYOsPyGNMPW4tiA8ZDodWDUg+wKhuDRT+D+eRnfE5xaD+byCQRTTGpZzF7fOSSVDpZfvqZMbUiBaODgJTQSZLmKLZgi98b2aTGDEsS5yQCpu5yJjMvo5o7cjMMBmXTFi3daAV8fXERyhU0H8lntxvOIppsrsppRqcTv5DE1Pkf/DpgIxWtBkm+bSTuKqNkdYE3fcwHQQfnxA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1723769552; bh=fCjBiGCY1BM5bO1aZe68KEypEeCKXvmTV+AKCOuLdYI=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=VAVMxzdAhtfvGX1mWe0qqzaxp4QymhBBAW0XeoyS3dzreG69Qck3kw4jfv6ojAAsZWLpuAL9abClCT6KDHYBQxQXrJovcuwdAO5ZN5qJCn6EzxpGbc7VxbfuwE87YOj6aKI0NhlIxnFxiZdOmVsI/5AnadUWsZ8U99OUJRbieX4+8oOjSyCNkRt9ooVi+AzId0e0j7llZ3sH0buPuDpvmnzhPw8uDVAJIcrnuV4Vq98HqI4WjfMjQLmwxqEUv/rDIh2DoOJ1MPfJeyIS3nlMyBhmPvj8p4mJ4WrSwkHD8I/hm9qjLhwOSxjBDQGPSKEUZIR+CqMsNa8VwXr5sTUsLg==
X-YMail-OSG: GSK3vMAVM1lqFX.BdmIO4bAOqVaP2JQCP0gAMqB3u4boSzR4NPoP8yCcUz8_ZoI
 5nL6K4Puc5KojyMda_0rA_UNqclDtOFj78eSP9QDfRxWmDKyHckU96tBfoEY.KYuTjJioKIDTGRN
 .NBdwmWHt84GWikI8Sda2kc.DVAREGmeP1LTyihawHka73dsKF9a.6KAYiawiKSl6swBvE5ukBsJ
 aOiJwQfZyNB_ZySnuKmM3CLhczop61oYRtJGnbSwTe2RfV1W0xczSV3mvuntPwlE4vdpBjRUTZ7m
 GsdJwHdg7SZteAhIlD6OR4BKMXPwI8E1LUJyg5x0OzWQLUfpCwyPQowZIA6DqR_Bn_qB8ES5B2JK
 9ErSuESTlk3g7eYSLKtDXUZ45aIHV.BsDzGFh3TxcYCxBzj2KoO9wtlvneykgqCpgL7nCHCLAZ20
 v1YqEClOHVAawx32xLLMg4UilOzJt6AeWGPHxeYlhDzxwOr6ei_hOtx3oXDe0x2F9kxahXNd73a6
 rRNTlrVn1SjvnuX8E4I62iY693k0YUSUm1pLKL6LnczPa1I8UjyvGI1g.g0XBamwB1VMVLrn4d16
 Oj55ZU2HgzyoMIdGnOQT6XK7y47e3XbkWjm7uwJ1nnzOMg3t11BC5QSKazRkhdv.77pY7B_YEdhF
 AEyB8gQkT80L6eSfLWrrhF4Okv3Dyw590qKJCfIAHx9IDhChTYBv2XatA2RBnT0IjemD4ys76jJv
 w0d.9qxFZve5FHVwE93adDJ.dDyhRyjwp.HaLlKtqqzDcWWsXLWjQ9uKgzS0PxZolg1cT5UAOJLO
 y3rVvCOroVz20alRZ5EbwSexrV7JSuLYXq3uUPt5uFxXYgywd_.DiiSvBveFPLu993SuQ8A8f.5t
 4_PGMCfNrGrkp_EgjxIufgZhfK.TeHrx5s7Ix95WhsKxyRDHUlEAPifYix3PIGWFXq2NFDITgctL
 _X5LWY6Qg2NjI5rpe4QbTpcoZXpSACx_X9n7Be3_woWvQnoMr1MfeBWKE.vc9MnXVvh3cjlWEh3h
 HjgXfHXsoGIzKgEQ3oV89.CW9jg7.j6IqXuOqMCTqGRz4Hmh2MoNai3ScnSSK9iLxU8ndjn8vG1.
 OyiTqRl57wN97aV90Z.4ylY0j6_aNARrxHBc7PzFv6LiBz0AOPK4y2FIzIrsM8Ef6_67k47pt0ar
 wyyAgwIDVp29wZ16reB8WrjwnyniPzm4gOEv_sa7.QbIRdwjaz5mCtmGcq5bmeHmoHZmS.tb7vKI
 5za.4WdgKNsOnRWTvkZ_KQHrAyCb1uDRmtFC5U901HpxRRBECoFuwWMgivenPBdeA3ORCPlFb574
 ywUcqIbdeFjSAZsj8poUAiwEAv6IPlCoXXy3qfo3lti01twwVLZZnWPkJbdZEANZVgO5j.Ot4xy_
 1dEQCBB3VeRfpYILNjXuRn1TcdOEOjcVNRbmYvdK9PjpT37sr_9.hzhSLmwa.roWW7j.OAPgXYkh
 fY4O6kE9CiV4ToP4jvfjtsok0JsgH4EyRomQoIgEXQwM6UEUYkCdTYizQxop30iA80kYj6QMTc7B
 GcqwJG4vWgTK5NsM93imskvYM2CBhglhgxtUbPwkvcTZw3C_X7WoCMZqvY1eddl7_ZL1Dj8xspZY
 3ySJE1tpIXK5DU3G9Bbgd.rVKt163SD4PwJvJYNBOV1JijMywtOlDTLSO4VfNBWuLraIxuhiNYbr
 SlubINA_rr5umNwxyyb6VYqtBsRG_1sYzv9H.zUA2QcFEb_2U6oCnTIdZZfJ_he0tXPQa7H2IO.6
 5cyUvJpWGNEC4X3RVFbKZHqIq0uEXNeB8KDHA0zmhEorztb6H_jrT3.rK_x_zxe.pnrluA3zfbAn
 iD.42wkOyXKdkLKKNGhIdTgsEKd8lEK.jF0uIbRxb16pIGufWyqAzIztwo5mYZrInL8gUYSXejNI
 LThS1qN9tXoygdVT30CbFJz3YO3192tj0pz.1Q9P8pei_f0NyNdsW56V4PmkqgiQfOqvF.S.4Wlr
 XupSfDdOU07zLJXOgU.85d4Lza6qBdOLo1U98mnrSU2z4sZWqZ4QHaRpZKNLdyzHKMXcVjl7mvrf
 MPe_lus_rv6ITKH_._HnjFr4cdcvAQqmjXG5y_V1l3KsSmmdb9cH436XXbnmtoZUJdEBIsM8Eqbe
 tIbKGYTUZv1Fc9zOoqpD5DLw4.OB2GkaNhEqXX1LWyBmiyThvs_3O6aF2t2enXeUeRYg2aH.XZg7
 tgZV5MMvh7.Q6y1SjhqyaXvO5qJZd
X-Sonic-MF: <qanwang83@yahoo.com.au>
X-Sonic-ID: 5ee804f3-2204-4b24-8eab-3eff2acedb2d
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.bf2.yahoo.com with HTTP; Fri, 16 Aug 2024 00:52:32 +0000
Date: Fri, 16 Aug 2024 00:52:31 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1465511867.4443721.1723769551961@mail.yahoo.com>
MIME-Version: 1.0
References: <1465511867.4443721.1723769551961.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.22544 YMailNorrin
Message-ID-Hash: FZQ4PLLMMNXTEJ6VY33OCQHN4DENE6SP
X-Message-ID-Hash: FZQ4PLLMMNXTEJ6VY33OCQHN4DENE6SP
X-MailFrom: qanwang83@yahoo.com.au
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Install Daughterboards on N210/N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FZQ4PLLMMNXTEJ6VY33OCQHN4DENE6SP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Q W via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Q W <qanwang83@yahoo.com.au>
Content-Type: multipart/mixed; boundary="===============6699004914304858798=="

--===============6699004914304858798==
Content-Type: multipart/alternative;
	boundary="----=_Part_4443720_1128339763.1723769551960"

------=_Part_4443720_1128339763.1723769551960
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi there,
I am wondering if I can install a=C2=A0LFTX Daughterboard 0-30 MHz and a=C2=
=A0LFRX Daughterboard 0-30 MHz at the same time on a N200/N210?
I don't have a usrp yet, but want to figure this out before placing an orde=
r.
Kind regards,Tom
------=_Part_4443720_1128339763.1723769551960
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp49d0d179yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div dir="ltr" data-setdir="false">Hi there,</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">I am wondering if I can install a&nbsp;<span>LFTX Daughterboard 0-30 MHz and a&nbsp;<span>LFRX Daughterboard 0-30 MHz at the same time on a N200/N210?</span></span></div><div dir="ltr" data-setdir="false"><span><span><br></span></span></div><div dir="ltr" data-setdir="false"><span><span>I don't have a usrp yet, but want to figure this out before placing an order.</span></span></div><div dir="ltr" data-setdir="false"><span><span><br></span></span></div><div dir="ltr" data-setdir="false"><span><span>Kind regards,</span></span></div><div dir="ltr" data-setdir="false"><span><span>Tom</span></span></div></div></body></html>
------=_Part_4443720_1128339763.1723769551960--

--===============6699004914304858798==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6699004914304858798==--
