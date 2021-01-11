Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA2E2F1938
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jan 2021 16:11:56 +0100 (CET)
Received: from [::1] (port=55112 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kyyrH-0001xp-JM; Mon, 11 Jan 2021 10:11:51 -0500
Received: from mxout2.rambler.ru ([81.19.78.101]:63544)
 by mm2.emwd.com with esmtps  (TLS1.1) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <andrew4010@rambler.ru>)
 id 1kyyrD-0001tP-FA
 for usrp-users@lists.ettus.com; Mon, 11 Jan 2021 10:11:47 -0500
Received: from saddam1.rambler.ru (saddam1.rambler.ru [10.32.16.1])
 by mxout2.rambler.ru (Postfix) with ESMTP id 8E8F28DC053
 for <usrp-users@lists.ettus.com>; Mon, 11 Jan 2021 18:11:03 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rambler.ru; s=mail;
 t=1610377863; bh=bygREyZ3Q44e45zmFOOyAxYMLIFhSoKbLVN3e4mW5QY=;
 h=From:To:Reply-To:Subject:Date;
 b=nfuSUExz8aovgaaEIKm6/C4KYs1N0gcfpFdJV4oorEdxdvOIgfsBsgmTw3XMbSS5q
 vVBO97UwYYf32MYdUh/P/Nf7MQPfCkI4aBM73suffbIvFWbhOaFM6ixwOTN/jMc22g
 qfsPOjJfiNEwegNrLPO/JdJdH390gjN4Xl/bqHso=
Received: from localhost.localdomain (localhost [127.0.0.1])
 by saddam1.rambler.ru (Postfix) with ESMTP id 69EAD1F7ECE
 for <usrp-users@lists.ettus.com>; Mon, 11 Jan 2021 18:11:03 +0300 (MSK)
Received: from [79.171.124.155] by mail.rambler.ru with HTTP;
 Mon, 11 Jan 2021 18:11:03 +0300
To: "Usrp Users" <usrp-users@lists.ettus.com>
Date: Mon, 11 Jan 2021 18:11:03 +0300
Message-Id: <1610377863.427298.21618.18137@mail.rambler.ru>
MIME-Version: 1.0
X-Mailer: Rambler WebMail, http://mail.rambler.ru/
X-Rambler-User: andrew4010@rambler.ru/79.171.124.155
Subject: [USRP-users] UHD_STREAM_MODE_NUM_SAMPS_AND_DONE
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?b?0JDQvdC00YDQtdC5INCQIHZpYSBVU1JQLXVzZXJz?=
 <usrp-users@lists.ettus.com>
Reply-To: =?koi8-r?B?4c7E0sXKIOE=?= <andrew4010@rambler.ru>
Content-Type: multipart/mixed; boundary="===============5741848410108102165=="
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


This is a multi-part message in MIME format.

--===============5741848410108102165==
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative; boundary="_----------=_161037786321618113"


This is a multi-part message in MIME format.

--_----------=_161037786321618113
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; format="flowed"

Hello
Is threre need set num_samps field in uhd_stream_cmd_t whenstream_mode =3D
UHD_STREAM_MODE_NUM_SAMPS_AND_DONEandstream_now =3D true?
Thank you.

--_----------=_161037786321618113
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<div>Hello</div><div><br data-mce-bogus=3D"1"></div><div>Is threre need set=
 num_samps field in uhd_stream_cmd_t when</div><div>stream_mode =3D UHD_STR=
EAM_MODE_NUM_SAMPS_AND_DONE</div><div>and</div><div>stream_now =3D true?</d=
iv><div><br data-mce-bogus=3D"1"></div><div>Thank you.</div><div><br></div>=

--_----------=_161037786321618113--


--===============5741848410108102165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5741848410108102165==--

