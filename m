Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCBF38C71F
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 14:52:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A98F03853A1
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 08:52:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="M+5qcXOI";
	dkim-atps=neutral
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11olkn2096.outbound.protection.outlook.com [40.92.20.96])
	by mm2.emwd.com (Postfix) with ESMTPS id A383E3853B9
	for <usrp-users@lists.ettus.com>; Fri, 21 May 2021 08:51:13 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YsYd97XghWrAJMwjLkz2jw5ODYHTW5D49MfJntzT8/WEgjNJUbcw3TGTjcSsM3wYvsRaZnmL4XRTwm9cLuRGtI7mhgSXpPirh/jvH8WK36lss2dQMXJSdXVXYVEQSgpnKE/+PPwOiIpX99xBtPZirRjS7eCaXJorXWOnfu0yJXnHClUbrvIi3r8oVxE7hOCa2npJvWDH0miBM5k0zSgnGf1CPphYO0o2XFTDBlkKSFncl5JpYCcEfGNBxK4If+d4+d0uwHQs8vPVknR+L7rDQX3SwGzjNefZdUetcJfWAajSRxBSchHEikdpNej/TL+c6mQpbGNYC4PJ4LUEpzpiSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W35kue1HaD/V0hPryfchMLt71f+FYwxWJeYP0pE6VkI=;
 b=UfvSHpc8/FRjuBfa8HUYQ38Cpo70plCx7kfqu0mYfatlcweXzNDLdQYi5BeUeRpCSL5WZ2FdOjGLoNvXR6JHkbHxyszh0eHhzmp0BkOvw6uDFObE/EAaWQigyNcJaNV6Za9Py4eo7dwgw1oiL8I9jZt5NBZ/EvuCRb6Nbv1bhahrg98P2ZDwUkyNww+J+F5sx1Ey+F3NgFyu13BY0KyOdm5rzgcZlE/82Vn+j7v3HX/D51+FIv86C99fQ/EX8zIaIADD3crA00yunSD42vidKsofJKIJfIJCkRjYXio70/nUGJVYj2itpscYOp9qz6QtbSvvQ5jqN7CYKLXlBoiHTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W35kue1HaD/V0hPryfchMLt71f+FYwxWJeYP0pE6VkI=;
 b=M+5qcXOIvSZ6R6AhwXKDFvfKBdR40WQ7/t+KfBcnxSgdHE3jfj7xMVyDyGAFrqgyks7zebcXTidZ5pfbYEec1ZYK3Uja4b/DiXuN4J5sF5K0qm+riU0TQRHqBZmiqENby2DVYAEu/hrJZUkPTbgnbtFS42rw0KmjExhcRLOZrZ0spiAvbOb17JO6+tLshtYjtDayVo1uW3sxEvhltJ5DwHK8T7DJiHtsiKjOH5clL0NcTrLLyVIdn6rdov+4lfWnKigC7tNudzLrvEE2WNsrEtoNIziuiB/LxozBhHKuURvhMSTYQfMDDmgrC03mitUol5mTDhxko3ot1i9vneFN/A==
Received: from CO1NAM11FT034.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:3861::4c) by
 CO1NAM11HT241.eop-nam11.prod.protection.outlook.com (2a01:111:e400:3861::176)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Fri, 21 May
 2021 12:51:12 +0000
Received: from BN6PR19MB3138.namprd19.prod.outlook.com
 (2a01:111:e400:3861::4a) by CO1NAM11FT034.mail.protection.outlook.com
 (2a01:111:e400:3861::248) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25 via Frontend
 Transport; Fri, 21 May 2021 12:51:12 +0000
Received: from BN6PR19MB3138.namprd19.prod.outlook.com
 ([fe80::280b:3971:eae4:e18f]) by BN6PR19MB3138.namprd19.prod.outlook.com
 ([fe80::280b:3971:eae4:e18f%3]) with mapi id 15.20.4129.035; Fri, 21 May 2021
 12:51:12 +0000
From: Jeff S <e070832@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD Exception
Thread-Index: AQHXTj7L9+Eshi9Yi0m7ZGBrmRb5VQ==
Date: Fri, 21 May 2021 12:51:12 +0000
Message-ID: 
 <BN6PR19MB3138AF42C6927FF3CA550BC4A4299@BN6PR19MB3138.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:A2F9F0F4D30C1EB423AFF867DD95CFDC580F7E752D6247287431D6C4D206F1E2;UpperCasedChecksum:8B681BEBA3656E1301EFE64A120B629C94B0BC4A6383811DD2EC0782651420BF;SizeAsReceived:6574;Count:41
x-tmn: [VWZh5nStorpTqCAEtFafSp1bj1cIx5Ud]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: aaca27fd-cf96-4cf0-4f02-08d91c571d30
x-ms-traffictypediagnostic: CO1NAM11HT241:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 sGpe1as0MjWzLDp2r4bkth29TyaVdO/2E4HszNRjIySTggokTaSRuQ3DK5syxq1s7WWxbNTTgBIlJWO3uwfvzBgThLqfimaxOZ5lNxaW6+lGHNS6shuLKOBNhhuqVv71gJG43/oBx4JsrF94ILh9wgxv+jvMtyyVo+aUcB0PAaROq2eHXX2DwpTxgnATI54Q90dgY/qbmVm0S0F6F1v3FFhS4Q9gqnGKGN7xKuqnsY+qmErUjqt82wH0EJlzqMTAGnD+qQMn+RHAGL4KYaA63bPmdOcpN5mC6oAFjvHK2WrllZzqnm3gX9aPRdJ04E50ETeM/x54IIhfpVwiXPX7PPFM6KTEEhWj+NEJrg/8YFu7gjPaqk85uSRQBVMFzRS8RU/7YwzynsvzL80jrQS1vA==
x-ms-exchange-antispam-messagedata: 
 7LJIC7XWRIEmu9a/1houUwVrtJzOdmUYO+A5/IIFkDOtn5y6hfuolf8Q7f//2L2Y+d3dO6Y+z/bG+LyBr6f6C5x8s1NXD3kkmYc5cP92sz6sZ5rBFUVL5ounqk4kbWti4fWFd/MYIfEuhvf8Nm0bcQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: CO1NAM11FT034.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: aaca27fd-cf96-4cf0-4f02-08d91c571d30
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2021 12:51:12.6124
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT241
Message-ID-Hash: NFWPHXPTJ7J33T3F7QIRXGAOJPC35QKW
X-Message-ID-Hash: NFWPHXPTJ7J33T3F7QIRXGAOJPC35QKW
X-MailFrom: e070832@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD Exception
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FOR2VPZ74T363TBQZ2OSYUOR6TWEBEGY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've been running an X310 for quite a while, and recently got the following message:

    "[ERROR] [UHD] An unexpected exception was caught in a task loop.The task loop will now exit, things may not work.send: Network is unreachable"

My current configuration is:

Ubuntu 18.04
UHD UHD-4.0 (8f27330, 3/16/21)
GNU Radio v3.8.2.0-112-ge20ffa3c
QNAP Thunderbolt 3 to 10GbE Adapter

I got the message once yesterday and once today.  I have been using this configuration for weeks.  How would I troubleshoot this exception?

Regards,
Jeff
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
