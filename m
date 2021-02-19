Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B22731F660
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 10:15:35 +0100 (CET)
Received: from [::1] (port=52268 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lD1sq-0006EW-8h; Fri, 19 Feb 2021 04:15:32 -0500
Received: from mail-eopbgr50125.outbound.protection.outlook.com
 ([40.107.5.125]:56324 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <demel@ant.uni-bremen.de>)
 id 1lD1sl-00068n-Vd
 for USRP-users@lists.ettus.com; Fri, 19 Feb 2021 04:15:28 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E7jS8FBdcg32wDsM2T6bI7W0EB1xrsicbAnRLmLnxLuyiWXki8hoihlP5K2mZcf3Wa/VktPRIkHsuvYwqAw1yilpLqOodQHJ32CJ8NH4/1Sv7oY2uK8x3rI7F1OSFMem4jU6iXIMwhl4a3lzRlt/63GhV30BU2eOQjUKrFyjFq+RqgbZvSETo6f8oIzeQ1asnAuKL6T4pehS2k75r1oOPw2/P9f8Qcn10RM5O+SnWvXYzkQbqukczapZmN1KHzQCSbuMo9/ZlsiKug9c4gTsxz7t+Y/rQoizN4dsDaCOn7k8zMsltf9opjHzIRC1BDLPofNtjd82TDS+ugT20jbchQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xXfm3pMctrEgL0+PY+x0r2N9N1dNRkBrzApuil11Pqs=;
 b=ciSclKA47oI2objxHWwXafiyYNtaXjMDa3K/q+nX2mZxT+oY5kZHy+rE+n0z/0mVZtritBsFQeAIrVPuvgsBda5XVESi9wV2dKY05uUTy47HleyT5WyWBR8e6WvTjkEajLU6bnSoTKFFh3QpoegZILVTIBZuhi2H0WOiAg3FJ/oqZEAX5Byr0PmAQYUHr+5lv8ZrKsUH+Xh9bYqx1TQCA8xpOM0ljiJUYU2QMdStL/+zpePwkDjpI4x8plNID/t1Fs0IicXNFsL7J23LmhjtXMDjHG6VSe6ilzHmGyb1cGC9Pk2VkEgxbiIRHwhJRfMCQimTitWUd60Ja4cNdQKrDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xXfm3pMctrEgL0+PY+x0r2N9N1dNRkBrzApuil11Pqs=;
 b=1kdpWP/5gd2Uc9+akmm14U/2k7od00j6Ou5XCTuMTnL/tpdqrQ7Der3DhGUZD2CjS8F+pjkZnL5qXdhxiDMmRi+atRuUxnhZas+g2XtnU1bXFdaAT+cUHoDTckE05QiZtDXrLybklZp62Q/bHaeoHg5Mq0kUgwDj918Zp29SubI=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=ant.uni-bremen.de;
Received: from AM0PR04MB6673.eurprd04.prod.outlook.com (2603:10a6:208:16a::29)
 by AM0PR04MB4386.eurprd04.prod.outlook.com (2603:10a6:208:7b::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.31; Fri, 19 Feb
 2021 09:14:42 +0000
Received: from AM0PR04MB6673.eurprd04.prod.outlook.com
 ([fe80::8812:c180:6bd5:464f]) by AM0PR04MB6673.eurprd04.prod.outlook.com
 ([fe80::8812:c180:6bd5:464f%7]) with mapi id 15.20.3868.029; Fri, 19 Feb 2021
 09:14:42 +0000
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
References: <9bb07e02-0567-9d12-299d-26daf430015d@ant.uni-bremen.de>
 <5B9A3BD5-2235-434A-B205-4D62F543B9A3@gmail.com>
Message-ID: <b56049a5-917f-6a54-a03b-fd90347c55c8@ant.uni-bremen.de>
Date: Fri, 19 Feb 2021 10:14:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <5B9A3BD5-2235-434A-B205-4D62F543B9A3@gmail.com>
Content-Language: en-US
X-Originating-IP: [2003:ca:7f16:f00:fcb1:6f2d:7df5:b0b4]
X-ClientProxiedBy: AM0PR02CA0035.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::48) To AM0PR04MB6673.eurprd04.prod.outlook.com
 (2603:10a6:208:16a::29)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2003:ca:7f16:f00:fcb1:6f2d:7df5:b0b4]
 (2003:ca:7f16:f00:fcb1:6f2d:7df5:b0b4) by
 AM0PR02CA0035.eurprd02.prod.outlook.com (2603:10a6:208:3e::48) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.27 via Frontend Transport; Fri, 19 Feb 2021 09:14:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 865433e1-d277-4575-39b0-08d8d4b6ca5e
X-MS-TrafficTypeDiagnostic: AM0PR04MB4386:
X-Microsoft-Antispam-PRVS: <AM0PR04MB43869B587C1A1E859627B6A1A9849@AM0PR04MB4386.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mwP8RnTpEogyfrAPql0JEdh5ad2tg1nzFGdsUN+Wpiju+xDNmt/VnW5gIWPitwb8CQNB7PItRWxYe4maL6Rs+i3F+AGrjxKJ7HD3P/xgRSlKBd45OVHceuotpfLBmcWIRJqG92Cylwpr8ji3NMJvsIXbn/aznKY8nuBTaSHLYHclliq1Et7af21pW6d2Z2cmDJiMu0lbXoa99BeWxzGC4xzLGM9GAHmX+Wy4n7RxV0C2Vby8vHr6DBiB/7No0qn3INJCMs2UhwFGjRckux6bYGMwmjYIGcWucMWZgxSeILlV+R2zGoVjiHissu0gqZBFYWhx3g5c77XBlztF4mTT65mePiZ5GcA3ihgF30jW60HlXCJU551e/STf5Iwd8y7MR2WM8kIY4H3ZcPOxvDZbejt3p4e7kO4CKbmfDTuLbzN2sFKEsmnupAlWSXdtMC9eLTCOt/ZvCoDMjBpSnj57MJVJfmPCSslrUGLVdC0sqYU689xAp23fsZiDIjlHGyVDIF8fAjq+cDxW0qimPi4mYL7pocPb/UVbN6FDhTdPWtNcopfJpwvmb/TH5ZdyMP6849Vt1Ozw6Dy9anQ46udwOJ8DCtgbgGEOUghY4ddK9q6zYdm2QavWjpqV3tckKVl9mI2RKESIskNW420O9fC9aUA+Y3yjXSSrh5q9U5tcLjA0AV8FS1MsK+l+15Pax5hX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6673.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(346002)(39830400003)(136003)(396003)(6916009)(53546011)(2616005)(4326008)(2906002)(786003)(66946007)(66556008)(8936002)(66476007)(6486002)(31686004)(5660300002)(52116002)(86362001)(316002)(8676002)(83380400001)(478600001)(31696002)(966005)(16526019)(186003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?Y0Z1MHBKTTA1dEdZZmk2bktSTUwxdFVIWUNtaTJ6eXNDdjY0YVYvRUEvQ0ZP?=
 =?utf-8?B?WWZZYXIxaUxRTTZxQUFISllVK2ZSYVFpZ29tUTRTck15eTVxOGt3STRhTU5R?=
 =?utf-8?B?TnkxUSttemlvU21zbkJjN3NwMDFIdDVHbEVGZm12QTVKZ09sSkZCZHBRY1ZW?=
 =?utf-8?B?K1ZiWkpZUklscWdJZ0t4NC9JRGoxWWlKUjRyaVlxMS9LSlRNUzM0VmRXbS9P?=
 =?utf-8?B?ZERJM0VRdDBpdjRDSnpUQnVpblVmRHNRcEQxSThGVTFEWmNycENabHRUTDVi?=
 =?utf-8?B?b21DOEwzYjhPYUdMUDlLMEExNzZ1QzM3MXdvL3NKc2p1SXhjRVFWajROZmVj?=
 =?utf-8?B?Vy80Y3FUU25OVTBsK1h4UmJOaThmaEtxZ3pRVTIvdVN0cnpmYlhzTlRFUnFV?=
 =?utf-8?B?NzlPVE5zVWNzTGpIZ3RhcDVPQTRPVkowc09nUWMwNDhQNUxJd0tzTXRDYS8y?=
 =?utf-8?B?WDNYYjFGY29IeTFmTkdJQ3NNZnF1NnRDZVpWT2Z2aC9UQ1N1V0RQMmhOZEhO?=
 =?utf-8?B?SG1lcjM3VGxnVDlFQXppTlBQcFRxZ2ZuUjNvd1lIU0UxVjhLUnpBQzBGbi82?=
 =?utf-8?B?S243WHpQZko1N1IrUUJjR3Q1U0NrQ3JiK0s3d1F2bnV1ZHBOdlFZVENVYm5D?=
 =?utf-8?B?T1VpSVdwWE4wOU1nLzRCWnBJdDMyaTN5QW42cjBwUmhOd0FnYTZWM24xa3pZ?=
 =?utf-8?B?b01nSWZ0TzVEUzA0TW1hKzA4Qm5KaUJVRlFRREhyL1B2TDcvNGpHUUR0aDZs?=
 =?utf-8?B?MjNqMFdCQUNJYVlyeWUyaitHTFNHYTRHUDlHMUY5TVBKR0x3NUtnemo2RUxs?=
 =?utf-8?B?YVErL3N2YW5vbEJwZXpUUjZ3b2lHM1RRTExNTlFnRng2dWNlbnFzRmk5b1JX?=
 =?utf-8?B?dGxsb2RpQVpJY2tHZ0I3dFhZNlpBNHJEMnU1ckF5SVVIemNieUNRZmpETEhD?=
 =?utf-8?B?MGxPM3h1anhMbUlDNGtZK3ZCblZ3K2JVTjNsTWk3bzVhd1FrMmhJcGI5ckRx?=
 =?utf-8?B?YWQwM0RuUTdBOEdOaTlqektIc3FVemkwYUl0TmUzb3hlbUtCaU4wVm5FUS9l?=
 =?utf-8?B?U0l6UWUrSGFJOStFV3RtLy9URDRJS0dFc0VUWUFlbWZ4MjlqRkp2TmNEbE5E?=
 =?utf-8?B?S0g5ZjNNek9vekNKNTZNdnNESkJjaHFPZzNDK2hlZ0dCV1lzYm53VW1vNU9M?=
 =?utf-8?B?angwc0tQSlJBMUI5d3lHWXBLQzFSTk1KUEVuUlAzcmFjeUVrQ3Fwbk1uMEY2?=
 =?utf-8?B?SHVzNTFoTXZwQlVtbmJ4Q2J1UzVZRXJkcWxaVnhnNlE4ZnF6MSs0eUdYMU5o?=
 =?utf-8?B?NXFFMU9QZjMvdW1ZbnkwbGxXT21iREVjc2dQcWgvcUV4VW1uS0llQUk0OFlD?=
 =?utf-8?B?QndFaTlHKzF6Rmwyc1pNakpLK3JqbENNQzVaemxQSkpVajRybXFNZ01VaHBr?=
 =?utf-8?B?OUVZMHZ1NlhOZDJiVGFaQUo4bHdYK3FBR25Jb3V3Ym11d3dTSDNFak12OXVW?=
 =?utf-8?B?QzlNS0hzTjk4SmpIMkhFOFFJa0dzWHRmakFudjZmbmJoNmlHT3dsNWtVSXhI?=
 =?utf-8?B?MFRKSkdWNndBdWNyVEhCbnNqMkQxc3RhVFBPU1hTbUZxeWhmNFZYWnlWb0Jx?=
 =?utf-8?B?N1JxT0J3ekx4bnMycGd0dS9tcnhJeU8xSTJsQlFMM2pKbnNrODFtOU1iSVZP?=
 =?utf-8?B?V2svdUFiakxMQmpoQUM4c1YzSGtHSHNldk9Wb1MzRTdkUDJzdmtvcHRxYXR1?=
 =?utf-8?B?RGJLTTBEWndxZ1IyYm04ektoc1dWdFhvTTJZYmVieXZzT1c1MzR1RDFQYlgy?=
 =?utf-8?B?V21FMngzbnVTQkNBWG4zTG55VUlrVzc0MGx4aC82dmh4TTRTTWl3TzllaXJK?=
 =?utf-8?Q?+EfV9qQ3B7SpB?=
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 865433e1-d277-4575-39b0-08d8d4b6ca5e
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6673.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2021 09:14:42.2291 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v824hW5M3JIXVzLbvcQGsm8KnOGVdqPpzQLH99XW+w3ebKc7LRZKe3Ab7eqPC173DsbdJYkiL54i0NGlb0vS/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4386
Subject: Re: [USRP-users] GPSDO fails to lock
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

RWFjaCBVU1JQIGhhcyBpdHMgb3duIEdQUyBhbnRlbm5hLiBPbmUgb2YgdGhvc2UgeW91IGJ1eSBh
dCBldHR1cy5jb20gYXMgCmEgcmVjb21tZW5kZWQgYWNjZXNzb3J5LgoKT24gMTguMDIuMjEgMTU6
MDUsIE1hcmN1cyBEIExlZWNoIHdyb3RlOgo+IEhvdyBhcmUgeW91IGRlbGl2ZXJpbmcgdGhlIEdQ
UyBhbnRlbm5hIHNpZ25hbCB0byB0aGUgVVNSUHM/ICBWaWEgYSBzcGxpdHRlcj8gRG9lcyB0aGF0
IHNwbGl0dGVyIHByb3ZpZGUgREMgcGFzcy10aHJvdWdoPwo+IAo+IFNlbnQgZnJvbSBteSBpUGhv
bmUKPiAKPj4gT24gRmViIDE4LCAyMDIxLCBhdCA3OjA3IEFNLCBKb2hhbm5lcyBEZW1lbCB2aWEg
VVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+Pgo+PiDvu79K
dXN0IGEgcXVpY2sgZm9sbG93LXVwLiBUaGUgQjIxMCBmaW5hbGx5IGdvdCBhIEdQUyBsb2NrLiAo
SSBoYWQgdG8gd2FpdCBmb3IgfjJoKS4gVGhvdWdoLCBhbGwgTjMxMHMgc3RpbGwgZG9uJ3QuCj4+
Cj4+PiBPbiAxOC4wMi4yMSAxMDoxMiwgSm9oYW5uZXMgRGVtZWwgdmlhIFVTUlAtdXNlcnMgd3Jv
dGU6Cj4+PiBIaSBhbGwsCj4+PiBJIGhhdmUgc29tZSBOMzEwcyBhbmQgYSBCMjEwIHRoYXQgSSB0
cnkgdG8gc3luYyB3aXRoIGEgR1BTRE8uIEFsbCBvZiB0aGVtIHJlY29nbml6ZSB0aGVpciBHUFNE
T3MgYnV0IGZhaWwgdG8gbG9jay4KPj4+IE15IHBob25lIGNhbiBzZWUgfjcgU2F0ZWxsaXRlcy4g
V2UgaGF2ZSBhIFJQaSB3aXRoIGEgR1BTIG1vZHVsZSB0aGF0IGxvY2tzIHRvIEdQUyBpbiB0aGUg
c2FtZSBoYWxsLiBXZSBzd2l0Y2hlZCBhbnRlbm5hcyBidXQgc3RpbGwsIHdlIGNhbid0IHN5bmMg
YW55IG9mIHRoZSBVU1JQcyB0byBHUFMuCj4+PiBJIHRyaWVkOgo+Pj4gYGBgCj4+PiBsaWIvdWhk
L3V0aWxzL3F1ZXJ5X2dwc2RvX3NlbnNvcnMKPj4+IGBgYAo+Pj4gYW5kCj4+PiBgYGAKPj4+IGxp
Yi91aGQvZXhhbXBsZXMvc3luY190b19ncHMKPj4+IGBgYAo+Pj4gYnV0IGV2ZW4gYWZ0ZXIgYSBk
YXksIHRoZXkgYWx3YXlzIHJldHVybiAiR1BTIGRvZXMgbm90IGhhdmUgbG9jayIgYW5kICJXQVJO
SU5HOiAgR1BTIG5vdCBsb2NrZWQgLSB0aW1lIHdpbGwgbm90IGJlIGFjY3VyYXRlIHVudGlsIGxv
Y2tlZCIuCj4+PiBgZ3BzbW9uYCBvbiB0aGUgTjMxMHMgcmVwb3J0cyAwIFNhdGVsbGl0ZXMuIEJ1
dCBpdCBoYXMgYSBsaXN0IG9mIHNhdGVsbGl0ZXMuCj4+PiBTaW5jZSB3ZSBoYXZlIHNldmVyYWwg
ZGV2aWNlcyBpbiB0aGF0IHJvb20gdGhhdCBhcmUgYWJsZSB0byBhY3F1aXJlIGEgbG9jayBidXQg
bm9uZSBvZiBvdXIgVVNSUHMgd2l0aCB0aGVpciBHUFNET3MsIEkgd29uZGVyIHdoYXQgaXMgZ29p
bmcgb24uIERvIHRoZXkgbmVlZCBhIHZlcnkgc3Ryb25nIHNpZ25hbD8KPj4+IENoZWVycwo+Pj4g
Sm9oYW5uZXMKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KPj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNl
cnNfbGlzdHMuZXR0dXMuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19s
aXN0cy5ldHR1cy5jb20K
