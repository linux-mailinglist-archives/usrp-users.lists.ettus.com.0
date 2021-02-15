Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF49331BFB6
	for <lists+usrp-users@lfdr.de>; Mon, 15 Feb 2021 17:49:41 +0100 (CET)
Received: from [::1] (port=40794 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lBh45-0007rT-AK; Mon, 15 Feb 2021 11:49:37 -0500
Received: from mail.hhi.fraunhofer.de ([193.174.67.45]:58162)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <ramez.askar@hhi.fraunhofer.de>)
 id 1lBh41-0007mk-3u
 for usrp-users@lists.ettus.com; Mon, 15 Feb 2021 11:49:33 -0500
Received: from mail.hhi.fraunhofer.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7D3C17C081
 for <usrp-users@lists.ettus.com>; Mon, 15 Feb 2021 17:48:44 +0100 (CET)
X-IMSS-DKIM-Authentication-Result: mail.hhi.fraunhofer.de; sigcount=0
Received: from mail.hhi.fraunhofer.de (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7115E7C079
 for <usrp-users@lists.ettus.com>; Mon, 15 Feb 2021 17:48:44 +0100 (CET)
Received: from mx.fe.hhi.de (unknown [172.16.0.102])
 by mail.hhi.fraunhofer.de (Postfix) with ESMTPS
 for <usrp-users@lists.ettus.com>; Mon, 15 Feb 2021 17:48:44 +0100 (CET)
Received: from mxsrv5.fe.hhi.de (172.16.0.103) by mxsrv4.fe.hhi.de
 (172.16.0.102) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2; Mon, 15 Feb
 2021 17:48:50 +0100
Received: from mxsrv5.fe.hhi.de ([fe80::7d4f:49e9:b062:84d9]) by
 mxsrv5.fe.hhi.de ([fe80::7d4f:49e9:b062:84d9%15]) with mapi id
 15.01.2106.003; Mon, 15 Feb 2021 17:48:50 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Get and set CBX-120 ads62p48 gain
Thread-Index: AQHXA7pvdKU14kVki0CJNlBIvlTbCw==
Date: Mon, 15 Feb 2021 16:48:50 +0000
Message-ID: <14566F56-D30D-43E0-B467-6E3541A1AB2F@hhi.fraunhofer.de>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.22.100]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: [USRP-users] Get and set CBX-120 ads62p48 gain
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
Content-Type: multipart/mixed; boundary="===============8029741777889960754=="
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

--===============8029741777889960754==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_14566F56D30D43E0B4676E3541A1AB2Fhhifraunhoferde_"

--_000_14566F56D30D43E0B4676E3541A1AB2Fhhifraunhoferde_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGVhciBTaXIgb3IgTWFkYW0sDQoNCldlIGFyZSB1c2luZyB0aGUgIFgzMTAgd2l0aCBDQlgtMTIw
IGRhdWdodGVyIGNhcmRzLiBIb3cgY2FuIHdlIGdldCBhbmQgc2V0IHRoZSBkaWdpdGFsIFJYIGdh
aW4gKGFkczYycDQ4IGdhaW4pIGZyb20gQysrIGFwcGxpY2F0aW9uPw0KDQoNCkJlc3QgcmVnYXJk
cyAvIE1pdCBmcmV1bmRsaWNoZW4gR3LDvMOfZW4NCi0tDQpBc2thciwgUmFtZXosIE0uU2MuDQpS
ZXNlYXJjaCBBc3NvY2lhdGUgLyBQcm9qZWN0IE1hbmFnZXIgLyBEZWxlZ2F0ZQ0KV2lyZWxlc3Mg
Q29tbXVuaWNhdGlvbnMgYW5kIE5ldHdvcmtzDQpGcmF1bmhvZmVyIEluc3RpdHV0ZSBmb3IgVGVs
ZWNvbW11bmljYXRpb25zLCBIZWlucmljaCBIZXJ0eiBJbnN0aXR1dGUsIEhISQ0KRWluc3RlaW51
ZmVyIDM3LCAxMDU4NyBCZXJsaW4sIEdlcm1hbnkNCis0OSAoMCkzMCAzMTAwMi02MjgNCnJhbWV6
LmFza2FyQGhoaS5mcmF1bmhvZmVyLmRlPG1haWx0bzpyYW1lei5hc2thckBoaGkuZnJhdW5ob2Zl
ci5kZT4NCnd3dy5oaGkuZnJhdW5ob2Zlci5kZTxodHRwOi8vd3d3LmhoaS5mcmF1bmhvZmVyLmRl
Lz4NCg0K

--_000_14566F56D30D43E0B4676E3541A1AB2Fhhifraunhoferde_
Content-Type: text/html; charset="utf-8"
Content-ID: <060C0CC541C108439A36BCD2DA7CADFF@hhi.fraunhofer.de>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6bz0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6b2ZmaWNlIiB4
bWxuczp3PSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOm9mZmljZTp3b3JkIiB4bWxuczpkdD0i
dXVpZDpDMkY0MTAxMC02NUIzLTExZDEtQTI5Ri0wMEFBMDBDMTQ4ODIiIHhtbG5zOm09Imh0dHA6
Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vb2ZmaWNlLzIwMDQvMTIvb21tbCIgeG1sbnM9Imh0dHA6
Ly93d3cudzMub3JnL1RSL1JFQy1odG1sNDAiPg0KPGhlYWQ+DQo8bWV0YSBodHRwLWVxdWl2PSJD
b250ZW50LVR5cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11dGYtOCI+DQo8bWV0YSBu
YW1lPSJHZW5lcmF0b3IiIGNvbnRlbnQ9Ik1pY3Jvc29mdCBXb3JkIDE1IChmaWx0ZXJlZCBtZWRp
dW0pIj4NCjxzdHlsZT48IS0tDQovKiBGb250IERlZmluaXRpb25zICovDQpAZm9udC1mYWNlDQoJ
e2ZvbnQtZmFtaWx5OiJDYW1icmlhIE1hdGgiOw0KCXBhbm9zZS0xOjIgNCA1IDMgNSA0IDYgMyAy
IDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpDYWxpYnJpOw0KCXBhbm9zZS0xOjIgMTUg
NSAyIDIgMiA0IDMgMiA0O30NCi8qIFN0eWxlIERlZmluaXRpb25zICovDQpwLk1zb05vcm1hbCwg
bGkuTXNvTm9ybWFsLCBkaXYuTXNvTm9ybWFsDQoJe21hcmdpbjowY207DQoJZm9udC1zaXplOjEx
LjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQpzcGFuLkVtYWlsU3R5
bGUxNw0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1jb21wb3NlOw0KCWZvbnQtZmFtaWx5OiJD
YWxpYnJpIixzYW5zLXNlcmlmOw0KCWNvbG9yOndpbmRvd3RleHQ7fQ0KLk1zb0NocERlZmF1bHQN
Cgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNh
bnMtc2VyaWY7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6NjEyLjBwdCA3OTIuMHB0Ow0K
CW1hcmdpbjo3Mi4wcHQgNzIuMHB0IDcyLjBwdCA3Mi4wcHQ7fQ0KZGl2LldvcmRTZWN0aW9uMQ0K
CXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48L3N0eWxlPg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0i
ZW4tREUiIGxpbms9IiMwNTYzQzEiIHZsaW5rPSIjOTU0RjcyIiBzdHlsZT0id29yZC13cmFwOmJy
ZWFrLXdvcmQiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5EZWFyIFNpciBvciBNYWRhbSw8bzpwPjwvbzpwPjwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+PG86cD4mbmJz
cDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4t
VVMiPldlIGFyZSB1c2luZyB0aGUgJm5ic3A7WDMxMCB3aXRoIENCWC0xMjAgZGF1Z2h0ZXIgY2Fy
ZHMuIEhvdyBjYW4gd2UgZ2V0IGFuZCBzZXQgdGhlIGRpZ2l0YWwgUlggZ2FpbiAoYWRzNjJwNDgg
Z2FpbikgZnJvbSBDJiM0MzsmIzQzOyBhcHBsaWNhdGlvbj8NCjxvOnA+PC9vOnA+PC9zcGFuPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iREUiIHN0eWxlPSJjb2xvcjpibGFjayI+QmVzdCByZWdhcmRzIC8g
TWl0IGZyZXVuZGxpY2hlbiBHcsO8w59lbjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLUdCIiBzdHlsZT0iZm9udC1zaXplOjEwLjBwdDtj
b2xvcjojN0Y3RjdGIj4tLTxicj4NCkFza2FyLCBSYW1leiwgTS5TYy48YnI+DQpSZXNlYXJjaCBB
c3NvY2lhdGUmbmJzcDsvIFByb2plY3QgTWFuYWdlciAvIERlbGVnYXRlPC9zcGFuPjxzcGFuIHN0
eWxlPSJjb2xvcjpibGFjayI+PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7Y29sb3I6IzdGN0Y3RiI+V2lyZWxl
c3MgQ29tbXVuaWNhdGlvbnMgYW5kIE5ldHdvcmtzPGJyPg0KRnJhdW5ob2ZlciBJbnN0aXR1dGUg
Zm9yIFRlbGVjb21tdW5pY2F0aW9ucywgSGVpbnJpY2ggSGVydHogSW5zdGl0dXRlLCBISEk8YnI+
DQpFaW5zdGVpbnVmZXIgMzcsIDEwNTg3IEJlcmxpbiwgR2VybWFueTxicj4NCiYjNDM7NDkgKDAp
MzAgMzEwMDItNjI4PGJyPg0KPC9zcGFuPjxzcGFuIGxhbmc9IkVOLUdCIiBzdHlsZT0iZm9udC1z
aXplOjEwLjBwdDtjb2xvcjojN0Y3RjdGIj48YSBocmVmPSJtYWlsdG86cmFtZXouYXNrYXJAaGhp
LmZyYXVuaG9mZXIuZGUiIHRpdGxlPSJtYWlsdG86cmFtZXouYXNrYXJAaGhpLmZyYXVuaG9mZXIu
ZGUiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iY29sb3I6IzdGN0Y3RiI+PHNwYW4gbGFuZz0i
RU4tVVMiPnJhbWV6LmFza2FyQGhoaS5mcmF1bmhvZmVyLjxzcGFuIGxhbmc9IkVOLVVTIj5kZTwv
c3Bhbj48L3NwYW4+PC9zcGFuPjwvYT48L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMC4w
cHQ7Y29sb3I6IzdGN0Y3RiI+PGJyPg0KPC9zcGFuPjxzcGFuIGxhbmc9IkVOLUdCIiBzdHlsZT0i
Zm9udC1zaXplOjEwLjBwdDtjb2xvcjojN0Y3RjdGIj48YSBocmVmPSJodHRwOi8vd3d3LmhoaS5m
cmF1bmhvZmVyLmRlLyI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJjb2xvcjojN0Y3RjdGIj48
c3BhbiBsYW5nPSJFTi1VUyI+d3d3LmhoaS5mcmF1bmhvZmVyLmRlPC9zcGFuPjwvc3Bhbj48L2E+
PC9zcGFuPjxzcGFuIHN0eWxlPSJjb2xvcjpibGFjayI+PG86cD48L286cD48L3NwYW4+PC9wPg0K
PC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2
Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_14566F56D30D43E0B4676E3541A1AB2Fhhifraunhoferde_--



--===============8029741777889960754==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8029741777889960754==--


