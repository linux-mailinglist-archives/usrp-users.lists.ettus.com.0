Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 151F8512243
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 21:15:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 082B338487C
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 15:15:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651086917; bh=fDNCYIohGEAyU7eKdFtiZZF1R3WtAI0i/5ILKZKWbJg=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=YBmMIpGXMb5KiKpxnwHTUxeHNpeN8kD8vcK22TB6AOTbU52vvzl9uYTpPKQ0FoehL
	 +kwYVIFj9qs50EFPaMgbhRYg4We7hyc9PdXijew2UMnOT0ZCfO2YRNmprZSWBar/Tu
	 ORwka3v/VnI3ToQpecdHKzNc8HUu3zFdKe5RY21lLbM8hw6/mcdU2t2hwII3NnzeeU
	 mVjX1j4YXf0NCwCCqoC5A1x9zwVK1+KbC3y1s+1/FxrbSxZQGBUUUJbQ7s5BWh+dLj
	 sbxA9xBq3uTLU3V3FJF4aL/jdmNreXOdHkxOCfERjfPH6Ug+wZog1INrTwNpl0mkgS
	 8fZoZlpUSUEZQ==
Received: from proofpoint7.lanl.gov (proofpoint7.lanl.gov [204.121.3.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 8C5B338486C
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 15:14:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=lanl.gov header.i=@lanl.gov header.b="gRpweFX8";
	dkim-atps=neutral
Received: from pps.filterd (proofpoint7.lanl.gov [127.0.0.1])
	by proofpoint7.lanl.gov (8.16.1.2/8.16.1.2) with SMTP id 23RJD3aY045758
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 13:13:59 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lanl.gov; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=lanl; bh=9h3F0RLFYBr7XvXMp19EcqLU1dRYHI3ZXE8HebMCWYk=;
 b=gRpweFX8USILpeGRusL8/QM4MUg5zhOQuecUfuzqZLBuG7X0gCiUN2QQxcUtMmbHQC99
 6zQ7UzwSB3EOsYzPX+JFW5Q//9mkWRAzzvIii2ScjpBwUeUpIEEX5j3nh3bdmssoRPKf
 qTsQXOdCEUlxoJR3ecpxUahUArBYt5kMlG+0LFS+j6S1q/lCR49as28A8u+/jz1aiLAe
 igxWB98QoGAWoUQUgO8EpRp3W2v0ibxHzQ7rtVqTogZgmTmubLODWVnJHq4j8A231PWq
 Y6xSWaG++MUOxWSDHDrV10we6FB9n3uD0I5/nNdYenkgAk/riWgeauA0sTFIpum7uu5o XA==
Received: from mailrelay2.lanl.gov (mailrelay2.lanl.gov [128.165.4.103])
	by proofpoint7.lanl.gov with ESMTP id 3fmfuc7u44-1
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 13:13:59 -0600
Received: from localhost (localhost [127.0.0.1])
	by mailrelay2.lanl.gov (Postfix) with ESMTP id 3499110311A2
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 13:13:59 -0600 (MDT)
X-NIE-2-Virus-Scanner: amavisd-new at mailrelay2.lanl.gov
Received: from EXG16-P-MBX01.win.lanl.gov (exg16-p-mbx01.win.lanl.gov [128.165.106.181])
	by mailrelay2.lanl.gov (Postfix) with ESMTP id 212DB102210E
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 13:13:59 -0600 (MDT)
Received: from EXG16-P-MBX01.win.lanl.gov (128.165.106.181) by
 EXG16-P-MBX01.win.lanl.gov (128.165.106.181) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.24; Wed, 27 Apr 2022 13:13:58 -0600
Received: from EXG16-P-MBX01.win.lanl.gov ([fe80::5412:a681:249d:9cee]) by
 EXG16-P-MBX01.win.lanl.gov ([fe80::5412:a681:249d:9cee%7]) with mapi id
 15.01.2375.024; Wed, 27 Apr 2022 13:13:58 -0600
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [EXTERNAL] [USRP-users] Re: sychronous receiving from multiple
 e320's repeatedly results in ERROR_CODE_LATE_COMMAND
Thread-Index: AdhaX5iqzJ0cGBs6Qwus2l1y6hODfAAM5PIAAAohaeA=
Date: Wed, 27 Apr 2022 19:13:58 +0000
Message-ID: <d1678769adce4396b232ed2653d02014@lanl.gov>
References: <a10bc1673342466f9c2a166280d57643@lanl.gov>
 <6b538660-e051-c354-a9c3-a1fbde33e591@gmail.com>
In-Reply-To: <6b538660-e051-c354-a9c3-a1fbde33e591@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.165.106.210]
MIME-Version: 1.0
X-Proofpoint-GUID: 9SYA2w5_HxE-t7H7tRbOd1A1o93HuIv7
X-Proofpoint-ORIG-GUID: 9SYA2w5_HxE-t7H7tRbOd1A1o93HuIv7
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486,18.0.858
 definitions=2022-04-27_04:2022-04-27,2022-04-27 signatures=0
X-Proofpoint-Spam-Reason: safe
Message-ID-Hash: DZIOG35UDOBDNBN4DCXLKXKLIXZZA346
X-Message-ID-Hash: DZIOG35UDOBDNBN4DCXLKXKLIXZZA346
X-MailFrom: mpc@lanl.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: sychronous receiving from multiple e320's repeatedly results in ERROR_CODE_LATE_COMMAND
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DZIOG35UDOBDNBN4DCXLKXKLIXZZA346/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Caffrey, Michael Paul via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Caffrey, Michael Paul" <mpc@lanl.gov>
Content-Type: multipart/mixed; boundary="===============7297205986187358571=="

--===============7297205986187358571==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_d1678769adce4396b232ed2653d02014lanlgov_"

--_000_d1678769adce4396b232ed2653d02014lanlgov_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhdCBpcyBhIGdvb2QgcXVlc3Rpb24gYW5kIEkgc2hvdWxkIGhhdmUgaW5jbHVkZWQgdGhhdCBJ
IGNhbiBydW4gdGhlIHByb2dyYW0gb3ZlciBhbmQgb3ZlciBhbmQgdGhlIDFzdCBhdHRlbXB0IGFs
d2F5cyBzdWNjZWVkcyBhbmQgc3Vic2VxdWVudCBmYWlsLiBJIGRvIG5vdCByZWJvb3Qgb3IgcmVz
ZXQgdGhlIGUzMjDigJlzIGluIGFueSB3YXkgb3V0c2lkZSBvZiB0aGUgcHl0aG9uIGV4YW1wbGUu
DQoNCkZyb206IE1hcmN1cyBELiBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+DQpTZW50
OiBXZWRuZXNkYXksIEFwcmlsIDI3LCAyMDIyIDEyOjAyIFBNDQpUbzogdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20NClN1YmplY3Q6IFtFWFRFUk5BTF0gW1VTUlAtdXNlcnNdIFJlOiBzeWNocm9u
b3VzIHJlY2VpdmluZyBmcm9tIG11bHRpcGxlIGUzMjAncyByZXBlYXRlZGx5IHJlc3VsdHMgaW4g
RVJST1JfQ09ERV9MQVRFX0NPTU1BTkQNCg0KSWYgeW91IGp1c3Qgd2FpdCAiYSB3aGlsZSIgZG9l
cyBpdCBzdWNjZWVkIGFnYWluLCBvciBkbyB5b3UgaGF2ZSB0byByZXNldCB0aGUgRTMyMD8NCg0K

--_000_d1678769adce4396b232ed2653d02014lanlgov_
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
IDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpDb25zb2xhczsNCglwYW5vc2UtMToyIDEx
IDYgOSAyIDIgNCAzIDIgNDt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3JtYWws
IGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGluOw0KCWZvbnQtc2l6ZTox
MS4wcHQ7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0Kc3Bhbi5FbWFpbFN0
eWxlMjENCgl7bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtcmVwbHk7DQoJZm9udC1mYW1pbHk6IkNh
bGlicmkiLHNhbnMtc2VyaWY7DQoJY29sb3I6d2luZG93dGV4dDt9DQouTXNvQ2hwRGVmYXVsdA0K
CXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LXNpemU6MTAuMHB0O30NCkBwYWdl
IFdvcmRTZWN0aW9uMQ0KCXtzaXplOjguNWluIDExLjBpbjsNCgltYXJnaW46MS4waW4gMS4waW4g
MS4waW4gMS4waW47fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9uMTt9DQot
LT48L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVkZWZhdWx0cyB2OmV4
dD0iZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlmXS0tPjwhLS1baWYgZ3Rl
IG1zbyA5XT48eG1sPg0KPG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0KPG86aWRtYXAgdjpl
eHQ9ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+PCFbZW5kaWZdLS0+
DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJFTi1VUyIgbGluaz0iIzA1NjNDMSIgdmxpbms9InB1cnBs
ZSIgc3R5bGU9IndvcmQtd3JhcDpicmVhay13b3JkIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9u
MSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5UaGF0IGlzIGEgZ29vZCBxdWVzdGlvbiBhbmQgSSBz
aG91bGQgaGF2ZSBpbmNsdWRlZCB0aGF0IEkgY2FuIHJ1biB0aGUgcHJvZ3JhbSBvdmVyIGFuZCBv
dmVyIGFuZCB0aGUgMTxzdXA+c3Q8L3N1cD4gYXR0ZW1wdCBhbHdheXMgc3VjY2VlZHMgYW5kIHN1
YnNlcXVlbnQgZmFpbC4gSSBkbyBub3QgcmVib290IG9yIHJlc2V0IHRoZSBlMzIw4oCZcyBpbiBh
bnkgd2F5IG91dHNpZGUgb2YgdGhlIHB5dGhvbiBleGFtcGxlLjxvOnA+PC9vOnA+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8ZGl2Pg0KPGRpdiBzdHls
ZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLXRvcDpzb2xpZCAjRTFFMUUxIDEuMHB0O3BhZGRpbmc6My4w
cHQgMGluIDBpbiAwaW4iPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGI+RnJvbTo8L2I+IE1hcmN1
cyBELiBMZWVjaCAmbHQ7cGF0Y2h2b25icmF1bkBnbWFpbC5jb20mZ3Q7IDxicj4NCjxiPlNlbnQ6
PC9iPiBXZWRuZXNkYXksIEFwcmlsIDI3LCAyMDIyIDEyOjAyIFBNPGJyPg0KPGI+VG86PC9iPiB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTxicj4NCjxiPlN1YmplY3Q6PC9iPiBbRVhURVJOQUxd
IFtVU1JQLXVzZXJzXSBSZTogc3ljaHJvbm91cyByZWNlaXZpbmcgZnJvbSBtdWx0aXBsZSBlMzIw
J3MgcmVwZWF0ZWRseSByZXN1bHRzIGluIEVSUk9SX0NPREVfTEFURV9DT01NQU5EPG86cD48L286
cD48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8
L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0ibWFyZ2luLWJvdHRvbToxMi4w
cHQiPklmIHlvdSBqdXN0IHdhaXQgJnF1b3Q7YSB3aGlsZSZxdW90OyBkb2VzIGl0IHN1Y2NlZWQg
YWdhaW4sIG9yIGRvIHlvdSBoYXZlIHRvIHJlc2V0IHRoZSBFMzIwPzxicj4NCjxicj4NCjxvOnA+
PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_d1678769adce4396b232ed2653d02014lanlgov_--

--===============7297205986187358571==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7297205986187358571==--
