Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 550324D7704
	for <lists+usrp-users@lfdr.de>; Sun, 13 Mar 2022 18:00:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 22CF5384B0D
	for <lists+usrp-users@lfdr.de>; Sun, 13 Mar 2022 13:00:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=brilliantroot.com header.i=@brilliantroot.com header.b="swcvlZwR";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=brilliantroot.com header.i=@brilliantroot.com header.b="cWkz8iFq";
	dkim-atps=neutral
Received: from mx1.brilliantroot.com (wsip-68-226-35-213.lv.lv.cox.net [68.226.35.213])
	by mm2.emwd.com (Postfix) with ESMTPS id F413F384603
	for <usrp-users@lists.ettus.com>; Sun, 13 Mar 2022 12:59:20 -0400 (EDT)
X-Spam-Status: No
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.brilliantroot.com 4KGm9M5qVpzFqmY
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brilliantroot.com;
	s=brdkim; t=1647190759;
	bh=yAkAbtlqMPDfbgBFWuBAvh2JtSzPLUrl6FesXE2n6kQ=;
	h=From:To:Subject:Date:From;
	b=swcvlZwRy9j/ud4jaC/Ukki96fOTJsIRSD9f7uST1UVlcGco0rFDRBPBxRSqtYgHY
	 SBWCDza3kEwtX4lHwgIbiMwOGrNg8YEJITCNu1J+cINpVubBknDdzUNuQzgXWT4KTL
	 SGAE/3d2sGGqI+ao/fITsczqohM1qoQ1l/KaWAu4uSaMjdl62grFgJKByQlR4ujw47
	 3xJLG/yzkZI00wH8nEB0fmFF8HJrW+LjzGs/8COijIEZwdYeFWG33DSuhmySh8GgxP
	 AK/0n9VP+GmKZyNnFgQjUUtpBSD80+TmOlVD7OyfdI8ibT04ZcQtS6RJq4L65nnsBl
	 ubC8Vr1OclJjQ==
X-BrilliantRoot-MailScanner-eFa-Watermark: 1647795557.86419@VJqBfCKdxP3JUqzMFD1gYQ
X-BrilliantRoot-MailScanner-eFa-From: erik.carlseen@brilliantroot.com
X-BrilliantRoot-MailScanner-eFa: Found to be clean
X-BrilliantRoot-MailScanner-eFa-ID: 4KGm9J5L6CzFqmW
X-BrilliantRoot-MailScanner-eFa-Information: Please contact do-not-reply@brilliantroot.com for more information
Received: from br-ex-ds1-alpha.brilliantroot.com (BR-EX-DS1-ALPHA.brilliantroot.com [10.125.0.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(no client certificate requested)
	by bi-efa-ds1-alpha.brilliantroot.com (MailScanner Milter) with SMTP id 4KGm9J5L6CzFqmW
	for <usrp-users@lists.ettus.com>; Sun, 13 Mar 2022 09:59:16 -0700 (PDT)
DMARC-Filter: OpenDMARC Filter v1.4.1 mx1.brilliantroot.com 4KGm9J5L6CzFqmW
Authentication-Results: bi-efa-ds1-alpha.brilliantroot.com; dmarc=none (p=none dis=none) header.from=brilliantroot.com
Authentication-Results: bi-efa-ds1-alpha.brilliantroot.com; spf=none smtp.mailfrom=brilliantroot.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.brilliantroot.com 4KGm9J5L6CzFqmW
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brilliantroot.com;
	s=brdkim; t=1647190756;
	bh=yAkAbtlqMPDfbgBFWuBAvh2JtSzPLUrl6FesXE2n6kQ=;
	h=From:To:Subject:Date:From;
	b=cWkz8iFqtrbLCbXGg71MDOrgFkPWbQgslYlFbod7e5BYJc8cYYLNkinxaF+P9XXNt
	 8U6E7T1WACGsjPKPzo3A/EFofk8+eASQxrLAt1KmXJZwX+heYPKCD2gKrcWSH76MVY
	 HUr731nNMKt7ja6K1bYUoSnYuUQHA6SwnsJeOZnEE27nJmvWhPhm1RZzahyO/7tn6i
	 GsJSy0EKQIQ91+E+0sRS82jgayZY03WE/ZIzOHlPQw3vUTNrLnom9R0WWU+Sn0i/aQ
	 a4Ef03iDQfl5oBBgDNh5VmhVMGz6G2x6tGSUwZvlTim8G1pmKOAHJx3usdkMkMy0tJ
	 JnMoN5sUkGQyg==
Received: from BR-EX-DS1-ALPHA.brilliantroot.com (10.125.0.4) by
 BR-EX-DS1-ALPHA.brilliantroot.com (10.125.0.4) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.18; Sun, 13 Mar 2022 09:59:16 -0700
Received: from BR-EX-DS1-ALPHA.brilliantroot.com ([fe80::a046:199b:8dd3:49f7])
 by BR-EX-DS1-ALPHA.brilliantroot.com ([fe80::a046:199b:8dd3:49f7%4]) with
 mapi id 15.01.2375.018; Sun, 13 Mar 2022 09:59:15 -0700
From: Erik Carlseen <erik.carlseen@brilliantroot.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRB Hardware Driver with Apple Silicon Macs
Thread-Index: AQHYNvur2hEn99ZCDEulpfG46e9h5Q==
Date: Sun, 13 Mar 2022 16:59:15 +0000
Message-ID: <9D4AD31F-21EF-46DE-8419-7A4EF6DAB197@contoso.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.69.17]
MIME-Version: 1.0
Message-ID-Hash: UG4BTTLSQJ2AHJJBN5YN3MCYNZIK5CX3
X-Message-ID-Hash: UG4BTTLSQJ2AHJJBN5YN3MCYNZIK5CX3
X-MailFrom: erik.carlseen@brilliantroot.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRB Hardware Driver with Apple Silicon Macs
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UG4BTTLSQJ2AHJJBN5YN3MCYNZIK5CX3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9170105070481384147=="

--===============9170105070481384147==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9D4AD31F21EF46DE84197A4EF6DAB197contosocom_"

--_000_9D4AD31F21EF46DE84197A4EF6DAB197contosocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGFzIGFueWJvZHkgc3VjY2Vzc2Z1bGx5IGJ1aWx0IGFuZCBydW4gdGhlIFVTUkIgSGFyZHdhcmUg
RHJpdmVyIG9uIGFuIEFwcGxlIFNpbGljb24gKE0xIGZhbWlseSBvZiBDUFVzKSBNYWM/DQoNCk15
IHVuZGVyc3RhbmRpbmcgaXMgdGhhdCBBQVJDSDY0IGlzIHN1cHBvcnRlZCBvbiBMaW51eCBhbmQg
TWFjT1MgaXMgc3VwcG9ydGVkIGluIGdlbmVyYWwsIGJ1dCBqdXN0IGFzc3VtaW5nIHRoYXQgYW55
IGRyaXZlciBzb3VyY2UgY29kZSB3aWxsIGp1c3Qgd29yayBvbiBhIG5ldyBhcmNoaXRlY3R1cmUg
LyBPUyBjb21iaW5hdGlvbiBpcyBnZW5lcmFsbHkgbm90IGEgd2lzZSBnYW1ibGUuDQoNCknigJlt
IHRoaW5raW5nIHRoYXQgYW4gTTEgTWFjIE1pbmkgbWlnaHQgYmUgYW4gb3V0c3RhbmRpbmcgcGxh
dGZvcm0gZm9yIFNEUiB3b3JrLg0KVGhhbmtzLA0KDQpFcmlrIENhcmxzZWVuDQoNCg==

--_000_9D4AD31F21EF46DE84197A4EF6DAB197contosocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <E2C57907B38AE34BB0875FEFDC5B5CD6@brilliantroot.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6bz0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6b2ZmaWNlIiB4
bWxuczp3PSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOm9mZmljZTp3b3JkIiB4bWxuczptPSJo
dHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL29mZmljZS8yMDA0LzEyL29tbWwiIHhtbG5zPSJo
dHRwOi8vd3d3LnczLm9yZy9UUi9SRUMtaHRtbDQwIj4NCjxoZWFkPg0KPG1ldGEgaHR0cC1lcXVp
dj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPg0KPG1l
dGEgbmFtZT0iR2VuZXJhdG9yIiBjb250ZW50PSJNaWNyb3NvZnQgV29yZCAxNSAoZmlsdGVyZWQg
bWVkaXVtKSI+DQo8c3R5bGU+PCEtLQ0KLyogRm9udCBEZWZpbml0aW9ucyAqLw0KQGZvbnQtZmFj
ZQ0KCXtmb250LWZhbWlseToiQ2FtYnJpYSBNYXRoIjsNCglwYW5vc2UtMToyIDQgNSAzIDUgNCA2
IDMgMiA0O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToy
IDE1IDUgMiAyIDIgNCAzIDIgNDt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3Jt
YWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGluOw0KCW1hcmdpbi1i
b3R0b206LjAwMDFwdDsNCglmb250LXNpemU6MTIuMHB0Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJp
IixzYW5zLXNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7bXNvLXN0eWxlLXBy
aW9yaXR5Ojk5Ow0KCWNvbG9yOiMwNTYzQzE7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9
DQphOnZpc2l0ZWQsIHNwYW4uTXNvSHlwZXJsaW5rRm9sbG93ZWQNCgl7bXNvLXN0eWxlLXByaW9y
aXR5Ojk5Ow0KCWNvbG9yOiM5NTRGNzI7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpz
cGFuLkVtYWlsU3R5bGUxNw0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1jb21wb3NlOw0KCWZv
bnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0KCWNvbG9yOndpbmRvd3RleHQ7fQ0KLk1z
b0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6
IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4g
MTEuMGluOw0KCW1hcmdpbjoxLjBpbiAxLjBpbiAxLjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rp
b24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+DQo8L2hlYWQ+DQo8Ym9keSBs
YW5nPSJFTi1VUyIgbGluaz0iIzA1NjNDMSIgdmxpbms9IiM5NTRGNzIiPg0KPGRpdiBjbGFzcz0i
V29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNp
emU6MTEuMHB0Ij5IYXMgYW55Ym9keSBzdWNjZXNzZnVsbHkgYnVpbHQgYW5kIHJ1biB0aGUgVVNS
QiBIYXJkd2FyZSBEcml2ZXIgb24gYW4gQXBwbGUgU2lsaWNvbiAoTTEgZmFtaWx5IG9mIENQVXMp
IE1hYz8NCjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+TXkgdW5k
ZXJzdGFuZGluZyBpcyB0aGF0IEFBUkNINjQgaXMgc3VwcG9ydGVkIG9uIExpbnV4IGFuZCBNYWNP
UyBpcyBzdXBwb3J0ZWQgaW4gZ2VuZXJhbCwgYnV0IGp1c3QgYXNzdW1pbmcgdGhhdCBhbnkgZHJp
dmVyIHNvdXJjZSBjb2RlIHdpbGwganVzdCB3b3JrIG9uIGEgbmV3IGFyY2hpdGVjdHVyZSAvIE9T
IGNvbWJpbmF0aW9uIGlzIGdlbmVyYWxseSBub3QNCiBhIHdpc2UgZ2FtYmxlLjxvOnA+PC9vOnA+
PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6
MTEuMHB0Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+SeKAmW0gdGhpbmtpbmcgdGhhdCBhbiBN
MSBNYWMgTWluaSBtaWdodCBiZSBhbiBvdXRzdGFuZGluZyBwbGF0Zm9ybSBmb3IgU0RSIHdvcmsu
PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9
ImZvbnQtc2l6ZToxMS4wcHQiPjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5UaGFua3MsPG86cD48L286cD48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTox
MS4wcHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5FcmlrIENhcmxzZWVuPG86cD48L286cD48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTox
MS4wcHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9o
dG1sPg0K

--_000_9D4AD31F21EF46DE84197A4EF6DAB197contosocom_--

--===============9170105070481384147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9170105070481384147==--
