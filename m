Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8A85123A5
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 22:08:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B6C19384462
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 16:08:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651090110; bh=2Uzhpgb5Fr3pYgMlUgPWiUwGCh9VbkBW6xmI9SHMjLo=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Yy/pe7lodBXFZbv7p2ZdIW1U0ICbF7uDllHGwo7+r0pIO3YaU2vSVqGVsQGbefe1s
	 eaU+g4w1piOTIZfqfm+h8TL0QQcFIe2kjzCp3GAIlfbQ9ZnLQU5iLNQr2WrmF2AwTN
	 ao0aY7I1i3+Gh9TZZs7bWryJ0gmJOzMEUYrmnRTM75OAhbhssg8Q5337UfIGVK9TXh
	 SHqYOFlPTJI9NaJfIcwHibdJHHwpTOQl11q2lXPs1J2mukTTXkxKH/4XEgvOm6ef/x
	 yXj4jD7Z8Ron9jjCb+DkkIMcQbNrDJfu0ie30izqldRo5KpiRnuAxNDvtgjykP7vJD
	 7y1wkj+eGtYSw==
Received: from proofpoint7.lanl.gov (proofpoint7.lanl.gov [204.121.3.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 586D5383EC9
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 16:07:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=lanl.gov header.i=@lanl.gov header.b="El/4jnEL";
	dkim-atps=neutral
Received: from pps.filterd (proofpoint7.lanl.gov [127.0.0.1])
	by proofpoint7.lanl.gov (8.16.1.2/8.16.1.2) with SMTP id 23RK0kOD108194
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 14:07:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lanl.gov; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=lanl; bh=qaP5MKSECNHhCGtOqpcKGfFwHCW3vv9It8bjF8VMlKI=;
 b=El/4jnELnkusptHicF0ll5KqWUicr0mW0Z414ZqIwn1hLj+l6taT8D/UVidULzLktuN3
 cQD0Br5Tr5t0WbvH4cQrj5+AjDNzQ1F7ChO65xm+hs/EFQ0efKM+aDFiaOK+LOHWx2dJ
 M9SlQeemkzhnmi+cdMvKefhpi44FstUZHR6LgCVMNKsOMNi6BoCrCegx/DWBCg0DIwzi
 4NEZLSL5YEZOKqFq7p/EliSlnXm2+efdFTF9r+BAxGlf1K6PJkmUoOGZ4KTmD1e8XSCL
 uGmvTwVC3EXgrCQWO4XKbpjpDCsk5S1NNVbT/fQyeADHAK+oXu3mGPpi0TWaj8+5DLdm qQ==
Received: from mailrelay2.lanl.gov (mailrelay2.lanl.gov [128.165.4.103])
	by proofpoint7.lanl.gov with ESMTP id 3fmfuc83ep-1
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 14:07:12 -0600
Received: from localhost (localhost [127.0.0.1])
	by mailrelay2.lanl.gov (Postfix) with ESMTP id 0C34E1007317
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 14:07:13 -0600 (MDT)
X-NIE-2-Virus-Scanner: amavisd-new at mailrelay2.lanl.gov
Received: from EXG16-P-MBX03.win.lanl.gov (exg16-p-mbx03.win.lanl.gov [128.165.106.183])
	by mailrelay2.lanl.gov (Postfix) with ESMTP id EE49C1006EF3
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 14:07:12 -0600 (MDT)
Received: from EXG16-P-MBX01.win.lanl.gov (128.165.106.181) by
 EXG16-P-MBX03.win.lanl.gov (128.165.106.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.24; Wed, 27 Apr 2022 14:07:12 -0600
Received: from EXG16-P-MBX01.win.lanl.gov ([fe80::5412:a681:249d:9cee]) by
 EXG16-P-MBX01.win.lanl.gov ([fe80::5412:a681:249d:9cee%7]) with mapi id
 15.01.2375.024; Wed, 27 Apr 2022 14:07:12 -0600
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: [EXTERNAL] Re: sychronous receiving from
 multiple e320's repeatedly results in ERROR_CODE_LATE_COMMAND
Thread-Index: AQHYWmzj++MbLhX13ESEgcljgmfHS60EJV9wgABrG4D//58SUA==
Date: Wed, 27 Apr 2022 20:07:12 +0000
Message-ID: <7936c9be329a4d889534a5d18f096619@lanl.gov>
References: <a10bc1673342466f9c2a166280d57643@lanl.gov>
 <6b538660-e051-c354-a9c3-a1fbde33e591@gmail.com>
 <d1678769adce4396b232ed2653d02014@lanl.gov>
 <196b97b5-4555-0527-f983-3cb2074f71df@gmail.com>
 <da34f941c5794b9ba453e49fc35ab7c0@lanl.gov>
 <8f6380b7-1b50-fe2e-1588-71961f4cb29d@gmail.com>
In-Reply-To: <8f6380b7-1b50-fe2e-1588-71961f4cb29d@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.165.106.210]
MIME-Version: 1.0
X-Proofpoint-GUID: O4TZJDuwxBds_k7H5DeA6MCewgiq8I07
X-Proofpoint-ORIG-GUID: O4TZJDuwxBds_k7H5DeA6MCewgiq8I07
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.858
 definitions=2022-04-27_04:2022-04-27,2022-04-27 signatures=0
X-Proofpoint-Spam-Reason: safe
Message-ID-Hash: HDVYEM76337KC7RJPZG7DA66XTZAKFAQ
X-Message-ID-Hash: HDVYEM76337KC7RJPZG7DA66XTZAKFAQ
X-MailFrom: mpc@lanl.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: sychronous receiving from multiple e320's repeatedly results in ERROR_CODE_LATE_COMMAND
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HDVYEM76337KC7RJPZG7DA66XTZAKFAQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Caffrey, Michael Paul via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Caffrey, Michael Paul" <mpc@lanl.gov>
Content-Type: multipart/mixed; boundary="===============1643908466500548086=="

--===============1643908466500548086==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7936c9be329a4d889534a5d18f096619lanlgov_"

--_000_7936c9be329a4d889534a5d18f096619lanlgov_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSByZWNlaXZlZCBhIHNpbmdsZSDigJhM4oCZIGFuZCB0aGUgY29kZSBhZ2FpbiBmYWlscyB3aXRo
IHRoZSBMQVRFIGVycm9yIHdpdGggYSBzaW5nbGUgZTMyMCAoaW4gdGhlIHNhbWUgZmFzaGlvbiBh
cyB3aXRoIHR3byBlMzIw4oCZcykuDQoNCkZyb206IE1hcmN1cyBELiBMZWVjaCA8cGF0Y2h2b25i
cmF1bkBnbWFpbC5jb20+DQpTZW50OiBXZWRuZXNkYXksIEFwcmlsIDI3LCAyMDIyIDE6NTMgUE0N
ClRvOiBDYWZmcmV5LCBNaWNoYWVsIFBhdWwgPG1wY0BsYW5sLmdvdj47IHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tDQpTdWJqZWN0OiBSZTogW1VTUlAtdXNlcnNdIFJlOiBbRVhURVJOQUxdIFJl
OiBzeWNocm9ub3VzIHJlY2VpdmluZyBmcm9tIG11bHRpcGxlIGUzMjAncyByZXBlYXRlZGx5IHJl
c3VsdHMgaW4gRVJST1JfQ09ERV9MQVRFX0NPTU1BTkQNCg0KT24gMjAyMi0wNC0yNyAxNTozMSwg
Q2FmZnJleSwgTWljaGFlbCBQYXVsIHdyb3RlOg0KSSBjYW4gcnVuIHRoZSBwcm9ncmFtIG92ZXIg
YW5kIG92ZXIgYWdhaW4gZnJvbSB0aGUgY29tbWFuZCBsaW5lIG9mIHRoZSBob3N0IHdpdGhvdXQg
cmVib290aW5nIC8gcmVzZXR0aW5nIHRoZSBob3N0IG9yIHRoZSBlMzIw4oCZcy4gRWFjaCB0aW1l
IEkgcnVuIHRoZSBwcm9ncmFtLCB0aGUgZmlyc3QgY29sbGVjdHMgc3VjY2VlZHMgKCBJIHJlY2Vp
dmUgdGhlIHJlcXVlc3RlZCBhbW91bnQgb2YgZGF0YSwgYW55d2F5KSwgd2hpbGUgc3Vic2VxdWVu
dCByZWNlaXZlcyBpbiB0aGUgbG9vcCBvZiB0aGUgcHJvZ3JhbSBkbyBub3QgcmVjZWl2ZSBkYXRh
IGFuZCBnZW5lcmF0ZSB0aGUgTEFURSBlcnJvci4NCg0KRnJvbTogTWFyY3VzIEQuIExlZWNoIDxw
YXRjaHZvbmJyYXVuQGdtYWlsLmNvbT48bWFpbHRvOnBhdGNodm9uYnJhdW5AZ21haWwuY29tPg0K
U2VudDogV2VkbmVzZGF5LCBBcHJpbCAyNywgMjAyMiAxOjI3IFBNDQpUbzogdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb208bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KU3ViamVj
dDogW1VTUlAtdXNlcnNdIFJlOiBbRVhURVJOQUxdIFJlOiBzeWNocm9ub3VzIHJlY2VpdmluZyBm
cm9tIG11bHRpcGxlIGUzMjAncyByZXBlYXRlZGx5IHJlc3VsdHMgaW4gRVJST1JfQ09ERV9MQVRF
X0NPTU1BTkQNCg0KT24gMjAyMi0wNC0yNyAxNToxMywgQ2FmZnJleSwgTWljaGFlbCBQYXVsIHZp
YSBVU1JQLXVzZXJzIHdyb3RlOg0KVGhhdCBpcyBhIGdvb2QgcXVlc3Rpb24gYW5kIEkgc2hvdWxk
IGhhdmUgaW5jbHVkZWQgdGhhdCBJIGNhbiBydW4gdGhlIHByb2dyYW0gb3ZlciBhbmQgb3ZlciBh
bmQgdGhlIDFzdCBhdHRlbXB0IGFsd2F5cyBzdWNjZWVkcyBhbmQgc3Vic2VxdWVudCBmYWlsLiBJ
IGRvIG5vdCByZWJvb3Qgb3IgcmVzZXQgdGhlIGUzMjDigJlzIGluIGFueSB3YXkgb3V0c2lkZSBv
ZiB0aGUgcHl0aG9uIGV4YW1wbGUuDQoNCg0KT0ssIHNvIGhvdyBpcyAiZmlyc3QgdGltZSIgZGVm
aW5lZD8gICBGaXJzdCB0aW1lIGFmdGVyIHJlYm9vdGluZyB5b3VyIGNvbXB1dGVyPyAgRmlyc3Qg
dGltZSBhZnRlciByZWJvb3RpbmcgdGhlIEUzMjA/ICAgWW91IHJ1biB0aGUgcHJvZ3JhbSBvbmNl
IGFuZCBpdCBuZXZlciBzdWNjZWVkcyBhZ2Fpbiwgbm8NCiAgbWF0dGVyIHdoYXQgeW91IGRvPyAg
IEkgd2FudCB0byB1bmRlcnN0YW5kIHdoYXQgdGhlIGJvdW5kYXJ5IGNvbmRpdGlvbiBpcyB0aGF0
IGNhdXNlcyBpdCB0byBzdGFydCB3b3JraW5nIGFnYWluLi4uDQoNCg0KDQpEbyB5b3Ugb25seSBn
ZXQgdGhlICJMTEwiIGFuZCB0aW1lb3V0cyB3aGVuIHVzaW5nIG11bHRpcGxlIEUzMjBzLCBvciBk
b2VzIHRoaXMgY29kZSBmYWlsIHdpdGggYSBzaW5nbGUgZGV2aWNlIGFzIHdlbGw/DQoNCg==

--_000_7936c9be329a4d889534a5d18f096619lanlgov_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQt
ZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsN
Cgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOmJsdWU7DQoJdGV4dC1kZWNvcmF0aW9u
OnVuZGVybGluZTt9DQpzcGFuLkVtYWlsU3R5bGUxOQ0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25h
bC1yZXBseTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgljb2xvcjp3aW5k
b3d0ZXh0O30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5Ow0K
CWZvbnQtc2l6ZToxMC4wcHQ7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4gMTEu
MGluOw0KCW1hcmdpbjoxLjBpbiAxLjBpbiAxLjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rpb24x
DQoJe3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4
bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94
bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2
OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFw
ZWxheW91dD48L3htbD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVTIiBs
aW5rPSJibHVlIiB2bGluaz0icHVycGxlIiBzdHlsZT0id29yZC13cmFwOmJyZWFrLXdvcmQiPg0K
PGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkkgcmVjZWl2
ZWQgYSBzaW5nbGUg4oCYTOKAmSBhbmQgdGhlIGNvZGUgYWdhaW4gZmFpbHMgd2l0aCB0aGUgTEFU
RSBlcnJvciB3aXRoIGEgc2luZ2xlIGUzMjAgKGluIHRoZSBzYW1lIGZhc2hpb24gYXMgd2l0aCB0
d28gZTMyMOKAmXMpLjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4m
bmJzcDs8L286cD48L3A+DQo8ZGl2Pg0KPGRpdiBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLXRv
cDpzb2xpZCAjRTFFMUUxIDEuMHB0O3BhZGRpbmc6My4wcHQgMGluIDBpbiAwaW4iPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PGI+RnJvbTo8L2I+IE1hcmN1cyBELiBMZWVjaCAmbHQ7cGF0Y2h2b25i
cmF1bkBnbWFpbC5jb20mZ3Q7IDxicj4NCjxiPlNlbnQ6PC9iPiBXZWRuZXNkYXksIEFwcmlsIDI3
LCAyMDIyIDE6NTMgUE08YnI+DQo8Yj5Ubzo8L2I+IENhZmZyZXksIE1pY2hhZWwgUGF1bCAmbHQ7
bXBjQGxhbmwuZ292Jmd0OzsgdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208YnI+DQo8Yj5TdWJq
ZWN0OjwvYj4gUmU6IFtVU1JQLXVzZXJzXSBSZTogW0VYVEVSTkFMXSBSZTogc3ljaHJvbm91cyBy
ZWNlaXZpbmcgZnJvbSBtdWx0aXBsZSBlMzIwJ3MgcmVwZWF0ZWRseSByZXN1bHRzIGluIEVSUk9S
X0NPREVfTEFURV9DT01NQU5EPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+T24gMjAyMi0wNC0yNyAxNTozMSwgQ2FmZnJleSwgTWljaGFlbCBQYXVsIHdyb3Rl
OjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8YmxvY2txdW90ZSBzdHlsZT0ibWFyZ2luLXRvcDo1
LjBwdDttYXJnaW4tYm90dG9tOjUuMHB0Ij4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkkgY2FuIHJ1
biB0aGUgcHJvZ3JhbSBvdmVyIGFuZCBvdmVyIGFnYWluIGZyb20gdGhlIGNvbW1hbmQgbGluZSBv
ZiB0aGUgaG9zdCB3aXRob3V0IHJlYm9vdGluZyAvIHJlc2V0dGluZyB0aGUgaG9zdCBvciB0aGUg
ZTMyMOKAmXMuIEVhY2ggdGltZSBJIHJ1biB0aGUgcHJvZ3JhbSwgdGhlIGZpcnN0IGNvbGxlY3Rz
IHN1Y2NlZWRzICggSSByZWNlaXZlIHRoZSByZXF1ZXN0ZWQgYW1vdW50IG9mIGRhdGEsIGFueXdh
eSksDQogd2hpbGUgc3Vic2VxdWVudCByZWNlaXZlcyBpbiB0aGUgbG9vcCBvZiB0aGUgcHJvZ3Jh
bSBkbyBub3QgcmVjZWl2ZSBkYXRhIGFuZCBnZW5lcmF0ZSB0aGUgTEFURSBlcnJvci48bzpwPjwv
bzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPiZuYnNwOzxvOnA+PC9vOnA+PC9wPg0KPGRp
dj4NCjxkaXYgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci10b3A6c29saWQgI0UxRTFFMSAxLjBw
dDtwYWRkaW5nOjMuMHB0IDBpbiAwaW4gMGluIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPkZy
b206PC9iPiBNYXJjdXMgRC4gTGVlY2ggPGEgaHJlZj0ibWFpbHRvOnBhdGNodm9uYnJhdW5AZ21h
aWwuY29tIj4NCiZsdDtwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbSZndDs8L2E+IDxicj4NCjxiPlNl
bnQ6PC9iPiBXZWRuZXNkYXksIEFwcmlsIDI3LCAyMDIyIDE6MjcgUE08YnI+DQo8Yj5Ubzo8L2I+
IDxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSI+dXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb208L2E+PGJyPg0KPGI+U3ViamVjdDo8L2I+IFtVU1JQLXVzZXJzXSBSZTog
W0VYVEVSTkFMXSBSZTogc3ljaHJvbm91cyByZWNlaXZpbmcgZnJvbSBtdWx0aXBsZSBlMzIwJ3Mg
cmVwZWF0ZWRseSByZXN1bHRzIGluIEVSUk9SX0NPREVfTEFURV9DT01NQU5EPG86cD48L286cD48
L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+Jm5ic3A7PG86cD48L286
cD48L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+T24gMjAyMi0wNC0yNyAxNToxMywg
Q2FmZnJleSwgTWljaGFlbCBQYXVsIHZpYSBVU1JQLXVzZXJzIHdyb3RlOjxvOnA+PC9vOnA+PC9w
Pg0KPC9kaXY+DQo8YmxvY2txdW90ZSBzdHlsZT0ibWFyZ2luLXRvcDo1LjBwdDttYXJnaW4tYm90
dG9tOjUuMHB0Ij4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPlRoYXQgaXMgYSBnb29kIHF1ZXN0aW9u
IGFuZCBJIHNob3VsZCBoYXZlIGluY2x1ZGVkIHRoYXQgSSBjYW4gcnVuIHRoZSBwcm9ncmFtIG92
ZXIgYW5kIG92ZXIgYW5kIHRoZSAxPHN1cD5zdDwvc3VwPiBhdHRlbXB0IGFsd2F5cyBzdWNjZWVk
cyBhbmQgc3Vic2VxdWVudCBmYWlsLiBJIGRvIG5vdCByZWJvb3Qgb3IgcmVzZXQgdGhlIGUzMjDi
gJlzIGluIGFueSB3YXkgb3V0c2lkZSBvZiB0aGUgcHl0aG9uIGV4YW1wbGUuPG86cD48L286cD48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj4mbmJzcDs8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPiZuYnNwOzxvOnA+PC9vOnA+PC9wPg0KPC9ibG9ja3F1b3RlPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1hcmdpbi1ib3R0b206MTIuMHB0Ij5PSywgc28gaG93IGlz
ICZxdW90O2ZpcnN0IHRpbWUmcXVvdDsgZGVmaW5lZD8mbmJzcDsmbmJzcDsgRmlyc3QgdGltZSBh
ZnRlciByZWJvb3RpbmcgeW91ciBjb21wdXRlcj8mbmJzcDsgRmlyc3QgdGltZSBhZnRlciByZWJv
b3RpbmcgdGhlIEUzMjA/Jm5ic3A7Jm5ic3A7IFlvdSBydW4gdGhlIHByb2dyYW0gb25jZSBhbmQg
aXQgbmV2ZXIgc3VjY2VlZHMgYWdhaW4sIG5vPGJyPg0KJm5ic3A7IG1hdHRlciB3aGF0IHlvdSBk
bz8mbmJzcDsmbmJzcDsgSSB3YW50IHRvIHVuZGVyc3RhbmQgd2hhdCB0aGUgYm91bmRhcnkgY29u
ZGl0aW9uIGlzIHRoYXQgY2F1c2VzIGl0IHRvIHN0YXJ0IHdvcmtpbmcgYWdhaW4uLi48YnI+DQo8
YnI+DQo8YnI+DQo8YnI+DQo8bzpwPjwvbzpwPjwvcD4NCjwvYmxvY2txdW90ZT4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiIHN0eWxlPSJtYXJnaW4tYm90dG9tOjEyLjBwdCI+RG8geW91IG9ubHkgZ2V0
IHRoZSAmcXVvdDtMTEwmcXVvdDsgYW5kIHRpbWVvdXRzIHdoZW4gdXNpbmcgbXVsdGlwbGUgRTMy
MHMsIG9yIGRvZXMgdGhpcyBjb2RlIGZhaWwgd2l0aCBhIHNpbmdsZSBkZXZpY2UgYXMgd2VsbD88
YnI+DQo8YnI+DQo8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_7936c9be329a4d889534a5d18f096619lanlgov_--

--===============1643908466500548086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1643908466500548086==--
