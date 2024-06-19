Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA29890E39B
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2024 08:38:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 79EC73854D1
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2024 02:38:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718779125; bh=e7WIpWshoQ6Tmhyl+l9hiz7Cx6rxSvTQECsbjngHug0=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=ATjLu5MvAxjQPDr4RKjmQnz/4c45djuyOnI6cJ+c2JvykzaQ0J5JJT5Gl+eTHW1JY
	 wS9uvMZlgkexL63JKuosanwhj2MFTPBeELimLUAB0ZspCZGxN3zPGnPR7cd1maN99Z
	 hFbn1aMzenerTwYMtyuj6TLD/OtKbhv5lUzEMcegFeyZ7B+lISyhSprzLLR3vgXggJ
	 2ply5kiQcBJIFctoUlSigJW6ZIVG//hd/qbPdk3vc8gQGboNyBaEKjphSE0nb4M61b
	 AMLwSk0Ma0AdtsB7Hhst66tHwgziMJb/HztsNlT6azlDcSSmJmj154rctxMizYDfDi
	 Zwc1Fih+m8Dnw==
Received: from mail-43167.protonmail.ch (mail-43167.protonmail.ch [185.70.43.167])
	by mm2.emwd.com (Postfix) with ESMTPS id 555B0384FFF
	for <usrp-users@lists.ettus.com>; Wed, 19 Jun 2024 02:37:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=protonmail.com header.i=@protonmail.com header.b="qmhRQRTE";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1718779060; x=1719038260;
	bh=d11/UA4Zc7UohJo+mU8Fkaihe9nv0o9pAXG4lC34OQ4=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=qmhRQRTEczjGhDEGFdJzJNm31m+gnwqxD3dZJ30XsmLIzgwrLZP23tvOR/DAeU3cY
	 Wgx1eqFtFA+SnCVp+bx36l6vWERyzMgwX6IIhsGY4E4ZCkJEgA1A4p0rIYfxBt6Tab
	 hSq9YJzk1rNQJ2OW91wcm1K3REbnYgnn6tqePrjQVMyNdGJstZWptpZfa7HJhOx1ZM
	 7cxFevXwIZv7QgsUJvgsCyUV38vngMe53nFbYejPZYnsEz7zm1LSbNTYC+r3J2ZQLK
	 xgyRLQ6Pi5s57GUUyMt1dQvyg/O6KwkwYbshQqphNIt5yFIdUbPR0R9yhnkekNfKcU
	 7PEkBqANyVKLg==
Date: Wed, 19 Jun 2024 06:37:36 +0000
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <_4kdSpsp43uA23Twys44Eh47XROibC7bGW1EtuHVazp72VtZNIzis015AGTjDHX6Gf-vkZ9BDq2Zu1nSgoW4oYJHHDJog31BbkZm38TcJ9E=@protonmail.com>
Feedback-ID: 47010692:user:proton
X-Pm-Message-ID: 153be0a37ff19094c6b390e301e2372b9f48d834
MIME-Version: 1.0
Message-ID-Hash: DKZQA37WNMVXCYHJ6QCUWUVJ74Y4VFID
X-Message-ID-Hash: DKZQA37WNMVXCYHJ6QCUWUVJ74Y4VFID
X-MailFrom: olo1618@protonmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Clarification on Benchmark Rate Testing for USRP X310 with two TwinRX
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DKZQA37WNMVXCYHJ6QCUWUVJ74Y4VFID/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Olo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Olo <olo1618@protonmail.com>
Content-Type: multipart/mixed; boundary="===============1065424313080887499=="

This is a multi-part message in MIME format.

--===============1065424313080887499==
Content-Type: multipart/alternative;
 boundary="b1_54qNqUPj5pQR3NQYC9osTU9TflKgubiHucCNAZuUZ8"

This is a multi-part message in MIME format.

--b1_54qNqUPj5pQR3NQYC9osTU9TflKgubiHucCNAZuUZ8
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

RGVhciBFdHR1cyBSZXNlYXJjaCBTdXBwb3J0IFRlYW0sCgpJIGhvcGUgdGhpcyBtZXNzYWdlIGZp
bmRzIHlvdSB3ZWxsLgoKSSBhbSBjdXJyZW50bHkgd29ya2luZyB3aXRoIGEgVVNSUCBYMzEwIGVx
dWlwcGVkIHdpdGggVHdpblJYIGRhdWdodGVyYm9hcmRzIGFuZCBoYXZlIHNvbWUgcXVlc3Rpb25z
IHJlZ2FyZGluZyB0aGUgYmVuY2htYXJrX3JhdGUgY29tbWFuZCBhbmQgaXRzIGltcGxpY2F0aW9u
cyBvbiBvdmVyYWxsIGJhbmR3aWR0aCB1c2FnZS4KCldoZW4gSSBleGVjdXRlIHRoZSBmb2xsb3dp
bmcgY29tbWFuZDoKCi4vYmVuY2htYXJrX3JhdGUgLS1hcmdzPSJhZGRyPTxmaXJzdF9pcD4sc2Vj
b25kX2FkZHI9PHNlY29uZF9pcD4iIC0tY2hhbm5lbHMgIjAsMSwyLDMiIC0tcnhfcmF0ZSAxMDBl
NiAtLWR1cmF0aW9uIDMwCgphbSBJIHRlc3RpbmcgYSBjb21iaW5lZCBiYW5kd2lkdGggb2YgNHgx
MDAgTUh6LCB3aGljaCB0b3RhbHMgNDAwIE1Iej8KClNpbWlsYXJseSwgd2hlbiBJIHJ1bjoKCi4v
YmVuY2htYXJrX3JhdGUgLS1hcmdzPSJhZGRyPTxmaXJzdF9pcD4sc2Vjb25kX2FkZHI9PHNlY29u
ZF9pcD4iIC0tY2hhbm5lbHMgIjAsMiIgLS1yeF9yYXRlIDIwMGU2IC0tZHVyYXRpb24gMzAKCmRv
ZXMgdGhpcyBhbHNvIGVxdWF0ZSB0byBhIHRvdGFsIGJhbmR3aWR0aCBvZiA0MDAgTUh6PwoKSG93
ZXZlciwgZm9yIHRoZSBjb21tYW5kOgoKLi9iZW5jaG1hcmtfcmF0ZSAtLWFyZ3M9ImFkZHI9PGZp
cnN0X2lwPixzZWNvbmRfYWRkcj08c2Vjb25kX2lwPiIgLS1jaGFubmVscyAiMCwxIiAtLXJ4X3Jh
dGUgMjAwZTYgLS1kdXJhdGlvbiAzMAoKZG9lcyB0aGlzIG9ubHkgdGVzdCAyMDAgTUh6IGJlY2F1
c2UgaXQgaXMgb3BlcmF0aW5nIHRocm91Z2gganVzdCBvbmUgVHdpblJYPwoKSSB3YW50IHRvIGVu
c3VyZSB0aGF0IEkgZnVsbHkgdW5kZXJzdGFuZCBob3cgdGhlIGJhbmR3aWR0aCBpcyBiZWluZyB1
dGlsaXplZCBhbmQgdGVzdGVkIGFjcm9zcyB0aGUgZGlmZmVyZW50IGNvbmZpZ3VyYXRpb25zLgoK
VGhhbmsgeW91IGluIGFkdmFuY2UgZm9yIHlvdXIgYXNzaXN0YW5jZS4KCkJlc3QgcmVnYXJkcywK
T2xvLg==

--b1_54qNqUPj5pQR3NQYC9osTU9TflKgubiHucCNAZuUZ8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0
cHg7Ij48cD5EZWFyIEV0dHVzIFJlc2VhcmNoIFN1cHBvcnQgVGVhbSw8L3A+PHA+SSBob3BlIHRo
aXMgbWVzc2FnZSBmaW5kcyB5b3Ugd2VsbC48L3A+PHA+SSBhbSBjdXJyZW50bHkgd29ya2luZyB3
aXRoIGEgVVNSUCBYMzEwIGVxdWlwcGVkIHdpdGggVHdpblJYIGRhdWdodGVyYm9hcmRzIGFuZCBo
YXZlIHNvbWUgcXVlc3Rpb25zIHJlZ2FyZGluZyB0aGUgPGNvZGU+YmVuY2htYXJrX3JhdGU8L2Nv
ZGU+IGNvbW1hbmQgYW5kIGl0cyBpbXBsaWNhdGlvbnMgb24gb3ZlcmFsbCBiYW5kd2lkdGggdXNh
Z2UuPC9wPjxwPldoZW4gSSBleGVjdXRlIHRoZSBmb2xsb3dpbmcgY29tbWFuZDo8L3A+Li9iZW5j
aG1hcmtfcmF0ZSA8c3Bhbj4tLWFyZ3M8L3NwYW4+PSJhZGRyPSZsdDtmaXJzdF9pcCZndDssc2Vj
b25kX2FkZHI9Jmx0O3NlY29uZF9pcCZndDsiIDxzcGFuPi0tY2hhbm5lbHM8L3NwYW4+IDxiPiI8
c3Bhbj4wPC9zcGFuPiw8c3Bhbj4xPC9zcGFuPiw8c3Bhbj4yPC9zcGFuPiw8c3Bhbj4zPC9zcGFu
PiI8L2I+IDxzcGFuPi0tcnhfcmF0ZTwvc3Bhbj4gPGI+PHNwYW4+MTAwPC9zcGFuPmU2PC9iPiA8
c3Bhbj4tLWR1cmF0aW9uPC9zcGFuPiA8c3Bhbj4zMDwvc3Bhbj48YnI+PC9kaXY+PGRpdiBzdHls
ZT0iZm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE0cHg7Ij48cD5h
bSBJIHRlc3RpbmcgYSBjb21iaW5lZCBiYW5kd2lkdGggb2YgNHgxMDAgTUh6LCB3aGljaCB0b3Rh
bHMgNDAwIE1Iej88L3A+PHA+U2ltaWxhcmx5LCB3aGVuIEkgcnVuOjwvcD4uL2JlbmNobWFya19y
YXRlIDxzcGFuPi0tYXJnczwvc3Bhbj49ImFkZHI9Jmx0O2ZpcnN0X2lwJmd0OyxzZWNvbmRfYWRk
cj0mbHQ7c2Vjb25kX2lwJmd0OyIgPHNwYW4+LS1jaGFubmVsczwvc3Bhbj4gPGI+IjxzcGFuPjA8
L3NwYW4+LDxzcGFuPjI8L3NwYW4+IjwvYj4gPHNwYW4+LS1yeF9yYXRlPC9zcGFuPiA8Yj48c3Bh
bj4yMDA8L3NwYW4+ZTY8L2I+IDxzcGFuPi0tZHVyYXRpb248L3NwYW4+IDxzcGFuPjMwPC9zcGFu
Pjxicj48L2Rpdj48ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQXJpYWwsIHNhbnMtc2VyaWY7IGZv
bnQtc2l6ZTogMTRweDsiPjxzcGFuPjxzcGFuPjxicj48L3NwYW4+PC9zcGFuPjwvZGl2PjxkaXYg
c3R5bGU9ImZvbnQtZmFtaWx5OiBBcmlhbCwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxNHB4OyI+
PHA+ZG9lcyB0aGlzIGFsc28gZXF1YXRlIHRvIGEgdG90YWwgYmFuZHdpZHRoIG9mIDQwMCBNSHo/
PC9wPjxwPkhvd2V2ZXIsIGZvciB0aGUgY29tbWFuZDo8L3A+Li9iZW5jaG1hcmtfcmF0ZSA8c3Bh
bj4tLWFyZ3M8L3NwYW4+PSJhZGRyPSZsdDtmaXJzdF9pcCZndDssc2Vjb25kX2FkZHI9Jmx0O3Nl
Y29uZF9pcCZndDsiIDxzcGFuPi0tY2hhbm5lbHM8L3NwYW4+IDxiPiI8c3Bhbj4wPC9zcGFuPiw8
c3Bhbj4xPC9zcGFuPiI8L2I+IDxzcGFuPi0tcnhfcmF0ZTwvc3Bhbj4gPGI+PHNwYW4+MjAwPC9z
cGFuPmU2PC9iPiA8c3Bhbj4tLWR1cmF0aW9uPC9zcGFuPiA8c3Bhbj4zMDwvc3Bhbj48YnI+PC9k
aXY+PGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6
IDE0cHg7Ij48c3Bhbj48c3Bhbj48YnI+PC9zcGFuPjwvc3Bhbj48L2Rpdj48ZGl2IHN0eWxlPSJm
b250LWZhbWlseTogQXJpYWwsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTRweDsiPjxzcGFuPjxz
cGFuPjxwPmRvZXMgdGhpcyBvbmx5IHRlc3QgMjAwIE1IeiBiZWNhdXNlIGl0IGlzIG9wZXJhdGlu
ZyB0aHJvdWdoIGp1c3Qgb25lIFR3aW5SWD88L3A+PHA+SSB3YW50IHRvIGVuc3VyZSB0aGF0IEkg
ZnVsbHkgdW5kZXJzdGFuZCBob3cgdGhlIGJhbmR3aWR0aCBpcyBiZWluZyB1dGlsaXplZCBhbmQg
dGVzdGVkIGFjcm9zcyB0aGUgZGlmZmVyZW50IGNvbmZpZ3VyYXRpb25zLjwvcD48cD5UaGFuayB5
b3UgaW4gYWR2YW5jZSBmb3IgeW91ciBhc3Npc3RhbmNlLjwvcD48cD5CZXN0IHJlZ2FyZHMsPGJy
Pk9sby48L3A+PGJyPjwvc3Bhbj48L3NwYW4+PC9kaXY+PGRpdiBjbGFzcz0icHJvdG9ubWFpbF9z
aWduYXR1cmVfYmxvY2siIHN0eWxlPSJmb250LWZhbWlseTogQXJpYWwsIHNhbnMtc2VyaWY7IGZv
bnQtc2l6ZTogMTRweDsiPg0KPC9kaXY+DQo=


--b1_54qNqUPj5pQR3NQYC9osTU9TflKgubiHucCNAZuUZ8--

--===============1065424313080887499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1065424313080887499==--
