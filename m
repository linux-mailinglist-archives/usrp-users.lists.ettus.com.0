Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 154DB320B4A
	for <lists+usrp-users@lfdr.de>; Sun, 21 Feb 2021 16:14:07 +0100 (CET)
Received: from [::1] (port=46052 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lDqQt-0006Bz-BR; Sun, 21 Feb 2021 10:14:03 -0500
Received: from mail-eopbgr60099.outbound.protection.outlook.com
 ([40.107.6.99]:2023 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <demel@ant.uni-bremen.de>)
 id 1lDqQo-00067i-PP
 for USRP-users@lists.ettus.com; Sun, 21 Feb 2021 10:13:58 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V0nI1bZkTclWq9AHahsMhc0WRBTsB8vOxbD0cKzkYW0l5OnB/tRHnmNEzTOZpi742feY5mYWCFdc/G1+wZwi137r2Gexbe3YtuxvxY2fkZCodSv8ICQsWF1ll+hobLCeS9e7aUvD8m1vPm/gUgKcPZ2G0Gg/4dD59pSnhJLNn6qTdi1ZZeeVPNqfy2AUZFmKVLIc78vLFmV4of7W7cMzkVfdRA+ah8xB1W54/NUSR3OYa0ZyC2oPvH/Usv8V2QXZm6DcHUywzvA6Cnqb1gynDPENOKDDhsB66bRwh7sRvXVwQzhwsY9KVSdRpcUQ0ZqpS8GGJzlIjL4+BrP7bkPmlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y/vHbI0Vd+fjhjfeJ7gh8ZRgY1dUWT+MfRhVixXyEYA=;
 b=Pnd0Qvqap5Fk341qt2lY2msjmzVFaHbwe3esODeqzaDRso1pr+PmB8g59SipzmNCMYA68n97UCl52thOQF8ux3WXbWo3keCZRqj9Ko8oIAXF9aXJqoe6smkgT830NtimhG+wZC2ZweK9SfcSL/7nure4TGFJsdDCl+G9UXlxb+pNUy5WVYpuH/yJ/RK3ZvgW4rKeejg0YxNfO/IOLlFJr1uwPVKjqpNUSgIhUTmRTm8IPGEG+S1oEEPSqEQXDFZ/QLleUKdxZIB3ztQkY+kQqt/C76j6pEvW5IG0dinhF1I3ynCRkEISL+hiq4nAdShLZtoD21jQS2/fMBZx/rLTMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y/vHbI0Vd+fjhjfeJ7gh8ZRgY1dUWT+MfRhVixXyEYA=;
 b=GA4MUQh0Di0AniYYqwn66y17BCNIiZQYfxUG9hu/PNoUa5QGZhbI51zpjtDFZ+IpH/GOA+TB3ES8i3euDZW0oRsd6qEUvw2HR4T1pGDJX2GR5C/60o48EonbCmKtfWWAYB+xVOzzeQFeyQoxL8s+9TChHq70Sz3CQsQ7XFTmFz8=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=ant.uni-bremen.de;
Received: from AM0PR04MB6673.eurprd04.prod.outlook.com (2603:10a6:208:16a::29)
 by AM0PR0402MB3762.eurprd04.prod.outlook.com (2603:10a6:208:3::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27; Sun, 21 Feb
 2021 15:13:15 +0000
Received: from AM0PR04MB6673.eurprd04.prod.outlook.com
 ([fe80::8812:c180:6bd5:464f]) by AM0PR04MB6673.eurprd04.prod.outlook.com
 ([fe80::8812:c180:6bd5:464f%7]) with mapi id 15.20.3868.032; Sun, 21 Feb 2021
 15:13:15 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <USRP-users@lists.ettus.com>
References: <b56049a5-917f-6a54-a03b-fd90347c55c8@ant.uni-bremen.de>
 <4CEBD800-52E4-4AA5-A2EA-BA7C608BC921@gmail.com>
 <CAB__hTRe+Emdpn55UF+Y=HHaHs+ESFk0iHT34_-wD6iKwZsEzQ@mail.gmail.com>
 <602FDA05.9060706@gmail.com>
 <15ac0b7a-4563-1b1b-b52a-1e27feede297@ant.uni-bremen.de>
 <60325EB4.3000606@gmail.com>
Message-ID: <2e91003a-1e73-93e3-38fe-9e036bd70158@ant.uni-bremen.de>
Date: Sun, 21 Feb 2021 16:13:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <60325EB4.3000606@gmail.com>
Content-Language: en-US
X-Originating-IP: [2003:ca:7f16:f00:a394:195:1f5:f9cd]
X-ClientProxiedBy: AM0PR04CA0068.eurprd04.prod.outlook.com
 (2603:10a6:208:1::45) To AM0PR04MB6673.eurprd04.prod.outlook.com
 (2603:10a6:208:16a::29)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2003:ca:7f16:f00:a394:195:1f5:f9cd]
 (2003:ca:7f16:f00:a394:195:1f5:f9cd) by
 AM0PR04CA0068.eurprd04.prod.outlook.com (2603:10a6:208:1::45) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.27 via Frontend Transport; Sun, 21 Feb 2021 15:13:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cce24e8d-0bba-4846-c688-08d8d67b364a
X-MS-TrafficTypeDiagnostic: AM0PR0402MB3762:
X-Microsoft-Antispam-PRVS: <AM0PR0402MB37625FFA214EE002F3D0C310A9829@AM0PR0402MB3762.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C2eUEkmDvMdSlWQmIrS9jsg1QKjs3kQLv+wkSieUsooZuc0mYmQXwz+7WZbvsJWQBlQh6+1oFQJtZg/abW0OBZA6lOng3bbCxHn7xVIjohOeYJKJegUSZRq3YtChomBnddQVVzuz6bgtPQgk/68L3vYuxQSU2uPJ2/lH7Vk+X0CcJ1SJqYbm+LmTX1YyfLljuVC1aNd5XoA+4KS09WGn9FLAhIvd+5Sdkcd/rXTak6OgO/c9+lqhnbTPipiTtWAtlZrS1PDZyxyIERlmtG7aT1a0tyi4IYuccJ5odObS/X05Jr7O7wNr+NYpNiEQdfleYqAq3UriXgTK/gg0QJhRUniAv2H5kITuLmV22IQnfRtBOXLI/ZOVDJkNKZW5xZoPenVCyZxEGbYfOOiJJYlmMmEsxq8EJgATcb1ASSKbWgwkFMBQPXFKTu6LTXMzr1Fib/RS8rN6yk5DK+k/5jcF0tjjihZowSxWOvslCkE45l/1ZVBxjtcHPq9URbcMY5iH4/T6zXRhWdWWU6MWFk3ckowQ3OGwTDM+WA+BjL/j+RtPs7NlBYna3QSqznJJ5mauutLOceqaIoYq8UHiG668F+yWSn2ZRhq14slqDgLCppYqYKqSSZh0m5lRpxuC2ecvjeZGtLz7UdgPo4oRqqA71uECDMzyyy/C9XiJyNMTX529+KCm/TzYhbDe1dUZePB5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6673.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(366004)(39830400003)(346002)(136003)(2906002)(66946007)(16526019)(66476007)(2616005)(66556008)(8936002)(8676002)(4326008)(31696002)(186003)(966005)(5660300002)(31686004)(83380400001)(52116002)(110136005)(316002)(53546011)(786003)(86362001)(478600001)(16799955002)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?WkZhclhjb1ptclhWOE1nUnQ4ZzdyVWw4YW5lU3M3UG92ZUpuZlg3Y21tWnQw?=
 =?utf-8?B?aVgzNnk3UjFvTnc0K2czbHErdi82V3ZVZDRNR3BFWk1EUXZQVGZNd1ZQUUZt?=
 =?utf-8?B?RVZzZ3dWQVJUaDk1a0QwMnhuT1VsQ3VWdmJQSVFRYjl5RktSU0x1N09oSE5E?=
 =?utf-8?B?cVIwLzRaV0JZVjZyWm9PTGxKem12MnR4dWE1WUxiQTBJWS9NVUk2T1c4d2FQ?=
 =?utf-8?B?TDVkUXpvWkRITHF6bkNZWldJalFqaXRSTUNMSDQrU0Y1OGlUU0NLYlZibURs?=
 =?utf-8?B?bFRtTmxjaGZwVVgvVmJreTB2Qm5JbGtkWGg4Nnh6OFY0N2JJeEFjei9UWjVi?=
 =?utf-8?B?MlFVNFZOZTZyRy8yZ0lDMCtjWEVoSHlJVnlJblBwTXJYbFREaEdCRkpQYmQ4?=
 =?utf-8?B?UnZvOWNTYzdvOVB0aS9BMVVRUzY2disvcWsrSVdqUnZkSnZwaW00aTJ3eHdF?=
 =?utf-8?B?K3ZRVHZLNlNMV3l6bk5CcVB1Yk5NRC96cFZkN00xc2ZYRldmUFB1OTVNUExP?=
 =?utf-8?B?K0FGRncrajdPeGJBUlZENjJORTRsSmlWUXNtbW1YeUZHQ1JSTklWK0tTZjg1?=
 =?utf-8?B?T3NIUXUxYkxOSm5pcThIODBFaENNRnpxakxRRHZqWkVkdkxPQUFqOXBnVFpi?=
 =?utf-8?B?cnFDVGUzVFpxQzNvcENoMmFMR0hlTU84QlBrSUVuUTVISGtrOEVuVG9FYTBv?=
 =?utf-8?B?UytKZHY2SCtDTmFmeFJ3M284bStjdGtYMmxCOFhlMmFlK1RZZDVESFVqVktT?=
 =?utf-8?B?R0dhRmw2NXcwWGg0YzZvamlDTzE2M2IxdGVEVU4wVWxpWXM1ZmZab3JpMkN3?=
 =?utf-8?B?TEw4M3dibVcwVm9pZFlYUWlub1dLWGF6TC9LUGZ1OSswV0lMSTQwbU1iZ3Jy?=
 =?utf-8?B?SVJqWC9GUUNpdjNleHo3cU1rUUd3UUUwL0x4ZElWQnNPU3FLei8xYnRRNlJG?=
 =?utf-8?B?ZHc2NDJJaEJqZkRycUMvUEZya1prejF3eHN3R1FnVlVuNmV5a2NsTFV1dDBT?=
 =?utf-8?B?a1dBeTB1Sy95K3pxTnI2TlJQQm5Wd2E5UjZEWnFsWjZ1U0VDU1RNeWFST3Zu?=
 =?utf-8?B?TzMzOTZzeFhPNEZwSnNmYUdnL3FNRnRlM2NPTHUxOEVzR29FVitMKzR3cEp3?=
 =?utf-8?B?eTBXejZGMmozaFNualNmOTNkWEgzTGpkSFZIcDVISFhla3ZVWFZjU09Fbm5Y?=
 =?utf-8?B?bWhSWVEranFOOXpoUXVjR3JHVVU4bnY3VDNScmN5WStKM1Axc2RrWi9aSG5h?=
 =?utf-8?B?bUFkUmFRdkY1SWZraUJ6TzI0VXZzN3A0clJlN1o2ZXZlSGRZMjlmRUdVOUVD?=
 =?utf-8?B?cnBzVHlkOFYzVGpwaC92VjZhRjQ0OUNaY1ROWXBJVVgvQnRYdnBQQ21nQXN1?=
 =?utf-8?B?elJ3TWF1WnVhckxtcnZ6bkJPWTVsVk9vWHVzeHMzQlVxMXRCZmp0TkRuTVdV?=
 =?utf-8?B?YW1rQy9vSUtBZE91dnhsSEpieUtIM3N6YUwvRis4eExsZHBaWmRhWFlKU3B0?=
 =?utf-8?B?ZnFMZ1RjQjgvN0JxUGx5azJ1MmE1VzlKTno4Q3FtakhXL0J2ZEVwbjdqQTBV?=
 =?utf-8?B?Y3BjVzQxWERacFU0OEhGMHBxbUpaeDkzaENYdXVCd1U2M1d2R0JadzMyeFNv?=
 =?utf-8?B?endBOXI4SE03OWpIeUVSSmkwL0k1aXV4dmZiRzRsNTVOcHpnaElnaUdZUnh1?=
 =?utf-8?B?OTZINEJlYThVbytFeUN2TGVFY1lsbEoxaTRzVS9PTTJFNTdxUjJSclVUV3Vq?=
 =?utf-8?B?Q1JjZlp2N3BXY1ZldUprK3JqMDd0YWtSVDlnbW45SGlmVHJnRFZMMC9kV1dH?=
 =?utf-8?B?Z0ZHQ3pJRjI3ZDd4Y2RoUTI0ZE5rb3VmQ3l0K3M2ditrY1dMRFJxR2s5WUdQ?=
 =?utf-8?Q?oN09eeErFOGF7?=
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: cce24e8d-0bba-4846-c688-08d8d67b364a
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6673.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2021 15:13:15.5065 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mi2Tid3L94wMMeKf/Km5kqmkrbqhI6INGj07vLdoX5P0jIyMQ3/jPihDWR1+7gRJyHdx6B9YEEozBf3/IDffbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3762
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

U3VyZS4gR2VuZXJhbGx5IEkgd291bGRuJ3QgZXhwZWN0IEdQUyB0byB3b3JrIGluIGEgYnVpbGRp
bmcuIFRob3VnaCwgCnNpbmNlIHdlIGhhdmUgYXQgbGVhc3QgMyBkaWZmZXJlbnQgc3lzdGVtcyAo
cGhvbmUsIFJQaSAvdyBHUFMtc2hpZWxkLCAKTFRFIGVOb2RlQikgdGhhdCB3b3JrIHRoZXJlLCBJ
IGFzc3VtZWQgdGhhdCB0aGUgR1BTRE8gd291bGQgZG8gc28gYXMgd2VsbC4KCk9uIDIxLjAyLjIx
IDE0OjIzLCBNYXJjdXMgRC4gTGVlY2ggd3JvdGU6Cj4gT24gMDIvMjEvMjAyMSAwNzoxNSBBTSwg
Sm9oYW5uZXMgRGVtZWwgd3JvdGU6Cj4+IFRoYW5rcyBmb3IgeW91ciBoaW50cy4gVGhlIGFudGVu
bmFlIGFuZCBkZXZpY2VzIGFyZSBpbmRvb3JzLiBJcyB0aGVyZSAKPj4gYSBkaWZmZXJlbmNlIGlm
IHRoZSBkZXZpY2UgcmVjZWl2ZXMgYSBzaWduYWwgYW5kIGxvY2tpbmcgb250byB0aGF0IAo+PiBz
aWduYWw/IGUuZy4gdGhlIGRldmljZXMgZGV0ZXJtaW5lcyB0aGUgc2lnbmFsIHRvbyBkaXN0b3J0
ZWQgdG8gbG9jaz8KPiBodHRwczovL2l0c3RpbGx3b3Jrcy5jb20vZG9lc250LWdwcy13b3JrLWlu
c2lkZS1idWlsZGluZy0xODY1OS5odG1sCj4gCj4+Cj4+IE9uIDE5LjAyLjIxIDE2OjMyLCBNYXJj
dXMgRC4gTGVlY2ggd3JvdGU6Cj4+PiBPbiAwMi8xOS8yMDIxIDA5OjQ4IEFNLCBSb2IgS29zc2xl
ciB3cm90ZToKPj4+PiBXaGVuIEkgZmlyc3Qgc3RhcnRlZCB1c2luZyBVSEQgNC4wIHdpdGggdGhl
IE4zMTAgKHRoaXMgcGFzdCBzdW1tZXIpLCBJCj4+Pj4gbm90aWNlZCB3aGF0IEkgdGhvdWdodCB3
YXMgYSBkZWdyYWRhdGlvbiBpbiB0aGUgZGV2aWNlJ3MgYWJpbGl0eSB0bwo+Pj4+IGxvY2suIEkg
d2FzIGNvbXBhcmluZyBvbmUgTjMxMCBydW5uaW5nIFVIRCAzLjE1IHRvIGFub3RoZXIgcnVubmlu
ZyBVSEQKPj4+PiA0LjAuwqAgQm90aCBzeXN0ZW1zIHdlcmUgbG9jYXRlZCBhIGZldyBmZWV0IGFw
YXJ0IGZyb20gZWFjaCBvdGhlciB3aXRoCj4+Pj4gdGhlIHNhbWUgbW9kZWwgYW50ZW5uYSBzbyB0
aGV5IHNob3VsZCBoYXZlIHByb2R1Y2VkIHNpbWlsYXIgcmVzdWx0cywKPj4+PiBidXQgaXQgc2Vl
bWVkIHRoYXQgdGhlIDMuMTUgc3lzdGVtIGFjaGlldmVkIGxvY2sgbW9yZSBlYXNpbHkuIEluIGFu
eQo+Pj4+IGNhc2UsIEkgbmV2ZXIgc3BlbnQgdGhlIHRpbWUgdG8gInByb3ZlIHRoZSBjYXNlIiBh
bmQgdGhlbiBnb3QKPj4+PiBkaXN0cmFjdGVkIG9uIGFub3RoZXIgaXNzdWUgYW5kIG5ldmVyIHJl
dHVybmVkIHRvIGl0LiBOb3Qgc3VyZSBpZiB0aGlzCj4+Pj4gaXMgcmVsZXZhbnQgaW4gdGhpcyBk
aXNjdXNzaW9uLCBidXQgSSB0aG91Z2h0IEkgd291bGQgbWVudGlvbiBpdC4KPj4+PiBSb2IKPj4+
IFRoZSBOMzEwIHVzZXMgb25lIG9mIHRoZXNlIG1vZHVsZXM6Cj4+Pgo+Pj4gaHR0cDovL3d3dy5q
YWNrc29uLWxhYnMuY29tL2luZGV4LnBocC9wcm9kdWN0cy9sdGVfbGl0ZQo+Pj4KPj4+IFByZXR0
eSBzdXJlIHRoYXQgVUhENC4wL1VIRDMuMTUgd291bGRuJ3QgYWZmZWN0IHRoZSBvcGVyYXRpb24g
b2YgdGhhdCAKPj4+IG1vZHVsZSwgYnV0LCB5b3UgbmV2ZXIga25vdy4KPj4+Cj4+Pgo+Pj4+Cj4+
Pj4gT24gRnJpLCBGZWIgMTksIDIwMjEgYXQgOToxMiBBTSBNYXJjdXMgRCBMZWVjaCB2aWEgVVNS
UC11c2Vycwo+Pj4+IDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4+Pj4+IEFy
ZSB0aGUgYW50ZW5uYWUgc2l0dWF0ZWQgb3V0ZG9vcnM/Cj4+Pj4+Cj4+Pj4+IEl0IGNhbiB0YWtl
IGFsbW9zdCBhbiBob3VyIHRvIGFjaGlldmUgbG9jayBmcm9tIGEgY29sZCBzdGFydC4KPj4+Pj4K
Pj4+Pj4gU2VudCBmcm9tIG15IGlQaG9uZQo+Pj4+Pgo+Pj4+Pj4gT24gRmViIDE5LCAyMDIxLCBh
dCA0OjE0IEFNLCBKb2hhbm5lcyBEZW1lbCAKPj4+Pj4+IDxkZW1lbEBhbnQudW5pLWJyZW1lbi5k
ZT4gd3JvdGU6Cj4+Pj4+Pgo+Pj4+Pj4g77u/RWFjaCBVU1JQIGhhcyBpdHMgb3duIEdQUyBhbnRl
bm5hLiBPbmUgb2YgdGhvc2UgeW91IGJ1eSBhdCAKPj4+Pj4+IGV0dHVzLmNvbSBhcyBhIHJlY29t
bWVuZGVkIGFjY2Vzc29yeS4KPj4+Pj4+Cj4+Pj4+Pj4gT24gMTguMDIuMjEgMTU6MDUsIE1hcmN1
cyBEIExlZWNoIHdyb3RlOgo+Pj4+Pj4+IEhvdyBhcmUgeW91IGRlbGl2ZXJpbmcgdGhlIEdQUyBh
bnRlbm5hIHNpZ25hbCB0byB0aGUgVVNSUHM/wqAgVmlhIAo+Pj4+Pj4+IGEgc3BsaXR0ZXI/IERv
ZXMgdGhhdCBzcGxpdHRlciBwcm92aWRlIERDIHBhc3MtdGhyb3VnaD8KPj4+Pj4+PiBTZW50IGZy
b20gbXkgaVBob25lCj4+Pj4+Pj4+PiBPbiBGZWIgMTgsIDIwMjEsIGF0IDc6MDcgQU0sIEpvaGFu
bmVzIERlbWVsIHZpYSBVU1JQLXVzZXJzIAo+Pj4+Pj4+Pj4gPHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tPiB3cm90ZToKPj4+Pj4+Pj4g77u/SnVzdCBhIHF1aWNrIGZvbGxvdy11cC4gVGhlIEIy
MTAgZmluYWxseSBnb3QgYSBHUFMgbG9jay4gKEkgaGFkIAo+Pj4+Pj4+PiB0byB3YWl0IGZvciB+
MmgpLiBUaG91Z2gsIGFsbCBOMzEwcyBzdGlsbCBkb24ndC4KPj4+Pj4+Pj4KPj4+Pj4+Pj4+IE9u
IDE4LjAyLjIxIDEwOjEyLCBKb2hhbm5lcyBEZW1lbCB2aWEgVVNSUC11c2VycyB3cm90ZToKPj4+
Pj4+Pj4+IEhpIGFsbCwKPj4+Pj4+Pj4+IEkgaGF2ZSBzb21lIE4zMTBzIGFuZCBhIEIyMTAgdGhh
dCBJIHRyeSB0byBzeW5jIHdpdGggYSBHUFNETy4gCj4+Pj4+Pj4+PiBBbGwgb2YgdGhlbSByZWNv
Z25pemUgdGhlaXIgR1BTRE9zIGJ1dCBmYWlsIHRvIGxvY2suCj4+Pj4+Pj4+PiBNeSBwaG9uZSBj
YW4gc2VlIH43IFNhdGVsbGl0ZXMuIFdlIGhhdmUgYSBSUGkgd2l0aCBhIEdQUyBtb2R1bGUgCj4+
Pj4+Pj4+PiB0aGF0IGxvY2tzIHRvIEdQUyBpbiB0aGUgc2FtZSBoYWxsLiBXZSBzd2l0Y2hlZCBh
bnRlbm5hcyBidXQgCj4+Pj4+Pj4+PiBzdGlsbCwgd2UgY2FuJ3Qgc3luYyBhbnkgb2YgdGhlIFVT
UlBzIHRvIEdQUy4KPj4+Pj4+Pj4+IEkgdHJpZWQ6Cj4+Pj4+Pj4+PiBgYGAKPj4+Pj4+Pj4+IGxp
Yi91aGQvdXRpbHMvcXVlcnlfZ3BzZG9fc2Vuc29ycwo+Pj4+Pj4+Pj4gYGBgCj4+Pj4+Pj4+PiBh
bmQKPj4+Pj4+Pj4+IGBgYAo+Pj4+Pj4+Pj4gbGliL3VoZC9leGFtcGxlcy9zeW5jX3RvX2dwcwo+
Pj4+Pj4+Pj4gYGBgCj4+Pj4+Pj4+PiBidXQgZXZlbiBhZnRlciBhIGRheSwgdGhleSBhbHdheXMg
cmV0dXJuICJHUFMgZG9lcyBub3QgaGF2ZSAKPj4+Pj4+Pj4+IGxvY2siIGFuZCAiV0FSTklORzrC
oCBHUFMgbm90IGxvY2tlZCAtIHRpbWUgd2lsbCBub3QgYmUgYWNjdXJhdGUgCj4+Pj4+Pj4+PiB1
bnRpbCBsb2NrZWQiLgo+Pj4+Pj4+Pj4gYGdwc21vbmAgb24gdGhlIE4zMTBzIHJlcG9ydHMgMCBT
YXRlbGxpdGVzLiBCdXQgaXQgaGFzIGEgbGlzdCAKPj4+Pj4+Pj4+IG9mIHNhdGVsbGl0ZXMuCj4+
Pj4+Pj4+PiBTaW5jZSB3ZSBoYXZlIHNldmVyYWwgZGV2aWNlcyBpbiB0aGF0IHJvb20gdGhhdCBh
cmUgYWJsZSB0byAKPj4+Pj4+Pj4+IGFjcXVpcmUgYSBsb2NrIGJ1dCBub25lIG9mIG91ciBVU1JQ
cyB3aXRoIHRoZWlyIEdQU0RPcywgSSAKPj4+Pj4+Pj4+IHdvbmRlciB3aGF0IGlzIGdvaW5nIG9u
LiBEbyB0aGV5IG5lZWQgYSB2ZXJ5IHN0cm9uZyBzaWduYWw/Cj4+Pj4+Pj4+PiBDaGVlcnMKPj4+
Pj4+Pj4+IEpvaGFubmVzCj4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+Pj4+Pj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+
IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4+Pj4+Pj4+IGh0dHA6Ly9saXN0cy5ldHR1cy5j
b20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+Pj4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+PiBVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdAo+Pj4+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+Pj4+PiBo
dHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5l
dHR1cy5jb20KPj4+Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0
cy5ldHR1cy5jb20K
