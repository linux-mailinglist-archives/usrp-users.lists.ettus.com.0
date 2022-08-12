Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C417591149
	for <lists+usrp-users@lfdr.de>; Fri, 12 Aug 2022 15:21:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2A85C383FFA
	for <lists+usrp-users@lfdr.de>; Fri, 12 Aug 2022 09:21:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660310486; bh=HegIww5P2FsaSKySnfkoeb9b4ihgUhO0UbmAmbwVYJs=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=0SHqTn6Dp2RTItLi6VkZ7esYvPvUq7XchDg0sS+pQYfZqvcLznR/RRG1coD4yr3xD
	 wEWUEDAet1gtNjR0zDOh5PDYkQnG1QQI6IcIoeoahlFABVoOMcK6HcLattPxBEnPFe
	 Q6EYBFbjVU1sqXqiTjgeQNU6rnGsQZ0E5xUhWGkjzyK2KqNiEcwxOj++Pg6zTIy1ho
	 DBOIUzLp29b8dcpSshklKimH09MyvowyOC/QX8G96MDQhrZISbMrZYLbxPIXSpa7KG
	 E7kNFegpuWEjORB35xPTzNsn1FD1Vsh7B6qAlSpRlbMFXO8SbIYjmw83okzG/QLflZ
	 CBVUHRj0WMKlQ==
Received: from sonic312-20.consmr.mail.bf2.yahoo.com (sonic312-20.consmr.mail.bf2.yahoo.com [74.6.128.82])
	by mm2.emwd.com (Postfix) with ESMTPS id 03CA438102E
	for <usrp-users@lists.ettus.com>; Fri, 12 Aug 2022 08:49:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="uP8pj2Qd";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1660308547; bh=mIC44xMm797xcedmp2l60EVCsL3Z/ruDdODtX8R1t2U=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=uP8pj2QdIvcssAnAVCr+8ihWggFzGUZIxQvPDj/HPhx5F0tQuwQVoEV5MzFX1GDF6vz9o2HRgOabDV5k/8NA6wDRWUmj3pJtzpWu6Ei9nQHQVb5lJoUSCezDYOrB7rUTVsvn0h5O6L2i4lzUpciZG/w0T5vDEL4FeVeTVDS60o0xr2VCDkJp7piCRDB9EASeBQgpdVZWpX0FojMV84TzYBNcPW79rdlPyVBjW3GAHqr0BFBob5Kh5O0nb3w22EK6u5S44xekglmkzEcqrLH1dcYEaTAg6vxOkde7Uc6Rf66g5xwIEhs/qimdiXkq9D8ROxMXATtwzVOe6kt22EGSCA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1660308547; bh=ImX9PF4fJcN+ePJN0yfYoF/vhfPLQyOPJod8qhG8LH0=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=dQMZrBtVCxyKHySOEaTQpnZU+k9+A6jOjqXvZnhw3N/DNpRSr6BEtApIqd2wFzvxSn3lJUB3diGJsVREE1LGDKp3v0ck/ey6+bI35TtJ2SD1B4bHs1zm+RsOfqYrTM+zVJPAbRRFkuvtYeDaEbzUuKPrOXGCZhbKCLKv1SldjMUSA64+b4OYLkbg8HFfOrG1SjY4v3eDEO2dYgazXtml9elltMYLZ5dTsbe2SvLTk0kPL3k9oGAoveDdNSBmNdvf+8HNjguni6TZEprfRxENd9tX1cP8VST8X0IofegBnX10x/E9G4rPnjUPE8jgloZHgSF33eIXZ9zCRaL0gzVE5g==
X-YMail-OSG: NcEv_9gVM1kYdEfenrjuLKCpOoBM8DniUbrfRJQKx_fO1gT8JtrqOaVHOmuvuk9
 ZWUpRZoRaRS.Pt37Xuixk8YedmNy7PmxC2Q6q1utIwEY6j1Apa8BzMYyGjGuctPQhGVUE_s97apL
 n4996sC5npnrWOcVpHWGT6elr7iOIhM_z8USw9TUw6ADTdWvWo_FWtX9l6ZfzHasVmmD1wb_NPmF
 T8Iw7WxL.77m_kKr0Reg2tR1oPrWOYQAnNPtUJGCK1t_S8J.6gpNPeJiLjdcbpLwqGY8pRowRNHE
 9I5ofRh3n.3VFg0QZts1lEfX3YKRY8IvQh0uArW_c5IyoCJl5aISxhUoYgHid183VGz5zT47f_oT
 C7nr5uMSw2HND2vQOGziazbBpD483lxkfHY_rmRGEs6b0yoZhsRgEXpHIXIhZsbr.QaatuYCUdpS
 OLJJCvQ9qhOtQaZS3vU_XWE9hkLY0Im5uzVIepp0pEIvle4wxAaWEKCzLSrqxrggyyvPD2iaFIYV
 ofC_fJFuYQl882HNgrCLnxW0cXvYes8vhdS54fSOH1Ma52j4uTLfpj1taYm7hA1X6cWKi0DOEFaR
 _rJgVHqR5ag9wnijkD_1Yl7v9MIHBBPQv3ShRWa4LDJrIx722gvFBc4cn36HwsSfEJfN9skBk6SE
 qQ1tO7hI0gXgzB_fWA8HE4P5rgZntbbCRXmlqNTz3n6zUKNpptyOI_BStFMZFLbazUZ_y10yReW1
 UwsHAN4hJXIrCMuxlD6uo7Q1YaT.6qwYcYJ2wsFUIexZatmLP827fS1Di.HGG7yDyP9q.w8v6hPY
 QOptvklZvb2Bw57yBEOSX4YKllyA1gnbxfNCG_FEUAT2uyTcr_FtoMc3jRidKafdkIl6hE7SiqTk
 yrVakn021ZMliukRNCRVRF7eMd4tyuxQ2T.5d4KKoQRmhT8_7Jm70G9Hxupj.1yp64zdc5N9JIZU
 cgKnyoyf2qxA76yLByu.w6UrFo7nAho3z.2QYdTCuBB9AYGEFvg_Dajr2qMqCMpij083E4HAwwpO
 QntUtUYHxkJ_bqYSjFf25VJVv9J16ZJ2HUhINd5LDreY2tV3BNHfzrUcBcHW0UdAZB1Hydh7q_17
 nDgN1k87WXjlQjkVTglThfR0ceqQl1tXSvwHkuiwHOF0m7hdn7JA65NFdmqkZWuJmAiGXaoIK8H5
 yU9Pe7JsyIWOFQeSXm9lzx48W48Ct6O7N8HLAiAGGKx.oXzcjttyAUZ.OtYZVy_oEu0JqLmukwep
 4Ta3mzwSV.t.k4QnunK7Gp.UBRw_rO4jibV5xinEH0r7prP_ic3fIrcfRJ4Knrpuo_M.1q6Src3R
 IQRdRA9nhRyX6DJJe2_zzpkivUUgLPFqDLcX2Eam0q5RRJaa0BXG4yK8iceFw09oJod_zdK6Uckp
 uwe8tB97NjnJuXb9soL79ZcGoApRhY3WgqTYnRwsIPg.yjhdxbc5jKbtgGhMWsVYlIb29uEpxeis
 5uErxeQBPn2jbOgFD6jBB1h6kr9zxQWGYOGLlFYvPxQekOF3_DF8iVpeLSID9JTegnDKwaGiHB9d
 0gJnqVYbsIKyZdfNBrxpb72cafC60cTbeOsdpMAVF396nZNj97cuzTu.NOMvM.n3s6QqZHiYaMQN
 NgHZJb4xVsFgbRzCvAy9e0YwoJKIFo37mngUkzAwfKiHDPyVJdYo_B20csDSfd3VwnjUd1OjcZIj
 pFcWEWLFn4JIaEWN_PlenUWFqOZs07KzJuur4D_g8CTJBDixW87RM54Hkiuj7hllY71Taameh9.6
 84O8ufe7HcG0WT7WQwUDhxTArUeLj3b2iaP9EtOVgeLRQsN8jiaRUN7D0eNISDmZo8sqYrevLQWi
 8p3Ajvrkw5Mffb85d_KTtJi0mwdscpu9C.f.ZY5X8gyulBrSQU.7GOO9z2URT.Rsk0j.tXhGhsZr
 wt0LxppCFNXjmnLIgtTi2HRggBa2vYtrr.yNT7bvEYxJefzLMw7IYzOfsfl8IIBm76eOM01gQnwU
 Gsr6qIcGu5TF5QBoHVax0nZk2WOgC5t8axfRh2IAKA_D.03bRkvcu.nm25H0Urx1rpsjh7TB3EUC
 vDGpF3pxspvSwAtfv1Qt06kYq2y3eqKR_kzYaUB14yuEBnx115C0L18c_xZ1tYHoiy4Bu.Sc3pyw
 2N8_GG9Yjb_Tbjtr5iT5iPgPzmsKyWsxNBVBH1jREiVeAKzppFeqlon_2ZleVOc1RqOZAGN6.e.h
 yiq.Qam3uhiHbysOJT2zn5wLApLRdZA--
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.bf2.yahoo.com with HTTP; Fri, 12 Aug 2022 12:49:07 +0000
Date: Fri, 12 Aug 2022 12:49:03 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <2138502946.461336.1660308543302@mail.yahoo.com>
In-Reply-To: <12wYRWCywXfMMcKx6Fwi6NjTp3hBNGO5cXWdkuHEg@lists.ettus.com>
References: <12wYRWCywXfMMcKx6Fwi6NjTp3hBNGO5cXWdkuHEg@lists.ettus.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.20531 YMailNorrin
Message-ID-Hash: M5H2ZC6FVRGQTOEAIOA3IC6GHQNIVFX5
X-Message-ID-Hash: M5H2ZC6FVRGQTOEAIOA3IC6GHQNIVFX5
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Power gain control in USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M5H2ZC6FVRGQTOEAIOA3IC6GHQNIVFX5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============3552042963686652171=="

--===============3552042963686652171==
Content-Type: multipart/alternative;
	boundary="----=_Part_461335_791947984.1660308543301"

------=_Part_461335_791947984.1660308543301
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi,
I have general question on power control in USRPs. I know the gain range is=
 from 0dB - 30dB. How is gain control realized, by using active amplifier o=
r adjusting passive attenuators?=C2=A0Thanks,Hongwei



------=_Part_461335_791947984.1660308543301
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydpce9dfed5yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false">Hi,</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false">I have general question on power control in USRPs. I know the gain range is from 0dB - 30dB. How is gain control realized, by using active amplifier or adjusting passive attenuators?</div><div dir="ltr" data-setdir="false">&nbsp;</div><div dir="ltr" data-setdir="false">Thanks,</div><div dir="ltr" data-setdir="false">Hongwei</div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><br></div><div dir="ltr" data-setdir="false"><br></div></div></body></html>
------=_Part_461335_791947984.1660308543301--

--===============3552042963686652171==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3552042963686652171==--
