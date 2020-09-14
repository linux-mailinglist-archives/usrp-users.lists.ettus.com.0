Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62047269600
	for <lists+usrp-users@lfdr.de>; Mon, 14 Sep 2020 22:04:59 +0200 (CEST)
Received: from [::1] (port=57828 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kHuid-00043Z-C5; Mon, 14 Sep 2020 16:04:55 -0400
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:30216)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <duixian@us.ibm.com>) id 1kHuiY-0003z0-U6
 for USRP-users@lists.ettus.com; Mon, 14 Sep 2020 16:04:51 -0400
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08EJemwI095254
 for <USRP-users@lists.ettus.com>; Mon, 14 Sep 2020 16:04:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=in-reply-to : to : cc :
 from : date : references : content-type : message-id : mime-version :
 subject; s=pp1; bh=lGbbOG1JEEFlm0b4C5Wkm0LI5BdLPwH4e++h8e669LY=;
 b=h/y6Qb5PGFfqQUSRkCKKwVmtGlCELWGl/pVok2fLxEtOLr41WA6MnQ/bz+Fb8cmEoT30
 o9gvYZK3JVSHezkL7fUqLDh9tG7cMu4VJdKUjgGn4P10m/h5LUfnRe8zAgNv0f+ejRrS
 gz2WnaxONjtyTLOrakQU06MyoW7mIem+rp/n1SFPn6/4oxIZyn0kgzakDKcPZe3XprQ5
 8RHIRrP8olkwBbEY0aT1BWRP/oCqVBV0wX1d20slvqCLZIoxzaeTVIt6MjBsVDG4O7ka
 /icvHOyO42w0aywQuwmfg+6lgIVeWHK+0vCfppghMTVQo8IKL5TDVAvy0WBULLLmFkVt Qg== 
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com
 [192.155.248.74])
 by mx0a-001b2d01.pphosted.com with ESMTP id 33jc93w06b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <USRP-users@lists.ettus.com>; Mon, 14 Sep 2020 16:04:09 -0400
Received: from localhost
 by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
 for <USRP-users@lists.ettus.com> from <duixian@us.ibm.com>;
 Mon, 14 Sep 2020 20:04:09 -0000
Received: from us1a3-smtp03.a3.dal06.isc4sb.com (10.106.154.98)
 by smtp.notes.na.collabserv.com (10.106.227.92) with
 smtp.notes.na.collabserv.com ESMTP; Mon, 14 Sep 2020 20:04:07 -0000
Received: from us1a3-mail163.a3.dal06.isc4sb.com ([10.146.71.41])
 by us1a3-smtp03.a3.dal06.isc4sb.com
 with ESMTP id 2020091420040699-790456 ;
 Mon, 14 Sep 2020 20:04:06 +0000 
In-Reply-To: <300817F0-EA15-4CC7-9A58-62EBEF427C98@gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Date: Mon, 14 Sep 2020 16:04:04 -0400
References: <OF4FD4A827.30B9CEDF-ON002585E0.00685374-852585E0.0069447D@notes.na.collabserv.com>
 <300817F0-EA15-4CC7-9A58-62EBEF427C98@gmail.com>
X-KeepSent: D12B3F23:07067C06-002585E3:006E063A;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 10.0.1FP1 March 26, 2019
X-LLNOutbound: False
X-Disclaimed: 33795
X-TNEFEvaluated: 1
x-cbid: 20091420-3165-0000-0000-00000486A13D
X-IBM-SpamModules-Scores: BY=0; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.433748; ST=0; TS=0; UL=0; ISC=; MB=0.137854
X-IBM-SpamModules-Versions: BY=3.00013837; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000295; SDB=6.01434857; UDB=6.00770667; IPR=6.01217535; 
 MB=3.00034051; MTD=3.00000008; XFM=3.00000015; UTC=2020-09-14 20:04:08
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2020-09-14 18:27:20 - 6.00011840
x-cbparentid: 20091420-3166-0000-0000-00008DC8E971
Message-Id: <OFD12B3F23.07067C06-ON002585E3.006E063A-852585E3.006E2678@notes.na.collabserv.com>
X-Proofpoint-UnRewURL: 1 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-14_08:2020-09-14,
 2020-09-14 signatures=0
X-Proofpoint-Spam-Reason: orgsafe
Subject: Re: [USRP-users] N310 stoped working
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
From: Duixian Liu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Duixian Liu <duixian@us.ibm.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============5365848189330794690=="
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


--===============5365848189330794690==
Content-Type: multipart/alternative; boundary="=_alternative 006E25D1852585E3_="


--=_alternative 006E25D1852585E3_=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

QWN0dWFsbHkgSSBjYW4gcGluZyB0aGUgZGV2aWNlLg0KDQpXaGVuIEkgZG8gdGhlIG1lYXN1cmVt
ZW50cywgSSB1c2UgU0ZQKyBwb3J0IDAuIEJ1dCBmb3IgdGhlIG1hbmFnZW1lbnQsIEkgDQp1c2Ug
MTAvMTAwLzEwMDAgRU5FVCBSSi00NSBFTkVUIHBvcnQuDQpUaGUgInBpbmcgMTkyLjE2OC4xMC4x
MDAiIHRvIHRoZSAxMC8xMDAvMTAwMCBFTkVUIFJKLTQ1IEVORVQgcG9ydCBpcyBPay4gDQpCdXQg
InVoZF91c3JwX3Byb2JlIiBzYXlzICJubyBkZXZpY2VzIGZvdW5kIiBhbmQgInVoZF9maW5kX2Rl
dmljZXMiIHNheXMgDQoicmVhY2hhYmxlOiBObyIuDQoNCg0KRHVpeGlhbiBMaXUsIFBoRC4sIEZl
bGxvdyBvZiBJRUVFDQpNYXN0ZXIgSW52ZW50b3INClJlc2VhcmNoIFN0YWZmIE1lbWJlcg0KV2ly
ZWxlc3MgU3lzdGVtIERlc2lnbiAmIFBhY2thZ2luZw0KSUJNIFRob21hcyBKLiBXYXRzb24gUmVz
ZWFyY2ggQ2VudGVyDQoxMTAxIEtpdGNoYXdhbiBSZA0KWW9ya3Rvd24gSGVpZ2h0cywgTlkgMTA1
OTgNClRlbDogOTE0LTk0NS0xMjc4DQpGYXg6IDkxNC05NDUtNDIxOQ0KRW1haWw6IGR1aXhpYW5A
dXMuaWJtLmNvbQ0KDQoNCg0KRnJvbTogICBNYXJjdXMgRCBMZWVjaCA8cGF0Y2h2b25icmF1bkBn
bWFpbC5jb20+DQpUbzogICAgIER1aXhpYW4gTGl1IDxkdWl4aWFuQHVzLmlibS5jb20+DQpDYzog
ICAgIEV0dHVzIFJlc2VhcmNoIFN1cHBvcnQgPHN1cHBvcnRAZXR0dXMuY29tPiwgDQpVU1JQLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQ0KRGF0ZTogICAwOS8xMi8yMDIwIDAxOjE2IFBNDQpTdWJqZWN0
OiAgICAgICAgW0VYVEVSTkFMXSBSZTogW1VTUlAtdXNlcnNdIE4zMTAgc3RvcGVkIHdvcmtpbmcN
Cg0KDQoNCllvdXIgRXRoZXJuZXQgaW50ZXJmYWNlIG9uIHlvdXIgaG9zdCBoYXMuIEkgYWRkcmVz
cy4gSSBzdXNwZWN0IA0KTmV0d29ya01hbmFnZXIgaGFzIHRoYXQgSSBpbnRlcmZhY2UgY29uZmln
dXJlZCBmb3IgREhDUCBhbmQgaXMgdGFraW5nIGl0IA0Kb3V0IG9mIHNlcnZpY2UgYWZ0ZXIgcmVw
ZWF0ZWQgREhDUCB0cmFuc2FjdGlvbiBmYWlsdXJlcy4gQnV0IHRoZXJlIG1pZ2h0IA0KYmUgc29t
ZSBvdGhlciByZWFzb24uIFJlZ2FyZGxlc3MgdGhlcmXigJlzIG5vIElQIGFkZHJlc3Mgb24geW91
ciBob3N0IA0KaW50ZXJmYWNlLiANCg0KU2VudCBmcm9tIG15IGlQaG9uZQ0KDQpPbiBTZXAgMTIs
IDIwMjAsIGF0IDg6MjcgQU0sIER1aXhpYW4gTGl1IHZpYSBVU1JQLXVzZXJzIA0KPHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToNCg0K77u/SGkgLA0KQWZ0ZXIgbWFueSBtZWFzdXJl
bWVudHMsIE4zMTAgc3RvcHBlZCB3b3JraW5nLiBUaGUgZXRoZXJuZXQgY29ubmVjdGlvbiBpcyAN
Ck9rIChhdCBsZWFzdCBpdCBpbmRpY2F0ZXMgY29ubmVjdGlvbiBlc3RhYmxpc2hlZCkuIEJ1dCBO
MzEwIGlzIG5vdCANCnJlYWNoYWJsZSBhbnltb3JlLiAgSSBoYXZlIHJlYm9vdGVkIHRoZSBjb21w
dXRlciBhbmQgTjMxMCBzZXZlcmFsIHRpbWVzIA0KYW5kIGRpZCBhbGwgdGhlIG5lY2Vzc2FyeSBz
dGVwcyB0byBydW4gbXkgcHJvZ3JhbXMsIHRoZSBwcm9ibGVtIGlzIHN0aWxsIA0Kbm90IHJlc29s
dmVkLiBXaGVuIHBpbmcgdGhlIGRldmljZSwgaXQgc2F5cyAiTmV0d29yayBpcyB1bnJlYWNoYWJs
ZSIuDQoNCg0KDQoNCkR1aXhpYW4gTGl1LCBQaEQuLCBGZWxsb3cgb2YgSUVFRQ0KTWFzdGVyIElu
dmVudG9yDQpSZXNlYXJjaCBTdGFmZiBNZW1iZXINCldpcmVsZXNzIFN5c3RlbSBEZXNpZ24gJiBQ
YWNrYWdpbmcNCklCTSBUaG9tYXMgSi4gV2F0c29uIFJlc2VhcmNoIENlbnRlcg0KMTEwMSBLaXRj
aGF3YW4gUmQNCllvcmt0b3duIEhlaWdodHMsIE5ZIDEwNTk4DQpUZWw6IDkxNC05NDUtMTI3OA0K
RmF4OiA5MTQtOTQ1LTQyMTkNCkVtYWlsOiBkdWl4aWFuQHVzLmlibS5jb20NCg0KPElNR180NTc0
LkpQRz4NCjxJTUdfNDU4MS5KUEc+DQo8SU1HXzQ1ODMuSlBHPg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0DQpV
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFu
L2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tDQoNCg0KDQo=

--=_alternative 006E25D1852585E3_=
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PHNwYW4gc3R5bGU9IiBmb250LXNpemU6MTBwdDtmb250LWZhbWlseTpzYW5zLXNlcmlmIj5BY3R1
YWxseSBJIGNhbiBwaW5nDQp0aGUgZGV2aWNlLjwvc3Bhbj48YnI+PGJyPjxzcGFuIHN0eWxlPSIg
Zm9udC1zaXplOjEwcHQ7Zm9udC1mYW1pbHk6c2Fucy1zZXJpZiI+V2hlbiBJIGRvIHRoZQ0KbWVh
c3VyZW1lbnRzLCBJIHVzZSA8L3NwYW4+PHNwYW4gc3R5bGU9IiBmb250LXNpemU6MTJwdDtmb250
LWZhbWlseTpWZXJkYW5hIj5TRlArDQpwb3J0IDAuIEJ1dCBmb3IgdGhlIG1hbmFnZW1lbnQsIEkg
dXNlIDEwLzEwMC8xMDAwIEVORVQgUkotNDUgRU5FVCBwb3J0Ljwvc3Bhbj48YnI+PHNwYW4gc3R5
bGU9IiBmb250LXNpemU6MTJwdDtmb250LWZhbWlseTpWZXJkYW5hIj5UaGUgJnF1b3Q7cGluZyAx
OTIuMTY4LjEwLjEwMCZxdW90Ow0KdG8gdGhlIDEwLzEwMC8xMDAwIEVORVQgUkotNDUgRU5FVCBw
b3J0IGlzIE9rLiBCdXQgJnF1b3Q7dWhkX3VzcnBfcHJvYmUmcXVvdDsNCnNheXMgJnF1b3Q7bm8g
ZGV2aWNlcyBmb3VuZCZxdW90OyBhbmQgJnF1b3Q7dWhkX2ZpbmRfZGV2aWNlcyZxdW90OyBzYXlz
DQomcXVvdDtyZWFjaGFibGU6IE5vJnF1b3Q7Ljwvc3Bhbj48YnI+PHNwYW4gc3R5bGU9IiBmb250
LXNpemU6MTBwdDtmb250LWZhbWlseTpzYW5zLXNlcmlmIj48YnI+PGJyPkR1aXhpYW4gTGl1LCBQ
aEQuLCBGZWxsb3cgb2YgSUVFRTxicj5NYXN0ZXIgSW52ZW50b3I8YnI+UmVzZWFyY2ggU3RhZmYg
TWVtYmVyPGJyPldpcmVsZXNzIFN5c3RlbSBEZXNpZ24gJmFtcDsgUGFja2FnaW5nPGJyPklCTSBU
aG9tYXMgSi4gV2F0c29uIFJlc2VhcmNoIENlbnRlcjxicj4xMTAxIEtpdGNoYXdhbiBSZDxicj5Z
b3JrdG93biBIZWlnaHRzLCBOWSAxMDU5ODxicj5UZWw6IDkxNC05NDUtMTI3ODxicj5GYXg6IDkx
NC05NDUtNDIxOTxicj5FbWFpbDogZHVpeGlhbkB1cy5pYm0uY29tPC9zcGFuPjxicj48YnI+PGJy
Pjxicj48c3BhbiBzdHlsZT0iIGZvbnQtc2l6ZTo5cHQ7Y29sb3I6IzVmNWY1Zjtmb250LWZhbWls
eTpzYW5zLXNlcmlmIj5Gcm9tOg0KJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7PC9zcGFuPjxz
cGFuIHN0eWxlPSIgZm9udC1zaXplOjlwdDtmb250LWZhbWlseTpzYW5zLXNlcmlmIj5NYXJjdXMN
CkQgTGVlY2ggJmx0O3BhdGNodm9uYnJhdW5AZ21haWwuY29tJmd0Ozwvc3Bhbj48YnI+PHNwYW4g
c3R5bGU9IiBmb250LXNpemU6OXB0O2NvbG9yOiM1ZjVmNWY7Zm9udC1mYW1pbHk6c2Fucy1zZXJp
ZiI+VG86DQombmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDs8L3NwYW4+PHNwYW4gc3R5bGU9IiBm
b250LXNpemU6OXB0O2ZvbnQtZmFtaWx5OnNhbnMtc2VyaWYiPkR1aXhpYW4NCkxpdSAmbHQ7ZHVp
eGlhbkB1cy5pYm0uY29tJmd0Ozwvc3Bhbj48YnI+PHNwYW4gc3R5bGU9IiBmb250LXNpemU6OXB0
O2NvbG9yOiM1ZjVmNWY7Zm9udC1mYW1pbHk6c2Fucy1zZXJpZiI+Q2M6DQombmJzcDsgJm5ic3A7
ICZuYnNwOyAmbmJzcDs8L3NwYW4+PHNwYW4gc3R5bGU9IiBmb250LXNpemU6OXB0O2ZvbnQtZmFt
aWx5OnNhbnMtc2VyaWYiPkV0dHVzDQpSZXNlYXJjaCBTdXBwb3J0ICZsdDtzdXBwb3J0QGV0dHVz
LmNvbSZndDssIFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9zcGFuPjxicj48c3BhbiBzdHls
ZT0iIGZvbnQtc2l6ZTo5cHQ7Y29sb3I6IzVmNWY1Zjtmb250LWZhbWlseTpzYW5zLXNlcmlmIj5E
YXRlOg0KJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7PC9zcGFuPjxzcGFuIHN0eWxlPSIgZm9u
dC1zaXplOjlwdDtmb250LWZhbWlseTpzYW5zLXNlcmlmIj4wOS8xMi8yMDIwDQowMToxNiBQTTwv
c3Bhbj48YnI+PHNwYW4gc3R5bGU9IiBmb250LXNpemU6OXB0O2NvbG9yOiM1ZjVmNWY7Zm9udC1m
YW1pbHk6c2Fucy1zZXJpZiI+U3ViamVjdDoNCiZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOzwv
c3Bhbj48c3BhbiBzdHlsZT0iIGZvbnQtc2l6ZTo5cHQ7Zm9udC1mYW1pbHk6c2Fucy1zZXJpZiI+
W0VYVEVSTkFMXQ0KUmU6IFtVU1JQLXVzZXJzXSBOMzEwIHN0b3BlZCB3b3JraW5nPC9zcGFuPjxi
cj48aHIgbm9zaGFkZT48YnI+PGJyPjxicj48c3BhbiBzdHlsZT0iIGZvbnQtc2l6ZToxMnB0Ij5Z
b3VyIEV0aGVybmV0IGludGVyZmFjZSBvbiB5b3VyIGhvc3QNCmhhcy4gSSBhZGRyZXNzLiBJIHN1
c3BlY3QgTmV0d29ya01hbmFnZXIgaGFzIHRoYXQgSSBpbnRlcmZhY2UgY29uZmlndXJlZA0KZm9y
IERIQ1AgYW5kIGlzIHRha2luZyBpdCBvdXQgb2Ygc2VydmljZSBhZnRlciByZXBlYXRlZCBESENQ
IHRyYW5zYWN0aW9uDQpmYWlsdXJlcy4gQnV0IHRoZXJlIG1pZ2h0IGJlIHNvbWUgb3RoZXIgcmVh
c29uLiBSZWdhcmRsZXNzIHRoZXJl4oCZcyBubw0KSVAgYWRkcmVzcyBvbiB5b3VyIGhvc3QgaW50
ZXJmYWNlLiA8YnI+PC9zcGFuPjxicj48c3BhbiBzdHlsZT0iIGZvbnQtc2l6ZToxMnB0Ij5TZW50
IGZyb20gbXkgaVBob25lPC9zcGFuPjxicj48YnI+PHNwYW4gc3R5bGU9IiBmb250LXNpemU6MTJw
dCI+T24gU2VwIDEyLCAyMDIwLCBhdCA4OjI3IEFNLCBEdWl4aWFuDQpMaXUgdmlhIFVTUlAtdXNl
cnMgJmx0O3VzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tJmd0OyB3cm90ZTo8YnI+PC9zcGFuPjxi
cj48c3BhbiBzdHlsZT0iIGZvbnQtc2l6ZToxMnB0Ij7vu788L3NwYW4+PHNwYW4gc3R5bGU9IiBm
b250LXNpemU6MTBwdDtmb250LWZhbWlseTpzYW5zLXNlcmlmIj5IaQ0KLDxicj5BZnRlciBtYW55
IG1lYXN1cmVtZW50cywgTjMxMCBzdG9wcGVkIHdvcmtpbmcuIFRoZSBldGhlcm5ldCBjb25uZWN0
aW9uDQppcyBPayAoYXQgbGVhc3QgaXQgaW5kaWNhdGVzIGNvbm5lY3Rpb24gZXN0YWJsaXNoZWQp
LiBCdXQgTjMxMCBpcyBub3QgcmVhY2hhYmxlDQphbnltb3JlLiAmbmJzcDtJIGhhdmUgcmVib290
ZWQgdGhlIGNvbXB1dGVyIGFuZCBOMzEwIHNldmVyYWwgdGltZXMgYW5kDQpkaWQgYWxsIHRoZSBu
ZWNlc3Nhcnkgc3RlcHMgdG8gcnVuIG15IHByb2dyYW1zLCB0aGUgcHJvYmxlbSBpcyBzdGlsbCBu
b3QNCnJlc29sdmVkLiBXaGVuIHBpbmcgdGhlIGRldmljZSwgaXQgc2F5cyAmcXVvdDtOZXR3b3Jr
IGlzIHVucmVhY2hhYmxlJnF1b3Q7Ljwvc3Bhbj48c3BhbiBzdHlsZT0iIGZvbnQtc2l6ZToxMnB0
Ij48YnI+PGJyPjwvc3Bhbj48c3BhbiBzdHlsZT0iIGZvbnQtc2l6ZToxMHB0O2ZvbnQtZmFtaWx5
OnNhbnMtc2VyaWYiPjxicj48YnI+PGJyPkR1aXhpYW4gTGl1LCBQaEQuLCBGZWxsb3cgb2YgSUVF
RTxicj5NYXN0ZXIgSW52ZW50b3I8YnI+UmVzZWFyY2ggU3RhZmYgTWVtYmVyPGJyPldpcmVsZXNz
IFN5c3RlbSBEZXNpZ24gJmFtcDsgUGFja2FnaW5nPGJyPklCTSBUaG9tYXMgSi4gV2F0c29uIFJl
c2VhcmNoIENlbnRlcjxicj4xMTAxIEtpdGNoYXdhbiBSZDxicj5Zb3JrdG93biBIZWlnaHRzLCBO
WSAxMDU5ODxicj5UZWw6IDkxNC05NDUtMTI3ODxicj5GYXg6IDkxNC05NDUtNDIxOTxicj5FbWFp
bDogZHVpeGlhbkB1cy5pYm0uY29tPC9zcGFuPjxicj48YnI+PHNwYW4gc3R5bGU9IiBmb250LXNp
emU6MTJwdCI+Jmx0O0lNR180NTc0LkpQRyZndDs8L3NwYW4+PGJyPjxzcGFuIHN0eWxlPSIgZm9u
dC1zaXplOjEycHQiPiZsdDtJTUdfNDU4MS5KUEcmZ3Q7PC9zcGFuPjxicj48c3BhbiBzdHlsZT0i
IGZvbnQtc2l6ZToxMnB0Ij4mbHQ7SU1HXzQ1ODMuSlBHJmd0Ozwvc3Bhbj48YnI+PHNwYW4gc3R5
bGU9IiBmb250LXNpemU6MTJwdCI+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX188YnI+VVNSUC11c2VycyBtYWlsaW5nIGxpc3Q8YnI+VVNSUC11c2Vyc0BsaXN0
cy5ldHR1cy5jb208L3NwYW4+PHNwYW4gc3R5bGU9IiBmb250LXNpemU6MTJwdDtjb2xvcjpibHVl
Ij48dT48YnI+PC91Pjwvc3Bhbj48YSBocmVmPSJodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxt
YW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20iPjxzcGFuIHN0eWxlPSIgZm9u
dC1zaXplOjEycHQ7Y29sb3I6Ymx1ZSI+PHU+aHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFu
L2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tPC91Pjwvc3Bhbj48L2E+PGJyPjxi
cj48QlI+DQo=

--=_alternative 006E25D1852585E3_=--



--===============5365848189330794690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5365848189330794690==--


