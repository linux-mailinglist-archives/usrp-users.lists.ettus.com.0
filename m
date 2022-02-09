Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 430AB4AFE6D
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 21:26:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 02CCA384AF9
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 15:26:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=aol.com header.i=@aol.com header.b="eQPqAWvQ";
	dkim-atps=neutral
Received: from sonic310-14.consmr.mail.bf2.yahoo.com (sonic310-14.consmr.mail.bf2.yahoo.com [74.6.135.124])
	by mm2.emwd.com (Postfix) with ESMTPS id 597923849F5
	for <usrp-users@lists.ettus.com>; Wed,  9 Feb 2022 15:25:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048; t=1644438318; bh=DRM1elJKOYvFs3sqPbl7paDnZuwbasStxNAZdQ5ILSI=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=eQPqAWvQBHyfEgRvUFhk2l093Z8LnjT+U6Rcpw0IacGAfr6veSEVVMRBtoVst8dpm2txLtTtsKJ84bVYe51FrC/smfQEAHgfO+XL7xQDI3Sw7Mp2Ab4CVLUWQec6amAIn+71TxBviQyd7ajq/jcl5Xlj3BhTHBOzG7Rzg98uHKCEL++z49mA14TfzX1ParfKARVVsL3o1eO7VWgs3k+NLSjhJeRKxTP1hpyNy1sAnE1gDebc8gbLepUVcncjp+F37mHr9TaAzkwl+GSeQGCZ/n8GD1kc4Z2/5fOcPn8GFZ/WZE1EgSS9kZpbvzQGPMKSE999cBglGi9DVuLPHDnQ8A==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1644438318; bh=zNkA3qAu6FApUjIpYiesaOE4Pzk/48aY/dTgBcOESOR=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=FYmN+HRBBHHMXTqq8QlGzQjKslFt6i6YC0RIhh+Zur/H0MHM9qlwQSRl7w6X3K76WsH4YHxUQahQJKSTOQ8+q58F2xMeyO5YFpdhinshiCVSsXI2xaM3xZuyi8B+ExS6H5gcvGKaYPmklxos7ygtp6jNMANpDhBXsfM8iSFd/la3dRmWCJmdJiPyty8VDwWyulkNvUspodUfU5fpd20rpjrZ1fb7BJDfvKahEMSNI52p+MMxJZJG04h5sx7NxNbaXjzzXbFZTWe2S0Vl2WyERz8b0Ls/5ERQFGlxvJm+VUVe68Q5fa007Y4IwbBm379gi5EEHce15+L87wgYFGGk5A==
X-YMail-OSG: 4pLy3TwVM1mSIZFzwl8XC93cO5GGko2iek.q5quqck63bubmqpY9zHHEGwi4NbV
 gCCt_dUXg_D3ne0UGd2nEkBa7wvnAxH8KAx0.X8rtgrL.UBvcBILExy1iuYdSpXf4aDZChC59q3y
 L1ynNqw3mINAvaUd9hkwK.wzV.VFaxFHk13jS5HG703gs_vqAx9zOXQHEaaovIfdG8_bVc8Cq1Ep
 6hR1jhLlyRQ_NK9YuKRXTmgz7R1j_0REGpYLE6REcyEJvihiTfo.kioSKdwpSA9cRhj.LdK35ZKy
 C2THjgIpLUnoETRwO_43wVXxi4UVOB9TlThYjf1vDHwqQQpIx6DBHkEt2U4_3NnSTS6klEMqirny
 mt9UwSWPNlbO.g1IBgKfOtojtmb1YMMbv7jqrwBdIyYj2uRQ2qWIQYpndPLz.6dcTqbeNgHXe97v
 nqpXC6pRmxBob15j5jMI1kkW6tQYsPHtbOrNYK4KZm9r0EBn0fgQpBCp946TCFQ0PIv91x1lZKPv
 6p34xpAmDi9jfQ32Z3UaQJlMMOsFH7skbHmb31nsRWPzzBk93VWuJtVi9t4qFYNELwd.LfHElHi5
 eVUJh.UR02mnc.L3WkNlzDX9EH_idfPWwm3jBPs4okC.P.QSaKApe3jakUZxsa8uMbhQag_owGiH
 .zQe1_QluvFzJOW2A0ZCzWhZCB5xTDJJRZaxPR0Obw.NxFLTVxZOx4GINRyoAkT2yKxaziUAdwQ.
 .i57lBPgPI5L6GSKkSWY.LhAoVJIOg8L.Wob0NlYip_7PTQ7LuTtsfJ5jWLupYusc9ilxDbQN06_
 QBA__xLzNav7A20bAwcPfLqxAjnUuD_TQOWXOf8qUJt1h.UCYDMU6h3Cv_cIxCh.CXPHt9KWzHpH
 ZU7G0nU4zuDsXG5sLFYs6hAtl8kGb0fzMB.uSm.TIOcKBUuQLjDB5RNJykch849dOa41RoSdxzbh
 WDSernlCCNcgcZbDO8ppFwZCIIkiptcr6uYL0wik.yHM4yW3Qz23y7mF6jT7y8uUhFPeWJM8W8JO
 k_UzEpPSbsnru5fB71hW2D_GIMkovXnS0I8q1UmRkbphLXxOXHuUXLMLN4lOHXySUS2XK2YwHcvb
 nY81jw9RmWYMxaWe.NsI10YXnyOMqaQgT8BiicGT00mOVSM6AufVA9JT0dbgKpTDZgHX1RCJqPr0
 HYQPuXwOWtkWOcMy8WbC2z9i85SF9G4OdYeoJLobs.rGK0fVEIMk1cWM.w.UsjN2NOnQY05GIJGN
 P3R4j08PPZDTYsoRz8YW1mkuvthGv.boTkxuMK_SYiHZmz5tqylByN4kYwmWDPJ3ZEtGLzW8ouZA
 z6Tx5x9vj6dFiDxAELKwJE2XccJjhiJifGA1BZSmtyZf4bBgBZ21VtXi3Ta0hOo0ovHntTeU7BJb
 fOGV3pK41_3Cohmn3_mwsFC_ipHT5Xzd.zkKIQC8oXwU_WiYCWriOA_Dr4JE60ID2xkWLHZ513DW
 VeRxFHEV2cANeNxRYaXIsPWQIFHs0H.LRK2WtcgZW584vPloBK1zb.181t1ISanWJiVh5J89wtid
 J8IBwkTRl0zGDLFzj.5IC9xI.syiCjn_Hl_Hy56XJmMJdQpy6K9LcTcNo812in1EfO_0UnPsmMWG
 HAye6WGuwnM8zjgrwJ67Bo_5Zdtm1xygcZYVfaRJLpk7ej6CcHI.CST3crsDznl2shEru_SOBK7T
 LwP9_R2gSpYE4mpbJ6yDTjMqMUJZeUDZurx3yNHsHmKSh1Pt66ucva1JxLwhlzqdVQaOWtLK4i.p
 nf9XGUZQVvQgRt5E68cd0HZvPAC6z5_F8FPi1d8EZetM4ViE_0YUBoM1AB5LtaLku2DsTTjsdHNy
 2wnFsE8PNS_h07VaGCU5NSVZ1LPFpM5PthSJUYBfAeW0eQA80Lv5RwqJP2CTNcp9H9Pg_z1fWWTc
 Qx1JykhifUyF1GT8sNEuVDRabrATIenM.oyIuXVp3mU.SiDkDDh81xhNxl7jpAP7aaOIny07H_1g
 KsEuL5RzfVHXd.CRmba5B_VsTQclI6VIS2PTlH88cvuR_clklyw4Xog.xcL6F1EHMyo4sbndlZy1
 LgFm3ZNt8x7Va8LHcZXVdBX00ID6U_wcBx8uDN1I.dCWKWVroMK1Cbel0wdI9kt02M9XgDUlpFrY
 R8mCVUwuZiQ.xUFA9dg4ZoFryu7A.6Ot15FYGF8OlW0Dwocp.1nACnRW2jQzMwhQLnTo.jqhQvjM
 XhmeXJ66tsN45tsCT5miE
X-Sonic-MF: <pste998903@aol.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.bf2.yahoo.com with HTTP; Wed, 9 Feb 2022 20:25:18 +0000
Date: Wed, 9 Feb 2022 20:25:09 +0000 (UTC)
To: usrp-users@lists.ettus.com
Message-ID: <817106305.23108.1644438309318@mail.yahoo.com>
MIME-Version: 1.0
References: <817106305.23108.1644438309318.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.19724 aolappiosmobile
Message-ID-Hash: T6WXJBG33KCA54HU4EQNZNQNN4ZZ7WEQ
X-Message-ID-Hash: T6WXJBG33KCA54HU4EQNZNQNN4ZZ7WEQ
X-MailFrom: pste998903@aol.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Running two b200 from one host
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T6WXJBG33KCA54HU4EQNZNQNN4ZZ7WEQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: pste998903 via USRP-users <usrp-users@lists.ettus.com>
Reply-To: pste998903 <pste998903@aol.com>
Content-Type: multipart/mixed; boundary="===============0310871751408053915=="

--===============0310871751408053915==
Content-Type: multipart/alternative;
	boundary="----=_Part_23107_1466423882.1644438309317"

------=_Part_23107_1466423882.1644438309317
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Is there guidance for running two b200s from one=C2=A0host in=C2=A0linux?


Sent from the all new Aol app for iOS

------=_Part_23107_1466423882.1644438309317
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office"><head><!--[if gte mso 9]><xml><o:OfficeDocumentSettings><o:AllowPNG/><o:PixelsPerInch>96</o:PixelsPerInch></o:OfficeDocumentSettings></xml><![endif]--></head><body>
Is there guidance for running two b200s from one&nbsp;host in&nbsp;linux?<br><br><br><a href="https://apps.apple.com/us/app/aol-news-email-weather-video/id646100661">Sent from the all new Aol app for iOS</a><br>
</body></html>
------=_Part_23107_1466423882.1644438309317--

--===============0310871751408053915==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0310871751408053915==--
