Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF902130835
	for <lists+usrp-users@lfdr.de>; Sun,  5 Jan 2020 14:16:19 +0100 (CET)
Received: from [::1] (port=57156 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1io5lK-0001Ca-6g; Sun, 05 Jan 2020 08:16:10 -0500
Received: from mail-eopbgr140077.outbound.protection.outlook.com
 ([40.107.14.77]:62338 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <Roman.Melnikov@verint.com>)
 id 1io5lH-00019C-3D
 for usrp-users@lists.ettus.com; Sun, 05 Jan 2020 08:16:07 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YtgCKSm4GnLkUdsMwXSsZXbxpCbnIJbZwCjm3AkqBfLpm8NFRRfWK4DS+dG5UCeDJ7uBI90ZbAgmz3526OMwEmsTB4HQ5ktaK+ZU+KsmixsFAxgwi5jxgKq5KWECsqM6c53yJ66kY3+KXAfqt9BWw4HH3f8E+Nxpr/VXD/mKnG+/+UzPqfM0mYHGWira7FUFmq7Hok5/zm97C9g/dGSCKR9RJZf5W3Mn1B9PWXK1d8KU0u1rIGiT5WMpD580ujCBRZIAgVL4SU7KbyVNJWvbSAzZ2/3BCAbue1bP0+QwLbG1US8WinAn5Fjoi6l6nYN2xwDzEjKd9h65JjMPCms/Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n8Ef+UVAZNON0uvzoZdbR3l7b99CbAadNmw5laSpT/c=;
 b=dE57MLMCy0Vl5kjNtsdD/gEk4WUxvWJ+RenBec0x0veq/W6T/CpHwklJWj1J4VDn6HKyhNDU0faW5GRYXebfIQJysVC1KSLaDsDWRy7e8Ymyo87YRKIgMehP8pQs0mFMN4UIDTZ4GflULzS44eDgc6X3NPTuCyttF/b+vGFuujyGJ8/wTYJ7r6M89xUq4qGQ7Qz2r6ZVv5TnF6i+PO4CZjtKPMxPOTrL7WUC4EJUu/NTlXGj9NVGVesdyk+Pam9u2bl0eJpSCyge/mAVCsJS61Ylerbb9XqCF1QFBZCF/dU5q891wLhbZCUVEr2c2jZufxr3k4X2X5rImzWLSLKhfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.27.93.21) smtp.rcpttodomain=ettus.com smtp.mailfrom=verint.com;
 dmarc=bestguesspass action=none header.from=verint.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verint.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n8Ef+UVAZNON0uvzoZdbR3l7b99CbAadNmw5laSpT/c=;
 b=VMEJKI7TJ2SBK6JW4R7sYZuRq5h8sxjtSUFdoubOAi4jWwCF5finxCHf5yBLIpB262Qk65OkFSjtc0YNoQ/wDpzx54/eJ+1rxbP0F36e7IfJTdOjRmEsVqoHdsLOxh4Ex30p8ieFgqsqEH2tdKP6xO6Jzc/YuZg96YUtgIk+ssg=
Received: from AM4PR0101CA0048.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::16) by VI1PR0102MB3166.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:e::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.15; Sun, 5 Jan
 2020 13:15:23 +0000
Received: from DB5EUR01FT028.eop-EUR01.prod.protection.outlook.com
 (2a01:111:f400:7e02::200) by AM4PR0101CA0048.outlook.office365.com
 (2603:10a6:200:41::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.10 via Frontend
 Transport; Sun, 5 Jan 2020 13:15:23 +0000
Authentication-Results: spf=pass (sender IP is 193.27.93.21)
 smtp.mailfrom=verint.com; ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=bestguesspass action=none
 header.from=verint.com;
Received-SPF: Pass (protection.outlook.com: domain of verint.com designates
 193.27.93.21 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.27.93.21; helo=mail.verint.com;
Received: from mail.verint.com (193.27.93.21) by
 DB5EUR01FT028.mail.protection.outlook.com (10.152.4.237) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2602.11 via Frontend Transport; Sun, 5 Jan 2020 13:15:23 +0000
Received: from TLVPEXCH1.Verint.Corp.Verintsystems.com (10.61.241.30) by
 TLVPEXCH2.verint.corp.verintsystems.com (10.61.241.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.1847.3; Sun, 5 Jan 2020 15:15:22 +0200
Received: from TLVPEXCH1.Verint.Corp.Verintsystems.com ([10.61.241.30]) by
 TLVPEXCH1.verint.corp.verintsystems.com ([10.61.241.30]) with mapi id
 15.01.1847.003; Sun, 5 Jan 2020 15:15:22 +0200
To: =?utf-8?B?TWFyY3VzIE3DvGxsZXI=?= <marcus.mueller@ettus.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] USRP B205 mini + uhd::usrp::multi_usrp_uhd +
 multithreading
Thread-Index: AdW44hysSz94NxP/TDODMk9P27Y5bQEej00AAZtCbRA=
Date: Sun, 5 Jan 2020 13:15:22 +0000
Message-ID: <0cafa50de13e49e99686ce31a6711fc6@verint.com>
References: <14079f7f31174b1092aa00039ba9602b@verint.com>
 <d1fc6b78e3a630e731136253275bf8a79bf1a3bb.camel@ettus.com>
In-Reply-To: <d1fc6b78e3a630e731136253275bf8a79bf1a3bb.camel@ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.61.241.83]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.27.93.21; IPV:; CTRY:IL; EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(346002)(376002)(136003)(13464003)(199004)(189003)(53754006)(81166006)(336012)(70206006)(70586007)(8936002)(81156014)(966005)(2616005)(4001150100001)(186003)(53546011)(26005)(478600001)(8676002)(5660300002)(36756003)(66574012)(110136005)(356004)(316002)(2906002)(108616005)(24736004)(36906005)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0102MB3166; H:mail.verint.com; FPR:;
 SPF:Pass; LANG:en; PTR:bzq-193.27.93-21.bgp.bezeqint.net; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ee0f8da4-551f-474d-d8ae-08d791e1525e
X-MS-TrafficTypeDiagnostic: VI1PR0102MB3166:
X-Microsoft-Antispam-PRVS: <VI1PR0102MB316609F48D9FA2C8096043ECE73D0@VI1PR0102MB3166.eurprd01.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 027367F73D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9L9cuI3OW2MlfZNoL0rX+bpiE/UsZv4xOaEEpLGGgWxEuZMxk9VUklTqKfpkX83h9UTVxujiqAY443FAM+ikkUNelkNZB1dC7+dLHGG4KJQAvQ9g2LYiSXQl3qPOnwB+Y375+bJ1rFkcuArZQS/+iHyu82epThb3KLmMIo4Xn6sAaib1b5uyBh3oxAiA1ijkn//hUj2r6kn2F9yvll8PWobv104xR/T5gbsGuXHsEOtsb3LjHfl6vim8K7cawdeFXTGXq+pxZST1VDz2WuPWdHbjpX8GGn2ZQJbkbeYlVf/fF50eiyux4SM/aQmnW+uFwZRmE32HpMV94uaAImwZiJI6wk0ISxUC3TfNr1ICR07rRSHGVm8NBjFvtNaMoga9XadU4UpFNn9wkLz6OTdghmu7j25+vIE9dq8W7dVW1vqFczNCWW+ZvF+btReP0cIQ5IsE/BT2vOiSiL9E/UVsKzZJ06IdV6mgB28at+MJzWkQLiC6iBCrwwqAFr+UzuARsncz15iNL9L6AhgzOk9Z5xljr3ORr+7bRn36E7fzTMsz3wwKifnD3eX9WT+tIPfs
X-OriginatorOrg: verint.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2020 13:15:23.0240 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ee0f8da4-551f-474d-d8ae-08d791e1525e
X-MS-Exchange-CrossTenant-Id: bb2ed304-4099-49cf-b081-cbb7a3a580ca
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=bb2ed304-4099-49cf-b081-cbb7a3a580ca; Ip=[193.27.93.21];
 Helo=[mail.verint.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0102MB3166
Subject: Re: [USRP-users] USRP B205 mini + uhd::usrp::multi_usrp_uhd +
 multithreading
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Melnikov, Roman via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Melnikov, Roman" <Roman.Melnikov@verint.com>
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

SGkgTWFyY3VzLA0KDQpZb3VyIHN1Z2dlc3Rpb24gaW5kZWVkIHdvcmtlZCBmb3IgbWUuICBDb21t
ZW50ZWQgb3V0IGxpbmVzIDM0MSB0byAzNDMsIHYzLjE0LjAgbGlidXNiMV9iYXNlLmNwcA0KDQpU
aGFuayB5b3UgIQ0KDQpSb21hIE0uDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9t
OiBNYXJjdXMgTcO8bGxlciBbbWFpbHRvOm1hcmN1cy5tdWVsbGVyQGV0dHVzLmNvbV0NClNlbnQ6
IFNhdHVyZGF5LCBEZWNlbWJlciAyOCwgMjAxOSAxMjo1NCBQTQ0KVG86IE1lbG5pa292LCBSb21h
biA8Um9tYW4uTWVsbmlrb3ZAdmVyaW50LmNvbT47IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
DQpTdWJqZWN0OiBSZTogW1VTUlAtdXNlcnNdIFVTUlAgQjIwNSBtaW5pICsgdWhkOjp1c3JwOjpt
dWx0aV91c3JwX3VoZCArIG11bHRpdGhyZWFkaW5nDQoNCkhpIFJvbWEsDQoNCkkgbXVzdCBhZG1p
dCB0aGF0IHRoaXMga2luZCBvZiBtdWx0aS1jb3JlIGxpYnVzYiBoYW5kbGluZyB3YXNuJ3Qgb25l
IG9mIHRoZSBvcmlnaW5hbCBkZXNpZ24gZ29hbHMuDQpFc3NlbnRpYWxseSwgaXQgKipjb3VsZCoq
IHdvcmsgd2l0aCBsaXR0bGUgY29kZSBtb2RpZmljYXRpb24gdG8gTk9UIHJldXNlIHRoZSBzYW1l
IGxpYnVzYiBjb250ZXh0IChvbiBhbnl0aGluZyBidXQgV2luZG93cywgYXQgbGVhc3QpLCBidXQg
dGhlIGZhY3QgdGhhdCB3ZSBjYWNoZSB0aGUgbGlidXNiIGNvbnRleHQgY2VydGFpbmx5IGhhcyBh
IHJlYXNvbi4NCg0KQW55d2F5cywgeW91IGNvdWxkIGRvIChyb3VnaGx5KSB0aGUgZm9sbG93aW5n
Og0KDQpSZW1vdmUgdGhlIGNhY2hpbmcgaW4gbGlidXNiMV9iYXNlLmNwcC4gVGhhdCB3b3VsZCBy
ZXN1bHQgaW4gKmEgbG90KiBvZiBsaWJ1c2IgY2FsbHMgZXZlcnkgdGltZSB5b3UgY3JlYXRlIGEg
bXVsdGlfdXNycCwgYnV0IGhvbmVzdGx5LCBpdCBjb3VsZCB3b3JrLiBIaWdobHkgdW50ZXN0ZWQh
DQoNCkJlc3QgcmVnYXJkcywNCk1hcmN1cw0KDQpPbiBTdW4sIDIwMTktMTItMjIgYXQgMTY6MTEg
KzAwMDAsIE1lbG5pa292LCBSb21hbiB2aWEgVVNSUC11c2Vycw0Kd3JvdGU6DQo+IEhlbGxvIGV2
ZXJ5b25lLA0KPg0KPiBJIGhhdmUgOCBiMjA1bWluaSBkZXZpY2VzLCBhbmQgSSB1c2UgdWhkOjp1
c3JwOjptdWx0aV91c3JwOjptYWtlKOKApikNCj4NCj4gSSB0cnkgdG8gcmVhZCBmcm9tIGVhY2gg
ZGV2aWNlIGZyb20gZGlmZmVyZW50IHRocmVhZA0KPg0KPiBXaGVuIEkgcnVuIHRoZSBwcm9maWxl
ciB3aGF0IEkgc2VlIGlzIHRoYXQgbGlidXNiIGhhcyBzaW5nbGUgdGhyZWFkDQo+IHRoYXQgZG8g
cG9sbGluZyAhDQo+DQo+IFdoZW4gSSBydW4gOCBhcHBsaWNhdGlvbnMgZWFjaCBpbiBkaWZmZXJl
bnQgcHJvY2VzcyBteSBwZXJmb3JtYW5jZSBpcw0KPiBPSy4gU2luY2UgSSByZWFsbHkgaGF2ZSBt
dWx0aXBsZSBjb250ZXh0cyAoIGxpYnVzYiBwb2xsaW5nICkgcmVjZWl2aW5nDQo+IGRhdGEuDQo+
DQo+IEhlcmUgaXMgcGVhY2Ugb2YgY29kZSBJIHJ1biBmb3IgZWFjaCBVU1JQIGRldmljZToNCj4N
Cj4gc3ByaW50ZiAoIGFyZ3MsDQo+DQo+ICJ0eXBlPWIyMDAsZW5hYmxlX3VzZXJfcmVncyxzZXJp
YWw9JVgsbWFzdGVyX2Nsb2NrX3JhdGU9JWQscmVjdl9idWZmXw0KPiBzaXplPSVkLGZwZ2E9JXMi
LA0KPiAgICAgICAgICAgICAgIHRoaXMtPklkLA0KPiAgICAgICAgICAgICAgICggaW50ICkgTWF4
TWFzdGVyQ2xvY2tSYXRlLA0KPiAgICAgICAgICAgICAgICggaW50ICkgUkVDVl9CVUZGRVJfU0la
RV9CWVRFUywNCj4gICAgICAgICAgICAgICBmcGdhX3BhdGggKTsNCj4NCj4gX3VzcnAgPSB1aGQ6
OnVzcnA6Om11bHRpX3VzcnA6Om1ha2UgKCB1aGQ6OmRldmljZV9hZGRyX3QgKCBhcmdzICkgKTsN
Cj4NCj4gLy8gY29uZmlndXJhdGlvbiDigKYuDQo+DQo+IF9zdHJlYW0gPSBfdXNycC0+Z2V0X3J4
X3N0cmVhbSAoIHN0cmVhbV9hcmdzICk7DQo+DQo+IEkgaGF2ZSA4IHN0cmVhbWVycyBvYmplY3Rz
IGVhY2ggaW4gaXRzIG93biB0aHJlYWQsIGRvaW5nDQo+DQo+IF9zdHJlYW0tPnJlY3YgKCDigKYg
KSBjYWxsDQo+DQo+IFdpbGwgYXBwcmVjaWF0ZSBhbnkgaGVscC4NCj4NCj4gUm9tYSBNLg0KPg0K
Pg0KPg0KPg0KPiBUaGlzIGVsZWN0cm9uaWMgbWVzc2FnZSBtYXkgY29udGFpbiBwcm9wcmlldGFy
eSBhbmQgY29uZmlkZW50aWFsDQo+IGluZm9ybWF0aW9uIG9mIFZlcmludCBTeXN0ZW1zIEluYy4s
IGl0cyBhZmZpbGlhdGVzIGFuZC9vcg0KPiBzdWJzaWRpYXJpZXMuIFRoZSBpbmZvcm1hdGlvbiBp
cyBpbnRlbmRlZCB0byBiZSBmb3IgdGhlIHVzZSBvZiB0aGUNCj4gaW5kaXZpZHVhbChzKSBvciBl
bnRpdHkoaWVzKSBuYW1lZCBhYm92ZS4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkDQo+IHJl
Y2lwaWVudCAob3IgYXV0aG9yaXplZCB0byByZWNlaXZlIHRoaXMgZS1tYWlsIGZvciB0aGUgaW50
ZW5kZWQNCj4gcmVjaXBpZW50KSwgeW91IG1heSBub3QgdXNlLCBjb3B5LCBkaXNjbG9zZSBvciBk
aXN0cmlidXRlIHRvIGFueW9uZQ0KPiB0aGlzIG1lc3NhZ2Ugb3IgYW55IGluZm9ybWF0aW9uIGNv
bnRhaW5lZCBpbiB0aGlzIG1lc3NhZ2UuIElmIHlvdSBoYXZlDQo+IHJlY2VpdmVkIHRoaXMgZWxl
Y3Ryb25pYyBtZXNzYWdlIGluIGVycm9yLCBwbGVhc2Ugbm90aWZ5IHVzIGJ5DQo+IHJlcGx5aW5n
IHRvIHRoaXMgZS1tYWlsLg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdA0KPiBVU1JQLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQ0KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNy
cC11c2Vyc19saXN0cy5ldHR1cy5jb20NCg0KDQoNClRoaXMgZWxlY3Ryb25pYyBtZXNzYWdlIG1h
eSBjb250YWluIHByb3ByaWV0YXJ5IGFuZCBjb25maWRlbnRpYWwgaW5mb3JtYXRpb24gb2YgVmVy
aW50IFN5c3RlbXMgSW5jLiwgaXRzIGFmZmlsaWF0ZXMgYW5kL29yIHN1YnNpZGlhcmllcy4gVGhl
IGluZm9ybWF0aW9uIGlzIGludGVuZGVkIHRvIGJlIGZvciB0aGUgdXNlIG9mIHRoZSBpbmRpdmlk
dWFsKHMpIG9yIGVudGl0eShpZXMpIG5hbWVkIGFib3ZlLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50
ZW5kZWQgcmVjaXBpZW50IChvciBhdXRob3JpemVkIHRvIHJlY2VpdmUgdGhpcyBlLW1haWwgZm9y
IHRoZSBpbnRlbmRlZCByZWNpcGllbnQpLCB5b3UgbWF5IG5vdCB1c2UsIGNvcHksIGRpc2Nsb3Nl
IG9yIGRpc3RyaWJ1dGUgdG8gYW55b25lIHRoaXMgbWVzc2FnZSBvciBhbnkgaW5mb3JtYXRpb24g
Y29udGFpbmVkIGluIHRoaXMgbWVzc2FnZS4gSWYgeW91IGhhdmUgcmVjZWl2ZWQgdGhpcyBlbGVj
dHJvbmljIG1lc3NhZ2UgaW4gZXJyb3IsIHBsZWFzZSBub3RpZnkgdXMgYnkgcmVwbHlpbmcgdG8g
dGhpcyBlLW1haWwuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpo
dHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5l
dHR1cy5jb20K
