Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AF246E2E6
	for <lists+usrp-users@lfdr.de>; Thu,  9 Dec 2021 08:07:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ECF2C384AD3
	for <lists+usrp-users@lfdr.de>; Thu,  9 Dec 2021 02:07:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=srcaus.onmicrosoft.com header.i=@srcaus.onmicrosoft.com header.b="psBwFgL5";
	dkim-atps=neutral
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2083.outbound.protection.outlook.com [40.107.237.83])
	by mm2.emwd.com (Postfix) with ESMTPS id 733ED3846E6
	for <usrp-users@lists.ettus.com>; Thu,  9 Dec 2021 02:06:24 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O61y4QOoRcxguDIG1Y5/HpdyxHVwb3cxoSE0y8rbLCmLdUUiqzEEsYjbFX+qnDLcMD6zx9e7nioNgZfKlZLYW5JLcB+GaRjrxFdSHF9p42StSr6QeG15OTYSk1WjFP9OSJn5ltczv2yN9vGQXPzNaH0bsPPHnScjAXMRZOAR0/XfFGRYwBHgFQHHKuu6SpvL7gk8j+m5uFrWUIxbvzVfM84AmXjPBx8m/993O5LbfFD/LXYsqYZhFnDU7zvaCBznhpnHa8zWbvHe+256bR4NQ7sjLZS3bk1Ej/N3IDroUZwrAhOAETRvtlXobEq5JnEJFKkppZH97ybPOOL1ZsUjGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZYBQuSIudGXGQg/u4REmxFqtP8aEuhIICkEfE/6uFRY=;
 b=f6m2PKXpQ7O50O+dLP8wCEWKJrYaiMwza4gudBW4KqPPLVwV2AmvdCBGusuEPvpYCuEZvcuvKZkFxEP/S7fIiPIouFm5eeFTe4Uu8UxSf5FQR2/zScWLLKPEswS0Ppibukd4xa9yKR75l5MJ40JCZ+SSFdT1I1T4CYFKKFZKHft7rzEMZdpMTFPiUllM3YoTk75HX7ZUSRlM/nMPOTxReInnxuCCOCddhdvsqy+BcCWlf8wBQ5lIwBfbh6AwYNEd/lVGsjLBlH75IABKJSXghEO9dUuhBj8EDXmoZGTpdDtOuzpuIV7Uyy9KASL9Oap5T7QfC5KcE3skC1oFYXeJ/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=srcaus.com; dmarc=pass action=none header.from=srcaus.com;
 dkim=pass header.d=srcaus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=srcaus.onmicrosoft.com; s=selector2-srcaus-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZYBQuSIudGXGQg/u4REmxFqtP8aEuhIICkEfE/6uFRY=;
 b=psBwFgL5bweIcj23JMZP3EF0SJW/ccwqPJbzmU8N9BAC8mvn+SYFwIewTUMu8lHvWx0bJkcRpyKqn2LRg0wzHQLLcpJNzVUh69YtNbZrr1dVb5pp1o1p8uMcugMZpaERCavUigmYh4B2tr5c2WTZdj/QM3vEDI3If4X/TCapPjA=
Received: from MN2PR16MB3502.namprd16.prod.outlook.com (2603:10b6:208:16c::17)
 by MN2PR16MB3502.namprd16.prod.outlook.com (2603:10b6:208:16c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Thu, 9 Dec
 2021 07:06:22 +0000
Received: from MN2PR16MB3502.namprd16.prod.outlook.com
 ([fe80::9965:5476:4a53:1ec9]) by MN2PR16MB3502.namprd16.prod.outlook.com
 ([fe80::9965:5476:4a53:1ec9%5]) with mapi id 15.20.4755.024; Thu, 9 Dec 2021
 07:06:21 +0000
From: Jonathan Pratt <jpratt@srcaus.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: mapping of channels in gnu radio with X310 with twin Rx radios
Thread-Index: AdfswvEFTNEUMQkURpSqr6RMYoiMRg==
Date: Thu, 9 Dec 2021 07:06:21 +0000
Message-ID: 
 <MN2PR16MB3502AF60E99998815E99E8E5B9709@MN2PR16MB3502.namprd16.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=srcaus.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4bdc10a5-44c9-40f9-736b-08d9bae2680a
x-ms-traffictypediagnostic: MN2PR16MB3502:EE_
x-microsoft-antispam-prvs: 
 <MN2PR16MB3502DC0D7F544D3AF6F8C38AB9709@MN2PR16MB3502.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 s4qmJtJFsb+Ewdu7yhQa9G37AV1WLGryy6ei+1jAmbzwAIJrH29Y8GGKWG4+o8jPrnXcr8RlIjz5aOlrr3OU6tlE3lFaI+NZX1zq1KxjFawpa+59vZX1Uzq97ng7oBdwIuvBLiSq4iA7qP9UrVCotz4EB+GELiNQARajmgZpHrOWGW9tJAphDZQgfWXWL0X4LxlCw0WImuc3SmK37SGCZ34gKDfPy83aqHH/jIz+GbhBhyNZQ10VLXaSEe/4nB++RGI4VcgdKoVVpz73RJfwg4z8W1K67OZd5qzATfB/twqa6h0yQpkHXXb+TWHrjkVupTzhADKQ1Hv8UbRc3gypUDYVV6doV15uTTs8dpBjY1mOWk2q86FkW/40MJEuC2BvYgaXmH8M+HWZz4sqs9PyISB1EL20O7zKb4sEO/KKv+KFXv2HK2gBUrd2Nv7wpxyNnrG5Str84+eJ6iBuoC+HFInlbOd1hol+IICPX5TNZ9EF4maUum+o6EH/R1M32VoR3lZZXfvnZfl9M1kW+97KzP4/hgf7uMj7GJLJWUhEdVav700ihgEL2wqBtEkNPlUBiFCwS1ANRoDbjFRqBohjHm4Bk0oBXuOmFd4vykGEmcG09Iw11kUdsAITewqMATFV1MIET6KDAInA3/nMJMzkYVtmpsIM/SifR08l/WlawP4jg4oPg+Je4FLIgv+QosWadm2sjzzSx6SpdlbhcurWhQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR16MB3502.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(346002)(366004)(396003)(376002)(39830400003)(5660300002)(86362001)(316002)(6506007)(26005)(508600001)(2906002)(8936002)(8676002)(38070700005)(186003)(52536014)(66446008)(66946007)(83380400001)(38100700002)(6916009)(76116006)(66476007)(66556008)(64756008)(122000001)(55016003)(7696005)(9686003)(71200400001)(33656002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?QcGZBrOExdGouFbKmhzbXJzCJtbkKWAku7HlYFNBUHctiGT39DBO3OBmyCrM?=
 =?us-ascii?Q?blaUwK0DRMtNuwhG102TOvzekLHJUl1Ep8LUp8a8T2/dS57vTZ7JqgH5vwGy?=
 =?us-ascii?Q?kzJqcbQSq3cd7MZfEMsw3jHM41a1FWQeUTz9xmlzcBOW/Bm6//cKnRzgKHF+?=
 =?us-ascii?Q?0a4R01VRlXMLx6YhFw0zRyOAykt4VpYaKbNK2379I/q0IGEBVBqaparjct2O?=
 =?us-ascii?Q?cQKprHM1oSR1TBFWNnV/lSodpkbRHITJU2uDPbH1K0e6lYhVoMBiOolK6Q0U?=
 =?us-ascii?Q?JMr9GjLtwZvRy9CvKBHtUfTW+6YIfeWEeSgJjbnqAIubvrqdWqcCSMhU5DJX?=
 =?us-ascii?Q?oVV253JBxnw8Vfu26mRkOeqaP1b6Fyfwx57j1btn4R4BTi4gxBbcxhAOR1/R?=
 =?us-ascii?Q?Kfhxjcn0Ut60C5ufoCtd/DxSuI9A9pn/zm2Q9vT7EKn4h+aMke3IpsrUFeTf?=
 =?us-ascii?Q?0Cy/thXI/opzJ2WyyFoV7RhY2YZ+tPDQOSYwQQO7XEWYL+p8WLfeZ1aFYBKn?=
 =?us-ascii?Q?qyoRSdstUC5gPvoCtma/jpnltu0P5HTDneXrMNSYpwOlz+qwoYpjSgWV7+PK?=
 =?us-ascii?Q?oSfACy3dEWnOWKKM6qmHLuAUNPuSLs2fPUo5NykpMetCXUBS21zj7+lB2OAg?=
 =?us-ascii?Q?x7r7C0Y3lh6LuBKO9cVQTeizcOFqJ4m8lCyqodzekK0ltaUXBV1umwB/ZSfT?=
 =?us-ascii?Q?z6Jy73AmxKRLyN63MLa17OpVUM8tCP9CzbKWd3kPyc+jQdghRzKulaaXwlkT?=
 =?us-ascii?Q?FXyM5UCR1T/1SnNpCbUqdVmKjiNAJIXtJG8mzGZE+ZkTt2N/1izCuGkavQJZ?=
 =?us-ascii?Q?BB2eNZY+LkMeGzYtfBa3qlMEB+/XA3LkXmDiGNVfenNS2+DqWSLfiOv3ahPj?=
 =?us-ascii?Q?3dc/6Yqks7AdxJFFNMM3tLmjIrrL2kmnlS1ZPFhpAqEWpAwCqNpAEF757XRi?=
 =?us-ascii?Q?RIcrFcJVa8ukqSnwU2bo+XK46sECc8HS7XzW05ABmQ+cL2jDRbGpAu/b85mq?=
 =?us-ascii?Q?TjBVYUTom5Bvx0uj0qPONMuJ1h9/gIfdd97YvCW8PTHq5RYTR4H3qBdtbbb8?=
 =?us-ascii?Q?JTPmWJOBORJuS3pK4RGqwLWTEUM/DOT0cSolcv9Js84elV2bPElVclywT7cJ?=
 =?us-ascii?Q?4J7c57oLq4rJ+CmPzSYVa8T2YnYDpTq9ZrgjESEe+3uQb2eOC4MKHDD99664?=
 =?us-ascii?Q?3uIVG4o99gwrRFZ/r1pR/xmoXfK5WvJvWXPxi7wDecNZVPY8UU2MX/EkmBy+?=
 =?us-ascii?Q?p4dCBl/v6g46nMR12t01GgWg6jR2fu5ZKXsyVDPh2gM8UZso0VSi1cT5H17E?=
 =?us-ascii?Q?Z6+v9P/MGJG8xoRU6HPr5Y96gbU3vTKW3gzk0pd8YhLCnuPhzsxGGdZSsHs9?=
 =?us-ascii?Q?62TOpJnOrYQTDMJzDm2FNN0AfuWuyqrwMrVQGubIg5GHcsmjse6e+fB/LbK/?=
 =?us-ascii?Q?Hjg39gIcgoqwmmpbegJQtOY0VLYS1qoXauLvhPwOhEcbLhkIW9w0rGUcdXfR?=
 =?us-ascii?Q?d0JNN2zY7S+rLEAI12tsxNKOHjSzPAR3cPkzg5Tv6bj6V5UC4BOw4F7whnSR?=
 =?us-ascii?Q?5eA/CfbMIuIohRJuplNQxNMEZn3rNdONBht/h6/zxpM8L8hqjezzVVvUWthe?=
 =?us-ascii?Q?bQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-OriginatorOrg: srcaus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB3502.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bdc10a5-44c9-40f9-736b-08d9bae2680a
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2021 07:06:21.5159
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22db5897-105f-4d6a-8017-4b11749bab04
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j8Mdf0gD1eAcvndP/zu31N2+/Jk54JOiU3l3PnpBZn3tEquyh/AiO+DjfJSrjMxXzgBwgEeCzsxq9Xt6g6B6gQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR16MB3502
Message-ID-Hash: 7KID6DYOQFRXFJQNBJYCACYSO3NQWC73
X-Message-ID-Hash: 7KID6DYOQFRXFJQNBJYCACYSO3NQWC73
X-MailFrom: jpratt@srcaus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] mapping of channels in gnu radio with X310 with twin Rx radios
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KFLBIZW6ZRRFYB7IIKN4GE46FX47ZYBQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: 7bit

Hi all

We have an X310 with 2 x TWIN RX radios in it.

We want to set up a GNU radio flow for this setup but not sure exactly how connections are mapped.

1. If we create a block (UHD: USRP source) with only one channel, which receiver is the data coming from - in particular which antenna is being used with the normal connection of left Twin RX (looking from the front) Antenna 1 to  RF A TX/RX and Antenna 2 to RFA RX2; and for the right Twin RX Antenna 1 to RFB RX/TX and Antenna A RFB RX2. The presumption is that it is RFA TX/RX but we would like to be certain. Is it possible to address a different receiver as a single channel? Is there a problem with only sourcing data from less than all of the receivers? The reason for doing this is because we can't get enough data from the X310 with all receivers being polled so we want to focus on a single receiver output if possible

2. If there are two receivers and the block is configured for four channels do the antenna connections in the RF Options tab refer to the connections of the specific radios? Does the MB option on the General tab need to be set to 2 for this to work properly?

3. If we install only one of the Twin RX boards, does it matter which position (RFA or RFB) that we install the board?

Is there some link that contains this kind of information?

Thanks

Kind regards
Jonathan Pratt
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
