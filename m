Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F64C318DB3
	for <lists+usrp-users@lfdr.de>; Thu, 11 Feb 2021 15:55:58 +0100 (CET)
Received: from [::1] (port=56844 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lADNs-0006ZF-VJ; Thu, 11 Feb 2021 09:55:56 -0500
Received: from mail.hhi.fraunhofer.de ([193.174.67.45]:44548)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <ramez.askar@hhi.fraunhofer.de>)
 id 1lADNn-0006Rd-BM
 for usrp-users@lists.ettus.com; Thu, 11 Feb 2021 09:55:51 -0500
Received: from mail.hhi.fraunhofer.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 409BF7C158
 for <usrp-users@lists.ettus.com>; Thu, 11 Feb 2021 15:55:05 +0100 (CET)
X-IMSS-DKIM-Authentication-Result: mail.hhi.fraunhofer.de; sigcount=0
Received: from mail.hhi.fraunhofer.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 343BE7C155
 for <usrp-users@lists.ettus.com>; Thu, 11 Feb 2021 15:55:05 +0100 (CET)
Received: from mx.fe.hhi.de (unknown [172.16.0.103])
 by mail.hhi.fraunhofer.de (Postfix) with ESMTPS
 for <usrp-users@lists.ettus.com>; Thu, 11 Feb 2021 15:55:05 +0100 (CET)
Received: from mxsrv5.fe.hhi.de (172.16.0.103) by mxsrv5.fe.hhi.de
 (172.16.0.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2; Thu, 11 Feb
 2021 15:55:09 +0100
Received: from mxsrv5.fe.hhi.de ([fe80::7d4f:49e9:b062:84d9]) by
 mxsrv5.fe.hhi.de ([fe80::7d4f:49e9:b062:84d9%15]) with mapi id
 15.01.2106.003; Thu, 11 Feb 2021 15:55:09 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: HLS IP Core integration with RFNoC 4.0 signal path
Thread-Index: AQHXAIXkYxRS9u+jBUywM6+HlgkB6Q==
Date: Thu, 11 Feb 2021 14:55:09 +0000
Message-ID: <531AEE00-BBF2-4391-B932-69790756F76F@hhi.fraunhofer.de>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.22.100]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: [USRP-users] HLS IP Core integration with RFNoC 4.0 signal path
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
Content-Type: multipart/mixed; boundary="===============2831432646983284385=="
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

--===============2831432646983284385==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_531AEE00BBF24391B93269790756F76Fhhifraunhoferde_"

--_000_531AEE00BBF24391B93269790756F76Fhhifraunhoferde_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGVhciBTaXIgb3IgTWFkYW0sDQoNCkkgYW0gY3JlYXRpbmcgYSBuZXcgSVAgY29yZSBpbiBWaXZh
ZG8gSExTIHRvb2wuIEhvdyBkbyBJIGludGVncmF0ZSB0aGUgdG9vbCB3aXRoIFJGTm9DIDQuMCBz
aWduYWwgcGF0aCAoc3RhdGljIHJvdXRpbmcpPyBEbyBJIG5lZWQgIHRvIGV4cG9ydCAgdGhlIEhM
Uy1jcmVhdGVkIElQIGFzIFZpdmFkaW8gSVAgYmVmb3JlIGludGVncmF0aW9uPyBUaGUgSVAgcGxh
bm5lZCB0byBoYXZlIElRIHNhbXBsZXMgaW4gYW5kIG91dCBhbmQgc29tZSByZWdpc3RlcnMgdG8g
YmUgcHJvZ3JhbW1lZCBmcm9tIEMrKyBhcHBsaWNhdGlvbi4NCldoaWNoIGludGVyZmFjZXMgbXVz
dCB0aGUgSVEgc2FtcGxlIHN0cmVhbSBoYXZlPw0KYW5kIHdoaWNoIGludGVyZmFjZXMgdGhlIHBy
b2dyYW1hYmxlIHJlZ2lzdGVycyBtdXN0IGhhdmUgKEF4aS1saXRlIG9yIEF4aS1TdHJlYW0pPw0K
SG93IGNhbiBJIGludGVncmF0ZSB0aGUgSVAgY29yZSB3aXRoIHRoZSBOb0Mgc2hlbGw/DQoNCg0K
QmVzdCByZWdhcmRzIC8gTWl0IGZyZXVuZGxpY2hlbiBHcsO8w59lbg0KLS0NCkFza2FyLCBSYW1l
eiwgTS5TYy4NClJlc2VhcmNoIEFzc29jaWF0ZSAvIFByb2plY3QgTWFuYWdlciAvIERlbGVnYXRl
DQpXaXJlbGVzcyBDb21tdW5pY2F0aW9ucyBhbmQgTmV0d29ya3MNCkZyYXVuaG9mZXIgSW5zdGl0
dXRlIGZvciBUZWxlY29tbXVuaWNhdGlvbnMsIEhlaW5yaWNoIEhlcnR6IEluc3RpdHV0ZSwgSEhJ
DQpFaW5zdGVpbnVmZXIgMzcsIDEwNTg3IEJlcmxpbiwgR2VybWFueQ0KKzQ5ICgwKTMwIDMxMDAy
LTYyOA0KcmFtZXouYXNrYXJAaGhpLmZyYXVuaG9mZXIuZGU8bWFpbHRvOnJhbWV6LmFza2FyQGho
aS5mcmF1bmhvZmVyLmRlPg0Kd3d3LmhoaS5mcmF1bmhvZmVyLmRlPGh0dHA6Ly93d3cuaGhpLmZy
YXVuaG9mZXIuZGUvPg0KDQo=

--_000_531AEE00BBF24391B93269790756F76Fhhifraunhoferde_
Content-Type: text/html; charset="utf-8"
Content-ID: <78A800480472BC4BBC36B2B79F6C14C9@hhi.fraunhofer.de>
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
Tm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+RGVhciBTaXIgb3IgTWFkYW0sPG86cD48L286cD48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPjxvOnA+
Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9
IkVOLVVTIiBzdHlsZT0iY29sb3I6YmxhY2siPkkgYW0gY3JlYXRpbmcgYSBuZXcgSVAgY29yZSBp
biBWaXZhZG8gSExTIHRvb2wuIEhvdyBkbyBJIGludGVncmF0ZSB0aGUgdG9vbCB3aXRoIFJGTm9D
IDQuMCBzaWduYWwgcGF0aCAoc3RhdGljIHJvdXRpbmcpPyBEbyBJIG5lZWQgJm5ic3A7dG8gZXhw
b3J0ICZuYnNwO3RoZSBITFMtY3JlYXRlZCBJUCBhcyBWaXZhZGlvIElQIGJlZm9yZSBpbnRlZ3Jh
dGlvbj8gVGhlDQogSVAgcGxhbm5lZCB0byBoYXZlIElRIHNhbXBsZXMgaW4gYW5kIG91dCBhbmQg
c29tZSByZWdpc3RlcnMgdG8gYmUgcHJvZ3JhbW1lZCBmcm9tIEMmIzQzOyYjNDM7IGFwcGxpY2F0
aW9uLg0KPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
bGFuZz0iRU4tVVMiIHN0eWxlPSJjb2xvcjpibGFjayI+V2hpY2ggaW50ZXJmYWNlcyBtdXN0IHRo
ZSBJUSBzYW1wbGUgc3RyZWFtIGhhdmU/PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJjb2xvcjpibGFjayI+YW5kIHdo
aWNoIGludGVyZmFjZXMgdGhlIHByb2dyYW1hYmxlIHJlZ2lzdGVycyBtdXN0IGhhdmUgKEF4aS1s
aXRlIG9yIEF4aS1TdHJlYW0pPzxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iY29sb3I6YmxhY2siPkhvdyBjYW4gSSBp
bnRlZ3JhdGUgdGhlIElQIGNvcmUgd2l0aCB0aGUgTm9DIHNoZWxsPzxvOnA+PC9vOnA+PC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gc3R5bGU9ImNvbG9yOmJsYWNrIj5CZXN0IHJlZ2FyZHMgLyBNaXQgZnJl
dW5kbGljaGVuIEdyw7zDn2VuPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7Y29sb3I6IzdGN0Y3RiI+LS08YnI+
DQpBc2thciwgUmFtZXosIE0uU2MuPGJyPg0KUmVzZWFyY2ggQXNzb2NpYXRlJm5ic3A7LyBQcm9q
ZWN0IE1hbmFnZXIgLyBEZWxlZ2F0ZTwvc3Bhbj48c3BhbiBzdHlsZT0iY29sb3I6YmxhY2siPjxv
OnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJm
b250LXNpemU6MTAuMHB0O2NvbG9yOiM3RjdGN0YiPldpcmVsZXNzIENvbW11bmljYXRpb25zIGFu
ZCBOZXR3b3Jrczxicj4NCkZyYXVuaG9mZXIgSW5zdGl0dXRlIGZvciBUZWxlY29tbXVuaWNhdGlv
bnMsIEhlaW5yaWNoIEhlcnR6IEluc3RpdHV0ZSwgSEhJPGJyPg0KRWluc3RlaW51ZmVyIDM3LCAx
MDU4NyBCZXJsaW4sIEdlcm1hbnk8YnI+DQomIzQzOzQ5ICgwKTMwIDMxMDAyLTYyODxicj4NCjwv
c3Bhbj48c3BhbiBsYW5nPSJFTi1HQiIgc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7Y29sb3I6IzdG
N0Y3RiI+PGEgaHJlZj0ibWFpbHRvOnJhbWV6LmFza2FyQGhoaS5mcmF1bmhvZmVyLmRlIiB0aXRs
ZT0ibWFpbHRvOnJhbWV6LmFza2FyQGhoaS5mcmF1bmhvZmVyLmRlIj48c3BhbiBsYW5nPSJFTi1V
UyIgc3R5bGU9ImNvbG9yOiM3RjdGN0YiPjxzcGFuIGxhbmc9IkVOLVVTIj5yYW1lei5hc2thckBo
aGkuZnJhdW5ob2Zlci48c3BhbiBsYW5nPSJFTi1VUyI+ZGU8L3NwYW4+PC9zcGFuPjwvc3Bhbj48
L2E+PC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuMHB0O2NvbG9yOiM3RjdGN0YiPjxi
cj4NCjwvc3Bhbj48c3BhbiBsYW5nPSJFTi1HQiIgc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7Y29s
b3I6IzdGN0Y3RiI+PGEgaHJlZj0iaHR0cDovL3d3dy5oaGkuZnJhdW5ob2Zlci5kZS8iPjxzcGFu
IGxhbmc9IkVOLVVTIiBzdHlsZT0iY29sb3I6IzdGN0Y3RiI+PHNwYW4gbGFuZz0iRU4tVVMiPnd3
dy5oaGkuZnJhdW5ob2Zlci5kZTwvc3Bhbj48L3NwYW4+PC9hPjwvc3Bhbj48c3BhbiBzdHlsZT0i
Y29sb3I6YmxhY2siPjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4N
Cg==

--_000_531AEE00BBF24391B93269790756F76Fhhifraunhoferde_--



--===============2831432646983284385==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2831432646983284385==--


