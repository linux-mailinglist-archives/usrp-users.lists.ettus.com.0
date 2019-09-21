Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 940B2B9D06
	for <lists+usrp-users@lfdr.de>; Sat, 21 Sep 2019 10:34:04 +0200 (CEST)
Received: from [::1] (port=58570 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iBaq6-0000aT-Bv; Sat, 21 Sep 2019 04:33:58 -0400
Received: from sonic314-27.consmr.mail.sg3.yahoo.com ([106.10.240.151]:44959)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <arun.verma@eiwave.com>)
 id 1iBaq2-0000Wl-Vz
 for usrp-users@lists.ettus.com; Sat, 21 Sep 2019 04:33:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1569054791; bh=kqbE5O9oSz6pzhWoMg7lESFsIVU/wdzqZEor1SN5CPA=;
 h=Date:From:Reply-To:To:Subject:References:From:Subject;
 b=PNWAf/eyX2HdtxM1HUJqHCZjdSw+QjZAMJvpuhHNIuJQrQQJPqCNP56smk/2mv5PHDbnyWRUEn/t1/brhfBE34mzBTxm68hZG7iMkWXUfpn2URbtbFCVu/eKI3nqSDT0fJc9QpidhwJG+ZwEdLvteoX4cwh4ADtDvSZkrbUZi9GJQJQhsEYFPlz0B8Y6z4DxbL+G0h26XA0D+8woyzB17vD2tTEqp2H7gCGVaMEWPZM6cxXAbhYyT7f8IPeW23ysKDrc/aNa1qCECPjWHT4dyoEWZ49JCAFDEl4LUZx1SAyc+OGrKqY6PJuGHZxF0dDs23umIF+4dYIJ0Icj2yQErQ==
X-YMail-OSG: gGBLUBMVM1nMjDIxDBtSw5B775K6wZli3H9rTPG3zS7NDhSN7MOHJTu5iueeW3J
 Xoa5.gmPSzknbfmismCsh7aS5KavWg65dmYxU7U_V6DTl8BBs6b0u2MgvlXdFQpAhhMqiO_6OabE
 mXCkLE5ERiDyS0DtEUVKB0BZ5eFkKG91kNPD1F8h8Gp4XC0tmRrnzV_eZrcF9y5MAMLh9YF9qTvy
 WC2WX30G_2_DlH94amNhrfKQtvNSOFLb7Dz_1FYA8YELGdtX9SE1rs6TpoxJECgSrpGkrFwNsv8l
 PhhX2HigzJ9LgqR84kTvifhOydfjeC2gbrcV6fApF_dbxrJmAaXwaBgBbi9M5YJoCzyUY1K.Nygu
 gDUFXVWD6iYltTj.WeZi_4KqAR9MDIWw0Nr0cq1yRxfIewsWZV9j9IVdAREN8xeBqJhZMFozDpjY
 Q5I9bEACGva5rq5ZfecKEUWh4C9ReFpsMTm8mhqu35LFrqtAhctqAlkx.GuJj8fEIOK4wxIab1Dd
 AurX_YTheVq2gihXsVAtRCGqmyaCiQdqo7sIdBoZ9633miyPoHoQaR9GzDNgZ5KA_W9AbdM8CtNt
 LKK7lFSGNXMJzdlcTqxKeJIxtSarT2cS0GR24qTBRB3KGTeKI2PUJSyfqMA_SkwC3wkyt_JgPCc9
 okCEubV9D7b3n7rlI.BCPQ8D_MiUolr46pRxeTA7ZPUncPaRQVFOCQCw7Ec9D3g6PV8dEwEeIuxm
 Y4u4F2YEv65sKY2.Wlva9wDmkBXKxeRexCGCIvvEoSN8aVtPYBShy9ZCk7T0n9GhTNR669uBe260
 IfJa.yFKuuvTCtZKevxdm6vec5c3E0p.T1lIUlv0pyBPswuOH2Pb8o2pNokjHjeyrh39ydACeCJD
 iUO27HZ.sJmLxMo2EZJSA.e7Dpu3NXgk5coqiC4DJy83zIAuAQAt9WdOjs.S4KBrH8_9ZBS1ySZQ
 zow10VdOVMNRD6qhdMpVLAwThjnmorv5GWdm4v3hebFuN2vIccK4Sy6AW.C5TGtuJCBbbCEePzET
 FQluKfHyxy77Y4DMp8olLcq4_puKkB4RziR3uTAWcLVBi0UoZ4VKf7FFS9S4MZUzfr1DTIJcL6AN
 Lgtc2RRxPlagnzfsVaqIstCZToZJzDor.SRJ0WNcHGT9ScdDiyP1PkMTyHDuHk0V0zMNnogEEeZS
 Esnch9BkGDjwqupqK7Oxg2GeOFZBytMOfiw50LD1h.svujRc6R4myuHuJfYSiApszwbS87wlnlxJ
 PmxxlSbdGqAehhRIlxVQ3TWKA
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.sg3.yahoo.com with HTTP; Sat, 21 Sep 2019 08:33:11 +0000
Date: Sat, 21 Sep 2019 08:33:10 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1956590264.2783788.1569054790193@mail.yahoo.com>
MIME-Version: 1.0
References: <1956590264.2783788.1569054790193.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14303 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132
 Safari/537.36
Subject: [USRP-users] X310 Temperature Range
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Arun kumar Verma via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arun kumar Verma <arun.verma@eiwave.com>
Content-Type: multipart/mixed; boundary="===============1753902804816720246=="
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

--===============1753902804816720246==
Content-Type: multipart/alternative; 
	boundary="----=_Part_2783787_528082147.1569054790192"
Content-Length: 1913

------=_Part_2783787_528082147.1569054790192
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Users
We would like to know whether X310 with TwinRx boards can be used for temperature range -20 to +55 degree. Is temperature range is limited by the components used in the boards or the performance is not guaranteed over this range.
Are the components used are industrial grade or commercial grade?

Regards,Arun Verma



------=_Part_2783787_528082147.1569054790192
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp615cfc74yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div dir=3D"ltr" data-setdir=3D"false"><div><div dir=3D"ltr" style=3D"fo=
nt-family: Helvetica Neue, Helvetica, Arial, sans-serif;">Hi Users<br></div=
><div dir=3D"ltr" style=3D"font-family: Helvetica Neue, Helvetica, Arial, s=
ans-serif;">We would like to know whether X310 with TwinRx boards can be us=
ed for temperature range -20 to +55 degree. Is temperature range is limited=
 by the components used in the boards or the performance is not guaranteed =
over this range.<br></div><div dir=3D"ltr" style=3D"font-family: Helvetica =
Neue, Helvetica, Arial, sans-serif;">Are the components used are industrial=
 grade or commercial grade?<br></div><div dir=3D"ltr" style=3D"font-family:=
 Helvetica Neue, Helvetica, Arial, sans-serif;"><br></div><div dir=3D"ltr" =
style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">Regard=
s,</div><div dir=3D"ltr" style=3D"font-family: Helvetica Neue, Helvetica, A=
rial, sans-serif;">Arun Verma</div></div><br></div><div><br></div><div clas=
s=3D"ydp615cfc74signature"><div style=3D"font-family:Helvetica, Arial, sans=
-serif;font-size:16px;"><br></div></div></div></body></html>
------=_Part_2783787_528082147.1569054790192--


--===============1753902804816720246==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1753902804816720246==--

