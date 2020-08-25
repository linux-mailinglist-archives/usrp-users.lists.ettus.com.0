Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EA2251875
	for <lists+usrp-users@lfdr.de>; Tue, 25 Aug 2020 14:21:37 +0200 (CEST)
Received: from [::1] (port=36692 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAXxE-0007Xl-Ai; Tue, 25 Aug 2020 08:21:32 -0400
Received: from kda-chqmg-04.kongsberg.com ([193.71.180.8]:39458)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Andreas.Bertheussen@kongsberg.com>)
 id 1kAXxA-0007SS-4k
 for usrp-users@lists.ettus.com; Tue, 25 Aug 2020 08:21:28 -0400
Received: from pps.filterd (kda-chqmg-04.kongsberg.com [127.0.0.1])
 by kda-chqmg-04.kongsberg.com (8.16.0.42/8.16.0.42) with SMTP id
 07PCKjt8002407; Tue, 25 Aug 2020 14:20:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kongsberg.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=KDA1;
 bh=79/dq5zxi9/IgwHfmiuSi8kLoprg4FG694NcVc1o15w=;
 b=Q3XLgh9iTOwPQIjwgZ2aLApF9M07yTvpqlQUR+ZBZgtZdwIiedDS11UjZtXnYZKt/hu+
 kvdYnSkU+03K+fJtPQcxvTA7j7cB9aP8yFIkoHK/o92iVcXbYZ5nbqy8x/oPrSetys5h
 +SBfeQUGRIGQynhrH/eMrSNZ53ofq573EACYdK2ShJ2AujCrOLM2SOwipRWRPtw2P0PS
 IQnOS/LWqovHdR7oICNZB4rTX/7wjo+Nz7GbdANAZ7G/qtcaBknsdtpWgLCBzFIh85IY
 ToS21hb+8ubLqxjuzy59O+7SHDx/JqETv2nAUp7pMWoRqxNWT2N2LV9EAiSCzJ1/buQw VA== 
Received: from ukgw-exck2-p01.kda.kongsberg.com ([10.50.100.41])
 by kda-chqmg-04.kongsberg.com with ESMTP id 332se58gqw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=NOT);
 Tue, 25 Aug 2020 14:20:45 +0200
Received: from Ukgw-ExcK2-p01.kda.kongsberg.com (10.50.100.41) by
 Ukgw-ExcK2-p01.kda.kongsberg.com (10.50.100.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2044.4; Tue, 25 Aug 2020 14:20:45 +0200
Received: from Ukgw-ExcK2-p01.kda.kongsberg.com ([fe80::3098:b04:69aa:1c60])
 by Ukgw-ExcK2-p01.kda.kongsberg.com ([fe80::3098:b04:69aa:1c60%21]) with mapi
 id 15.01.2044.004; Tue, 25 Aug 2020 14:20:45 +0200
To: <rkossler@nd.edu>
CC: <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Issues with multi-usrp and UHD
Thread-Index: AdZ21mx1YVSRD/KTRva7GPuE0XgSxAADYcaAAAbWWUD///NHAP/+uPLQgALhvAD//8kPAIAFB+qAgAAOegD//rrsIA==
Date: Tue, 25 Aug 2020 12:20:45 +0000
Message-ID: <7f7405916dd74d6893d0ce89e7703a92@kongsberg.com>
References: <7d8c7731d23c412490a27750fac617a9@kongsberg.com>
 <CAB__hTR_n5zEHbSNSADeV+euNu5m-Chb7agX5D+RhZo5LOK00Q@mail.gmail.com>
 <a836f011bfdb46fb9403baafa0060800@kongsberg.com>
 <CAB__hTRbkX2HVfC5zVK7p17W9Q1keFoGMO7K9xC3GfaLVUjWFg@mail.gmail.com>
 <6ced606fafac42f28485978c0a087227@kongsberg.com>
 <CAB__hTQ4yy8Mrbgn4tn1hJj8GmeY4W5hi1sMSbuMhp3cAFELfg@mail.gmail.com>
 <1b04cfb3f883498198f57a793d8c55e7@kongsberg.com>
 <CAB__hTTVvDbo-A5oS3i85y=BdjYVD=Dj9DEHNLk-myhLedxJkg@mail.gmail.com>
 <CAB__hTREsrpeC7tqqTMUkAGbfqePU48maQsSRiCSCRyAqkOVRQ@mail.gmail.com>
In-Reply-To: <CAB__hTREsrpeC7tqqTMUkAGbfqePU48maQsSRiCSCRyAqkOVRQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.73.0.10]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-08-25_03:2020-08-25,
 2020-08-25 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 priorityscore=1501 adultscore=0
 phishscore=0 clxscore=1015 impostorscore=0 malwarescore=0 mlxlogscore=882
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008250094
Subject: Re: [USRP-users] Issues with multi-usrp and UHD
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
From: Andreas B via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andreas.Bertheussen@kongsberg.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
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

Um9iDQoNCkkgcmFuIGJlbmNobWFya19yYXRlIC0tYXJncz09ImFkZHIwPTE5Mi4xNjguMTAuMixh
ZGRyMT0xOTIuMTY4LjExMC4yIiAtLXR4X3JhdGUgNWU2IC0tdHhfY2hhbm5lbHM9IjAsMiINCkFu
ZCBJIG9ic2VydmVkIHRoZSBzYW1lIGlzc3VlIEkgZGVzY3JpYmVkIGVhcmxpZXIg4oCTIG1vc3Rs
eSB0aGF0IGV0aGVyIGNoYW5uZWxzIDAsMSAgIG9yIGNoYW5uZWxzICAyLDMsIG9yIHZlcnkgcmFy
ZWx5IGNoYW5uZWxzIDAsMiBnZXQgZW5hYmxlZC4NCldoZW4gSSBhZGQg4oCcc2tpcF9kcmFtPTHi
gJ0gdG8gYXJncywgdGhlIGNoYW5uZWwgbWFwcGluZyBpcyBjb3JyZWN0ISBJdCBpcyBwcm9uZSB0
byB1bmRlcnJ1bnMgYnV0IG5vdyBJIGNhbiBwcm9jZWVkIGEgYml0IGZ1cnRoZXIgd2l0aCBteSBV
SEQgc29mdHdhcmUuDQoNCkhvdyBkaWQgeW91IG1ha2UgdGhlIHRyYWNlIGxvZz8gQW5kIGRpZCB5
b3UgZG8gaXQgdG8gbXkgcHJvZ3JhbSBvciB0byB0aGUgYmVuY2htYXJrX3JhdGUgcHJvZ3JhbT8N
Cg0KSXQgaXMgZGVmaW5pdGVseSBhIHNldmVyZSBpc3N1ZSBJIHdvdWxkIGV4cGVjdCB0byBiZSBm
aXhlZCwgc28gSSB3aWxsIHJlcG9ydCBpdC4gSXMgY3JlYXRpbmcgYSBHaXRodWIgaXNzdWUgdGhl
IHByb3BlciBhdmVudWU/DQoNCk1hbnkgdGhhbmtzIGZvciBoZWxwaW5nIHRyYWNrIHRoaXMgZG93
biwgUm9iIQ0KDQpSZWdhcmRzLA0KQW5kcmVhcy4NCg0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0KDQpDT05GSURFTlRJQUxJVFkNClRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0YWNo
bWVudCBjb250YWluIEtPTkdTQkVSRyBpbmZvcm1hdGlvbiB3aGljaCBtYXkgYmUgcHJvcHJpZXRh
cnksIGNvbmZpZGVudGlhbCBvciBzdWJqZWN0IHRvIGV4cG9ydCByZWd1bGF0aW9ucywgYW5kIGlz
IG9ubHkgbWVhbnQgZm9yIHRoZSBpbnRlbmRlZCByZWNpcGllbnQocykuIEFueSBkaXNjbG9zdXJl
LCBjb3B5aW5nLCBkaXN0cmlidXRpb24gb3IgdXNlIGlzIHByb2hpYml0ZWQsIGlmIG5vdCBvdGhl
cndpc2UgZXhwbGljaXRseSBhZ3JlZWQgd2l0aCBLT05HU0JFUkcuIElmIHJlY2VpdmVkIGluIGVy
cm9yLCBwbGVhc2UgZGVsZXRlIGl0IGltbWVkaWF0ZWx5IGZyb20geW91ciBzeXN0ZW0gYW5kIG5v
dGlmeSB0aGUgc2VuZGVyIHByb3Blcmx5Lg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAt
dXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
