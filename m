Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B21004331D8
	for <lists+usrp-users@lfdr.de>; Tue, 19 Oct 2021 11:10:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 960C1384455
	for <lists+usrp-users@lfdr.de>; Tue, 19 Oct 2021 05:10:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=163.com header.i=@163.com header.b="XhAhfBo0";
	dkim-atps=neutral
Received: from m1356.mail.163.com (m1356.mail.163.com [220.181.13.56])
	by mm2.emwd.com (Postfix) with ESMTP id 7BD4F384455
	for <usrp-users@lists.ettus.com>; Tue, 19 Oct 2021 05:09:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=fsbzt
	f72NFhFvJjMBaFg4cmocPtH9HEwbkCtNv2W9/I=; b=XhAhfBo0NYcJcj9crIwRU
	CByjFnnB5liSeE1g58cko9UwvaSWNfVexY+GqT1GdOhT8BQMrQTdflpSB7fv74LQ
	Mw3EDqruS7L2OgbXHPqjtCK3jhbLTQlb1W0QAwspmtMnDBQUWmN4My44AjROrvQL
	dwIkC5gOgEGjLt6YAyCSFg=
Received: from fyt201460$163.com ( [223.72.72.61] ) by ajax-webmail-wmsvr56
 (Coremail) ; Tue, 19 Oct 2021 17:09:05 +0800 (CST)
X-Originating-IP: [223.72.72.61]
Date: Tue, 19 Oct 2021 17:09:05 +0800 (CST)
From: fan <fyt201460@163.com>
To: usrp-users@lists.ettus.com
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20210622(1d4788a8)
 Copyright (c) 2002-2021 www.mailtech.cn 163com
X-CM-CTRLDATA: 9e7r/WZvb3Rlcl9odG09NjMwOjU2
MIME-Version: 1.0
Message-ID: <4cee7359.592e.17c97cfb9d4.Coremail.fyt201460@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: OMGowADX3wMxi25hiforAQ--.51875W
X-CM-SenderInfo: hi1wjiaruwiqqrwthudrp/1tbiZQkxPl8ZRhZckwABs7
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Message-ID-Hash: EZTXSQQGZ3GAT2TCHVQJSV7LTALOYIRU
X-Message-ID-Hash: EZTXSQQGZ3GAT2TCHVQJSV7LTALOYIRU
X-MailFrom: fyt201460@163.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to receive the output of B210 Tx's PA?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EZTXSQQGZ3GAT2TCHVQJSV7LTALOYIRU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8057046629684451224=="

--===============8057046629684451224==
Content-Type: multipart/alternative;
	boundary="----=_Part_83167_462178822.1634634545620"

------=_Part_83167_462178822.1634634545620
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

SGmjrGV2ZXJ5b25lLkkgYW0gdHJ5aW5nIHRvIHN0dWR5IGhvdyB0byBwcmUgZGlzdG9ydCB0aGUg
c2lnbmFsIG9uIGIyMTAgdG8gZWxpbWluYXRlIHRoZSBlcnJvciBvZiBub25saW5lYXIgUEEuIEJl
Zm9yZSB0aGF0LCBJIG5lZWQgdG8gZGV0ZXJtaW5lOiBkb2VzIHRoZSBUWCBQQSBvZiBiMjEwIGhh
dmUgbm9ubGluZWFyIGNoYXJhY3RlcmlzdGljcyAod2hlbiBUWCBnYWluIGlzIHRvbyBoaWdoLCB0
aGUgc2lnbmFsIGFtcGxpdHVkZSB3aWxsIGJlIGxpbWl0ZWQgYmVsb3cgMS4gSXMgdGhpcyBiZWNh
dXNvZiBpdHMgbm9ubGluZWFyaXR5KT8gSWYgeWVzLCB3aGF0IHZhbHVlIGlzIHRoZSBUWCBnYWlu
IHNldCB0byB3aGVuIFRYIFBBIGlzIG5vbmxpbmVhcj8gSG93IGRvIEkgZ2V0IHRoZSBvdXRwdXQg
dmFsdWUgb2YgUEE/IChjb25uZWN0IFRYIHBvcnQgYW5kIFJ4IHBvcnQgd2l0aCBhIFNNQSBjYWJs
ZSBhbmQgb2JzZXJ2ZSB0aGUgaW5wdXQgb2YgUlg/KQoK
------=_Part_83167_462178822.1634634545620
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+SGmjrGV2ZXJ5b25lLkkg
YW0gdHJ5aW5nIHRvIHN0dWR5IGhvdyB0byBwcmUgZGlzdG9ydCB0aGUgc2lnbmFsIG9uIGIyMTAg
dG8gZWxpbWluYXRlIHRoZSBlcnJvciBvZiBub25saW5lYXIgUEEuIEJlZm9yZSB0aGF0LCBJIG5l
ZWQgdG8gZGV0ZXJtaW5lOiBkb2VzIHRoZSBUWCBQQSBvZiBiMjEwIGhhdmUgbm9ubGluZWFyIGNo
YXJhY3RlcmlzdGljcyAod2hlbiBUWCBnYWluIGlzIHRvbyBoaWdoLCB0aGUgc2lnbmFsIGFtcGxp
dHVkZSB3aWxsIGJlIGxpbWl0ZWQgYmVsb3cgMS4gSXMgdGhpcyBiZWNhdXNvZiBpdHMgbm9ubGlu
ZWFyaXR5KT8gSWYgeWVzLCB3aGF0IHZhbHVlIGlzIHRoZSBUWCBnYWluIHNldCB0byB3aGVuIFRY
IFBBIGlzIG5vbmxpbmVhcj8gSG93IGRvIEkgZ2V0IHRoZSBvdXRwdXQgdmFsdWUgb2YgUEE/IChj
b25uZWN0IFRYIHBvcnQgYW5kIFJ4IHBvcnQgd2l0aCBhIFNNQSBjYWJsZSBhbmQgb2JzZXJ2ZSB0
aGUgaW5wdXQgb2YgUlg/KTwvZGl2PjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+PGJyPjwvZGl2Pjwv
ZGl2Pjxicj48YnI+PHNwYW4gdGl0bGU9Im5ldGVhc2Vmb290ZXIiPjxwPiZuYnNwOzwvcD48L3Nw
YW4+
------=_Part_83167_462178822.1634634545620--

--===============8057046629684451224==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8057046629684451224==--
