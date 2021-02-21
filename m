Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BDB320A3B
	for <lists+usrp-users@lfdr.de>; Sun, 21 Feb 2021 13:16:15 +0100 (CET)
Received: from [::1] (port=44902 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lDnem-0000SY-JJ; Sun, 21 Feb 2021 07:16:12 -0500
Received: from mail-eopbgr60096.outbound.protection.outlook.com
 ([40.107.6.96]:57601 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <demel@ant.uni-bremen.de>)
 id 1lDneh-0000Oc-RI
 for USRP-users@lists.ettus.com; Sun, 21 Feb 2021 07:16:07 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UpqmRHpR1XpTGJJS8xdkh6dh0uLCy5TsP70XpwohLbeGvPQAIalH6JEDBolFuGtWCvKdEeVAucjiA/K/XEnV4o5zmltNyuLamkkG/kKre2p7EnASEhtOMFQ8RAY3vm3FGk/MplR2YyEUQ19ywVRykKsXpzQB+oqBMH6f8IyaUYkdGoLz5iPU007Ad2zCT1pv12cPDCPLr5QjO2ZV7GgYur9F7AS/sAM4Cl5BcEphrpbZd02KruxD50IS2rRdWMRRMPePcclxLJ7Qi0txXR8dAepFB6i5j7JH7M9YrLY5S2hvBSlVt6xZQX6xBD1dbOXZr9Ul0mSDYZwk0pS4r/3Rew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZgDHlyow9RRaxpOWzzcOZ78Rhmf8reimsmUbuUTzAfA=;
 b=iSxg5kWuqICyBBproRZ1QokTpJseAkyjysce9VenCZRZMNAXzGCL7mk2ypk4aKfyx9XSa08HIAmtzKde+4BmaPwYAOYUdULaFoCuuKIBSX0i6mMJlz0uZexUrR9+DAKuI2nPcmMZB5WBUW+2J6mvqBl2h3ZEU3AH+c5O/xScdTDSjbcRuqaFiWfoh4XqOV4enfObVpSOTZnHgRQTegcIqfWoi1AvZPRhpPUEJXHvuO1o+pB1JFnArLx09T+5DLFMiO2dPHSjcFi8j5hTFvB8iNnb+0gn7xiI5kz6FEE6XMI7a07/kOPpZXK0tyBLF167tK6EgKeEeEtK4sYofO27rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZgDHlyow9RRaxpOWzzcOZ78Rhmf8reimsmUbuUTzAfA=;
 b=U6Lfmd+G1695MvHk9+MkDWxz5fNz+VpQUcNrqCfU0XfE+qoJbvhPV0NmGQhzY8p4MKmOXgzW/RZEWU8WL75nHxi699nNWbyPil4PH9zCVllQ8v7QSklYxQhsEIpCE2OD1vv/rpBBgLWegVziIR6E0/puDf8xsgjxoGfzg2V5W34=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=ant.uni-bremen.de;
Received: from AM0PR04MB6673.eurprd04.prod.outlook.com (2603:10a6:208:16a::29)
 by AM0PR04MB6612.eurprd04.prod.outlook.com (2603:10a6:208:179::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.27; Sun, 21 Feb
 2021 12:15:25 +0000
Received: from AM0PR04MB6673.eurprd04.prod.outlook.com
 ([fe80::8812:c180:6bd5:464f]) by AM0PR04MB6673.eurprd04.prod.outlook.com
 ([fe80::8812:c180:6bd5:464f%7]) with mapi id 15.20.3868.032; Sun, 21 Feb 2021
 12:15:25 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <USRP-users@lists.ettus.com>
References: <b56049a5-917f-6a54-a03b-fd90347c55c8@ant.uni-bremen.de>
 <4CEBD800-52E4-4AA5-A2EA-BA7C608BC921@gmail.com>
 <CAB__hTRe+Emdpn55UF+Y=HHaHs+ESFk0iHT34_-wD6iKwZsEzQ@mail.gmail.com>
 <602FDA05.9060706@gmail.com>
Message-ID: <15ac0b7a-4563-1b1b-b52a-1e27feede297@ant.uni-bremen.de>
Date: Sun, 21 Feb 2021 13:15:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <602FDA05.9060706@gmail.com>
Content-Language: en-US
X-Originating-IP: [2003:ca:7f16:f00:a394:195:1f5:f9cd]
X-ClientProxiedBy: AM0PR02CA0173.eurprd02.prod.outlook.com
 (2603:10a6:20b:28e::10) To AM0PR04MB6673.eurprd04.prod.outlook.com
 (2603:10a6:208:16a::29)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2003:ca:7f16:f00:a394:195:1f5:f9cd]
 (2003:ca:7f16:f00:a394:195:1f5:f9cd) by
 AM0PR02CA0173.eurprd02.prod.outlook.com (2603:10a6:20b:28e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.28 via Frontend
 Transport; Sun, 21 Feb 2021 12:15:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 67de83cc-6222-43dc-b4b9-08d8d6625eae
X-MS-TrafficTypeDiagnostic: AM0PR04MB6612:
X-Microsoft-Antispam-PRVS: <AM0PR04MB6612FD56BEB2BE0752D999CCA9829@AM0PR04MB6612.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1Y2AkHtx/YrCMrPyKWbqV67TEPbKfHmnV8c9aFJsV+zq3l0a47uIBUbtwAz8qn94laH1PHS7O0jx2rx8cXDDRvKXFoVK6+gTvLMyrY7Aa36JrWhCHbFXn+PZnNUnk4+WtcK7jr3uSKOuJeX+Wim6EJ4U5b4QQhQBcRVcHQ6GLyioZtAMT+Kga28dBS0ZgTwj18gqzsmlNaf40XNJPQNWFuZOjHgtBM1vRgBlElqCBKTC+/sfcSQNM7dr8ZroTSniDLrUTVFXBXv95nFcb2QsqhmJolBUCiO7N7ElTqWs8HTJDFnvj1RpQNw2FQZpK0GtMsDzwEcMlo0SnQZ1Q98is0ODzESh4vlXZnNE+oKqrLgKFphFtpxCovpKzD7evODJXlddVsWl1WXT+qqfEtfhEcfm4AW85C1sGJCDyq4tyyLGOUuzXThqqlXnF653DhmK5PISjs4t1x2vI5QmLN+Hysl0pdAyk6sTXlso+XZOIj7uZyAE71ddkIvBVQxNQcKgm50m41lWIVuuoqAIeJRmmHVAq8OXZWpJ2s2D7Uji9JJ828/8GOb7pOvIVDWeyBNXOWciENSw1JdfMZzXYXdtysnotvoUyepwt8uWNUXNXz+ZlqGFyJ0CcOSlZzBcv3m+tJWKImZk0UZbKCILB/dVRSF7E+dHiN4XgQt2jb1hIRY1udoSQCLV9Lqv1uJE3Mx2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6673.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(136003)(39830400003)(396003)(366004)(346002)(6486002)(16799955002)(66946007)(83380400001)(86362001)(8676002)(5660300002)(2906002)(786003)(31696002)(66476007)(31686004)(478600001)(966005)(316002)(16526019)(8936002)(52116002)(66556008)(110136005)(4326008)(2616005)(186003)(53546011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?UUJZOGVOMTZiNzVGc1hkYkttRkxlQlJaNzd4ZVRrLzZUbG4zRzZmV3BzM2o2?=
 =?utf-8?B?eVRPZjdpa2RHT0RDY2lmbEFCNVB3MGxaSThVWlA5Mkxwd1c5WFdGOWFobXl5?=
 =?utf-8?B?elJSVEV4ampIb3BHdXE1WmxNNWllSnhLR29LYnhZQmp3QzR3dFFiRExkZEpR?=
 =?utf-8?B?NmxDc1QzOTRqUmhNRUVXOFBSM1RyZE9Vek43cnc4cnFwNzQ4WnJzRFErOVp1?=
 =?utf-8?B?cThPN1JSNEVUbUFNMXpNRGpHSlRwN3JEM1BjamF6eUdWcnhWRGNWTHBWdHNR?=
 =?utf-8?B?Vy9JUVlFSlNXSnVQN0o3M1FHZEgzQTZGL2ozd3hHVUwyb2lRRU1DVTBOdGd2?=
 =?utf-8?B?WXgvZ3Q1UlVXbmJIdSsvU09Ya0g4Nnc4andUQ3RKRnNCb2FoVzRtNVJMc3JH?=
 =?utf-8?B?S2pSVEdhVHRCVzE4bUxiMU5aV2UwYVpwRkc4dVBWeWRwakJuRVo1cXpDMkRE?=
 =?utf-8?B?YzkyK3Q4OThTMXl5UGJLYVppbFp1K3grdlp6bEcyRVZQZkRiODZWMlNYZG8x?=
 =?utf-8?B?Z0hQcjBMVHgzOXkrWXdsSWJrTTN1ZmdZRVBpdWtGbXB2eGRIVXFLQXhiVkxs?=
 =?utf-8?B?YmdvVGRFVGlTR3VaYmsxN0ZOK2tIYjVrUHpFQ0hnNVdFMzRSSC8rcVRWcEJo?=
 =?utf-8?B?VEd1UTNtK0hlemoyZ3F3eit3Vk45cVRkMWVLWGxTR2kwKzdvTFV6S1ljaEtj?=
 =?utf-8?B?YlBJMlppWXFkcnZKc2NhUi91OVU5S2owSHNjOEhvWDE0ZzVXT1B2YVRLMm80?=
 =?utf-8?B?MDhiMStnb1JWcjA4S0w4emE4YklXaGRrQUx2UEgzT1l6c1FhOEZrS3dBTkxT?=
 =?utf-8?B?WmMyY3M2KytyUjJYT3dxSGJLSFczZWtPRXBQWnIrd0dVWFFUQW9PeVZ2aE9M?=
 =?utf-8?B?RXNZb1pVVDhTYjJDTDJzeTVCdk1VTVJFMmN2Vm9mOFc0UnNJeFB4M1krWnk5?=
 =?utf-8?B?aFJMTzY1WFVMWnFiNmpDUzJhOG1kTXVVdWNjSkxZOEZUbDEyMHF5dldaSGxX?=
 =?utf-8?B?cnQxYzYyRzBOaitTTTZKbVZOYUdYYnZJVzYrOVYyVjJCd2pzNmFpNkxLRFdh?=
 =?utf-8?B?Ym9oNnE4cU5KcFp3ZThLcDlUdHJwNzNXMkJiNFlYdGw2NGZ4N01Ub3dKcmtF?=
 =?utf-8?B?NDFGdGl0UHFDb1d0R1lKdlpyVkNFUDJIYWxnVkp5MU4zUWdVWnlTYVgvVU9N?=
 =?utf-8?B?bzhxT0RLOGFnSnplYWg3TE5RV28weTRNWkpWbWc4aWhyZVpLMDhkc3M5WXg3?=
 =?utf-8?B?bjhhODBZRUxSTTRkTlhPcDU2OWd5dlNuYzN5eGdvMlp6THRXandnOXNFcUZ1?=
 =?utf-8?B?NjJsakZMc1pBcEdUS0NwTGZCM1BTY2IxOUJVclhKV2lXcEZZKzdwbzVIeUcw?=
 =?utf-8?B?eEZNanMrekp5QnVnK3Z6SnVlTXRyMHFPL29xaURuU3IwQmZoVytoVnp3Wkp1?=
 =?utf-8?B?Wll2VUhNSEFkNGFreWdTUStFb1NhRnQ3VEp4ZXRiOE1ISjZ0TVVPVjhDUXZp?=
 =?utf-8?B?UWYwNHpMNCtXOS9JeGJTaldnMlpWZURRbk8vckY4S3NuWHRzb0RDOUtKKzlx?=
 =?utf-8?B?S3ZzTDcxa2ZYKzBkbnkzVEw0UmlPRThuYjlsSkpJc0tqZ3NDcnRwVFhjTXJ3?=
 =?utf-8?B?UFRwYS9aM0ljRUpwSDNHdFBVUTAySGFxRXJnY2VPdkRXWk9HYkJ4ZEhCVGlj?=
 =?utf-8?B?NUh4Q0pDM2xMaXJkVXRadk9xVEdUZGJVSllNMVJKcXJVZG5ySFRjdWE4R1Jr?=
 =?utf-8?B?ZjB4ZjNVNzU1SkFuMXFQOTFTTEJTZjBRZ0taV1Awc2lxV0RWUmdJTUlFQnFI?=
 =?utf-8?B?SXpMZ1NiZll0aGNDdGVLVXF6TVNidGc5eG9MTC9UcEF1bjJZL1RxalFHYzZs?=
 =?utf-8?Q?kjt64mCb9HOZx?=
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 67de83cc-6222-43dc-b4b9-08d8d6625eae
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6673.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2021 12:15:25.7921 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ycDDZ8FQpzxoqESlxGhRnlhhsS9TfzoFSxqp5FoMFAtPFRp9jAtEMZHw19NA9PY2sxWiUSI5BFUzmIqn3FfUJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6612
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

VGhhbmtzIGZvciB5b3VyIGhpbnRzLiBUaGUgYW50ZW5uYWUgYW5kIGRldmljZXMgYXJlIGluZG9v
cnMuIElzIHRoZXJlIGEgCmRpZmZlcmVuY2UgaWYgdGhlIGRldmljZSByZWNlaXZlcyBhIHNpZ25h
bCBhbmQgbG9ja2luZyBvbnRvIHRoYXQgc2lnbmFsPyAKZS5nLiB0aGUgZGV2aWNlcyBkZXRlcm1p
bmVzIHRoZSBzaWduYWwgdG9vIGRpc3RvcnRlZCB0byBsb2NrPwoKT24gMTkuMDIuMjEgMTY6MzIs
IE1hcmN1cyBELiBMZWVjaCB3cm90ZToKPiBPbiAwMi8xOS8yMDIxIDA5OjQ4IEFNLCBSb2IgS29z
c2xlciB3cm90ZToKPj4gV2hlbiBJIGZpcnN0IHN0YXJ0ZWQgdXNpbmcgVUhEIDQuMCB3aXRoIHRo
ZSBOMzEwICh0aGlzIHBhc3Qgc3VtbWVyKSwgSQo+PiBub3RpY2VkIHdoYXQgSSB0aG91Z2h0IHdh
cyBhIGRlZ3JhZGF0aW9uIGluIHRoZSBkZXZpY2UncyBhYmlsaXR5IHRvCj4+IGxvY2suIEkgd2Fz
IGNvbXBhcmluZyBvbmUgTjMxMCBydW5uaW5nIFVIRCAzLjE1IHRvIGFub3RoZXIgcnVubmluZyBV
SEQKPj4gNC4wLsKgIEJvdGggc3lzdGVtcyB3ZXJlIGxvY2F0ZWQgYSBmZXcgZmVldCBhcGFydCBm
cm9tIGVhY2ggb3RoZXIgd2l0aAo+PiB0aGUgc2FtZSBtb2RlbCBhbnRlbm5hIHNvIHRoZXkgc2hv
dWxkIGhhdmUgcHJvZHVjZWQgc2ltaWxhciByZXN1bHRzLAo+PiBidXQgaXQgc2VlbWVkIHRoYXQg
dGhlIDMuMTUgc3lzdGVtIGFjaGlldmVkIGxvY2sgbW9yZSBlYXNpbHkuwqAgSW4gYW55Cj4+IGNh
c2UsIEkgbmV2ZXIgc3BlbnQgdGhlIHRpbWUgdG8gInByb3ZlIHRoZSBjYXNlIiBhbmQgdGhlbiBn
b3QKPj4gZGlzdHJhY3RlZCBvbiBhbm90aGVyIGlzc3VlIGFuZCBuZXZlciByZXR1cm5lZCB0byBp
dC4gTm90IHN1cmUgaWYgdGhpcwo+PiBpcyByZWxldmFudCBpbiB0aGlzIGRpc2N1c3Npb24sIGJ1
dCBJIHRob3VnaHQgSSB3b3VsZCBtZW50aW9uIGl0Lgo+PiBSb2IKPiBUaGUgTjMxMCB1c2VzIG9u
ZSBvZiB0aGVzZSBtb2R1bGVzOgo+IAo+IGh0dHA6Ly93d3cuamFja3Nvbi1sYWJzLmNvbS9pbmRl
eC5waHAvcHJvZHVjdHMvbHRlX2xpdGUKPiAKPiBQcmV0dHkgc3VyZSB0aGF0IFVIRDQuMC9VSEQz
LjE1IHdvdWxkbid0IGFmZmVjdCB0aGUgb3BlcmF0aW9uIG9mIHRoYXQgCj4gbW9kdWxlLCBidXQs
IHlvdSBuZXZlciBrbm93Lgo+IAo+IAo+Pgo+PiBPbiBGcmksIEZlYiAxOSwgMjAyMSBhdCA5OjEy
IEFNIE1hcmN1cyBEIExlZWNoIHZpYSBVU1JQLXVzZXJzCj4+IDx1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbT4gd3JvdGU6Cj4+PiBBcmUgdGhlIGFudGVubmFlIHNpdHVhdGVkIG91dGRvb3JzPwo+
Pj4KPj4+IEl0IGNhbiB0YWtlIGFsbW9zdCBhbiBob3VyIHRvIGFjaGlldmUgbG9jayBmcm9tIGEg
Y29sZCBzdGFydC4KPj4+Cj4+PiBTZW50IGZyb20gbXkgaVBob25lCj4+Pgo+Pj4+IE9uIEZlYiAx
OSwgMjAyMSwgYXQgNDoxNCBBTSwgSm9oYW5uZXMgRGVtZWwgCj4+Pj4gPGRlbWVsQGFudC51bmkt
YnJlbWVuLmRlPiB3cm90ZToKPj4+Pgo+Pj4+IO+7v0VhY2ggVVNSUCBoYXMgaXRzIG93biBHUFMg
YW50ZW5uYS4gT25lIG9mIHRob3NlIHlvdSBidXkgYXQgCj4+Pj4gZXR0dXMuY29tIGFzIGEgcmVj
b21tZW5kZWQgYWNjZXNzb3J5Lgo+Pj4+Cj4+Pj4+IE9uIDE4LjAyLjIxIDE1OjA1LCBNYXJjdXMg
RCBMZWVjaCB3cm90ZToKPj4+Pj4gSG93IGFyZSB5b3UgZGVsaXZlcmluZyB0aGUgR1BTIGFudGVu
bmEgc2lnbmFsIHRvIHRoZSBVU1JQcz/CoCBWaWEgYSAKPj4+Pj4gc3BsaXR0ZXI/IERvZXMgdGhh
dCBzcGxpdHRlciBwcm92aWRlIERDIHBhc3MtdGhyb3VnaD8KPj4+Pj4gU2VudCBmcm9tIG15IGlQ
aG9uZQo+Pj4+Pj4+IE9uIEZlYiAxOCwgMjAyMSwgYXQgNzowNyBBTSwgSm9oYW5uZXMgRGVtZWwg
dmlhIFVTUlAtdXNlcnMgCj4+Pj4+Pj4gPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90
ZToKPj4+Pj4+IO+7v0p1c3QgYSBxdWljayBmb2xsb3ctdXAuIFRoZSBCMjEwIGZpbmFsbHkgZ290
IGEgR1BTIGxvY2suIChJIGhhZCAKPj4+Pj4+IHRvIHdhaXQgZm9yIH4yaCkuIFRob3VnaCwgYWxs
IE4zMTBzIHN0aWxsIGRvbid0Lgo+Pj4+Pj4KPj4+Pj4+PiBPbiAxOC4wMi4yMSAxMDoxMiwgSm9o
YW5uZXMgRGVtZWwgdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4+Pj4+Pj4gSGkgYWxsLAo+Pj4+Pj4+
IEkgaGF2ZSBzb21lIE4zMTBzIGFuZCBhIEIyMTAgdGhhdCBJIHRyeSB0byBzeW5jIHdpdGggYSBH
UFNETy4gQWxsIAo+Pj4+Pj4+IG9mIHRoZW0gcmVjb2duaXplIHRoZWlyIEdQU0RPcyBidXQgZmFp
bCB0byBsb2NrLgo+Pj4+Pj4+IE15IHBob25lIGNhbiBzZWUgfjcgU2F0ZWxsaXRlcy4gV2UgaGF2
ZSBhIFJQaSB3aXRoIGEgR1BTIG1vZHVsZSAKPj4+Pj4+PiB0aGF0IGxvY2tzIHRvIEdQUyBpbiB0
aGUgc2FtZSBoYWxsLiBXZSBzd2l0Y2hlZCBhbnRlbm5hcyBidXQgCj4+Pj4+Pj4gc3RpbGwsIHdl
IGNhbid0IHN5bmMgYW55IG9mIHRoZSBVU1JQcyB0byBHUFMuCj4+Pj4+Pj4gSSB0cmllZDoKPj4+
Pj4+PiBgYGAKPj4+Pj4+PiBsaWIvdWhkL3V0aWxzL3F1ZXJ5X2dwc2RvX3NlbnNvcnMKPj4+Pj4+
PiBgYGAKPj4+Pj4+PiBhbmQKPj4+Pj4+PiBgYGAKPj4+Pj4+PiBsaWIvdWhkL2V4YW1wbGVzL3N5
bmNfdG9fZ3BzCj4+Pj4+Pj4gYGBgCj4+Pj4+Pj4gYnV0IGV2ZW4gYWZ0ZXIgYSBkYXksIHRoZXkg
YWx3YXlzIHJldHVybiAiR1BTIGRvZXMgbm90IGhhdmUgbG9jayIgCj4+Pj4+Pj4gYW5kICJXQVJO
SU5HOsKgIEdQUyBub3QgbG9ja2VkIC0gdGltZSB3aWxsIG5vdCBiZSBhY2N1cmF0ZSB1bnRpbCAK
Pj4+Pj4+PiBsb2NrZWQiLgo+Pj4+Pj4+IGBncHNtb25gIG9uIHRoZSBOMzEwcyByZXBvcnRzIDAg
U2F0ZWxsaXRlcy4gQnV0IGl0IGhhcyBhIGxpc3Qgb2YgCj4+Pj4+Pj4gc2F0ZWxsaXRlcy4KPj4+
Pj4+PiBTaW5jZSB3ZSBoYXZlIHNldmVyYWwgZGV2aWNlcyBpbiB0aGF0IHJvb20gdGhhdCBhcmUg
YWJsZSB0byAKPj4+Pj4+PiBhY3F1aXJlIGEgbG9jayBidXQgbm9uZSBvZiBvdXIgVVNSUHMgd2l0
aCB0aGVpciBHUFNET3MsIEkgd29uZGVyIAo+Pj4+Pj4+IHdoYXQgaXMgZ29pbmcgb24uIERvIHRo
ZXkgbmVlZCBhIHZlcnkgc3Ryb25nIHNpZ25hbD8KPj4+Pj4+PiBDaGVlcnMKPj4+Pj4+PiBKb2hh
bm5lcwo+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+Pj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+Pj4+PiBVU1JQLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQo+Pj4+Pj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZv
L3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4+IFVT
UlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxt
YW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPiAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1h
bi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
