Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9279922A9AD
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 09:30:21 +0200 (CEST)
Received: from [::1] (port=59182 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyVgG-0004a3-US; Thu, 23 Jul 2020 03:30:16 -0400
Received: from mail-eopbgr70139.outbound.protection.outlook.com
 ([40.107.7.139]:47089 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <demel@ant.uni-bremen.de>)
 id 1jyVgC-0004UY-HV
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 03:30:12 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XsVc0+654UDprigpa6Pl5C1BghZZpiNtNO5kkHc5kBzNgPZberc/5fvnZx5KgUgTfvygx96fY8kVjz3Oeui1jM9odKMHVp6jTMXFuzQ+VV3zELmPMZAICUyqKrlNxALgG3Z+iKhFbMbL1iRs10QhG7ICsOTKH3Y4IQJ//dwZ2yK1+zNnkOhbgxnWkifJwy4/BHFPcbr8MvBsye3z6eUZOiJm9jZB+WP3KcVRe3pO87LUQZN0SWO/rxtLXC6qmFyoUC0D5SCQz6xKSTTJVBhmWWgjiXBYaZCk4MPpx3TS8RooZLpLgO4qAkm3aCi0FaOuvIMv/UupZeQ5kKll6sjucA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ta1/K46Qk0cRstPQPnPvHEbC/XxPEUiovfS0FrnIm1g=;
 b=MhE43/T1MRUl262FchHHW/9iEmt44dY6ruBTzie4ed79R0UncFSxB5ZFhIKhKe63CGHjdsqOO3j5a0Hs0AvGVofRNAXelpkKK6uSpD4phedo/wT27IBPgFk51I00WILlCApngtJmVYg3kntUcIqTKLHIziqdAW+bLQF9pvsw6RSgGVjbt9tG0BCcZ5DQVr/31eHN6N39Jul1FFZUkbeLy5A5ZsNcp3+OpV5abxTErslKZABgKo7Es4oBHie2IYuUO1ClWw28MxLqn5rFlZ5EqMWGopY0yxeEOcruGNcfACktH5xVxnH6yHGrjabwXaZMaooJ5GT+MZXeWNkj0iRmIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ta1/K46Qk0cRstPQPnPvHEbC/XxPEUiovfS0FrnIm1g=;
 b=KAIG+zHr/Hv67Nxd4ClMzkHPRSlwSbewEX6nDm9dK3NcLdYPepY9mmpF02iQX5EfWHTIZmGIBKQ3W0nQsIxMftyPRsLfX8wPX9LOSfGaf5oTDTz5OJjss/vgrph/z5fYsBFduSO3Rl0MtcapiafrDYuwF0Ijyym8gmPIpXGNrZg=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=ant.uni-bremen.de;
Received: from AM6PR0402MB3398.eurprd04.prod.outlook.com (2603:10a6:209:6::15)
 by AM6PR04MB4935.eurprd04.prod.outlook.com (2603:10a6:20b:7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.25; Thu, 23 Jul
 2020 07:29:29 +0000
Received: from AM6PR0402MB3398.eurprd04.prod.outlook.com
 ([fe80::fda2:bcc4:1d9e:3bcf]) by AM6PR0402MB3398.eurprd04.prod.outlook.com
 ([fe80::fda2:bcc4:1d9e:3bcf%3]) with mapi id 15.20.3216.020; Thu, 23 Jul 2020
 07:29:29 +0000
To: usrp-users@lists.ettus.com
References: <f6a7bc0f-a627-bd61-827c-04e2e9cea7b8@ant.uni-bremen.de>
 <5F1870B5.7030805@gmail.com>
Message-ID: <eb60c58d-9d5f-6968-b424-e003094571fd@ant.uni-bremen.de>
Date: Thu, 23 Jul 2020 09:29:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <5F1870B5.7030805@gmail.com>
Content-Language: en-US
X-ClientProxiedBy: FR2P281CA0020.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::7) To AM6PR0402MB3398.eurprd04.prod.outlook.com
 (2603:10a6:209:6::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2003:ca:7f49:f100:d0ec:1497:11f2:4bdb]
 (2003:ca:7f49:f100:d0ec:1497:11f2:4bdb) by
 FR2P281CA0020.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:14::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3216.17 via Frontend Transport; Thu, 23 Jul 2020 07:29:28 +0000
X-Originating-IP: [2003:ca:7f49:f100:d0ec:1497:11f2:4bdb]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e61c63dc-bbc8-4199-d431-08d82eda2278
X-MS-TrafficTypeDiagnostic: AM6PR04MB4935:
X-Microsoft-Antispam-PRVS: <AM6PR04MB493581CE1DCC606AD6E6B662A9760@AM6PR04MB4935.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 380kBo/5Rg8wWyc5Kp80QpnV9ot6MhG+y8RF0dUnGmE0dOciSi5jXLCVDiOzUzHfovRO/M4DGVqJ6lhiNzbca4n28dc2ubOcPa0Mgq/2O/f3fA0nhOBxoLFK1wWarNSQQ6Wn75aOer71TOmJeVelv67OPkA/6PeHmKJ19Ngppz/VBLRoYqY/bUv9djAxvwo6R0GY2kor61RFQa8R6fh1vk6urxsSd0nEs2I5eCdE6QNGnMaHiN0YuTCEjlmIetY8un9KIUIpc4VI3au6nwx5byW8vX6GObBsP42hl3EiASxMWzFqOaHk9l9PMm+TWa53RmSzKWIxgX0e4geD8lllHmIKz240Hg2YlaZhpw5EEFcd3CLEjrYa9KcHsHhNP7Uzg9O1JWCXM66wHeUos8p+hlXhLp3l155/EOyffEDlQZGuykLX+oDetnkQe/MiXl+Jr/dAduC99EK3qUtIUcGUCA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0402MB3398.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(376002)(366004)(396003)(39830400003)(346002)(52116002)(31686004)(316002)(786003)(186003)(16526019)(508600001)(6486002)(2616005)(8676002)(53546011)(966005)(31696002)(6916009)(8936002)(2906002)(83380400001)(5660300002)(66556008)(66946007)(66476007)(86362001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: 2/yZKxWfwnqkaprhDamQKGF2CYpUnhhwtK5qn5I3ymD5YsiXV1ZTSKzU4upOTDKHWqOc/New+lrc9RyXY4wG2A7Ku3N4TxbxCiFRZBiCOgpa5X3XMusSHTj4Gx38yzoveo1WmvqODDvmGI/Nlu6eLDZoCImOpmQpYigdFourmf3knHzv9bhmoBB/VS7DjlZFrTqDmRIBdQYh+MHKeEvupO/v7GMFtm8qc5bbuhL8Cdh6AJyZr2pmXi0l7c8gizQiMSHDtkiLdQSpVr1ho1EMw5WzGpL1XxdLONuXuTl7pYY+nrgwzFCc1lpSUK3H8Ani4DBdEpxdx9M4pdUfwMY7s1Mz62Ecd9cM1dpH+XNgRhJFwSJ30Y4kO+VfDVr8hJTrg3RNFRnlGaBfwTLvsSvCp/YvWR3IUk/gh0bhI71zv92dhMFBoBZjHbxtw2F4u+R10KleptNS5q+78trJ1zuRd2g3J4AevIizahPI7Gt69/fX4DaJLsJ4wRxRuWOJpbN1T2w+OYoqc1rhbrFyUM3G957OngGMvQW2XaRxy3sBB1o=
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: e61c63dc-bbc8-4199-d431-08d82eda2278
X-MS-Exchange-CrossTenant-AuthSource: AM6PR0402MB3398.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2020 07:29:29.0466 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1iqG896lmFcLuJJlxUWlCY1DwCnwW94eP9s4Tb9HTSNcGTdrnsHvN45dRdyb8xzOVQI7lM2fJwvRcbZdo7D/tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4935
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

SGkgTWFyY3VzLAoKdGhhbmtzIGZvciB5b3VyIHByb21wdCBhbnN3ZXIuCgpJIGRvbid0IGhhdmUg
YSBQUFMgc2lnbmFsIHJlYWRpbHkgYXZhaWxhYmxlLiBXb3VsZCBhIDEwTUh6IHJlZmVyZW5jZSAK
c3VmZmljZSBhcyB3ZWxsPwoKRG8gSSBnZXQgcmlkIG9mIHRoaXMgaXNzdWUgaWYgSSB1c2UgYSBH
UFNETz8gV2UgaGF2ZSB0aGUgaGFyZHdhcmUgCihhbnRlbm5hcyArIG1vZHVsZXMpIGF2YWlsYWJs
ZSBidXQgbm8gR1BTIHNpZ25hbCBpbiBvdXIgbGFiLgoKQmVzaWRlcywgSSB3YXMgcmVhbGx5IGhv
cGluZyB0aGF0IG9uZSBVU1JQIHdvdWxkIHN5bmMgaXRzZWxmLgoKQSBub3RlIG9uIGRvY3VtZW50
YXRpb246IEFsbCB0aGUgaW5mbyBldGMuIEkgY291bGQgZmluZCBpbiBvbGQgbWFpbGluZyAKbGlz
dCBwb3N0cyBhbmQgRXR0dXNLQiBhbHdheXMgcmVmZXIgdG8gbXVsdGlwbGUgVVNSUHMgYnV0IG5l
dmVyIG1lbnRpb24gCm11bHRpcGxlIGRhdWdodGVyYm9hcmRzIG9uIG9uZSBVU1JQLiBJdCB3b3Vs
ZCBiZSByZWFsbHkgaGVscGZ1bCB0byBhZGQgYSAKbW9yZSBwcm9taW5lbnQgbm90ZSB0aGVyZS4K
CkNoZWVycwpKb2hhbm5lcwoKT24gMjIuMDcuMjAgMTk6MDAsIE1hcmN1cyBELiBMZWVjaCB2aWEg
VVNSUC11c2VycyB3cm90ZToKPiBPbiAwNy8yMi8yMDIwIDEyOjM5IFBNLCBKb2hhbm5lcyBEZW1l
bCB2aWEgVVNSUC11c2VycyB3cm90ZToKPj4gSGkgYWxsLAo+Pgo+PiBJIGhhdmUgYW4gaXNzdWUg
d2l0aCBtdWx0aXBsZSBVU1JQIHN0cmVhbXMuIElmIHRoZXkgYXJlIG9uIHNlcGFyYXRlIAo+PiBk
YXVnaHRlcmJvYXJkcywgYnV0IG9uIHRoZSBzYW1lIG1vdGhlcmJvYXJkIGFrYSBVU1JQLCB0aG9z
ZSBzdHJlYW1zIAo+PiBhcmUgbm90IHRpbWUgYWxpZ25lZC4gVGhleSBzaG93IGEgdGltZSBvZmZz
ZXQgb2YgbW9yZSB0aGFuIDEwdXMuIEkgdXNlIAo+PiBvbmUgVVNSUCBzb3VyY2UgYmxvY2sgaW4g
R05VIFJhZGlvIGFuZCBjb25maWd1cmUgaXQgd2l0aCBtdWx0aXBsZSAKPj4gc3RyZWFtcy4KPj4K
Pj4gQXQgZmlyc3QsIEkgb2JzZXJ2ZWQgdGhpcyBiZWhhdmlvciB3aXRoIE4zMTBzIGJ1dCBub3cg
SSBzZWUgaXQgb24gYW4gCj4+IFgzMTAgYXMgd2VsbC4gSSB1c2UgYSBHTlUgUmFkaW8gZmxvd2dy
YXBoIHdoZXJlIEkgc2V0IHRoZSBjbG9jayB0byAiUEMgCj4+IGNsb2NrIi4gSSdkIGV4cGVjdCBh
bGwgc3RyZWFtcyB0byBiZSBpbiBzeW5jIGJlY2F1c2UgdGhleSBhcmUgaGFuZGxlZCAKPj4gYnkg
dGhlIHNhbWUgb2JqZWN0LiBBdCBsZWFzdCB0aGF0J3Mgd2hhdCBJIGhvcGUuCj4+IE9uIGFuIFgz
MTAgSSBoYXZlIDIgUlggc3RyZWFtcyB0aGF0IG9ic2VydmUgYSBzaWduYWwgZnJvbSBhY3Jvc3Mg
dGhlIAo+PiByb29tLiBPbiBhbiBOMzEwLCBJIHRyaWVkIGRpZmZlcmVudCBjb25maWd1cmF0aW9u
cyBhbmQgSSBjb3VsZCBvYnNlcnZlIAo+PiB0aGlzIGRlbGF5IGJldHdlZW4gZGF1Z2h0ZXJib2Fy
ZHMuIFRoZXkgYXJlIGluIHN5bmMgZm9yIG9uZSAKPj4gZGF1Z2h0ZXJib2FyZC4KPj4KPj4gTXkg
Zmxvd2dyYXBoIGhhbmRsZXMgZnJlcXVlbmN5IG9mZnNldHMgZXRjLiBCdXQgY29uc3RhbnQgdGlt
ZSBvZmZzZXRzIAo+PiBiZXR3ZWVuIFJYIHN0cmVhbXMgYXJlIHByb2JsZW1hdGljLiBBbmQgSSBz
dXBwb3NlIHRoZXkgc2hvdWxkIG5vdCBiZSAKPj4gdGhlcmUuCj4+Cj4+IEknZCBsaWtlIHRvIHVz
ZSBHUFNET3MgYXQgc29tZSBwb2ludCBidXQgSSBkb24ndCBoYXZlIGEgR1BTIHNpZ25hbCBpbiAK
Pj4gdGhlIGxhYi4gQW5kIEkgZG9uJ3QgaGF2ZSBhbiBvY3RvY2xvY2sgb3Igc210aCBzaW1pbGFy
LiBCdXQgYWxsIG9mIAo+PiB0aGlzIHNob3VsZG4ndCBtYXR0ZXIgc2luY2UgSSBvbmx5IHVzZSBv
biBVU1JQIGZvciBSWC4gT3IgYW0gSSBtaXNzaW5nIAo+PiBzbXRoPwo+Pgo+PiBVU1JQOiBOMzEw
L1gzMTAod2l0aCAyeCBVQlgxNjApCj4+IFVIRDogMy4xNUxUUwo+PiBPUzogVWJ1bnR1IDIwLjA0
Cj4+IEdOVSBSYWRpbyAzLjkgKGFrYSBtYXN0ZXIpCj4+Cj4+IENoZWVycwo+PiBKb2hhbm5lcwo+
Pgo+IEhlcmUncyBzb21ldGhpbmcgeW91IG5lZWQgdG8ga25vdyBhYm91dCB0aGUgdGltZS1rZWVw
aW5nIGFyY2hpdGVjdHVyZSBpbiAKPiBib3RoIFgzMTAgYW5kIE4zMTAuwqAgVGhlcmUgYXJlLCBl
ZmZlY3RpdmVseSBUV08gdGltZS1rZWVwaW5nCj4gIMKgIHJlZ2lzdGVycy4KPiAKPiBXaGVuIHlv
dSB1c2UgIlN5bmMgdG8gUEMiLCB0aG9zZSByZWdpc3RlcnMgZWFjaCBnZXQgdXBkYXRlZCBhcyBh
IAo+ICpzZXBhcmF0ZSogb3BlcmF0aW9uIGFjcm9zcyB0aGUgd2lyZSwgc28gdGhlcmUgY2FuIGJl
IChhcyB5b3Ugb2JzZXJ2ZSkgYQo+ICDCoCBzZXZlcmFsLW1pY3Jvc2Vjb25kIGluY29uc2lzdGVu
Y3kgYmV0d2VlbiB0aGVtLgo+IAo+IFRoZSB3aG9sZSB0aGluZyBhYm91dCB0aGUgMVBQUyBwdWxz
ZSB3aGVuIGRvaW5nIHRpbWUtc2V0dGluZyBpcyB0aGF0IG5vIAo+IG1hdHRlciBob3cgbWFueSB0
aW1la2VlcGVyIHJlZ2lzdGVycyB0aGVyZSBhcmUsIHRoZXkgYWxsIGdldAo+ICDCoCBzZXQgYXQg
dGhlIHNhbWUgaW5zdGFudCwgZHVlIHRvIHRoZSAxUFBTIHB1bHNlIHByb2Nlc3NpbmcuCj4gCj4g
Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0
cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0
dXMuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8v
bGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5j
b20K
