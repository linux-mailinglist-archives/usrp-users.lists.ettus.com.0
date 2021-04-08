Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EC03588D9
	for <lists+usrp-users@lfdr.de>; Thu,  8 Apr 2021 17:49:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0A185383FEC
	for <lists+usrp-users@lfdr.de>; Thu,  8 Apr 2021 11:49:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="EtbKG1hr";
	dkim-atps=neutral
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-eopbgr130131.outbound.protection.outlook.com [40.107.13.131])
	by mm2.emwd.com (Postfix) with ESMTPS id F02B43818F8
	for <usrp-users@lists.ettus.com>; Thu,  8 Apr 2021 11:48:57 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lKXpAUPNBGALZyvc91fr7s6zO7pYwOzQkKc6QHdA/9eWJEt1mTeJKe8PAEHo9FH7JmvgbTU9KNp7ljEZsQwZ0uTcHd4zHkMP7gHOXVyjuzZyX5A9K6wo+uke7ZhPeyEjqdVgAF9w3gCwUpp4a5REvLJiw08AAeTurX/jPNfsLhUe6uM3QVfaW4fb2IcPv3sT0Vnre2PxyrqPyC8CefmrgR6pmKW8XVm80+l1ckmADQCkbvaypDmviYqKwCC4+NmbbRQ9e2bUBUDW4Xz7Gkew2wiIhLeHtHX8TXS82qP1C3MVbqx95Gj2mLFp4d/rnyUnftzTDYf1unKUV8ahsaktyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DBJskRUyYzdn0o+Sle+kNY5P4MXgnmBUwRxMm3E9d3I=;
 b=V0jHocZt2snmzYM6gtkd+dmDOFxLW276vzvHA6WAmXsoP0y3mCFENGeVptQC2hYsjJ74kmCqxRSnLUkjtrqcwOv1xYaTCKfvhgePmjrAzGVCORUYIER0JmSKMJDsNjB2y1moxEuXgj8YTcy2B2atKcN1uzt/6xUxk8cXBCVycWoremri1bg4YfOPMyHAe9VF+igTX+8j5o9M6TWg6RqQtssKT3UePU6AYSRIdNtZznXPe6AUf0mYH6lBVqkFbSEpp0/nSPD6jSpxarlfv8kkOwyb6rycvzhN9ABI9tSXejn+YsdYYTznLOSc0RUuTO74Z7VNaQNqfOVCvRl2H7Uoag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DBJskRUyYzdn0o+Sle+kNY5P4MXgnmBUwRxMm3E9d3I=;
 b=EtbKG1hrfvXQkln2q63sYHcYLIeapqdoou+WqIDDDV5OnLdiPtvhtWJcCa8oXKYnsixmNELFRPD6OKLypOYTnI5hgGZPvdr9gV6o2pCmvMZXu7+0fl5tdt6B4sXHvLdFKoKJbGhlBOdXHtnBX6Z+/8Hi2a4qRJtuzOCOLm016Cw=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM5P190MB0323.EURP190.PROD.OUTLOOK.COM (2603:10a6:206:20::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17; Thu, 8 Apr
 2021 15:48:55 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::d401:36d3:1d0:a2e5]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::d401:36d3:1d0:a2e5%8]) with mapi id 15.20.4020.018; Thu, 8 Apr 2021
 15:48:55 +0000
Date: Thu, 8 Apr 2021 17:48:54 +0200
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <20210408154854.hcie6wfzsmiivezi@barbe>
Mail-Followup-To: usrp-users <usrp-users@lists.ettus.com>
References: <20210406164020.jdcuvfofw6s2td4p@barbe>
 <CAB__hTTwPktvP2H=Fn7K-GwJ2QCtFiVEi+QD-ncOHPgqT5VvuA@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAB__hTTwPktvP2H=Fn7K-GwJ2QCtFiVEi+QD-ncOHPgqT5VvuA@mail.gmail.com>
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: AM3PR05CA0145.eurprd05.prod.outlook.com
 (2603:10a6:207:3::23) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by AM3PR05CA0145.eurprd05.prod.outlook.com (2603:10a6:207:3::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17 via Frontend Transport; Thu, 8 Apr 2021 15:48:55 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 49ea7b2e-eadc-42aa-336e-08d8faa5d0e3
X-MS-TrafficTypeDiagnostic: AM5P190MB0323:
X-Microsoft-Antispam-PRVS: 
	<AM5P190MB03231170444640889DFE8F8CF0749@AM5P190MB0323.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZuishA8aWGcrEHaaIm5rc+B/sxd4cFY7y2aECkGe2qGLXWkRbcrkqzjmeVOEcBeRzXkM6uTOU68QjQFOj2/t9UdCG1VFbXGh74vcMbbfS6VIdc6ckadZ81VE/w99H7wCF4Y8S/V0PNPhQqhJRbtqsE2GZ2M1TYFoxPFp+aLsxHuZAx6XzwqTdZv6JIRAuFre/aJpFrnouKn9aQvI4GzDCWwwGeMTYaZncMinuo9e/Rei5YhML6HduxPNIAkstG9vKveqqaU2cM5ZWjxF/mjTNe3H8bJlhqRAV0w4cn/wNB0Z7uPPq36ahvuxdkYKyCV5hfD1Kc4lr12Ya/jov0/lHP4bcUCKKLVWrLLsxM1oRGkaiePsbrU04o3WltbiC+GFbpBntiTMZ0NfFstR0ZuvLr4dH6bLyYjlRtMn5bGLoT/0jktHKHN+q9J58psKx1NGyFlC8LlMpRJGTAcJLQPwzh0RqMPT7YQNqeR0o53WwJGB28v80dIwrELeycICQ60Gce3GRsDnlWQVrzT096GXQygqKGR0EeFdwcDq2E+ns3XJNii5bUjUZQ5ISswBbbCUSrCankTQyaHi3zSYO78poJdbCtSz9m65sZeWLQCOYCWNbBBQN16+ROTfKfNVXXyBcX02siOiogIyUPDGOy8Rv03Eh/9O8xiuU8rtVTpkeKTq9WauWi07VBGIBxzwgr/i
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(7916004)(4636009)(396003)(136003)(39860400002)(376002)(346002)(366004)(53546011)(38350700001)(9686003)(86362001)(16526019)(52116002)(8936002)(83380400001)(33716001)(2906002)(186003)(6496006)(1076003)(6916009)(956004)(26005)(38100700001)(316002)(786003)(66476007)(66556008)(66946007)(5660300002)(8676002)(6486002)(478600001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?ZUVndHRwMXVVbCsvcTVaaThra09oUlFMckhlOGtXd1MzMnZMZDUxNk9DWURU?=
 =?utf-8?B?VTByb0ZIMURDejdDT281ZXVpeVA4OTE3ZnErTTRVSHJJbHFhWWVSRVd5elJ1?=
 =?utf-8?B?US9Oc1RZdDhLSE1IZWJWc3Yza1JPV2kvT1llT1BwQTA0bmgzbWlsVk1nTEFu?=
 =?utf-8?B?bXJpeGt6Z2NiSENMNVFWcEJ6MTRyMkROY2NweWswNmNOSTFwL2RzRlU3VWRP?=
 =?utf-8?B?NlZFdTdpN2JCZ1B0Qy8vL21ZOTNOeVdBTlhSanh0NVI5b1QxUHZUOGdhZHJM?=
 =?utf-8?B?UzZIakNSTW1JWW9CNXdBSFZxaEJBY285dWdaSlJ5eHFaR1NkYjFaVmlTZjc0?=
 =?utf-8?B?QjJXYktkRFJ2cmNRS0ZjVjBpS1U5TXRJOCs0cVhPWjdGTldubnk2NzhEazdV?=
 =?utf-8?B?dTJrY3JFMEorMjh5T3RGU3BGdHpacWVNeVFrK0k0SU1qTGtacUl2eWFuZmxs?=
 =?utf-8?B?emdKaXAzVUN6c0VOWUJSUlp0WjBXbks5dU5vYjBhY1lNWW5zS0dLY3Y1N0dx?=
 =?utf-8?B?Z2FXWUFNSDh4elIyKytEbUhreUtCOUkvRDBObjJhT3JxYm1nTy9vTnNHN1cz?=
 =?utf-8?B?S3REeDJqeG1janFMWVlhdlZJZnRpbzZpazFJc0dPblpSakZoalplTXlaK3FK?=
 =?utf-8?B?emhqNmw0N3RQYXhrTWMxNGV5N3IrTGpyYS8vSmNvOXVxS1ZxMitlci9kaEc4?=
 =?utf-8?B?clhkbTdza1BKNVZCamViQXRobWRGWVRqYzIrSkR2N1FQU1hyRkhkanpGUlA1?=
 =?utf-8?B?T0xVNHlDYklzNmlsOHQ0TVVPVmQ0WXhnUWZDVWJzRkxaTHFmRnVKN2tSY0Yr?=
 =?utf-8?B?d0QzK3p5R3R2WmpmVlIxc3NxeExNa2liTE9hL283RHRIZCtNSnliZjBpeStm?=
 =?utf-8?B?QjNMdlFIM1lONjNzVWhpMk1WSk5rdmNrSFJORmNGeWg0aEVzamJFbUd5cFNi?=
 =?utf-8?B?Nk92RU54OWlaUkxZUlVuRW1VQVovRGtlaUJjNmVrc2U3YTB3QXdYYU4zZVVD?=
 =?utf-8?B?YnBmOGFLRUE5cGhseDdOVTVmZ05ZQldMR0hJRktpL1BJNFVmT2oydUd6eHlO?=
 =?utf-8?B?NUhDWHBkOFB6Ti9VQ1V5N3JpR25DTkV4UTJsaHN0Z2laWGpvSnY2clZCUVU1?=
 =?utf-8?B?WEp2TkgxeTRoMDZDZ2Y1ZzQ0MVN3MS92NHpzQ0tZenVNWXBZNXIwN0RkWkxQ?=
 =?utf-8?B?cjBlRVQ0TXlJRmFnYVdld0h6SVBQajdJeXNJRVV6OVZsWVRBZERmNUZ2UXV5?=
 =?utf-8?B?Q2ZKSWw0aXhORGg3QlBjWXY5R1QwUEZHQUV4aUk1NGJUaUN0bGJ5bE1Zbld1?=
 =?utf-8?B?b2N1dG5GVmJ2ZUhJMkIrOWFJUWg4UG1sNHIzcitla0ZUaXJqZ2lYNW03bWNP?=
 =?utf-8?B?Tkg4N1c1MFBTSytETjBBYnJqMG5GUzJEd29ZaFVyVDBCVGNOMi9BTUJFQ2Fj?=
 =?utf-8?B?NGUyWHl4ZytsRXF2RjZIQlc5YUt2ZVhzUi9qaEVZZ2cvcmNMZEd1b2IxSlB4?=
 =?utf-8?B?STZISFNYMzYreFA0RVpXamlzSHFUWktHY3Ywd3hGa3owTVFqNnR3cndKc0Y3?=
 =?utf-8?B?V2RuckQrZWNKK25pVWx3cmgwdXpJcG52L2VSenJOTFVFelR4Y1lZKzk0QUFR?=
 =?utf-8?B?MzBQSHdqalRHaWEvaDArQlBjRVZTaGdFRVphempGUExvZXRaTmFjZ2JYQjJh?=
 =?utf-8?B?a2Y3b1l0a2pFTnQxQklGeGtBWnhvSi9qVzZNOUY3Yy82aEE3UXI4Ym5YNVFM?=
 =?utf-8?Q?tL5Ae3zme3B7L5Oio1MeotgvGwvxqMRQcouAByK?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 49ea7b2e-eadc-42aa-336e-08d8faa5d0e3
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2021 15:48:55.5666
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zAjzHKo3pCNvKcftbOXpqJ/n3tVLWkYAAzZRL2XA8+OyKjJnj3V6ncl1mlCn9iEqZgcdXZRwZqzUWrzduuNPYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P190MB0323
Message-ID-Hash: J2WL57IWCZI75CR24NMB7FIOWLPT7UF3
X-Message-ID-Hash: J2WL57IWCZI75CR24NMB7FIOWLPT7UF3
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD4 Replay block on E31x
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J2WL57IWCZI75CR24NMB7FIOWLPT7UF3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUm9iLA0KDQpUaGFua3MgZm9yIHlvdXIgcmVwbHkuDQoNCk9uIDA2LzA0LzIxIDE4OjUzLCBS
b2IgS29zc2xlciB3cm90ZToNCj4gT24gVHVlLCBBcHIgNiwgMjAyMSBhdCAxMjo0MSBQTSBDw6lk
cmljIEhhbm5vdGllciB2aWEgVVNSUC11c2VycyA8DQo+IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tPiB3cm90ZToNCj4gPiBJIHdvdWxkIGxpa2UgdG8gYnVpbGQgYSBGUEdBIGltYWdlIHdpdGgg
YSByZXBsYXkgYmxvY2sgZm9yIEUzMTIuDQo+ID4gSG93ZXZlciwgdGhlcmUgaXMgbm8gZHJhbV9j
bGsgb24gdGhpcyBkZXZpY2UuDQo+ID4gSG93IHNob3VsZCBJIGluc3RhbnRpYXRlIG15IHJlcGxh
eSBpbiBteSAueW1sPw0KPg0KPiBQZXJoYXBzIEV0dHVzIGNhbiBhbnN3ZXIgZGVmaW5pdGl2ZWx5
LCBidXQgaW4gcGFzdCBlbWFpbHMgSSBoYXZlIGhhZCB3aXRoDQo+IFdhZGUgRmlmZSwgaGUgaGFz
IGluZGljYXRlZCB0aGF0IHRoZXJlIGlzIGN1cnJlbnRseSBubyBzdXBwb3J0IGZvciB0aGUNCj4g
UmVwbGF5IGJsb2NrIG9uIHRoZSBFMzEwICgmIHRodXMgSSBhc3N1bWUgRTMxMikgYW5kIHRoYXQg
dGhlIERSQU0gaXRzZWxmIGlzDQo+IG5vdCBwcmVzZW50bHkgc3VwcG9ydGVkIGZyb20gUkZOb0Mu
DQoNCkZyb20gdGhlICJVU1JQ4oSiIEUzMTIgQ2VydGlmaWNhdGUgb2YgVm9sYXRpbGl0eSIsDQp0
aGVyZSBpcyBhICJERFIzTCBTRFJBTSAtIE1pY3JvbiIgd2l0aCA1MTIgTUIgb2YgbWVtb3J5IGRl
ZGljYXRlZCBmb3INCnRoZSAiRlBHQSAmIFVzZXIgYXBwbGljYXRpb24gbWVtb3J5Ii4NCkZ1cnRo
ZXJtb3JlLCB0aGVyZSBhcmUgc29tZSBjb21tZW50ZWQgbGluZXMgd2l0aCAiZGRyMyIgYW5kICJw
bF9kcmFtIg0KaW4gImZwZ2EvdXNycDMvdG9wL2UzMXgvZTMxeC52Ii4NCg0KTXkgdW5lZHVjYXRl
ZCBndWVzcyB0ZWxscyBtZSBpdCBzaG91bGQgYmUgcG9zc2libGUgdG8gdXNlIHRoZSByZXBsYXkN
CmJsb2NrLCBzb21laG93Lg0KDQpUaGUgaXNzdWUgaXMgd2hpbGUgdGhlIEUzMTIgY2FuIGdvIGFz
IGZhciBhcyA1NiBNSHogb2YgYmFuZHdpZHRoLA0KdGhlIEFSTSBjYW4gb25seSBmb2xsb3cgdXAg
dG8gMTAgTVNwcy4NCkkgYW0gdHJ5aW5nIHRvIHJlYWNoIDIwIE1TcHMuDQoNCkNvdWxkIHdlIGdl
dCBhbiBhbnN3ZXIgZnJvbSBFdHR1cyByZWdhcmRpbmcgdGhpcyBpc3N1ZT8NCg0KS2luZCByZWdh
cmRzDQotLSANCg0KQ8OpZHJpYyBIYW5ub3RpZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVz
ZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
