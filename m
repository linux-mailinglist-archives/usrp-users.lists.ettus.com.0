Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0F6A38F82
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 00:18:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5DA8385880
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2025 18:17:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739834279; bh=OGkJa0wzzij1IDGO1ZBgmb/1QIWB0Dp4n3ImVr1ArPA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lc06m2Q5PabUDrcDAK1tcZMaFK/e4BP8EGGgrBzFebmfjPBM9QqHdUIqzkK3rE79K
	 mnqelxp2KExjCZh9u5FIPXJb99EkWYxH521FBoXZcgnb2PjVhIKyF+JepJS+fyiCHh
	 QJroqnw/KpMf1lO2N7ipZ2SBW0LpxktwR5voenaKNfHtc4pdIVu37zhyNEVcrzxyGR
	 Xj5wOcMHUc7CZEYyZll1isKUSFyE+aukFGcqZpp7MmMQD6k0c8MQoN+aTdxa29Yw3u
	 Zkvj1a6LoxET7ct4q07Web0XsrScz7AVxz+bMtKQuzz6Gi/q7d2M9yRmPOMJjRMXTo
	 n9J06LbYVLnvA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7433A385880
	for <usrp-users@lists.ettus.com>; Mon, 17 Feb 2025 18:17:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739834275; bh=MlfS917xlZboHJ1hiTFUNlVE2dpW2EtaK0wKojBDeIg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=xVwLnjIUbnBk+LZN/8stQF0aXQrag/2RRFNeQwHjH6zIlwpTMiXgalf9rKSTZq0Pk
	 Dm1/0GywgBmtu0pqm8hXJKmCeMScCUGOfvLV6kvy0rjjOOAXWhzIj4zqU2zEHn6mro
	 3sgDxMwHgYFwlTUDQ6JRFdgTE8ddPckVLQFSPilRnuCmpU/AdA/Vt7lDCh6nz+Jceo
	 zBceo1J2jo9sgup9TxR3nWRpkoFTEky95E/az0KyeKdgmVWwQqIPPWHlb6FhWj30xl
	 cY1kOlpyzR+mOaC1NFmpiSbBWcFfWAHWHRFGGEgunfaPTNoXthp864CkeUT641ARY3
	 95vFbnyqvnTTQ==
Date: Mon, 17 Feb 2025 23:17:55 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <nmdvrPdX43nUZrroqrNTRSL4KwllyF3ED0MhgxXGmc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: SA1P110MB1754DC7AED8867B08EBBCEB3B7FBA@SA1P110MB1754.NAMP110.PROD.OUTLOOK.COM
MIME-Version: 1.0
Message-ID-Hash: O67D2VD2V7PWW642PHLEN5EAXEC24DOE
X-Message-ID-Hash: O67D2VD2V7PWW642PHLEN5EAXEC24DOE
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O67D2VD2V7PWW642PHLEN5EAXEC24DOE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0315095991178215413=="

This is a multi-part message in MIME format.

--===============0315095991178215413==
Content-Type: multipart/alternative;
 boundary="b1_nmdvrPdX43nUZrroqrNTRSL4KwllyF3ED0MhgxXGmc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_nmdvrPdX43nUZrroqrNTRSL4KwllyF3ED0MhgxXGmc
Content-Type: text/plain; charset=us-ascii

Thank you for your help David.

--b1_nmdvrPdX43nUZrroqrNTRSL4KwllyF3ED0MhgxXGmc
Content-Type: text/html; charset=us-ascii

<p>Thank you for your help David.</p><p><br></p>


--b1_nmdvrPdX43nUZrroqrNTRSL4KwllyF3ED0MhgxXGmc--

--===============0315095991178215413==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0315095991178215413==--
