Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C88DFE603A
	for <lists+usrp-users@lfdr.de>; Sun, 27 Oct 2019 03:21:42 +0100 (CET)
Received: from [::1] (port=58598 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iOYBV-0006el-D2; Sat, 26 Oct 2019 22:21:37 -0400
Received: from newmail.shu.edu.cn ([202.120.115.100]:33807 helo=shu.edu.cn)
 by mm2.emwd.com with esmtp (Exim 4.92)
 (envelope-from <hengzhang@shu.edu.cn>) id 1iOYBP-0006a7-Tt
 for usrp-users@lists.ettus.com; Sat, 26 Oct 2019 22:21:33 -0400
Received: by ajax-webmail-mail3 (Coremail) ; Sun, 27 Oct 2019 10:20:41 +0800
 (GMT+08:00)
X-Originating-IP: [58.199.163.84]
Date: Sun, 27 Oct 2019 10:20:41 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
To: usrp-users@lists.ettus.com
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.9a build 20190604(696d1518)
 Copyright (c) 2002-2019 www.mailtech.cn staff
MIME-Version: 1.0
Message-ID: <3dee688a.127f6.16e0b040061.Coremail.hengzhang@shu.edu.cn>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: gQBvCgB32J35_rRdT4YJAg--.24380W
X-CM-SenderInfo: pkhqw6pkdqwqxvkxhvlgxou0/1tbiAQAPAFhBcQ8-BQACsR
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWUCw
 CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
 daVFxhVjvjDU=
Subject: [USRP-users] uhd make failed
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
From: =?utf-8?b?5byg5oGSIHZpYSBVU1JQLXVzZXJz?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?5byg5oGS?= <hengzhang@shu.edu.cn>
Content-Type: multipart/mixed; boundary="===============3930619454789412608=="
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

--===============3930619454789412608==
Content-Type: multipart/alternative; 
	boundary="----=_Part_262598_1030575984.1572142841953"

------=_Part_262598_1030575984.1572142841953
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

RGVhciBhbGwsCgoKCgpXaGVuIEkgZXhlY3V0ZSAnbWFrZScgaW4gJ3VoZC9ob3N0L2J1aWxkJyBm
b2xkZXIsIEkgbWV0IGVycm9yIAonWzEwMCVdIEJ1aWx0IHRhcmdldCBweXVoZApbMTAwJV0gR2Vu
ZXJhdGluZyBidWlsZC90aW1lc3RhbXAKcHl0aG9uL0NNYWtlRmlsZXMvcHl1aGRfbGlicmFyeS5k
aXIvYnVpbGQubWFrZTo2NDogcmVjaXBlIGZvciB0YXJnZXQgJ3B5dGhvbi9idWlsZC90aW1lc3Rh
bXAnIGZhaWxlZAptYWtlWzJdOiAqKiogW3B5dGhvbi9idWlsZC90aW1lc3RhbXBdIEVycm9yIDEK
Q01ha2VGaWxlcy9NYWtlZmlsZTI6Mzk5NzogcmVjaXBlIGZvciB0YXJnZXQgJ3B5dGhvbi9DTWFr
ZUZpbGVzL3B5dWhkX2xpYnJhcnkuZGlyL2FsbCcgZmFpbGVkCm1ha2VbMV06ICoqKiBbcHl0aG9u
L0NNYWtlRmlsZXMvcHl1aGRfbGlicmFyeS5kaXIvYWxsXSBFcnJvciAyCk1ha2VmaWxlOjE2MDog
cmVjaXBlIGZvciB0YXJnZXQgJ2FsbCcgZmFpbGVkCm1ha2U6ICoqKiBbYWxsXSBFcnJvciAyJwoK
CldoYXQncyB0aGUgcHJvYmxlbSBvZiBpdD8KCgoKClJlZ2FyZHMsCkhlbmc=
------=_Part_262598_1030575984.1572142841953
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

RGVhciBhbGwsPGRpdj48YnI+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5XaGVuIEkgZXhlY3V0
ZSAnbWFrZScgaW4gJ3VoZC9ob3N0L2J1aWxkJyBmb2xkZXIsIEkgbWV0IGVycm9yJm5ic3A7PC9k
aXY+PGRpdj4nWzEwMCVdIEJ1aWx0IHRhcmdldCBweXVoZDwvZGl2PjxkaXY+WzEwMCVdIEdlbmVy
YXRpbmcgYnVpbGQvdGltZXN0YW1wPC9kaXY+PGRpdj5weXRob24vQ01ha2VGaWxlcy9weXVoZF9s
aWJyYXJ5LmRpci9idWlsZC5tYWtlOjY0OiByZWNpcGUgZm9yIHRhcmdldCAncHl0aG9uL2J1aWxk
L3RpbWVzdGFtcCcgZmFpbGVkPC9kaXY+PGRpdj5tYWtlWzJdOiAqKiogW3B5dGhvbi9idWlsZC90
aW1lc3RhbXBdIEVycm9yIDE8L2Rpdj48ZGl2PkNNYWtlRmlsZXMvTWFrZWZpbGUyOjM5OTc6IHJl
Y2lwZSBmb3IgdGFyZ2V0ICdweXRob24vQ01ha2VGaWxlcy9weXVoZF9saWJyYXJ5LmRpci9hbGwn
IGZhaWxlZDwvZGl2PjxkaXY+bWFrZVsxXTogKioqIFtweXRob24vQ01ha2VGaWxlcy9weXVoZF9s
aWJyYXJ5LmRpci9hbGxdIEVycm9yIDI8L2Rpdj48ZGl2Pk1ha2VmaWxlOjE2MDogcmVjaXBlIGZv
ciB0YXJnZXQgJ2FsbCcgZmFpbGVkPC9kaXY+PGRpdj5tYWtlOiAqKiogW2FsbF0gRXJyb3IgMic8
L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PldoYXQncyB0aGUgcHJvYmxlbSBvZiBpdD88L2Rpdj48
ZGl2Pjxicj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PlJlZ2FyZHMsPC9kaXY+PGRpdj5IZW5n
PC9kaXY+
------=_Part_262598_1030575984.1572142841953--



--===============3930619454789412608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3930619454789412608==--


