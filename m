Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D5A5744F6
	for <lists+usrp-users@lfdr.de>; Thu, 14 Jul 2022 08:14:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9AC123809D1
	for <lists+usrp-users@lfdr.de>; Thu, 14 Jul 2022 02:14:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657779265; bh=t8e+qKuMuYFd6KyWKczPGvbqjScK9YLe6nlmfTQtCMY=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=NNMXL8roJvkdd4tuy6iYSJ47wUlnOZxNZu3a7elePlH6lvudTDe7BrP7ro+7bCb4O
	 2XUvm/31S/cERDChR/DrNJK/pr1HgnnOW/ZDv/xlibfbE1IF4WvK+xPmx/sdezenjG
	 naZs2ruvvnawd9e0iHSMXWY1CHXLHfs60rL8sPgFi2J0ujgN4tb4WcRdd6vExLXNqw
	 wcSVfdpbUBsmJejA9Dt6HSGBU737skhNaN9rMakDw8uBYaZEH5aeeWGP5WxBjeVSCz
	 NgfHcHG0WAfzkn7KEwi2HU5K/Pxbk+7wr1T/fdqNbAKnZnc0b8uShxmycGGWT7MpaU
	 CyhcqunY/3Gxg==
Received: from m138.mail.163.com (m138.mail.163.com [220.181.13.8])
	by mm2.emwd.com (Postfix) with ESMTP id C42E73839D9
	for <usrp-users@lists.ettus.com>; Thu, 14 Jul 2022 02:12:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=163.com header.i=@163.com header.b="CFHz9IO6";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=Ye+xz
	xGSnfEt+uGFZ6gWtHMUOC1b29VXqltRn4FYNi0=; b=CFHz9IO6aiePX3F6NqeMv
	BbEm/juQWXY4TRrr5MwzL3WebzHBvlVX79PjZ59IjPATlyczXQcuqLFRVItaMYgE
	fWRTPjiKcgUPcEE99mwqejHzC76C1EkCTltrCJLxaCXu2iNZpm+OK6y1uTcJXK2+
	kAUyVYOMH/3if0nlBTBOoI=
Received: from fyt201460$163.com ( [112.23.196.234] ) by ajax-webmail-wmsvr8
 (Coremail) ; Thu, 14 Jul 2022 14:12:17 +0800 (CST)
X-Originating-IP: [112.23.196.234]
Date: Thu, 14 Jul 2022 14:12:17 +0800 (CST)
From: fan <fyt201460@163.com>
To: usrp-users@lists.ettus.com
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20220113(9671e152)
 Copyright (c) 2002-2022 www.mailtech.cn 163com
MIME-Version: 1.0
Message-ID: <49d8c18d.2396.181fb562c2f.Coremail.fyt201460@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: CMGowAAnN+_Bs89iEzkcAA--.16166W
X-CM-SenderInfo: hi1wjiaruwiqqrwthudrp/1tbipQA+PlUMlIalIwABsp
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Message-ID-Hash: GMNPSLP44BQYR5PTJ3HJYB6ZGW4FV4SF
X-Message-ID-Hash: GMNPSLP44BQYR5PTJ3HJYB6ZGW4FV4SF
X-MailFrom: fyt201460@163.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Is it possible to control the sampling position of the baseband signal on the rx side of the usrp?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GMNPSLP44BQYR5PTJ3HJYB6ZGW4FV4SF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3177606974139679455=="

--===============3177606974139679455==
Content-Type: multipart/alternative;
	boundary="----=_Part_33567_243649627.1657779137583"

------=_Part_33567_243649627.1657779137583
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

ICAgICAgICAgICBIaaOsZXZlcnlvbmUuIEkgaGF2ZSB0aGUgIHF1ZXN0aW9uOiBJcyBpdCBwb3Nz
aWJsZSB0byBjb250cm9sIHRoZSBzYW1wbGluZyBwb3NpdGlvbiBvZiB0aGUgYmFzZWJhbmQgc2ln
bmFsIG9uIHRoZSByeCBzaWRlIG9mIHRoZSB1c3JwPwoKICAgICAgICAgICBUaGUgc2l0dWF0aW9u
IGlzIGFzIGZvbGxvd3M6IEkgdXNlIGEgdXNycCBiMjEwIHRvIHRyYW5zbWl0IGEgc2V0IG9mIDE2
UUFNIHNpZ25hbHMsIGFuZCByZWNlaXZlIHRoaXMgc2lnbmFsIG9uIHRoZSByeCBzaWRlIG9mIHRo
ZSBzYW1lIGRldmljZSwgYW5kIHJlcGVhdCB0aGlzIHNldmVyYWwgdGltZXMuIEhvd2V2ZXIsIHVu
ZGVyIHRoZSBjb25kaXRpb24gdGhhdCB0aGUgdHJhbnNtaXR0ZWQgc2lnbmFsLCB0eCBnYWluLCBy
eCBnYWluLCBjaGFubmVsIGZyZXF1ZW5jeSBhbmQgb3RoZXIgc2V0dGluZ3MgYXJlIHVuY2hhbmdl
ZCwgdGhlcmUgYXJlIHNvbWUgZGlmZmVyZW5jZXMgaW4gYW1wbGl0dWRlIGFuZCBwaGFzZSBiZXR3
ZWVuIHRoZSByZWNlaXZlZCBkYXRhIGVhY2ggdGltZS4gSSBuZXZlciBtb3ZlZCB0aGUgcG9zaXRp
b24gb2YgYjIxMCwgc28gdGhlIGNoYW5uZWwgc2hvdWxkIGJlIHRpbWUtaW52YXJpYW50LgoKICAg
ICAgICAgICBJIHRoaW5rIHRoZXJlIGFyZSB0d28gcG9zc2libGUgcmVhc29uczogRmlyc3QsIGV2
ZW4gaWYgdGhlIHRyYW5zbWl0dGVkIHNpZ25hbCBhbmQgdHJhbnNtaXQgc2V0dGluZ3MgYXJlIHRo
ZSBzYW1lIGVhY2ggdGltZSwgdGhlIHNpZ25hbCBhY3R1YWxseSB0cmFuc21pdHRlZCBieSB1c3Jw
IGVhY2ggdGltZSBpcyBzdGlsbCBkaWZmZXJlbnQ7IHNlY29uZCwgdGhlIHJlY2VpdmVyIGRvZXMg
bm90IHNhbXBsZSBhdCB0aGUgb3B0aW1hbCBzYW1wbGluZyBwb2ludCAsIGJ1dCByYW5kb21seSBz
YW1wbGVzLgoKICAgICAgICAgICBGaXJzdGx5o6xsZXQncyBkaXNjdXNzIHRoZSBzZWNvbmQgcG9z
c2liaWxpdHkuIEFzIGZhciBhcyBJIGtub3csIFVTUlAncyBkc3AgbW9kdWxlIGRvd25jb252ZXJ0
cyB0aGUgcmVjZWl2ZWQgYmFuZHBhc3Mgc2lnbmFsIHRvIGJhc2ViYW5kIGFuZCB0aGVuIHNhbXBs
ZXMgdGhlIGJhc2ViYW5kIHNpZ25hbC4gYSBnYXJkbmVyIGxvb3AgaXMgdXN1YWxseSB1c2VkIHRv
IGdldCB0aGUgYmVzdCBzYW1wbGluZyBwb2ludCBmcm9tIHRoZSBzYW1wbGVkIGRhdGEgKHRpbWlu
ZyByZWNvdmVyeSksIGJ1dCB0aGUgaW1wbGVtZW50YXRpb24gb2YgdGhlIGdhcmRuZXIgcmluZ3Mg
aW4gMngyIG1pbW8gd2l0aCAxNlFBTSBpcyBtb3JlIGRpZmZpY3VsdC4gSXMgdGhlcmUgYSBVSEQg
aW50ZXJmYWNlIHRoYXQgY2FuIGNvbnRyb2wgdGhlIHBvc2l0aW9uIG9mIHRoZSBzYW1wbGUgcG9p
bnRzPwogICAgICAgICAgIE9yLCB0aGUgcmVhbCByZWFzb24gaXMgdGhlIGZpcnN0o78KICAgICA=

------=_Part_33567_243649627.1657779137583
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxwIHN0eWxlPSJtYXJnaW46MDsiPiZuYnNwOyAmbmJzcDsgJm5i
c3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7SGmjrGV2ZXJ5b25lLiBJIGhhdmUgdGhlJm5ic3A7IHF1
ZXN0aW9uOiBJcyBpdCBwb3NzaWJsZSB0byBjb250cm9sIHRoZSBzYW1wbGluZyBwb3NpdGlvbiBv
ZiB0aGUgYmFzZWJhbmQgc2lnbmFsIG9uIHRoZSByeCBzaWRlIG9mIHRoZSB1c3JwPzwvcD48cCBz
dHlsZT0ibWFyZ2luOjA7Ij4mbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNw
O1RoZSBzaXR1YXRpb24gaXMgYXMgZm9sbG93czogSSB1c2UgYSB1c3JwIGIyMTAgdG8gdHJhbnNt
aXQgYSBzZXQgb2YgMTZRQU0gc2lnbmFscywgYW5kIHJlY2VpdmUgdGhpcyBzaWduYWwgb24gdGhl
IHJ4IHNpZGUgb2YgdGhlIHNhbWUgZGV2aWNlLCBhbmQgcmVwZWF0IHRoaXMgc2V2ZXJhbCB0aW1l
cy4gSG93ZXZlciwgdW5kZXIgdGhlIGNvbmRpdGlvbiB0aGF0IHRoZSB0cmFuc21pdHRlZCBzaWdu
YWwsIHR4IGdhaW4sIHJ4IGdhaW4sIGNoYW5uZWwgZnJlcXVlbmN5IGFuZCBvdGhlciBzZXR0aW5n
cyBhcmUgdW5jaGFuZ2VkLCB0aGVyZSBhcmUgc29tZSBkaWZmZXJlbmNlcyBpbiBhbXBsaXR1ZGUg
YW5kIHBoYXNlIGJldHdlZW4gdGhlIHJlY2VpdmVkIGRhdGEgZWFjaCB0aW1lLiBJIG5ldmVyIG1v
dmVkIHRoZSBwb3NpdGlvbiBvZiBiMjEwLCBzbyB0aGUgY2hhbm5lbCBzaG91bGQgYmUgdGltZS1p
bnZhcmlhbnQuPC9wPjxwIHN0eWxlPSJtYXJnaW46MDsiPiZuYnNwOyAmbmJzcDsgJm5ic3A7ICZu
YnNwOyAmbmJzcDsgJm5ic3A7SSB0aGluayB0aGVyZSBhcmUgdHdvIHBvc3NpYmxlIHJlYXNvbnM6
IEZpcnN0LCBldmVuIGlmIHRoZSB0cmFuc21pdHRlZCBzaWduYWwgYW5kIHRyYW5zbWl0IHNldHRp
bmdzIGFyZSB0aGUgc2FtZSBlYWNoIHRpbWUsIHRoZSBzaWduYWwgYWN0dWFsbHkgdHJhbnNtaXR0
ZWQgYnkgdXNycCBlYWNoIHRpbWUgaXMgc3RpbGwgZGlmZmVyZW50OyBzZWNvbmQsIHRoZSByZWNl
aXZlciBkb2VzIG5vdCBzYW1wbGUgYXQgdGhlIG9wdGltYWwgc2FtcGxpbmcgcG9pbnQgLCBidXQg
cmFuZG9tbHkgc2FtcGxlcy48L3A+PGRpdiBzdHlsZT0ibWFyZ2luOjA7Ij4mbmJzcDsgJm5ic3A7
ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwO0ZpcnN0bHmjrGxldCdzIGRpc2N1c3MgdGhlIHNl
Y29uZCBwb3NzaWJpbGl0eS4gQXMgZmFyIGFzIEkga25vdywgVVNSUCdzIGRzcCBtb2R1bGUgZG93
bmNvbnZlcnRzIHRoZSByZWNlaXZlZCBiYW5kcGFzcyBzaWduYWwgdG8gYmFzZWJhbmQgYW5kIHRo
ZW4gc2FtcGxlcyB0aGUgYmFzZWJhbmQgc2lnbmFsLiBhIGdhcmRuZXImbmJzcDtsb29wIGlzIHVz
dWFsbHkgdXNlZCB0byBnZXQgdGhlIGJlc3Qgc2FtcGxpbmcgcG9pbnQgZnJvbSB0aGUgc2FtcGxl
ZCBkYXRhJm5ic3A7KHRpbWluZyByZWNvdmVyeSksIGJ1dCB0aGUgaW1wbGVtZW50YXRpb24gb2Yg
dGhlIGdhcmRuZXIgcmluZ3MgaW4gMngyIG1pbW8gd2l0aCAxNlFBTSZuYnNwO2lzIG1vcmUgZGlm
ZmljdWx0LiBJcyB0aGVyZSBhIFVIRCBpbnRlcmZhY2UgdGhhdCBjYW4gY29udHJvbCB0aGUgcG9z
aXRpb24gb2YgdGhlIHNhbXBsZSBwb2ludHM/PC9kaXY+PGRpdiBzdHlsZT0ibWFyZ2luOjA7Ij4m
bmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwO09yLCB0aGUgcmVhbCByZWFz
b24gaXMgdGhlIGZpcnN0o788L2Rpdj48ZGl2IHN0eWxlPSJtYXJnaW46MDsiPiZuYnNwOyAmbmJz
cDsgJm5ic3A7PC9kaXY+PC9kaXY+
------=_Part_33567_243649627.1657779137583--

--===============3177606974139679455==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3177606974139679455==--
