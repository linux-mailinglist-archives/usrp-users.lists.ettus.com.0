Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 203B05122D2
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 21:33:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0A7C438438F
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 15:33:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651088000; bh=roZB7wLU9alRIec8xtwNW6YsHS3q4NTGe65gfrMb1g0=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=qM3Ykqqo5wfVFDMFXEpwbYZldiqlDhPWPA26bsnS2ynh5AKSnHNDj2+8dYs+/KDsB
	 ZDqk8I5yQrBBhTmPQtKFsQmjrk+Lg7EeL0cZqI5bxSsZ/dSFKPG449Lp+Mc0ktQUGm
	 zeI94QpwmsgzaXN+SYc4DvYJ8l5WNZU6d5MatQ4Ucsj12t2T6PIa/1HDIeNYtqzTVy
	 iMTbnqJcF3RAgRRcbFCRccRWrTr6jKD6hvUSJCsNF1ckIvOlJcQG9rzxpYk2TWUVlr
	 nbDFN7gXkS9fXgbKkyTjBFjne/XBjnsMe+71I3Vk3aAwdhKAZ10am6u6bmOw+EusDS
	 Pj+V5TUMZDrHg==
Received: from proofpoint7.lanl.gov (proofpoint7.lanl.gov [204.121.3.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 29102384B70
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 15:31:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=lanl.gov header.i=@lanl.gov header.b="U83bvByA";
	dkim-atps=neutral
Received: from pps.filterd (proofpoint7.lanl.gov [127.0.0.1])
	by proofpoint7.lanl.gov (8.16.1.2/8.16.1.2) with SMTP id 23RJL0WL053206;
	Wed, 27 Apr 2022 13:31:31 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lanl.gov; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=lanl; bh=xd5pIosSuJ8AGC4AMpZ9ltEoPBTr5xrXjtGgl7M32M4=;
 b=U83bvByAuRJl4H1gqHSyWwxBvsRveOB8Ug8D5cCFhP16CjYOZOXFdh5a7tLT8z/6tA2g
 mzXviAYJnQspUkcr91oQFdJXUfPcGOiPcgxoJHUspKAxR0wu7YWWlaNmPnq1RMhUnIca
 TBa7ViEUpT8GgzBM/WQ8i/7bcmVeB+VShXt5Ow3YV2aD4A1AqSBRkjve/6xiOprBPvG2
 z4a75CuKgxvgUnsTfz/8c62GMpPlWnDCmAkwqx6NpcIkiYJb94hDExUi1pn9mDNgEhB5
 ZPvmhFqlTiKYp+xxaCQ4YE1DG/+Ty/5V0N5HJ5hu924hVTuYOMYUogEfUIjxi1JjaZFF +A==
Received: from mailrelay2.lanl.gov (mailrelay2.lanl.gov [128.165.4.103])
	by proofpoint7.lanl.gov with ESMTP id 3fmfuc7wvw-1;
	Wed, 27 Apr 2022 13:31:30 -0600
Received: from localhost (localhost [127.0.0.1])
	by mailrelay2.lanl.gov (Postfix) with ESMTP id 0AD711012D8E;
	Wed, 27 Apr 2022 13:31:31 -0600 (MDT)
X-NIE-2-Virus-Scanner: amavisd-new at mailrelay2.lanl.gov
Received: from EXG16-P-MBX09.win.lanl.gov (exg16-p-mbx09.win.lanl.gov [128.165.106.189])
	by mailrelay2.lanl.gov (Postfix) with ESMTP id ECB071012D85;
	Wed, 27 Apr 2022 13:31:30 -0600 (MDT)
Received: from EXG16-P-MBX01.win.lanl.gov (128.165.106.181) by
 EXG16-P-MBX09.win.lanl.gov (128.165.106.189) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Wed, 27 Apr 2022 13:31:30 -0600
Received: from EXG16-P-MBX01.win.lanl.gov ([fe80::5412:a681:249d:9cee]) by
 EXG16-P-MBX01.win.lanl.gov ([fe80::5412:a681:249d:9cee%7]) with mapi id
 15.01.2375.024; Wed, 27 Apr 2022 13:31:30 -0600
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
        "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: [EXTERNAL] Re: sychronous receiving from
 multiple e320's repeatedly results in ERROR_CODE_LATE_COMMAND
Thread-Index: AQHYWmzj++MbLhX13ESEgcljgmfHS60EJV9w
Date: Wed, 27 Apr 2022 19:31:30 +0000
Message-ID: <da34f941c5794b9ba453e49fc35ab7c0@lanl.gov>
References: <a10bc1673342466f9c2a166280d57643@lanl.gov>
 <6b538660-e051-c354-a9c3-a1fbde33e591@gmail.com>
 <d1678769adce4396b232ed2653d02014@lanl.gov>
 <196b97b5-4555-0527-f983-3cb2074f71df@gmail.com>
In-Reply-To: <196b97b5-4555-0527-f983-3cb2074f71df@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.165.106.210]
MIME-Version: 1.0
X-Proofpoint-GUID: DAvij8tXNzKKig7Zmq0y2s2ET48VICmL
X-Proofpoint-ORIG-GUID: DAvij8tXNzKKig7Zmq0y2s2ET48VICmL
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.858
 definitions=2022-04-27_04:2022-04-27,2022-04-27 signatures=0
X-Proofpoint-Spam-Reason: safe
Message-ID-Hash: OV76HFK235KDLB2A7HBU5GS6D63ZH25S
X-Message-ID-Hash: OV76HFK235KDLB2A7HBU5GS6D63ZH25S
X-MailFrom: mpc@lanl.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: sychronous receiving from multiple e320's repeatedly results in ERROR_CODE_LATE_COMMAND
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OV76HFK235KDLB2A7HBU5GS6D63ZH25S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Caffrey, Michael Paul via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Caffrey, Michael Paul" <mpc@lanl.gov>
Content-Type: multipart/mixed; boundary="===============9189576227488904776=="

--===============9189576227488904776==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_da34f941c5794b9ba453e49fc35ab7c0lanlgov_"

--_000_da34f941c5794b9ba453e49fc35ab7c0lanlgov_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBjYW4gcnVuIHRoZSBwcm9ncmFtIG92ZXIgYW5kIG92ZXIgYWdhaW4gZnJvbSB0aGUgY29tbWFu
ZCBsaW5lIG9mIHRoZSBob3N0IHdpdGhvdXQgcmVib290aW5nIC8gcmVzZXR0aW5nIHRoZSBob3N0
IG9yIHRoZSBlMzIw4oCZcy4gRWFjaCB0aW1lIEkgcnVuIHRoZSBwcm9ncmFtLCB0aGUgZmlyc3Qg
Y29sbGVjdHMgc3VjY2VlZHMgKCBJIHJlY2VpdmUgdGhlIHJlcXVlc3RlZCBhbW91bnQgb2YgZGF0
YSwgYW55d2F5KSwgd2hpbGUgc3Vic2VxdWVudCByZWNlaXZlcyBpbiB0aGUgbG9vcCBvZiB0aGUg
cHJvZ3JhbSBkbyBub3QgcmVjZWl2ZSBkYXRhIGFuZCBnZW5lcmF0ZSB0aGUgTEFURSBlcnJvci4N
Cg0KRnJvbTogTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4NClNlbnQ6
IFdlZG5lc2RheSwgQXByaWwgMjcsIDIwMjIgMToyNyBQTQ0KVG86IHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tDQpTdWJqZWN0OiBbVVNSUC11c2Vyc10gUmU6IFtFWFRFUk5BTF0gUmU6IHN5Y2hy
b25vdXMgcmVjZWl2aW5nIGZyb20gbXVsdGlwbGUgZTMyMCdzIHJlcGVhdGVkbHkgcmVzdWx0cyBp
biBFUlJPUl9DT0RFX0xBVEVfQ09NTUFORA0KDQpPbiAyMDIyLTA0LTI3IDE1OjEzLCBDYWZmcmV5
LCBNaWNoYWVsIFBhdWwgdmlhIFVTUlAtdXNlcnMgd3JvdGU6DQpUaGF0IGlzIGEgZ29vZCBxdWVz
dGlvbiBhbmQgSSBzaG91bGQgaGF2ZSBpbmNsdWRlZCB0aGF0IEkgY2FuIHJ1biB0aGUgcHJvZ3Jh
bSBvdmVyIGFuZCBvdmVyIGFuZCB0aGUgMXN0IGF0dGVtcHQgYWx3YXlzIHN1Y2NlZWRzIGFuZCBz
dWJzZXF1ZW50IGZhaWwuIEkgZG8gbm90IHJlYm9vdCBvciByZXNldCB0aGUgZTMyMOKAmXMgaW4g
YW55IHdheSBvdXRzaWRlIG9mIHRoZSBweXRob24gZXhhbXBsZS4NCg0KDQpPSywgc28gaG93IGlz
ICJmaXJzdCB0aW1lIiBkZWZpbmVkPyAgIEZpcnN0IHRpbWUgYWZ0ZXIgcmVib290aW5nIHlvdXIg
Y29tcHV0ZXI/ICBGaXJzdCB0aW1lIGFmdGVyIHJlYm9vdGluZyB0aGUgRTMyMD8gICBZb3UgcnVu
IHRoZSBwcm9ncmFtIG9uY2UgYW5kIGl0IG5ldmVyIHN1Y2NlZWRzIGFnYWluLCBubw0KICBtYXR0
ZXIgd2hhdCB5b3UgZG8/ICAgSSB3YW50IHRvIHVuZGVyc3RhbmQgd2hhdCB0aGUgYm91bmRhcnkg
Y29uZGl0aW9uIGlzIHRoYXQgY2F1c2VzIGl0IHRvIHN0YXJ0IHdvcmtpbmcgYWdhaW4uLi4NCg0K
DQo=

--_000_da34f941c5794b9ba453e49fc35ab7c0lanlgov_
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
ZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCnNwYW4uRW1haWxTdHlsZTE5DQoJe21zby1z
dHlsZS10eXBlOnBlcnNvbmFsLXJlcGx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNl
cmlmOw0KCWNvbG9yOndpbmRvd3RleHQ7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5
cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1zaXplOjEwLjBwdDt9DQpAcGFnZSBXb3JkU2VjdGlvbjEN
Cgl7c2l6ZTo4LjVpbiAxMS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGluIDEuMGluO30N
CmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0t
W2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRt
YXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4N
CjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRh
PSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJv
ZHkgbGFuZz0iRU4tVVMiIGxpbms9IiMwNTYzQzEiIHZsaW5rPSIjOTU0RjcyIiBzdHlsZT0id29y
ZC13cmFwOmJyZWFrLXdvcmQiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPkkgY2FuIHJ1biB0aGUgcHJvZ3JhbSBvdmVyIGFuZCBvdmVyIGFnYWluIGZy
b20gdGhlIGNvbW1hbmQgbGluZSBvZiB0aGUgaG9zdCB3aXRob3V0IHJlYm9vdGluZyAvIHJlc2V0
dGluZyB0aGUgaG9zdCBvciB0aGUgZTMyMOKAmXMuIEVhY2ggdGltZSBJIHJ1biB0aGUgcHJvZ3Jh
bSwgdGhlIGZpcnN0IGNvbGxlY3RzIHN1Y2NlZWRzICggSSByZWNlaXZlIHRoZSByZXF1ZXN0ZWQg
YW1vdW50IG9mIGRhdGEsIGFueXdheSksDQogd2hpbGUgc3Vic2VxdWVudCByZWNlaXZlcyBpbiB0
aGUgbG9vcCBvZiB0aGUgcHJvZ3JhbSBkbyBub3QgcmVjZWl2ZSBkYXRhIGFuZCBnZW5lcmF0ZSB0
aGUgTEFURSBlcnJvci48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+
Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4NCjxkaXYgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci10
b3A6c29saWQgI0UxRTFFMSAxLjBwdDtwYWRkaW5nOjMuMHB0IDBpbiAwaW4gMGluIj4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxiPkZyb206PC9iPiBNYXJjdXMgRC4gTGVlY2ggJmx0O3BhdGNodm9u
YnJhdW5AZ21haWwuY29tJmd0OyA8YnI+DQo8Yj5TZW50OjwvYj4gV2VkbmVzZGF5LCBBcHJpbCAy
NywgMjAyMiAxOjI3IFBNPGJyPg0KPGI+VG86PC9iPiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bTxicj4NCjxiPlN1YmplY3Q6PC9iPiBbVVNSUC11c2Vyc10gUmU6IFtFWFRFUk5BTF0gUmU6IHN5
Y2hyb25vdXMgcmVjZWl2aW5nIGZyb20gbXVsdGlwbGUgZTMyMCdzIHJlcGVhdGVkbHkgcmVzdWx0
cyBpbiBFUlJPUl9DT0RFX0xBVEVfQ09NTUFORDxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2Rp
dj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPk9uIDIwMjItMDQtMjcgMTU6MTMsIENhZmZyZXksIE1pY2hhZWwg
UGF1bCB2aWEgVVNSUC11c2VycyB3cm90ZTo8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGJsb2Nr
cXVvdGUgc3R5bGU9Im1hcmdpbi10b3A6NS4wcHQ7bWFyZ2luLWJvdHRvbTo1LjBwdCI+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj5UaGF0IGlzIGEgZ29vZCBxdWVzdGlvbiBhbmQgSSBzaG91bGQgaGF2
ZSBpbmNsdWRlZCB0aGF0IEkgY2FuIHJ1biB0aGUgcHJvZ3JhbSBvdmVyIGFuZCBvdmVyIGFuZCB0
aGUgMTxzdXA+c3Q8L3N1cD4gYXR0ZW1wdCBhbHdheXMgc3VjY2VlZHMgYW5kIHN1YnNlcXVlbnQg
ZmFpbC4gSSBkbyBub3QgcmVib290IG9yIHJlc2V0IHRoZSBlMzIw4oCZcyBpbiBhbnkgd2F5IG91
dHNpZGUgb2YgdGhlIHB5dGhvbiBleGFtcGxlLjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+Jm5ic3A7PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpw
PiZuYnNwOzwvbzpwPjwvcD4NCjwvYmxvY2txdW90ZT4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0
eWxlPSJtYXJnaW4tYm90dG9tOjEyLjBwdCI+T0ssIHNvIGhvdyBpcyAmcXVvdDtmaXJzdCB0aW1l
JnF1b3Q7IGRlZmluZWQ/Jm5ic3A7Jm5ic3A7IEZpcnN0IHRpbWUgYWZ0ZXIgcmVib290aW5nIHlv
dXIgY29tcHV0ZXI/Jm5ic3A7IEZpcnN0IHRpbWUgYWZ0ZXIgcmVib290aW5nIHRoZSBFMzIwPyZu
YnNwOyZuYnNwOyBZb3UgcnVuIHRoZSBwcm9ncmFtIG9uY2UgYW5kIGl0IG5ldmVyIHN1Y2NlZWRz
IGFnYWluLCBubzxicj4NCiZuYnNwOyBtYXR0ZXIgd2hhdCB5b3UgZG8/Jm5ic3A7Jm5ic3A7IEkg
d2FudCB0byB1bmRlcnN0YW5kIHdoYXQgdGhlIGJvdW5kYXJ5IGNvbmRpdGlvbiBpcyB0aGF0IGNh
dXNlcyBpdCB0byBzdGFydCB3b3JraW5nIGFnYWluLi4uPGJyPg0KPGJyPg0KPGJyPg0KPG86cD48
L286cD48L3A+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_da34f941c5794b9ba453e49fc35ab7c0lanlgov_--

--===============9189576227488904776==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9189576227488904776==--
