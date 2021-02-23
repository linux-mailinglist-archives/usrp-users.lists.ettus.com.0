Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D3C322E9A
	for <lists+usrp-users@lfdr.de>; Tue, 23 Feb 2021 17:19:20 +0100 (CET)
Received: from [::1] (port=42704 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lEaP5-0000fx-8D; Tue, 23 Feb 2021 11:19:15 -0500
Received: from proofpoint8.lanl.gov ([204.121.3.47]:48422)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_RSA_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <joncox@lanl.gov>) id 1lEaP2-0000a8-5j
 for usrp-users@lists.ettus.com; Tue, 23 Feb 2021 11:19:12 -0500
Received: from pps.filterd (proofpoint8.lanl.gov [127.0.0.1])
 by proofpoint8.lanl.gov (8.16.0.22/8.16.0.22) with SMTP id 11NGBr5n114461
 for <usrp-users@lists.ettus.com>; Tue, 23 Feb 2021 09:18:30 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lanl.gov;
 h=from : to : subject :
 date : message-id : content-type : mime-version; s=lanl;
 bh=M6gcAiqLt3iyF8BK96jWtPCvEpgln5MxpgmWTtV7tSE=;
 b=O4MDmCsqNUknbUpbE1db4Lmju+PCFo2PheJEwlmNXgO79mi8QlI7pYHh2Mj0qLIdS4fI
 8R+ChUtgawycLFQBN180+ECw7m2Ij1u/+JmdxSL62yp+gxO0xfZ4Iv2mfaIMPAyAGPMx
 p0zYE10hxQLzZoeHjqAQ/1PWnBFKiCpw+wYmotyvB02tj3NMmrSdkZm63jTjAVr8/Rrr
 PU5dAtmFJFwKL/kF/jIbSkUbblmAECZmqhtfDUvRGobEA6523lA2StsuQJvzTKVzSC/u
 mhFIKpHtOLX9W49SoodDQ40mVm+DZ0FmTpynjfNZU3qCXudLRwICT5S8JxHJtiwRSclv vg== 
Received: from mailrelay1.lanl.gov (mailrelay1.lanl.gov [128.165.4.101])
 by proofpoint8.lanl.gov with ESMTP id 36w4wgr263-1
 for <usrp-users@lists.ettus.com>; Tue, 23 Feb 2021 09:18:30 -0700
Received: from localhost (localhost [127.0.0.1])
 by mailrelay1.lanl.gov (Postfix) with ESMTP id AED631002296
 for <usrp-users@lists.ettus.com>; Tue, 23 Feb 2021 09:18:30 -0700 (MST)
X-NIE-2-Virus-Scanner: amavisd-new at mailrelay1.lanl.gov
Received: from EXG16-P-MBX16.win.lanl.gov (exg16-p-mbx16.win.lanl.gov
 [128.165.106.226])
 by mailrelay1.lanl.gov (Postfix) with ESMTP id 9B8EB1002A73
 for <usrp-users@lists.ettus.com>; Tue, 23 Feb 2021 09:18:30 -0700 (MST)
Received: from EXG16-P-MBX13.win.lanl.gov (128.165.106.223) by
 EXG16-P-MBX16.win.lanl.gov (128.165.106.226) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 23 Feb 2021 09:18:30 -0700
Received: from EXG16-P-MBX13.win.lanl.gov ([fe80::f5ef:f84f:ecfd:9dd]) by
 EXG16-P-MBX13.win.lanl.gov ([fe80::f5ef:f84f:ecfd:9dd%8]) with mapi id
 15.01.2106.008; Tue, 23 Feb 2021 09:18:30 -0700
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Overhead Time for Tuning USRP LO and Acquiring Signal for Swept
 Spectrum Analysis
Thread-Index: AQHXCf+GNsAvmym9qU2SnXgxCC3RMw==
Date: Tue, 23 Feb 2021 16:18:30 +0000
Message-ID: <BBFC10AB-0C6C-4C08-AF50-7CF0B7C30F1B@lanl.gov>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.165.106.210]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.761
 definitions=2021-02-23_08:2021-02-23,
 2021-02-23 signatures=0
X-Proofpoint-Spam-Reason: safe
Subject: [USRP-users] Overhead Time for Tuning USRP LO and Acquiring Signal
 for Swept Spectrum Analysis
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
From: "Cox, Jonathan Albert via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Cox, Jonathan Albert" <joncox@lanl.gov>
Content-Type: multipart/mixed; boundary="===============3153544738093261947=="
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

--===============3153544738093261947==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BBFC10AB0C6C4C08AF507CF0B7C30F1Blanlgov_"

--_000_BBFC10AB0C6C4C08AF507CF0B7C30F1Blanlgov_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gVVNSUCBVc2VycywNCg0KSeKAmWQgbGlrZSB0byB1bmRlcnN0YW5kIHRoZSBwcmFjdGlj
YWxpdHkgb2YgdXNpbmcgYSBVU1JQIHdpdGggVUJYIGJvYXJkIGFzIGEgc3dlcHQgc3BlY3RydW0g
YW5hbHl6ZXIgdG8gc3dlZXAgYSBicm9hZCBiYW5kd2lkdGgsIGxpa2Ugc2FtcGxpbmcgMTAgTUh6
IHRvIDYgR0h6IGZhaXJseSBxdWlja2x5LiBJIGRvbuKAmXQgcmVxdWlyZSBleHRyZW1lbHkgcHJl
Y2lzZSBhbXBsaXR1ZGUgY2FsaWJyYXRpb24gYWNyb3NzIHRoYXQgYmFuZHdpZHRoLCBidXQgdGhl
IHN3ZWVwIHNwZWVkIChMTyB0dW5pbmcgYW5kIGRhdGEgYWNxdWlzaXRpb24gaW5pdGlhbGl6YXRp
b24pIHNob3VsZCBiZSByZWxhdGl2ZWx5IHF1aWNrLg0KDQpIb3cgbG9uZyBkb2VzIGl0IHRha2Ug
dG8gY29tbWFuZCB0aGUgVVNSUCB0byB0dW5lIHRvIGEgcGFydGljdWxhciBMTyBjZW50ZXIgZnJl
cXVlbmN5LCBpbml0aWF0ZSBhIGRhdGEgYWNxdWlzaXRpb24sIGFuZCB0aGVuIHJldHVybiB0aGUg
cmVzdWx0IChleGNsdWRpbmcgdGhlIHRpbWUgcmVxdWlyZWQgdG8gcGVyZm9ybSB0aGUgYWN0dWFs
IHNhbXBsaW5nKT8gRm9yIGV4YW1wbGUsIHRoZSBUZWt0cm9uaXggUlNBMzA2QiBjbGFpbXMgYSBz
d2VlcCBzcGVlZCBvZiA1MDAgbXMgZm9yIDkga0h6IHRvIDYgR0h6Lg0KDQpSb3VnaGx5IHNwZWFr
aW5nLCB0byBjb3ZlciA2IEdIeiB3aXRoIH4xNjAgTUh6IGJhbmR3aWR0aCwgeW91IHdvdWxkIG5l
ZWQgdG8gdHVuZSB0aGUgTE8gcHJvYmFibHkgNDUgdG8gMTAwIHRpbWVzIChkZXBlbmRpbmcgb24g
b3ZlcmxhcCwgZmlsdGVyaW5nLCBldGMuKSAuIFRoZXJlZm9yZSwgaWYgeW91IHdhbnQgdG8ga2Vl
cCB0aGUgb3ZlcmhlYWQgdW5kZXIgMjAwIG1zLCBlYWNoIHR1bmUvaW5pdGlhdGUgYWNxdWlzaXRp
b24vZG93bmxvYWQgc3RlcCBzaG91bGQgdGFrZSBubyBtb3JlIHRoYW4gMiBvciA0IG1zLg0KDQpJ
cyBpdCByZWFzb25hYmxlIHRvIHR1bmUgYW5kIGFjcXVpcmUgd2l0aCB0aGUgVUJYIGJvYXJkIGlu
IGFuIFgzMDAgaW4gMiB0byA0IG1zPw0KDQpSZWdhcmRzLA0KSm9uYXRoYW4NCg==

--_000_BBFC10AB0C6C4C08AF507CF0B7C30F1Blanlgov_
Content-Type: text/html; charset="utf-8"
Content-ID: <5A10B6A707B5FC4A83EC3B3E4A944923@win.lanl.gov>
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
ZToxMi4wcHQ7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0Kc3Bhbi5FbWFp
bFN0eWxlMTcNCgl7bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtY29tcG9zZTsNCglmb250LWZhbWls
eToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgljb2xvcjp3aW5kb3d0ZXh0O30NCi5Nc29DaHBEZWZh
dWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtc2l6ZToxMi4wcHQ7DQoJ
Zm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJ
e3NpemU6NjEyLjBwdCA3OTIuMHB0Ow0KCW1hcmdpbjo3Mi4wcHQgNzIuMHB0IDcyLjBwdCA3Mi4w
cHQ7fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48L3N0eWxl
Pg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0iRU4tVVMiIGxpbms9IiMwNTYzQzEiIHZsaW5rPSIjOTU0
RjcyIiBzdHlsZT0id29yZC13cmFwOmJyZWFrLXdvcmQiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rp
b24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0
Ij5IZWxsbyBVU1JQIFVzZXJzLDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij48bzpwPiZuYnNwOzwvbzpwPjwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEx
LjBwdCI+SeKAmWQgbGlrZSB0byB1bmRlcnN0YW5kIHRoZSBwcmFjdGljYWxpdHkgb2YgdXNpbmcg
YSBVU1JQIHdpdGggVUJYIGJvYXJkIGFzIGEgc3dlcHQgc3BlY3RydW0gYW5hbHl6ZXIgdG8gc3dl
ZXAgYSBicm9hZCBiYW5kd2lkdGgsIGxpa2Ugc2FtcGxpbmcgMTAgTUh6IHRvIDYgR0h6IGZhaXJs
eSBxdWlja2x5LiBJIGRvbuKAmXQgcmVxdWlyZSBleHRyZW1lbHkgcHJlY2lzZQ0KIGFtcGxpdHVk
ZSBjYWxpYnJhdGlvbiBhY3Jvc3MgdGhhdCBiYW5kd2lkdGgsIGJ1dCB0aGUgc3dlZXAgc3BlZWQg
KExPIHR1bmluZyBhbmQgZGF0YSBhY3F1aXNpdGlvbiBpbml0aWFsaXphdGlvbikgc2hvdWxkIGJl
IHJlbGF0aXZlbHkgcXVpY2suPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEu
MHB0Ij5Ib3cgbG9uZyBkb2VzIGl0IHRha2UgdG8gY29tbWFuZCB0aGUgVVNSUCB0byB0dW5lIHRv
IGEgcGFydGljdWxhciBMTyBjZW50ZXIgZnJlcXVlbmN5LCBpbml0aWF0ZSBhIGRhdGEgYWNxdWlz
aXRpb24sIGFuZCB0aGVuIHJldHVybiB0aGUgcmVzdWx0IChleGNsdWRpbmcgdGhlIHRpbWUgcmVx
dWlyZWQgdG8gcGVyZm9ybSB0aGUgYWN0dWFsIHNhbXBsaW5nKT8NCiBGb3IgZXhhbXBsZSwgdGhl
IFRla3Ryb25peCBSU0EzMDZCIGNsYWltcyBhIHN3ZWVwIHNwZWVkIG9mIDUwMCBtcyBmb3IgOSBr
SHogdG8gNiBHSHouPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5S
b3VnaGx5IHNwZWFraW5nLCB0byBjb3ZlciA2IEdIeiB3aXRoIH4xNjAgTUh6IGJhbmR3aWR0aCwg
eW91IHdvdWxkIG5lZWQgdG8gdHVuZSB0aGUgTE8gcHJvYmFibHkgNDUgdG8gMTAwIHRpbWVzIChk
ZXBlbmRpbmcgb24gb3ZlcmxhcCwgZmlsdGVyaW5nLCBldGMuKSAuIFRoZXJlZm9yZSwgaWYgeW91
IHdhbnQgdG8ga2VlcCB0aGUgb3ZlcmhlYWQgdW5kZXINCiAyMDAgbXMsIGVhY2ggdHVuZS9pbml0
aWF0ZSBhY3F1aXNpdGlvbi9kb3dubG9hZCBzdGVwIHNob3VsZCB0YWtlIG5vIG1vcmUgdGhhbiAy
IG9yIDQgbXMuDQo8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPklz
IGl0IHJlYXNvbmFibGUgdG8gdHVuZSBhbmQgYWNxdWlyZSB3aXRoIHRoZSBVQlggYm9hcmQgaW4g
YW4gWDMwMCBpbiAyIHRvIDQgbXM/PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPjxvOnA+Jm5ic3A7PC9vOnA+
PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6
MTEuMHB0Ij5SZWdhcmRzLDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5Kb25hdGhhbjxvOnA+PC9vOnA+PC9z
cGFuPjwvcD4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_BBFC10AB0C6C4C08AF507CF0B7C30F1Blanlgov_--


--===============3153544738093261947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3153544738093261947==--

