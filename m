Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEF722ABE8
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 11:45:23 +0200 (CEST)
Received: from [::1] (port=59918 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyXmy-0001C0-0A; Thu, 23 Jul 2020 05:45:20 -0400
Received: from mail-db8eur05on2124.outbound.protection.outlook.com
 ([40.107.20.124]:2817 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <demel@ant.uni-bremen.de>)
 id 1jyXmt-00015j-7u
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 05:45:15 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OWGHC7wOyBZ8nUloIDOo1135+lCEyvzgDnAjFM2YxY3fcHZLd04dwPZ3J1KFxGwe0EwEKrH0cZRjg/X52bazbd8tAKGdkEPAM1CZydxth+SGx5e9j07ezDLqw4CegcP4abJMImLzSyW/xVu/A5hHirkgwuUnMSMnLVqNlpYlaQU34ecGWeYjTk4qeVeuWs5hKNxYp5hD0yIVi8nPaPckJN8dpxHDPU5IWA9XK7SNE8zzfm5hmtV/lfgJ1oJS6nm7ierxaLOdoImpPhZoYbACuiZK7YpHR6g5qlBLR/Uz0d3n9LeeKhGWBzw+ck5xqfudzaQaMQX62OvOAAytU0ulWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=auMgmoGsR4vxZbF4xfIFMTzjUV0lgEsdMFNRJRBKfcE=;
 b=LagXi9v8zbM0+B//5ZgtMKZOnrJNlZF1RYdrhZhc4W5c6hye1Ah/NxUsrizKgxfvDZbgUSx7+/P1dZJ7nmVlFkQMgNFrjVgEQQuAA49HWEsi0rX4IB1T0sTPqHEP4qNCAQubtdCzn3YHo/J5yW5VPb9OAca95hyy1epYbpevr0aIr0pCH5EQPbueriIgicZdZ0MAmA6Gk+pXun5kDiE/VsQjILs6R91vWXB+3i92dzn/XacaCBGShVSwec7Ehp994imESMnQ2IknUVpxRsVS5sk0XJh9bseEc3JJkp6obGJiMrfSt/RRoqrLXmxuUOFpHZqYxfmt/vO6BqPsn+m96Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=auMgmoGsR4vxZbF4xfIFMTzjUV0lgEsdMFNRJRBKfcE=;
 b=Nm4ObuuDK6xh/PlW0Co1qWrfoLBqCaE0cjerp9Y7+MeMl9oTQmH+jra6QMHIMq4eVBt1E0SanTHi8rI8zRgpgDwpHnxNWwzivN4Rv0p0XvtUtc2Cx8kevoktMHctHF0CrISeuR91y1V3KOOtIuj1uRHsAIt4r2Jen10yVRsqhj4=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=ant.uni-bremen.de;
Received: from AM6PR0402MB3398.eurprd04.prod.outlook.com (2603:10a6:209:6::15)
 by AM6PR04MB4102.eurprd04.prod.outlook.com (2603:10a6:209:47::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.17; Thu, 23 Jul
 2020 09:44:32 +0000
Received: from AM6PR0402MB3398.eurprd04.prod.outlook.com
 ([fe80::fda2:bcc4:1d9e:3bcf]) by AM6PR0402MB3398.eurprd04.prod.outlook.com
 ([fe80::fda2:bcc4:1d9e:3bcf%3]) with mapi id 15.20.3216.020; Thu, 23 Jul 2020
 09:44:32 +0000
To: usrp-users@lists.ettus.com
References: <f6a7bc0f-a627-bd61-827c-04e2e9cea7b8@ant.uni-bremen.de>
 <5F1870B5.7030805@gmail.com>
 <eb60c58d-9d5f-6968-b424-e003094571fd@ant.uni-bremen.de>
 <acb46f0c-e8a2-c08b-5e75-afcad50e30d2@ettus.com>
Message-ID: <f68cc2a0-d33d-11b9-bf84-0f6492128401@ant.uni-bremen.de>
Date: Thu, 23 Jul 2020 11:44:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <acb46f0c-e8a2-c08b-5e75-afcad50e30d2@ettus.com>
Content-Language: en-US
X-ClientProxiedBy: AM0PR01CA0163.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:aa::32) To AM6PR0402MB3398.eurprd04.prod.outlook.com
 (2603:10a6:209:6::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2003:ca:7f49:f100:d0ec:1497:11f2:4bdb]
 (2003:ca:7f49:f100:d0ec:1497:11f2:4bdb) by
 AM0PR01CA0163.eurprd01.prod.exchangelabs.com (2603:10a6:208:aa::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.21 via Frontend
 Transport; Thu, 23 Jul 2020 09:44:31 +0000
X-Originating-IP: [2003:ca:7f49:f100:d0ec:1497:11f2:4bdb]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b17f57be-e65c-470f-f726-08d82eed0049
X-MS-TrafficTypeDiagnostic: AM6PR04MB4102:
X-Microsoft-Antispam-PRVS: <AM6PR04MB410250EA8BB98D995C77143AA9760@AM6PR04MB4102.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3Kbh45D3cMk4p3Y4Ea6AW814xipXviq5w4b4G8nDhDlPYqHspVP29lfCdply704h08D4WJRjaS/Qr0Vxg+Ee6k2efKfy4lYgXy7WMlDJ/okVBJTK1VKUHUXompgGBio3TyIBwpK/Gbs72jSTSgI03nQywo8rTSBPGblnCipOkWBlANJCQg9o08M4FB7SMy0tTZ8UEjn0WE9dGUIiUHvpoLQoDq4OCrAgNhR398qK61L1fnQVE6hD5fZKkkuVEisT1Ri9Q1v4jVJYppoVRiD2BJl+qH8PKDRN+p9PGUu9I8nf+eRJG6LHiHOeOIWnIiv02q6RVHEByRZizxlIRuPDQCqBIGFM7TNtknFmPcLspdnvMw83/BmCaZEEhX2/tkpGjEZunRfhWFKrsrnc2vYnqKMVD0BvNwTvDWJS1qTdvNPtms+fzQ95nGc5PLyuRF0yHouvAXyLK5pQl2cx0kxK5w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0402MB3398.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39830400003)(366004)(346002)(376002)(396003)(136003)(186003)(52116002)(16526019)(8676002)(86362001)(2616005)(786003)(66946007)(66556008)(8936002)(508600001)(6916009)(31696002)(6486002)(966005)(316002)(66476007)(66574015)(2906002)(53546011)(5660300002)(31686004)(83380400001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: +/9AMhJ9ZDXPmBwDz2fuOmOReizCjp3K8P2PjQw5UzcXyHxQVVPuh92rb9pDcdhgRFjYw73uqzLXU84ajHA7QPuJmuX1KRpq9DxNY0c94jonoFGgwQq75bO/75+Y+kClDWBhakvtDGRe/RPhKaF20yeP63ytKkNITLLyK+jG2XGNXMkIGWPva5GIz3tnta8kltPWi7wy8WMG/DQkN9zHfowKukwop9vt8EFwQmVwBTcoTyA3BfiXJkKXcz+KZloj7P92FZFElvVwljVmy+s0Z/YvyAutGLQBRQVeXjjVgh7Iwr0NF72ynQ4F4Xrfe8J4prGbIECbzzwew21Ds5fYESIZttvHuSVO2Ry1CC0/1DVeUf6L6kQ/GO5XYJ5Wc0FbhT3rcqezBZ5DMqQ4ppNDzDaHEKa/GwZdn5m/O45iqsVkzLkOkRXmTsXyqyED6255xvyJMlk9gkDVGcXmkCP9DxHzeenfUQT9lZSqazwt1CCPq0QZ8CHMzoCOzgHhluAeiXhbrOUPhgykyXimH9zstRSYhCWrR3mcxgP+uO+Ijeg=
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: b17f57be-e65c-470f-f726-08d82eed0049
X-MS-Exchange-CrossTenant-AuthSource: AM6PR0402MB3398.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2020 09:44:32.0988 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: laD0g86gBIrG4WGH5Be7gVfsV1pgomdh2yxJZSSY77uAsX+Lzd+5h0QlRJSJ8Ea8+KdnCqWFTqO7Icd3k4TOZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4102
Subject: Re: [USRP-users] 10us+ sample delay between daughterboards
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
From: Johannes Demel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Johannes Demel <demel@ant.uni-bremen.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
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

SGkgTWFyY3VzLAoKSSB0cmllZCB0byBpbXByb3ZlIHRoZSBzaXR1YXRpb24uIEkgaGFkIGFub3Ro
ZXIgbG9vayBhdCBbMCwxXS4KCiBGcm9tIFsxXSAoTjMxMCBtYW51YWwpCiJbLi5dIHdoaWNoIGNh
biBib3RoIGJlIHVzZWQgYXMgdGltZS0gYW5kIGNsb2NrIHJlZmVyZW5jZXMuIFRoZSBHUFNETyAK
d2lsbCBmdW5jdGlvbiBhcyBhIHJlZmVyZW5jZSBldmVuIHdoZW4gdGhlcmUgaXMgbm8gR1BTIHJl
Y2VwdGlvbi4iCgpUaGlzIGhlbHBzLiBJIHNldApTeW5jOiAiVW5rbm93biBQUFMiCkNsb2NrL1Rp
bWUgc291cmNlOiAiTy9CIEdQU0RPIgphbmQgYWxsIHN0cmVhbXMgYXJlIGluIHN5bmMuIFRoYXQn
cyBzb3J0IG9mIGEgcmVsaWVmIGZvciBOMzEwcy4KClNpbmNlIEkgZG9uJ3QgaGF2ZSBhIEdQUyBz
aWduYWwgaW4gdGhlIGxhYiwgSSBhc3N1bWUgdGhlcmUncyBubyBwb2ludCBpbiAKdHJ5aW5nIHRv
IHJlY2VpdmUgYSBHUFMgdGltZXN0YW1wIGFuZCBzZXQgdGhlIGRldmljZSB0aW1lIG9uIG5leHQg
UFBTIApbMF0uIEkgd291bGQgcHJlZmVyIHRvIHdvcmsgd2l0aCB0aW1lc3RhbXBzICJzaW5jZSBl
cG9jaCIgaW5zdGVhZCBvZiAKInNpbmNlIHN0YXJ0IG9mIGZsb3dncmFwaCIuCgpJIG5lZWQgdG8g
ZmlndXJlIG91dCBob3cgdG8gdXNlIEdQU0RPIG9uIHRob3NlIFgzMTBzIHRob3VnaC4gU2luY2Ug
dGhlIApHUFMgTEVEIGRvZXMgbm90IGxpZ2h0IHVwLCBJIGRvbid0IHRoaW5rIGl0IGRldGVjdHMg
YSBHUFNETyBhdCBhbGwuIEFuZCAKSSBqdXN0IGhvcGUgaXQgY2FuIHVzZSBhIEdQU0RPIGxpa2Ug
YW4gTjMxMC4KClNpbmNlIEkgd29yayByZW1vdGVseSwgSSBjYW4ndCBqdXN0IG1hbnVhbGx5IGdl
bmVyYXRlIGEgc3luYyBwdWxzZS4gQnV0IAppZiBJIGNhbiBmaW5kIGEgZGV2aWNlIHRoYXQgd29y
a3MgcmVsaWFibHkgSSBtYXkgc3dpdGNoIHRvIHRoYXQuIFRoYW5rcyAKZm9yIHRoZSBleHBsYW5h
dGlvbiBhbmQgQVNDSUkgc2NoZW1hdGljLgoKQ2hlZXJzCkpvaGFubmVzCgpbMF0gaHR0cHM6Ly9m
aWxlcy5ldHR1cy5jb20vbWFudWFsL3BhZ2VfZ3BzZG9feDN4MC5odG1sClsxXSBodHRwczovL2Zp
bGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV91c3JwX24zeHguaHRtbCNuM3h4X3N5bmNocm9uaXph
dGlvbgoKT24gMjMuMDcuMjAgMDk6NTksIE1hcmN1cyBNw7xsbGVyIHZpYSBVU1JQLXVzZXJzIHdy
b3RlOgo+IEhpIEpvaGFubmVzLAo+IAo+IGxldCBtZSBpbmNyZWFzIE1hcmN1c25lc3Mgb2YgdGhp
cyBieSB+M2RCLgo+IAo+IE9uIDIzLjA3LjIwIDA5OjI5LCBKb2hhbm5lcyBEZW1lbCB2aWEgVVNS
UC11c2VycyB3cm90ZToKPj4gSSBkb24ndCBoYXZlIGEgUFBTIHNpZ25hbCByZWFkaWx5IGF2YWls
YWJsZS4gV291bGQgYSAxME1IeiByZWZlcmVuY2UKPj4gc3VmZmljZSBhcyB3ZWxsPwo+IAo+IE5v
cGUsIHRoYXQgZG9lc24ndCBzZXQgYSB0aW1lIHJlZ2lzdGVyLiBZb3UgZG9uJ3QgYWN0dWFsbHkg
bmVlZCBhIHB1bHNlCj4gcGVyIHNlY29uZCDigJMgeW91IG5lZWQgYSBzaW5nbGUgcHVsc2UuCj4g
Cj4gSXQncyBhIHRyaWNrIEkgdXN1YWxseSB0ZWxsIHRvIGltcHJlc3MgcGh5c2ljaXN0cyBkb2lu
ZyBtZWFzdXJlbWVudHM6Cj4gCj4gMS4gY2FsbCBzZXRfdGltZV9uZXh0X3Bwcwo+IDIuIGNvbm5l
Y3QgMsOXIDEuNSBWIGJhdHRlcmllcyAob3Igc2ltaWxhcikgdG8gZ2V0IGEgdm9sdGFnZSBiZXR3
ZWVuCj4gc29tZXRoaW5nIGxpa2UgMi41IFYgYW5kIDVWLgo+IDMuICAgICAgICAgICAgIHwKPiAg
ICAgICAgICAgICAgIC0tLS0tCj4gICAgIC0tLS0tLS0tLS1vICAgby0tLS0tLS0tLS0rLS0tLS0t
LS0tLS0tLS0tPiBTTUEgaW5uZXIKPiAgICB8ICAgKyAgICAgICAgICAgICAgICAgICAgIHwKPiAt
LS0tLS0gICAgICAgICBwdXNoLSAgICAgICB8IHwgcHVsbC0KPiAgIC0tLWJhdCAgICAgICAgYnV0
dG9uICAgICAgfFJ8IGRvd24KPiAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgIHwKPiAgICAg
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0+IFNNQSBvdXRlcgo+IAo+
IFRoZSBwdXNoYnV0dG9uIGNhbiBlZmZlY3RpdmVseSBiZSBhbnl0aGluZyB0aGF0IGhhcyBhIG5p
Y2UgcXVpY2sKPiBjb250YWN0aW5nIG1lY2hhbmlzbSB0byB5aWVsZCBhIG5pY2UgZWRnZSwgd2l0
aG91dCByaW5naW5nIGRhbmdlcm91c2x5Cj4gaGlnaC4KPiAKPiAKPj4gRG8gSSBnZXQgcmlkIG9m
IHRoaXMgaXNzdWUgaWYgSSB1c2UgYSBHUFNETz8gV2UgaGF2ZSB0aGUgaGFyZHdhcmUKPj4gKGFu
dGVubmFzICsgbW9kdWxlcykgYXZhaWxhYmxlIGJ1dCBubyBHUFMgc2lnbmFsIGluIG91ciBsYWIu
Cj4gCj4gSG1tbW0gSSdkIGhhdmUgdG8gdGhpbmsgaGFyZCBoZXJlOiB0aGUgR1BTRE8gZG9lcyBv
ZmZlciAxMCBNSHogZnJvbSBpdHMKPiBpbnRlcm5hbCBvc2NpbGxhdG9yIHdoZW4gaXQncyBub3Qg
bG9ja2VkLCBidXQgSSB0aGluayB0aGUgUFBTIGlzIHJlYWxseQo+IG9ubHkgcHJlc2VudCB3aXRo
IEdQUyB0aW1lCj4gCj4+IEJlc2lkZXMsIEkgd2FzIHJlYWxseSBob3BpbmcgdGhhdCBvbmUgVVNS
UCB3b3VsZCBzeW5jIGl0c2VsZi4KPiAKPiBTb3VuZHMgZmFpcjsgdGhlcmUncyBhbiBpbnRlcm5h
bCBQUFMgcHVsc2UsIEkndmUgbmV2ZXIgdHJpZWQgaXQuIEhhdmUKPiB5b3UgdHJpZWQgc2V0dGlu
ZyB0aGUgcHBzIHNvdXJjZSB0byAiaW50ZXJuYWwiIGFuZCB0aGVuIHNldHRpbmcgb24gUFBTPwo+
IAo+IENoZWVycywKPiBNYXJjdXMgdGhlIHlvdW5nZXIKPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4g
VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxt
YW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPiAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1h
bi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
