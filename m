Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1BD4C0FE0
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 11:11:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 257C7380C05
	for <lists+usrp-users@lfdr.de>; Wed, 23 Feb 2022 05:11:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="rfaDRbuJ";
	dkim-atps=neutral
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-oln040092075078.outbound.protection.outlook.com [40.92.75.78])
	by mm2.emwd.com (Postfix) with ESMTPS id 3F6D83847FF
	for <usrp-users@lists.ettus.com>; Wed, 23 Feb 2022 05:10:28 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NaOsDHszXlLugsrdp6yKmclK4gwPVLKDq6aqTchlTVtUwGGYhP8QjTpMlrvWzZmgbgFGADwzCzYCJtmRq/oGl8f1fclBY9HxEmVTyMUS750O9kMUcOCnrD5HHe4wCXEyX1ikc9sTFjaRXWY5PiQeCumlQE6JfCE+mRBP0dp31SLXg3qnaUh/Fv0jKzA9J5MU5VhNwxQ2c9UOHus/pNEcbb7gJ/GOZNYS+RMTVv9bVrz92a6c2eZcpO4rpLh67rsjkH8qyFqw8vWXUOJjJ++TnxCCq3joRAI7FpYRRxhMej0a+jXAvMqMXAlWO27QKzZ7CsUTajNtz37savWT6puwZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wzuzPRIlbLse3Ny4h2Rkp13u1KO8Az8C5nPTx4xaIks=;
 b=cV6mPWG+iWwCLVKoQqP7JeGuhyO7Tcfmvfg0i7UV8scy/r5mfVY/b3neFu+XM0873HdSBEhtsiGFEw1W2HBqPIzmAki5P8Bw/nMWJrqqA0RrYStk+uaBx+PnsdWie0m2RKawqzZbks47iE0Dyf4tjXW7WHtL8aB94d9lKxBERsfKZAk3kMGPpCpfUdgSi/8MHv10PD74gS6YmZJxROC0rz7FlVIBOTzdYoOIwQnEt6kr76xoTFQtbE36pDDNGwJPBufXl1pgmj7WbFoclew34xq/C7wpc88H6u37WJIg9d7OLWB8Sy4G4yp1dW6syiQejhxAKmYeH7hWGNIFuTgouQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wzuzPRIlbLse3Ny4h2Rkp13u1KO8Az8C5nPTx4xaIks=;
 b=rfaDRbuJM6ieMTpX6RMFOFDq4DhdD3WPjJXLNROi1IRgsNtCrLWIrdxlXf6osOQj2+LJmsoNAF5YtxZ3utHLOv7AFkD8r5v+0kqRbn7TxgLKBzKHO8Gjl8hzFpr8GiBEcenWNP7q5BchdknajNoYVWZtxY+jdqtHI+5FXevGy3PxSXitQphU2uG4m9OHj6q5wGBhnW0HFKSFFoNKMhUUayQJL3Ew2zccQDey3BfD2mJtsWeDu2nYC+JJZMe6qVa/DNm6kNDnrw0NlNk+VpPVEibYqCheNH9mOQWNbVGU8+6WX0LiIou6cS8/6ZvSFnvPW1cOVD1RMur4BDm7u076dw==
Received: from PAXP193MB2252.EURP193.PROD.OUTLOOK.COM (2603:10a6:102:232::16)
 by GV1P193MB2119.EURP193.PROD.OUTLOOK.COM (2603:10a6:150:28::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.16; Wed, 23 Feb
 2022 10:10:26 +0000
Received: from PAXP193MB2252.EURP193.PROD.OUTLOOK.COM
 ([fe80::599d:c151:e3e1:bce2]) by PAXP193MB2252.EURP193.PROD.OUTLOOK.COM
 ([fe80::599d:c151:e3e1:bce2%4]) with mapi id 15.20.5017.022; Wed, 23 Feb 2022
 10:10:25 +0000
From: =?iso-8859-1?Q?Thomas_Lorblanch=E8s?= <zlika_ese@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Overflows "O" messages with USRP X300
Thread-Index: AQHYKJ1mvspOvSVSY0q+hGo44eFebg==
Date: Wed, 23 Feb 2022 10:10:25 +0000
Message-ID: 
 <PAXP193MB22523F0DC38B2BBD84D77318963C9@PAXP193MB2252.EURP193.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: a2414569-b46f-f4a1-b794-034ffaa70f41
x-tmn: [FXuklD7n7cJbf7BqKcwNCDoIHJ7yMBRw]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b4b91336-3b66-44e4-57a7-08d9f6b4b5fc
x-ms-traffictypediagnostic: GV1P193MB2119:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 R24JBlt60OPf0wAmIsWFuoh3YvTqX36dyP4FqKXZimL/7CJKUvsd+6jL4/8X4lDBBITRXMYpWshjSee0KnoRGLho2F4VGCjAXNhbyyNaoC96hVWYGIAYF5AlBtouPtI0WXB0w4akS4fDmAIXJMMBVrA6zGKAiqCa4j2ErCr+xPBwnDYru1vS3gJx0+vdr1KvThs4OFBbf5jD/mnwYZxLVGU3i7OM5bQ1ukdr3J6Q2ejj+kG7xNjd6RHzkAbVAixrDOnnUYrqteb0tcZK300nfkTLE2mrJa0gKj8SzPYLZNbl45xFOYZZDs/SPy98eiROMmhf/ETI5LiJpEzHGUz7krn/y+ohDFEHlirDNbO1eQc0bObSmfI4I7/W1t4yKz76I9wJ2UQ78tUrWpN+VHyvGkbrX/olLIx06NQUBltiM/0N/rzFvHf8mvruBIDXLqlMdFu0GckUJedx5kZXXxlGyJEhT98cI+89mcEr+E6dO2Z7PNWyCnT33cqnbXBsm1hQKe2PHclHF6S2GwrsXSxwb0wp7SBHp4Yz+vIdcEH4E+7sI3MQlTy9dtCU0l0mf+dIIByF35zbGjqwN6mO2RUvuo72p5fsafKU/+X5D/0GMN/15SKrEPOH6H8GdS062oFm
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 QniNFIicYEaOZ28DZwsljZvGKz+5eq/nk9mcvplW2cbd8D45NNZxDJAf59Kv4nR9iPe8WB+ajHYrVw7v0EwX8VonUQUKq+R1WNaqSXG738FLvYwrg8E5wU36yFK/PluZYcDAuoNXhkyyTqp5Hkvx5lwv2uvRPaaOtcaRGXWFSZ4NeWNn+fjFWWwwzsLxKIFq+vlVqSq0UVc2RzC9/Eo4UU7tcgB7f3InVRaD9Wjwdg4mA+kKsmIevswFE2nvdIAx4+ibYer6CTqZq3tAswvWRATVct5ud8LOLbmEbZLTZakq5sQ+4jkeYmWN7ndQ3eSb4UQi2D7giOzfBavEKTtWU8siwfyDLv4CD0bniS+EnYvx1xykDXjWz8z15ur0vG2v3N/wzlVdU3K31Jn2R8zG/PZUdyO99G23Eg911jzadRyGSroxCi9lfED3Fxr8Nk58myD9+gsYZ0sAkSt4Xwpqs0z0dsjGJN4ImapKCMO6RSVxMXmFKD2kNz0tFnYY0F+ra5qIioHJ+zI2BhjqrqwoshYKFJEDrvg4rqKIt7pNkWKEZsP4esbRAVzPO+gxMhm3bIDCYGJNrFE0Uqr1yxxCDz/WfJ4iC4XOJv2zUwKJCrdY5KN3uRVs9mmEAcH/ZADX5dnpI/Wsx7RuFSdaY3Bt1WoAVVdAK1S6Cjzb2l39fGZ+sasLVPZj1arVMZk6DM8bmY9IHkdXtEpB1R8uBW7gkk8xhWih3nEm2e3VtsDFnvb8AwcT1Q+PaV/VHI8heyplN1Mf2dgWCMUR950T8AA1Ku9En4FhBVNhUU6S1Kl5Da1Ypf5aiGB0cc9hJBZtViiiXwIaAdKFGB64HBXSkt8KlQ68NOXbn7caBAOM5bc4FwwaSzcfGGSpW7I9pX5YZtZpVndFhZqPHt25eu8CLdqQwG0c9m6BQuqq7hBHEPfQIA6HGQtz7C8gMxmdczSE2Wq1
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-80ceb.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXP193MB2252.EURP193.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: b4b91336-3b66-44e4-57a7-08d9f6b4b5fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2022 10:10:25.6614
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1P193MB2119
Message-ID-Hash: XHIFQTC4AZRIU6LZEO5U56TIE7DSIHH5
X-Message-ID-Hash: XHIFQTC4AZRIU6LZEO5U56TIE7DSIHH5
X-MailFrom: zlika_ese@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Overflows "O" messages with USRP X300
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZYMBLE4GRFRPO7ZC3SWQP6KJBEGRTKHI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,
I try to use a USRP X300 with a 10G Ethernet link at full speed (200MS/s), running uhd 3.15.0 and gnuradio 3.8.2.
I followed all the tips from 
https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks
but I still receive "O"s from time to time.
I don't have these messages at 100MS/s.
I'm surprised to receive these overflow warnings, because this is not what is 
described in
https://files.ettus.com/manual/page_general.html#general_ounotes.
In this document, network-based devices are only supposed to drop ("D") packets 
because there is no back-pressure.
So how is it possible to receive "O"s (i.e. the device's internal buffers 
become full) with this setup?
Thanks for your answers.
Thomas
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
