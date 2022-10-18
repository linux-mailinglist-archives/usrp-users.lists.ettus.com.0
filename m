Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6415B6036BF
	for <lists+usrp-users@lfdr.de>; Wed, 19 Oct 2022 01:43:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DAFD1380EDD
	for <lists+usrp-users@lfdr.de>; Tue, 18 Oct 2022 19:43:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666136611; bh=4Lqod5x60v/DiZ3U74+k8rzdLEYuq4xucxq+ZS7lAbY=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vW+yngqgqziM5Bx7rpDllRcG9rb7N9iFiICBdUuEJBHuggMQhaiWH6IGQKywddfn1
	 oAEVq1RSeB1rZuZod1H9Dao8VC4AOoXZ6y6ZHGUnhutbOGVa6pkBbTDVAAryUaMqhZ
	 crLEY710hFA1EJX31MBSwiUDwloe24A9GBMBvjAJt2Il83XzF6eytEyLujJjx5Ydgl
	 L7A1dDfS/eJ3wRyPNfN6XlxBan5nHke8l2jCOjgeMtbqKvAQ/loTUlb89iH0xmEex9
	 WLAo/JoJL5zJACUHJ6cW/Ov4J1akEq1tomnJ6lLOp0/619xTOM5Qm7PTzqqi9EhHs/
	 HnOZVrs0h4bQw==
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2061.outbound.protection.outlook.com [40.107.244.61])
	by mm2.emwd.com (Postfix) with ESMTPS id 64F23380C96
	for <usrp-users@lists.ettus.com>; Tue, 18 Oct 2022 19:41:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=srcaus.onmicrosoft.com header.i=@srcaus.onmicrosoft.com header.b="QSkGyCZr";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b9XhO0TSAcxQ7LfgGFhoqVzRGZe08WpdZ3d7lJE13gwpkxydRj5T3TXWo61feKvY48h2Q+HxW1NXxeeAKTsXLuzYMKVb8La3Di94yGfG24IRr+eL0cmJ1NoNPTUcKM7hTMB6v5InSuTFZ6L39+Ed/KaYjEwlMlb2aT98WDSem1MyEPVuS2Db4RkvGtkKkaulg5HVvZVx0glkGHZBq+74eYMJB2eto9uWV2Gd1vrPvxf5Bhx/W0oeYPH6tDU5q3Wswy5aCPz7bL671lzeD2fy+Obmp66WgTywi7aj0gcK2sLNPULbL5cQmx+jIpFYfBMdD0JrflAbswVEKfLyDkOAgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nwjgq5n/zHuKei6ATdbqhgYBpuE+imDCVa2erZJI2oo=;
 b=LM/m6z2fARbNgu3yToPqvWdO1zXAkGPizTAzNguHXol59UNE+eidW1Oqk5X3LZF1pyvD33X1FfufwzdyP1v5ykfkRL9bMuiyW5uig0CkxhJOUvZKRZDQDsl2Q5Z1i284GttdJO+ekxLRF51B/ofi3Z9pfGhkaFc4WlAsxZQ6DhDeBRl7DtHHCxfIMbXPFcWPOvVW8R8NaKqOfaycWKUdVJkNmTgEane0OU18EVfIpPnR/jgZ4w6e5IlX9q5f7jVq0hEfkiYjwzPi3oaVn/kzYcXSCid5vTYnxCPnLDm+hPnOrYNcM6M+MGsSZJZzib1ZWiyE7LR7a6YU/29b1hAfPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=srcaus.com; dmarc=pass action=none header.from=srcaus.com;
 dkim=pass header.d=srcaus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=srcaus.onmicrosoft.com; s=selector2-srcaus-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nwjgq5n/zHuKei6ATdbqhgYBpuE+imDCVa2erZJI2oo=;
 b=QSkGyCZrXC4bSwOgBSrtViweNGHmDu4P65ODHoTn5vQgpNo/YRfh9wsbtJmO10/xHYYLebvU/Zfnjd9zIh4+kM610cknW3PFdH1ky9lZ2PQnNmfIf8tt6pk1VWdJ7Rutf/zMaS5UpOWeKHMe7NItiO7uER75FgXXgFnDVqMxM4U=
Received: from BYAPR16MB2952.namprd16.prod.outlook.com (2603:10b6:a03:f0::10)
 by DM5PR1601MB1305.namprd16.prod.outlook.com (2603:10b6:3:e6::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.32; Tue, 18 Oct
 2022 23:41:50 +0000
Received: from BYAPR16MB2952.namprd16.prod.outlook.com
 ([fe80::e65f:222c:d740:51eb]) by BYAPR16MB2952.namprd16.prod.outlook.com
 ([fe80::e65f:222c:d740:51eb%5]) with mapi id 15.20.5723.033; Tue, 18 Oct 2022
 23:41:49 +0000
From: Jonathan Pratt <jpratt@srcaus.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [ERROR] [RFNOC::GRAPH] Error during initialization of block
 0/Radio#0
Thread-Index: AdjjSOr3Hg/HS0HOSIOikP9Vftjc0w==
Date: Tue, 18 Oct 2022 23:41:49 +0000
Message-ID: 
 <BYAPR16MB2952D76B86E7A8A82923FB3FB9289@BYAPR16MB2952.namprd16.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=srcaus.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR16MB2952:EE_|DM5PR1601MB1305:EE_
x-ms-office365-filtering-correlation-id: 893e2209-1fae-4b11-1a3f-08dab16253cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 NEChCfj6zxWNbigUnK+5W3JklgsqsbPTvlVgWu90trQGqoOi0OUjk3f3Bs+8zupaMV3ekLNb7bGzOUK+oCYgxxsCh/BujZp9sxgIiLQARDnkSEdc8Jxz/jd84Jn3Tj60yPROLnvrr3sYi2DSI3NrkOUUPaA1q3TPfke/0G7BRdAxgg2Ajvpqr6UsZslfyAIqckZ2CrAJ2odRYElP908JQ/1iOb1zAG4Tp5sUxW9zmf5ygs3CDbj19trJINaIX/ZesWohrYUVUODTzDt/ntX19dpBuJbV++ryiE7QHtj9aDak367Od04otfzQ2WK75CVnFI7fkn8sjfgNzaXBTle6Qsi73RRAuPaR2+gsFDJ+aT5dIWTA4xy6M3gozdVWu1rCp0abJTZtpQOOErffnN2JGCFnZ1aGyhfUgrALuW91CNVfHt8MtamwwK/F7AThS4ovUZI+LDJ40boCSxwr2cSE3S89t9MVftadEvk3/cmLS80twmTcT4anyPW0SjzkCSYOzqf1ZyboK4vgUEpQrNwAYBfhHWc53XwHMRfMS4SEh/ugqpFj6YthiUQCS46AMlgsFwRWpM2SFKhrF4voRE0GhKLJ3wulskvCymVsT4gEX46OJN157tVsxdla3ZrspRAOpWJsNyyM1MroPICXpifmENfEnuJdKwdepTDE/dYjY57nOJR3dUifhxGTK6cWxle5Q5mfWUJ9NjTMKHTzTqsLRsZbM54zMHzzVhlvHF3BbPOfaXXjg+xrwKe+Z0Xxn+g/FwRHAaGGiaAcr/fKS22CyQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR16MB2952.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(376002)(346002)(136003)(39830400003)(396003)(451199015)(86362001)(122000001)(38070700005)(33656002)(66476007)(55016003)(38100700002)(66446008)(66556008)(66946007)(8676002)(76116006)(6916009)(64756008)(316002)(186003)(2906002)(4744005)(5660300002)(8936002)(41300700001)(83380400001)(52536014)(71200400001)(478600001)(26005)(9686003)(7696005)(6506007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?ixNiDb4MTkh6Z8qDl2DmisMOgH26AJR7Nx9t/vVPQ7wTqHsllNrGsvlraogm?=
 =?us-ascii?Q?DLRn/pJxCzvHhWtqzactf8jDhAHjiufArb1mOoyEOcicvSKaqCH4+8mKBbFn?=
 =?us-ascii?Q?csUmamW9s6gyIA7xKNuP4CHizIXvLZsBXUCH4soyGfJp3lN0TT3aqSqN8GYr?=
 =?us-ascii?Q?vqA+MDxYo1eeIvxvKFA4ZMb5/w5doM19aO+mjQ1YLjaaDQy/eX1H0ZaTC8+a?=
 =?us-ascii?Q?wJ3Cv31AStmYLMa8DZwtGldAB9JK1wQ5pdXOs5K1k7Ha0Qo6bR6Zy4V7aOUK?=
 =?us-ascii?Q?C+JTQeD7t6GTvU6YREh/oA6KYUwWUev7z19JT5Q2o5jvSLPUGmaqhhF+eD83?=
 =?us-ascii?Q?YHtySbuxeHjX2T/U4ZZqOZKfZtD9Zdc6AITFAkt+0caNsqpp89Rr6PEYGBu3?=
 =?us-ascii?Q?VsdTChgWQ2uWepAmUNh5Q1mbN/6JR0qsPgvzHyv+cMAhh+fgsEJRLZ7JmHZ7?=
 =?us-ascii?Q?HEZ6SLEWkzYt481C4fXygA1taxuAHlp8dbbpb1BRMohGmZ8VAeHnh7XkMr8u?=
 =?us-ascii?Q?bdhqeaUYpXw2SdV29J+61f51URcHI9DURHRSoM414dOI82QEfKclYzgsM7+Q?=
 =?us-ascii?Q?keErPxx/SwdIw4JfPPjmw9jD9cH5nv3XY93qcJJrM0R6vuCsFNUkJ5oEooJ+?=
 =?us-ascii?Q?Q4zVnWzzqrHpnLyswcbCeSEczVKdAK5m5dnfVwz7L8gYYMF9KasIQlyNnM/g?=
 =?us-ascii?Q?wxBfSlDVenueH8LRb0woQNSReB7iZrKicQiSDVPp+UZGMwJdHQyk61VH4UoO?=
 =?us-ascii?Q?9mWocDN5lWjra7A6bT0wjil13oqpu1C03tFgwyrbIA5HWkvDP1t0MPuq9nlV?=
 =?us-ascii?Q?Dhvki3wv4+cWB+FgjFZe7JgPffDbI4jp4GyQBbL3o7WnN0oj41FHYX821mwB?=
 =?us-ascii?Q?MfCGFnJoPtA2H36K9jt9KsUPUTgsSP4Hlwf3KfuJlmh08BqKjVYMyqf6L7em?=
 =?us-ascii?Q?GicxZatfyNv6s+mehYb9b3z+kFn76EpRcDbeq2M0S1XsT+g0oXdkzA9RkK0g?=
 =?us-ascii?Q?Rz75e4i7Nxd7vqv250LTKrHefEFKsLZecc+KZAOCEerpQ/w7dhWiDodXqkN/?=
 =?us-ascii?Q?NCzKAKnrz/zARAU0fYKkziMUXqvecNdS0n2iQ5uihLK02m73kdFRCg6kKTdL?=
 =?us-ascii?Q?P2O9WIsCUCH89TS8NlABM6peNjUlH7jjWogLR1Bepzga8LCB1ERijUISaHwk?=
 =?us-ascii?Q?Qka7mBOOAI7MC3vwDHDBFidLiop1Xipj7LbK8X9zpBg+0IOcZX/cikB8F4HA?=
 =?us-ascii?Q?JHUTPmPoJg8BDqdNLFjvb98+TIuNzm7wBbOtDfz9HjfoDkhGf5SwxLfJyedS?=
 =?us-ascii?Q?tQcHlb6fWoE4qLgY+zX+f4TPKZFQCi1uu8tO+egZy2s0Z/vo362SAVIMKCUA?=
 =?us-ascii?Q?qJMY51w4+I3p8bsa/ofGBR3qqzpXMyDD/oY/stJmD5+Mq6/m5JU3GxOjj9iU?=
 =?us-ascii?Q?Zhf9V/VErgISl8nmnxo4J581+D4FDNBwP7cr//uHNV6BkowidB5NTyfTIk+j?=
 =?us-ascii?Q?u0GOmhx5Bt6+i08/jBdoLG5yxuy4Fec3S0DY2I2ULPABeYHHEeHT91CS+toY?=
 =?us-ascii?Q?uJj9dUEyNixM/w5SxN4=3D?=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-OriginatorOrg: srcaus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR16MB2952.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 893e2209-1fae-4b11-1a3f-08dab16253cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2022 23:41:49.7026
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22db5897-105f-4d6a-8017-4b11749bab04
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XIOkCESWh2TnksuyyYa44eiqcovsC2O7Mu0qdlHsBuWKvkGaotB7XzncDek1hrMUWKivQvo3kf7dCssjXs3gDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1601MB1305
Message-ID-Hash: 7YYLWLQKKMQLI232F7WGZ4U7D5TORJC7
X-Message-ID-Hash: 7YYLWLQKKMQLI232F7WGZ4U7D5TORJC7
X-MailFrom: jpratt@srcaus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [ERROR] [RFNOC::GRAPH] Error during initialization of block 0/Radio#0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PGGRXV3CKGCQGUFPFCSL6AKEDCR2JNQ3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: 7bit

Hi
 We are trying to talk to an x310. Access to the device is limited to the ethernet connection.
The message we get back when starting a gnuradio flow graph is 
[ERROR] [RFNOC::GRAPH] Error during initialization of block 0/Radio#0!
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RuntimeError: self_cal_adc_capture_delay: Self calibration failed. Convergence error.

The X310 has ONE TwinRx RF Daughterboard attached.

Can someone please indicate what the error means and suggest a workaround? Please ignore any prefix that we have added

thanks - JP
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
