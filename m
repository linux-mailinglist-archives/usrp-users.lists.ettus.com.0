Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F8D296F7
	for <lists+usrp-users@lfdr.de>; Fri, 24 May 2019 13:20:23 +0200 (CEST)
Received: from [::1] (port=36702 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hU8FG-0007GZ-AK; Fri, 24 May 2019 07:20:18 -0400
Received: from mxout3.rambler.ru ([81.19.78.102]:47586)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <andrew4010@rambler.ru>)
 id 1hU8Ei-0007CW-Ih
 for usrp-users@lists.ettus.com; Fri, 24 May 2019 07:20:14 -0400
Received: from saddam2.rambler.ru (saddam2.rambler.ru [10.32.16.2])
 by mxout3.rambler.ru (Postfix) with ESMTP id E1C767C0306
 for <usrp-users@lists.ettus.com>; Fri, 24 May 2019 14:19:02 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rambler.ru; s=mail;
 t=1558696742; bh=DdQ7pVnU2QmJGV9xHZkHsujTD3Oh0AqAO3ggzSPWkUY=;
 h=From:To:Reply-To:Subject:Date;
 b=jmckiIfkbS77X6beFvke0GLCSqt7VBzd0SwmtmNNhnvCFQfxVzDphlxEtp03veWmS
 X/D+yngjSSHQmY9oPvEFvxm+bppG9TnLmdri3CXb4t4e58xRkqalH7yv75CE0cRxZh
 gcUc/CGSGnQD6PY4t6cWarArAh3XyaDzU/5u/Fvc=
Received: from localhost.localdomain (localhost [127.0.0.1])
 by saddam2.rambler.ru (Postfix) with ESMTP id B886CC7B65D
 for <usrp-users@lists.ettus.com>; Fri, 24 May 2019 14:19:02 +0300 (MSK)
Received: from [79.171.124.155] by mail.rambler.ru with HTTP;
 Fri, 24 May 2019 14:19:02 +0300
To: "Usrp Users" <usrp-users@lists.ettus.com>
Date: Fri, 24 May 2019 14:19:02 +0300
Message-Id: <1558696742.740476.25076.50204@mail.rambler.ru>
MIME-Version: 1.0
X-Mailer: Rambler WebMail, http://mail.rambler.ru/
X-Rambler-User: andrew4010@rambler.ru/79.171.124.155
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] TwinRX min frequency
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
From: =?utf-8?b?0JDQvdC00YDQtdC5IDEgdmlhIFVTUlAtdXNlcnM=?=
 <usrp-users@lists.ettus.com>
Reply-To: =?koi8-r?B?4c7E0sXKIDE=?= <andrew4010@rambler.ru>
Content-Type: multipart/mixed; boundary="===============5789190952729891499=="
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

--===============5789190952729891499==
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative; boundary="_----------=_1558696742250764"


This is a multi-part message in MIME format.

--_----------=_1558696742250764
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; format="flowed"

Hello
In documatation indicates that minimum frequency of receiver TwinRX is 10MH=
z but
when I tune in 49 MHz there is no signal.
What exactly minimum tunable frequncy og TwinRX ?If it means that min =3D f=
requency
- band / 2 ?How in this case will tune in to a frequency below 5MHz ?
Thank you

.

--_----------=_1558696742250764
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<div>Hello</div><div><br data-mce-bogus=3D"1"></div><div>In documatation in=
dicates that minimum frequency of receiver TwinRX is 10MHz but when I tune =
in 49 MHz there is no signal.</div><div><br data-mce-bogus=3D"1"></div><div=
>What exactly minimum tunable frequncy og TwinRX ?</div><div>If it means th=
at min =3D frequency - band / 2 ?</div><div>How in this case will tune in t=
o a frequency below 5MHz ?</div><div><br data-mce-bogus=3D"1"></div><div>Th=
ank you</div><div><br></div><div><br></div><div>.</div><div><br></div>=

--_----------=_1558696742250764--


--===============5789190952729891499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5789190952729891499==--

