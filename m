Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1F413CC0B
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jan 2020 19:26:28 +0100 (CET)
Received: from [::1] (port=37372 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1irnN1-0007YX-5F; Wed, 15 Jan 2020 13:26:23 -0500
Received: from sonic304-21.consmr.mail.ne1.yahoo.com ([66.163.191.147]:43275)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1irnLq-0006wW-Fd
 for usrp-users@lists.ettus.com; Wed, 15 Jan 2020 13:25:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1579112668; bh=W5He5Lg5oJb2s0qf4ZFPLrVk2c3tt+spaBMUGesfFqE=;
 h=Date:From:To:Subject:References:From:Subject;
 b=NZskWOlXnPAV4dP5tdjFeKe8IXj1ZbdyN1DSv5MXiGO4+IaqBG884A6OlYTqFSP5zlBDZFCtnPl4LN5ldORIxTEDHbfYjLKgmL6zgn4afbgg2Io+YdWCTNdg1Nt7BYVLXfjO+6mWIrNCAB5ANOGidTT0hRJ54tqRj4I8wquMeRcBFOTNu9TstBc/qtLbVp9mNkIaSqtuFK0MPtddZKvLe97+qcr54BkW0ZNkUFjdPwgLZiJhZIW831Kj+KcQ4oy+sRygDJM+du+XLSpsKDWZamFpJi6IBckcRDdJUm7SysiTr6L2ET6kUFkRBkh5SKvNXeofasBppXXMCXY1WYQqdw==
X-YMail-OSG: y6V.pa4VM1loluebvLjkdwhjuupb_EVbwqH7W1IpnJdPLvgbTFc6qL.OBjcTRsl
 Zgbp8Xj.QxMY1uLOCC1vDPCJIgLv2nbVo5fXZ7Xy5mMQ4FAXQHBb2wkDj8M1K8Vew8BdACnINU6p
 vn7zAXvun_RQ8St6xQHbnrgAxH0Eql6_w.rYs9p0B0zOZJ.eTwCz4tWGGIn8wVCbbyJfGMLXfoVQ
 dOdKKiRNt1p8daxLtk.u1sqawS.WT.JdftJIHODL_h9_cZnuvr3dzNk8nbnU4PVdZeHkbTXsDzBu
 DA6Mtg_d3LtjEOiqGZ8DE4x00_OTfNwA8dzFxByP.Y7t9BUYRPB04xWL.MRrj3FCqRMOj9PRu98_
 202xxIbkGbuJdTwVq7.nU9MEmFtTqdYYwiyJNewvHULHc9hfjuaAyMUF3cFn6deqpc_sJaCAuW_C
 qZe7bQ7DtAE8CcdPyFsJBRe.10gi3sWpbbDdjdRVbxT4GN3b7RUFxYqXAo_R1EOEszQ3qWdejBUM
 8o_cnS6oMelcZHMoGJP5MBdFyqwuI3V9sZPPC.luwhGm4qlZ_Rf7tBKTTVaao_fYVcbOb3xdHxJI
 byfR64HRAwAG6gPEIEJE7mblgxMA2EQ3Qn91o4uHVrNJm4uytuOrzmYQJjv9G6XqovLOqXyirn8y
 qlbow4FXGAYNu4Y7.gFVi9KHAM4yjiZ4kZwK4G97eDOdr6YxlQGwYzEdv9jH_Dd5dL3oBZw26EJ.
 sEAEGkHYqFb4IkKZfZpJidkRq23Cx1FEYExG3Z__orvdq_W_jqeaLe6aciDtYHmtFd_5Sw5sqS0K
 iWanh.1vnC.K38IxL0UxV77MoILv91OQHbNT8SBChQq3DZEO9V0HWbDJarVqZ9._K88vi51hoTal
 98uRysHi9fFcQiIoeVprnO3cE1.5e8oSzcDnkllsjkpGHSCScrL_VMdTfjGnUafvpUfymXWDvEF2
 u8Y.2ktOHNB9smCam.pSWklMQWfr9dME.dn96dXwe_G6WU5.fRQIUCHClqY9nphcQjZXNaA6PovN
 D324YmX5K36cqcWtETKkFv9IH8oEEGiSSIf7YPAJ6YhM5TRbl8GlyoBHajkAGhleTT2YwnUsFsid
 Jah55JXC9EIMFXws6vWyG8sjzdtSiOJ_JL9uADA_pvPB2xafWLV_cOrrqfHQOJJUDPVjJa9q.I7C
 uWs1LZPhAXU.tiGUKKTizQDEoDxTgJ84WOqH04ob2.CsIAxW2rEb2MmzVQMopM_zSwoURNkv8yjh
 LHiXZ_uOzWl_4iFDTCdMAe9bwK3wlFAzCNNxMuUvguXzFCCybcXGSPcpJiwUAdX3MigwlX5bIT5u
 5Z.Nyb7.fLmg0BzZq3wu7fz6whtQM5g--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.ne1.yahoo.com with HTTP; Wed, 15 Jan 2020 18:24:28 +0000
Date: Wed, 15 Jan 2020 18:24:25 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1991382912.12022218.1579112665200@mail.yahoo.com>
MIME-Version: 1.0
References: <1991382912.12022218.1579112665200.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117
 Safari/537.36
Subject: [USRP-users] Supported ethernet controllers : X300 and UBX
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: voonna santosh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: voonna santosh <santu_voonna@yahoo.com>
Content-Type: multipart/mixed; boundary="===============3245720786584927195=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============3245720786584927195==
Content-Type: multipart/alternative; 
	boundary="----=_Part_12022217_2112880071.1579112665199"
Content-Length: 1427

------=_Part_12022217_2112880071.1579112665199
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi There,=C2=A0 =C2=A0Good morning. As I could see in the documentation, Et=
tus recommends "X520 (Ethernet Controller)" at PC/host side. Is this a must=
?=C2=A0=C2=A0 =C2=A0We are planning to use X552 Ethernet Controller and I a=
m wondering will it cause any issue. Can you please let me know what are th=
e Ethernet Controllers can be used at PC side for SFP+ ports?BR,Santosh=C2=
=A0
------=_Part_12022217_2112880071.1579112665199
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir="ltr" data-setdir="false">Hi There,</div><div dir="ltr" data-setdir="false">&nbsp; &nbsp;Good morning. As I could see in the documentation, Ettus recommends "X520 (Ethernet Controller)" at PC/host side. Is this a must?&nbsp;</div><div dir="ltr" data-setdir="false">&nbsp; &nbsp;We are planning to use X552 Ethernet Controller and I am wondering will it cause any issue. Can you please let me know what are the Ethernet Controllers can be used at PC side for SFP+ ports?</div><div dir="ltr" data-setdir="false">BR,</div><div dir="ltr" data-setdir="false">Santosh&nbsp;</div></div></body></html>
------=_Part_12022217_2112880071.1579112665199--


--===============3245720786584927195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3245720786584927195==--

