Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2A04DB65F
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 17:42:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F0781384D51
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 12:42:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=lanl.gov header.i=@lanl.gov header.b="VhRcRLc5";
	dkim-atps=neutral
Received: from proofpoint7.lanl.gov (proofpoint7.lanl.gov [204.121.3.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 8E446384D8C
	for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 12:41:41 -0400 (EDT)
Received: from pps.filterd (proofpoint7.lanl.gov [127.0.0.1])
	by proofpoint7.lanl.gov (8.16.1.2/8.16.1.2) with SMTP id 22GGfIoZ034437
	for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 10:41:40 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lanl.gov; h=from : to : subject :
 date : message-id : content-type : mime-version; s=lanl;
 bh=kA7SlQDQv/VcsOnBTYTQvA8rO4IP1QvDTlXfLqD560Q=;
 b=VhRcRLc5cxjIk5OKrn4jWuuVHkGZvxuGxGFH+CgHB2s2daMJPbYIkxoMlox9GWGkyoH8
 Xnjc7x/vvMgeoI+0teOjMYmp/x0oxxr3wqSMBXe8aBm4JnOcpSAjmM+o1K13XJx3k/EC
 bSTkQPr8ClqI35nwInFSYiY8vuIr7bwSW5QTq3MC/p+mBjPH+0ncmdjrA+FJxJXpyPzZ
 vUFSkcL1MItyxQO1N3vhxp8ktU2jWHGOr4juBvQqTiE1iLHKeMvDs2gi4nd17UfZTSuE
 4pnGOix++KhHECLKt26n6bl+hqix/Q/P8a6kcItxh0pgGe5tji3FSVs0zBlAmwVpwO/G Yg==
Received: from mailrelay1.lanl.gov (mailrelay1.lanl.gov [128.165.4.101])
	by proofpoint7.lanl.gov with ESMTP id 3et5yv1syr-1
	for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 10:41:40 -0600
Received: from localhost (localhost [127.0.0.1])
	by mailrelay1.lanl.gov (Postfix) with ESMTP id 1CAA810292AC
	for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 10:41:40 -0600 (MDT)
X-NIE-2-Virus-Scanner: amavisd-new at mailrelay1.lanl.gov
Received: from EXG16-P-MBX04.win.lanl.gov (exg16-p-mbx04.win.lanl.gov [128.165.106.184])
	by mailrelay1.lanl.gov (Postfix) with ESMTP id 090621026C68
	for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 10:41:40 -0600 (MDT)
Received: from EXG16-P-MBX01.win.lanl.gov (128.165.106.181) by
 EXG16-P-MBX04.win.lanl.gov (128.165.106.184) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.24; Wed, 16 Mar 2022 10:41:39 -0600
Received: from EXG16-P-MBX01.win.lanl.gov ([::1]) by
 EXG16-P-MBX01.win.lanl.gov ([fe80::a80f:ed3d:60d:4352%7]) with mapi id
 15.01.2375.024; Wed, 16 Mar 2022 10:41:39 -0600
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: pybombs install of rfnoc onto ubuntu 20.04 lts
Thread-Index: Adg5UgIFOsib7TjET5mMvUjrJ3/nRg==
Date: Wed, 16 Mar 2022 16:41:39 +0000
Message-ID: <ed3ca7414cb34e9e962bdaecb31fb3be@lanl.gov>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.165.106.210]
MIME-Version: 1.0
X-Proofpoint-GUID: ZhfwBP2ILVZrC5mjbwqHC0GnzeVrVeD8
X-Proofpoint-ORIG-GUID: ZhfwBP2ILVZrC5mjbwqHC0GnzeVrVeD8
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425,18.0.850
 definitions=2022-03-16_06:2022-03-15,2022-03-16 signatures=0
X-Proofpoint-Spam-Reason: safe
Message-ID-Hash: EXANGWICKNAO62FWSAWNSOQTWYGHVZ3Y
X-Message-ID-Hash: EXANGWICKNAO62FWSAWNSOQTWYGHVZ3Y
X-MailFrom: mpc@lanl.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: pybombs install of rfnoc onto ubuntu 20.04 lts
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EXANGWICKNAO62FWSAWNSOQTWYGHVZ3Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Caffrey, Michael Paul via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Caffrey, Michael Paul" <mpc@lanl.gov>
Content-Type: multipart/mixed; boundary="===============3282775000289703638=="

--===============3282775000289703638==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_ed3ca7414cb34e9e962bdaecb31fb3belanlgov_"

--_000_ed3ca7414cb34e9e962bdaecb31fb3belanlgov_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCkZyb206IE1hcmN1cyBELiBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+DQpTZW50
OiBXZWRuZXNkYXksIE1hcmNoIDE2LCAyMDIyIDEwOjE1IEFNDQpUbzogdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20NClN1YmplY3Q6ICBbVVNSUC11c2Vyc10gUmU6IHB5Ym9tYnMgaW5zdGFsbCBv
ZiByZm5vYyBvbnRvIHVidW50dSAyMC4wNCBsdHMNCg0KT24gMjAyMi0wMy0xNiAxMjowNSwgQ2Fm
ZnJleSwgTWljaGFlbCBQYXVsIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KDQoNClNpbmNlIHRoaXMg
aXMgYSBweWJvbWJzIGluc3RhbGwsIHlvdSBuZWVkIHRvIHJ1biBzZXR1cF9lbnYuc2ggdG8gZ2V0
IHZhcmlvdXMgZW52aXJvbm1lbnQgdmFyaWFibGVzIHNldCBjb3JyZWN0bHkgYmFzZWQgb24gd2hl
cmUgeW91ciBweWJvbWJzIHJ1bg0KICBpbnN0YWxsZWQgdGhpbmdzLCBpbmNsdWRpbmcgc2hhcmVk
IGxpYnJhcmllcy4NCg0KQXcsIHRoaXMgbWFkZSB0aGUgZGlmZmVyZW5jZSwgdGhhbmsgeW91IE1h
cmN1cy4NCg0KDQpUaGlzIGxvb2tzIGxpa2UgeW91J3JlIG1pc3NpbmcgUHl0aG9uMi43IGxpYnJh
cmllcy0taXQgbWF5IGJlIHRoZSBjYXNlIHRoYXQgMjAuMDQgZG9lc24ndCBpbnN0YWxsZWQgMi43
IGxpYnJhcmllcyBieSBkZWZhdWx0IGFuZCB5b3UnbGwgaGF2ZSB0byBpbnN0YWxsIHRoZW0uDQpJ
bmRlZWQsIFVidW50dSBoYXNu4oCZdCBpbmNsdWRlZCAyLjcgZm9yIHNvbWUgdGltZSBhcHBhcmVu
dGx5LCBzbyBJIGluc3RhbGxlZCBpdCwgYnV0IEkgZ2V0IHRoZSBzYW1lIGVycm9yIGZyb20gcHli
b21iLiBEb2VzIHB5Ym9tYiBub3QgaGFuZGxlIGRlcGVuZGVuY2llcz8gV2hlcmUgbWlnaHQgSSBm
aW5kIGEgbGlzdCBvZiBweXRob24yLjcgbGlicmFyeSBkZXBlbmRlbmNpZXMgdGhhdCBuZWVkIHRv
IGJlIGluc3RhbGxlZCBmb3IgZ251cmFkaW8/DQpUaGFuayB5b3UgZm9yIHRoZSBpbnB1dCAtTWlr
ZQ0KDQoNCg0K

--_000_ed3ca7414cb34e9e962bdaecb31fb3belanlgov_
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
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJ
Zm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQph
OmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xv
cjojMDU2M0MxOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFu
Lk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjoj
OTU0RjcyOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KcA0KCXttc28tc3R5bGUtcHJp
b3JpdHk6OTk7DQoJbXNvLW1hcmdpbi10b3AtYWx0OmF1dG87DQoJbWFyZ2luLXJpZ2h0OjBpbjsN
Cgltc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0bzsNCgltYXJnaW4tbGVmdDowaW47DQoJZm9udC1z
aXplOjEyLjBwdDsNCglmb250LWZhbWlseToiVGltZXMgTmV3IFJvbWFuIixzZXJpZjt9DQpwLm1z
b25vcm1hbDAsIGxpLm1zb25vcm1hbDAsIGRpdi5tc29ub3JtYWwwDQoJe21zby1zdHlsZS1uYW1l
Om1zb25vcm1hbDsNCgltc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJbXNvLW1hcmdpbi10b3AtYWx0
OmF1dG87DQoJbWFyZ2luLXJpZ2h0OjBpbjsNCgltc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0bzsN
CgltYXJnaW4tbGVmdDowaW47DQoJZm9udC1zaXplOjEyLjBwdDsNCglmb250LWZhbWlseToiVGlt
ZXMgTmV3IFJvbWFuIixzZXJpZjt9DQpzcGFuLkVtYWlsU3R5bGUxOQ0KCXttc28tc3R5bGUtdHlw
ZTpwZXJzb25hbDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgljb2xvcjp3
aW5kb3d0ZXh0O30NCnNwYW4uRW1haWxTdHlsZTIwDQoJe21zby1zdHlsZS10eXBlOnBlcnNvbmFs
LXJlcGx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0KCWNvbG9yOiMxRjQ5
N0Q7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9u
dC1zaXplOjEwLjBwdDt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo4LjVpbiAxMS4waW47
DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGluIDEuMGluO30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7
cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4N
CjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYiIC8+DQo8L3htbD48
IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlbGF5b3V0IHY6ZXh0
PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPg0KPC9vOnNoYXBlbGF5
b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0iRU4tVVMiIGxpbms9
IiMwNTYzQzEiIHZsaW5rPSIjOTU0RjcyIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iY29sb3I6IzFGNDk3RCI+PG86cD4mbmJz
cDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImNv
bG9yOiMxRjQ5N0QiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxkaXY+DQo8ZGl2IHN0
eWxlPSJib3JkZXI6bm9uZTtib3JkZXItdG9wOnNvbGlkICNFMUUxRTEgMS4wcHQ7cGFkZGluZzoz
LjBwdCAwaW4gMGluIDBpbiI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48Yj5Gcm9tOjwvYj4gTWFy
Y3VzIEQuIExlZWNoICZsdDtwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbSZndDsgPGJyPg0KPGI+U2Vu
dDo8L2I+IFdlZG5lc2RheSwgTWFyY2ggMTYsIDIwMjIgMTA6MTUgQU08YnI+DQo8Yj5Ubzo8L2I+
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPGJyPg0KPGI+U3ViamVjdDo8L2I+ICZuYnNwO1tV
U1JQLXVzZXJzXSBSZTogcHlib21icyBpbnN0YWxsIG9mIHJmbm9jIG9udG8gdWJ1bnR1IDIwLjA0
IGx0czxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPk9uIDIw
MjItMDMtMTYgMTI6MDUsIENhZmZyZXksIE1pY2hhZWwgUGF1bCB2aWEgVVNSUC11c2VycyB3cm90
ZTo8c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdCI+PG86cD48L286cD48L3NwYW4+PC9wPg0K
PC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBw
dDtmb250LWZhbWlseTomcXVvdDtUaW1lcyBOZXcgUm9tYW4mcXVvdDssc2VyaWYiPjxicj4NCjxi
cj4NClNpbmNlIHRoaXMgaXMgYSBweWJvbWJzIGluc3RhbGwsIHlvdSBuZWVkIHRvIHJ1biBzZXR1
cF9lbnYuc2ggdG8gZ2V0IHZhcmlvdXMgZW52aXJvbm1lbnQgdmFyaWFibGVzIHNldCBjb3JyZWN0
bHkgYmFzZWQgb24gd2hlcmUgeW91ciBweWJvbWJzIHJ1bjxicj4NCiZuYnNwOyBpbnN0YWxsZWQg
dGhpbmdzLCBpbmNsdWRpbmcgc2hhcmVkIGxpYnJhcmllcy48YnI+DQo8YnI+DQpBdywgdGhpcyBt
YWRlIHRoZSBkaWZmZXJlbmNlLCB0aGFuayB5b3UgTWFyY3VzLjxicj4NCjwvc3Bhbj4mbmJzcDs8
c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTomcXVvdDtUaW1lcyBOZXcg
Um9tYW4mcXVvdDssc2VyaWYiPjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxibG9ja3F1b3RlIHN0
eWxlPSJtYXJnaW4tdG9wOjUuMHB0O21hcmdpbi1ib3R0b206NS4wcHQiPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7
VGltZXMgTmV3IFJvbWFuJnF1b3Q7LHNlcmlmIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+
DQo8L2Jsb2NrcXVvdGU+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0ibWFyZ2luLWJvdHRv
bToxMi4wcHQiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIuMHB0O2ZvbnQtZmFtaWx5OiZxdW90
O1RpbWVzIE5ldyBSb21hbiZxdW90OyxzZXJpZiI+VGhpcyBsb29rcyBsaWtlIHlvdSdyZSBtaXNz
aW5nIFB5dGhvbjIuNyBsaWJyYXJpZXMtLWl0IG1heSBiZSB0aGUgY2FzZSB0aGF0IDIwLjA0IGRv
ZXNuJ3QgaW5zdGFsbGVkIDIuNyBsaWJyYXJpZXMgYnkgZGVmYXVsdCBhbmQgeW91J2xsIGhhdmUN
CiB0byBpbnN0YWxsIHRoZW0uPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCIgc3R5bGU9Im1hcmdpbi1ib3R0b206MTIuMHB0Ij48c3BhbiBzdHlsZT0iZm9udC1zaXpl
OjEyLjBwdDtmb250LWZhbWlseTomcXVvdDtUaW1lcyBOZXcgUm9tYW4mcXVvdDssc2VyaWYiPklu
ZGVlZCwgVWJ1bnR1IGhhc27igJl0IGluY2x1ZGVkIDIuNyBmb3Igc29tZSB0aW1lIGFwcGFyZW50
bHksIHNvIEkgaW5zdGFsbGVkIGl0LCBidXQgSSBnZXQgdGhlIHNhbWUgZXJyb3IgZnJvbSBweWJv
bWIuIERvZXMgcHlib21iIG5vdCBoYW5kbGUNCiBkZXBlbmRlbmNpZXM/IFdoZXJlIG1pZ2h0IEkg
ZmluZCBhIGxpc3Qgb2YgcHl0aG9uMi43IGxpYnJhcnkgZGVwZW5kZW5jaWVzIHRoYXQgbmVlZCB0
byBiZSBpbnN0YWxsZWQgZm9yIGdudXJhZGlvPw0KPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1hcmdpbi1ib3R0b206MTIuMHB0Ij48c3BhbiBzdHls
ZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTomcXVvdDtUaW1lcyBOZXcgUm9tYW4mcXVv
dDssc2VyaWYiPlRoYW5rIHlvdSBmb3IgdGhlIGlucHV0IC1NaWtlPG86cD48L286cD48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1hcmdpbi1ib3R0b206MTIuMHB0Ij48
c3BhbiBzdHlsZT0iZm9udC1zaXplOjEyLjBwdDtmb250LWZhbWlseTomcXVvdDtUaW1lcyBOZXcg
Um9tYW4mcXVvdDssc2VyaWYiPjxicj4NCjxicj4NCjxicj4NCjxvOnA+PC9vOnA+PC9zcGFuPjwv
cD4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_ed3ca7414cb34e9e962bdaecb31fb3belanlgov_--

--===============3282775000289703638==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3282775000289703638==--
