Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2FF30FB00
	for <lists+usrp-users@lfdr.de>; Thu,  4 Feb 2021 19:15:22 +0100 (CET)
Received: from [::1] (port=41836 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l7j9y-0000Z7-Vk; Thu, 04 Feb 2021 13:15:18 -0500
Received: from mail.hhi.fraunhofer.de ([193.174.67.45]:53660)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <ramez.askar@hhi.fraunhofer.de>)
 id 1l7j9u-0000DW-CP
 for usrp-users@lists.ettus.com; Thu, 04 Feb 2021 13:15:14 -0500
Received: from mail.hhi.fraunhofer.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DD4F47C114
 for <usrp-users@lists.ettus.com>; Thu,  4 Feb 2021 19:14:27 +0100 (CET)
X-IMSS-DKIM-Authentication-Result: mail.hhi.fraunhofer.de; sigcount=0
Received: from mail.hhi.fraunhofer.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D13127C108
 for <usrp-users@lists.ettus.com>; Thu,  4 Feb 2021 19:14:27 +0100 (CET)
Received: from mx.fe.hhi.de (unknown [172.16.0.102])
 by mail.hhi.fraunhofer.de (Postfix) with ESMTPS
 for <usrp-users@lists.ettus.com>; Thu,  4 Feb 2021 19:14:27 +0100 (CET)
Received: from mxsrv5.fe.hhi.de (172.16.0.103) by mxsrv4.fe.hhi.de
 (172.16.0.102) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2; Thu, 4 Feb 2021
 19:14:32 +0100
Received: from mxsrv5.fe.hhi.de ([fe80::7d4f:49e9:b062:84d9]) by
 mxsrv5.fe.hhi.de ([fe80::7d4f:49e9:b062:84d9%15]) with mapi id
 15.01.2106.003; Thu, 4 Feb 2021 19:14:32 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC 4 rfnocmodtool
Thread-Index: AQHW+yGVBZJW5wi0TEKMYEC53TYo4Q==
Date: Thu, 4 Feb 2021 18:14:32 +0000
Message-ID: <580D94C5-BA72-4A10-8CFA-274AF428B90D@contoso.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.22.100]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: [USRP-users] RFNoC 4 rfnocmodtool
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Askar, Ramez via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Askar, Ramez" <ramez.askar@hhi.fraunhofer.de>
Content-Type: multipart/mixed; boundary="===============1429112365196883398=="
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

--===============1429112365196883398==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_580D94C5BA724A108CFA274AF428B90Dcontosocom_"

--_000_580D94C5BA724A108CFA274AF428B90Dcontosocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGVhciBTaXIgb3IgTWFkYW0sDQoNCkkgd291bGQgbGlrZSB0byB1c2Ugb25lIG9mIHRoZSBhdmFp
bGFibGUgRlBHQSBibG9ja3MgZnJvbSBFdHR1cyDigJMgc3VjaCBhcyBGSVIgZmlsdGVyIC0tIHRv
IGN1c3RvbWl6ZSBteSBGUEdBIGltYWdlLCBhbmQgYWRkIHRoZSBjb3JyZXNwb25kaW5nIGNvbnRy
b2wgZHJpdmVyIGZvciBDKysgYXBwbGljYXRpb24gYW5kIEdudXJhZGlvLiBIb3dldmVyLCBhZnRl
ciBjcmVhdGluZyBuZXdtb2Qgd2l0aCByZm5vY21vZHRvb2wsIEkgaGF2ZSB0cmllZCB0byBhZGQg
ZmlyIGZpbHRlciBibG9jaywgdGhlIHRvb2wgaXMgbm90IGF3YXJlIGFib3V0IHRoZSBleGlzdGlu
ZyBibG9ja3MuIEluc3RlYWQsIHRoZSByZm5vY21vZHRvb2wgaGFzIGNyZWF0ZWQgYSBtb2R1bGUg
ZnJvbSBzY3JhdGNoIGNhbGxlZCBGSVIuIEluIG90aGVyIHdvcmRzLCBpdCBkaWQgbm90IGltcG9y
dCB0aGUgRklSIG1vZHVsZSB0aGF0IGlzIG9mZmVyZWQgYnkgRXR0dXMgdGVhbS4gSXMgdGhlcmUg
YW55IG90aGVyIHdheSBvZiBkb2luZyB0aGlzPyBIb3cgY2FuIGFkZCBhIE9PVCBSRk5vQyBGSVIg
Y29udHJvbCBtb2R1bGUgdG8gZ251cmFkaW8/DQoNCkJlc3QgcmVnYXJkcyAvIE1pdCBmcmV1bmRs
aWNoZW4gR3LDvMOfZW4NCi0tDQpBc2thciwgUmFtZXosIE0uU2MuDQpSZXNlYXJjaCBBc3NvY2lh
dGUgLyBQcm9qZWN0IE1hbmFnZXIgLyBEZWxlZ2F0ZQ0KV2lyZWxlc3MgQ29tbXVuaWNhdGlvbnMg
YW5kIE5ldHdvcmtzDQpGcmF1bmhvZmVyIEluc3RpdHV0ZSBmb3IgVGVsZWNvbW11bmljYXRpb25z
LCBIZWlucmljaCBIZXJ0eiBJbnN0aXR1dGUsIEhISQ0KRWluc3RlaW51ZmVyIDM3LCAxMDU4NyBC
ZXJsaW4sIEdlcm1hbnkNCis0OSAoMCkzMCAzMTAwMi02MjgNCnJhbWV6LmFza2FyQGhoaS5mcmF1
bmhvZmVyLmRlPG1haWx0bzpyYW1lei5hc2thckBoaGkuZnJhdW5ob2Zlci5kZT4NCnd3dy5oaGku
ZnJhdW5ob2Zlci5kZTxodHRwOi8vd3d3LmhoaS5mcmF1bmhvZmVyLmRlLz4NCg0K

--_000_580D94C5BA724A108CFA274AF428B90Dcontosocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <A5E6A834786E1845B7FC07286D07B579@hhi.fraunhofer.de>
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
YWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGNtOw0KCWZvbnQtc2l6
ZToxMS4wcHQ7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0Kc3Bhbi5FbWFp
bFN0eWxlMTcNCgl7bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtY29tcG9zZTsNCglmb250LWZhbWls
eToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgljb2xvcjp3aW5kb3d0ZXh0O30NCi5Nc29DaHBEZWZh
dWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJp
IixzYW5zLXNlcmlmO30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjYxMi4wcHQgNzkyLjBw
dDsNCgltYXJnaW46NzIuMHB0IDcyLjBwdCA3Mi4wcHQgNzIuMHB0O30NCmRpdi5Xb3JkU2VjdGlv
bjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT4NCjwvaGVhZD4NCjxib2R5IGxh
bmc9ImVuLURFIiBsaW5rPSIjMDU2M0MxIiB2bGluaz0iIzk1NEY3MiIgc3R5bGU9IndvcmQtd3Jh
cDpicmVhay13b3JkIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBsYW5nPSJERSI+RGVhciBTaXIgb3IgTWFkYW0sPG86cD48L286cD48L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iREUiPjxvOnA+Jm5ic3A7
PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVT
Ij5JIHdvdWxkIGxpa2UgdG8gdXNlIG9uZSBvZiB0aGUgYXZhaWxhYmxlIEZQR0EgYmxvY2tzIGZy
b20gRXR0dXMg4oCTIHN1Y2ggYXMgRklSIGZpbHRlciAtLSB0byBjdXN0b21pemUgbXkgRlBHQSBp
bWFnZSwgYW5kIGFkZCB0aGUgY29ycmVzcG9uZGluZyBjb250cm9sIGRyaXZlciBmb3IgQyYjNDM7
JiM0MzsgYXBwbGljYXRpb24gYW5kIEdudXJhZGlvLiBIb3dldmVyLCBhZnRlciBjcmVhdGluZyBu
ZXdtb2QNCiB3aXRoIHJmbm9jbW9kdG9vbCwgSSBoYXZlIHRyaWVkIHRvIGFkZCBmaXIgZmlsdGVy
IGJsb2NrLCB0aGUgdG9vbCBpcyBub3QgYXdhcmUgYWJvdXQgdGhlIGV4aXN0aW5nIGJsb2Nrcy4g
SW5zdGVhZCwgdGhlIHJmbm9jbW9kdG9vbCBoYXMgY3JlYXRlZCBhIG1vZHVsZSBmcm9tIHNjcmF0
Y2ggY2FsbGVkIEZJUi4gSW4gb3RoZXIgd29yZHMsIGl0IGRpZCBub3QgaW1wb3J0IHRoZSBGSVIg
bW9kdWxlIHRoYXQgaXMgb2ZmZXJlZCBieSBFdHR1cyB0ZWFtLg0KIElzIHRoZXJlIGFueSBvdGhl
ciB3YXkgb2YgZG9pbmcgdGhpcz8gSG93IGNhbiBhZGQgYSBPT1QgUkZOb0MgRklSIGNvbnRyb2wg
bW9kdWxlIHRvIGdudXJhZGlvPzxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIGxhbmc9IkRFIiBzdHlsZT0iY29sb3I6YmxhY2siPkJlc3QgcmVnYXJkcyAvIE1pdCBm
cmV1bmRsaWNoZW4gR3LDvMOfZW48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBsYW5nPSJFTi1HQiIgc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7Y29sb3I6
IzdGN0Y3RiI+LS08YnI+DQpBc2thciwgUmFtZXosIE0uU2MuPGJyPg0KUmVzZWFyY2ggQXNzb2Np
YXRlJm5ic3A7LyBQcm9qZWN0IE1hbmFnZXIgLyBEZWxlZ2F0ZTwvc3Bhbj48c3BhbiBzdHlsZT0i
Y29sb3I6YmxhY2siPjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuMHB0O2NvbG9yOiM3RjdGN0YiPldpcmVsZXNzIENv
bW11bmljYXRpb25zIGFuZCBOZXR3b3Jrczxicj4NCkZyYXVuaG9mZXIgSW5zdGl0dXRlIGZvciBU
ZWxlY29tbXVuaWNhdGlvbnMsIEhlaW5yaWNoIEhlcnR6IEluc3RpdHV0ZSwgSEhJPGJyPg0KRWlu
c3RlaW51ZmVyIDM3LCAxMDU4NyBCZXJsaW4sIEdlcm1hbnk8YnI+DQomIzQzOzQ5ICgwKTMwIDMx
MDAyLTYyODxicj4NCjwvc3Bhbj48c3BhbiBsYW5nPSJFTi1HQiIgc3R5bGU9ImZvbnQtc2l6ZTox
MC4wcHQ7Y29sb3I6IzdGN0Y3RiI+PGEgaHJlZj0ibWFpbHRvOnJhbWV6LmFza2FyQGhoaS5mcmF1
bmhvZmVyLmRlIiB0aXRsZT0ibWFpbHRvOnJhbWV6LmFza2FyQGhoaS5mcmF1bmhvZmVyLmRlIj48
c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImNvbG9yOiM3RjdGN0YiPjxzcGFuIGxhbmc9IkVOLVVT
Ij5yYW1lei5hc2thckBoaGkuZnJhdW5ob2Zlci48c3BhbiBsYW5nPSJFTi1VUyI+ZGU8L3NwYW4+
PC9zcGFuPjwvc3Bhbj48L2E+PC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuMHB0O2Nv
bG9yOiM3RjdGN0YiPjxicj4NCjwvc3Bhbj48c3BhbiBsYW5nPSJFTi1HQiIgc3R5bGU9ImZvbnQt
c2l6ZToxMC4wcHQ7Y29sb3I6IzdGN0Y3RiI+PGEgaHJlZj0iaHR0cDovL3d3dy5oaGkuZnJhdW5o
b2Zlci5kZS8iPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iY29sb3I6IzdGN0Y3RiI+PHNwYW4g
bGFuZz0iRU4tVVMiPnd3dy5oaGkuZnJhdW5ob2Zlci5kZTwvc3Bhbj48L3NwYW4+PC9hPjwvc3Bh
bj48c3BhbiBzdHlsZT0iY29sb3I6YmxhY2siPjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjwv
Ym9keT4NCjwvaHRtbD4NCg==

--_000_580D94C5BA724A108CFA274AF428B90Dcontosocom_--



--===============1429112365196883398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1429112365196883398==--


