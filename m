Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3573D3BC508
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 05:13:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 45752384087
	for <lists+usrp-users@lfdr.de>; Mon,  5 Jul 2021 23:13:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=163.com header.i=@163.com header.b="SP7tvfJL";
	dkim-atps=neutral
Received: from m13112.mail.163.com (m13112.mail.163.com [220.181.13.112])
	by mm2.emwd.com (Postfix) with ESMTP id 6A6F1383EBA
	for <usrp-users@lists.ettus.com>; Mon,  5 Jul 2021 23:12:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=AldrG
	LeYRgvtW5soqCvW+fNVHRByK2Zz+QgQLIQfZ3I=; b=SP7tvfJL4x1I3bjq0a0gY
	JuZpxeH2sHLuB/AFsIAV95bqK10kBSdf9CscGxmCf6XztUx6dE4MN9/Po24zxwnP
	0X45G9HNzlLtkKE4FI7cZlSvM5WIX3Qb+BjSS9aT3Gyy7x37PFjO+ZogDiNKj0ot
	3hvChoTfFElgm8zR5/x5Ic=
Received: from fyt201460$163.com ( [223.72.77.60] ) by ajax-webmail-wmsvr112
 (Coremail) ; Tue, 6 Jul 2021 11:12:17 +0800 (CST)
X-Originating-IP: [223.72.77.60]
Date: Tue, 6 Jul 2021 11:12:17 +0800 (CST)
From: fan <fyt201460@163.com>
To: usrp-users@lists.ettus.com
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20210104(ab8c30b6)
 Copyright (c) 2002-2021 www.mailtech.cn 163com
X-CM-CTRLDATA: LmsWn2Zvb3Rlcl9odG09OTI5OjU2
MIME-Version: 1.0
Message-ID: <1dcf3bff.2517.17a79cd52d8.Coremail.fyt201460@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: cMGowADH3v4RyuNgpnH7AA--.49804W
X-CM-SenderInfo: hi1wjiaruwiqqrwthudrp/1tbipRHHPlUMfLiWvQAAs7
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Message-ID-Hash: DOC5WOMU6ROZVVLKUJGUBMHLMMPD7APO
X-Message-ID-Hash: DOC5WOMU6ROZVVLKUJGUBMHLMMPD7APO
X-MailFrom: fyt201460@163.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] about the transmission delay of B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DOC5WOMU6ROZVVLKUJGUBMHLMMPD7APO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1724664372561957113=="

--===============1724664372561957113==
Content-Type: multipart/alternative;
	boundary="----=_Part_34555_708651104.1625541137112"

------=_Part_34555_708651104.1625541137112
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

ICAgICAgICAgICBIZWxsbywgZXZlcnlvbmUuIEkgYW0gbm93IHVzaW5nIFVTUlAgYjIxMCBhbmQg
Z251cmFkaW8gdG8gaW1wbGVtZW50IGEgTUlNTyBzeXN0ZW0uIEluIG9yZGVyIHRvIGRldGVybWlu
ZSB0aGUgYmVnaW5uaW5nIG9mIHRoZSByZWNlaXZlZCBzaWduYWwsIEkgdXNlIHRoZSBzeW5jaHJv
bml6YXRpb24gc2VxdWVuY2UgdG8gZmluZCB0aGUgZnJhbWUgaGVhZCwgYW5kIGRpc3BsYXkgdGhl
IG9mZnNldCBvZiB0aGUgZnJhbWUgaGVhZCBjb21wYXJlZCB0byB0aGUgaXRlbSB0aGF0IHRoZSBy
ZWNlaXZpbmcgYW50ZW5uYSBmaXJzdGx5IHJlY2VpdmVzIG9uIHRoZSB0ZXJtaW5hbC4gQnV0IHdo
ZW4gSSBydW4gdGhlIGZsb3cgZ3JhcGggZXZlcnkgdGltZSwgdGhlIG9mZnNldCBvZiB0aGUgZnJh
bWUgaGVhZGVyIGlzIGRpZmZlcmVudC4gV2hlcmUgZG9lcyB0aGUgZGlmZmVyZW5jZSBjb21lIGZy
b20/IFRoZSB3aXJlbGVzcyB0cmFuc21pc3Npb24gcHJvY2VzcyBvciB0aGUgZ251cmFkaW8gZGF0
YSBwcm9jZXNzaW5nIHByb2Nlc3M/CgogICAgICAgICAgIEluIGFkZGl0aW9uLCBvbiBiMjEwLCBh
cmUgdGhlIHRyYW5zbWlzc2lvbiBkZWxheSBmcm9tIHR3byBkaWZmZXJlbnQgdHJhbnNtaXR0aW5n
IGFudGVubmFzIHRvIHR3byBkaWZmZXJlbnQgcmVjZWl2aW5nIGFudGVubmFzIHRoZSBzYW1lPwo=

------=_Part_34555_708651104.1625541137112
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IEhlbGxvLCBldmVy
eW9uZS4gSSBhbSBub3cgdXNpbmcgVVNSUCBiMjEwIGFuZCBnbnVyYWRpbyB0byBpbXBsZW1lbnQg
YSBNSU1PIHN5c3RlbS4gSW4gb3JkZXIgdG8gZGV0ZXJtaW5lIHRoZSBiZWdpbm5pbmcgb2YgdGhl
IHJlY2VpdmVkIHNpZ25hbCwgSSB1c2UgdGhlIHN5bmNocm9uaXphdGlvbiBzZXF1ZW5jZSB0byBm
aW5kIHRoZSBmcmFtZSBoZWFkLCBhbmQgZGlzcGxheSB0aGUgb2Zmc2V0IG9mIHRoZSBmcmFtZSBo
ZWFkIGNvbXBhcmVkIHRvIHRoZSBpdGVtIHRoYXQgdGhlIHJlY2VpdmluZyBhbnRlbm5hIGZpcnN0
bHkgcmVjZWl2ZXMgb24gdGhlIHRlcm1pbmFsLiBCdXQgd2hlbiBJIHJ1biB0aGUgZmxvdyBncmFw
aCBldmVyeSB0aW1lLCB0aGUgb2Zmc2V0IG9mIHRoZSBmcmFtZSBoZWFkZXIgaXMgZGlmZmVyZW50
LiBXaGVyZSBkb2VzIHRoZSBkaWZmZXJlbmNlIGNvbWUgZnJvbT8gVGhlIHdpcmVsZXNzIHRyYW5z
bWlzc2lvbiBwcm9jZXNzIG9yIHRoZSBnbnVyYWRpbyBkYXRhIHByb2Nlc3NpbmcgcHJvY2Vzcz8g
PGJyPjwvZGl2PjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IEluIGFkZGl0aW9uLCBvbiBiMjEw
LCBhcmUgdGhlIHRyYW5zbWlzc2lvbiBkZWxheSBmcm9tIHR3byBkaWZmZXJlbnQgdHJhbnNtaXR0
aW5nIGFudGVubmFzIHRvIHR3byBkaWZmZXJlbnQgcmVjZWl2aW5nIGFudGVubmFzIHRoZSBzYW1l
Pzxicj48L2Rpdj48L2Rpdj48YnI+PGJyPjxzcGFuIHRpdGxlPSJuZXRlYXNlZm9vdGVyIj48cD4m
bmJzcDs8L3A+PC9zcGFuPg==
------=_Part_34555_708651104.1625541137112--

--===============1724664372561957113==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1724664372561957113==--
