Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFF0366E38
	for <lists+usrp-users@lfdr.de>; Wed, 21 Apr 2021 16:29:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5979C38406C
	for <lists+usrp-users@lfdr.de>; Wed, 21 Apr 2021 10:29:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="s+5UR09K";
	dkim-atps=neutral
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-eopbgr140094.outbound.protection.outlook.com [40.107.14.94])
	by mm2.emwd.com (Postfix) with ESMTPS id 22829383DCB
	for <usrp-users@lists.ettus.com>; Wed, 21 Apr 2021 10:28:16 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dWlRvlZq2k5Dt+mZGkBjXS2wDO+PkSABbWOAk6AB9bN5qU5VYzghE7yCRm7J2LOXJtNCKgnvxRAZQQMDTWO5by+H0Apq1yf+dLqob8iHzHMLX6at5FiTBUsOD4zRESwX1AUKu4BDtb8zsy+Orc+jCuF4YwOaUtNa8Ytq5C4V3GsyeZHgfT5DwBBlfZX/HQ7d8SxDbwFkIkA7vHaNXEa9gjDb4/UkKRmsJnXIU1md9i0tzVglvjhy6vbOYXEbPujjKLUVKj6ph1yoDGMm6eFb9QqS3oQh6urY14mSAog3seSz5ISyJlj9CBfWCSAB1/llWigyhfL1iiqNnD4Zkyac0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SUf5JF1LquhpxB5zcVYE2Umbaq5n8gKtE6VBjKPPdNs=;
 b=lBhcPRUT2Sb8irVYUVYu0KppCEYMtIxdIFGuFPYL36odc9EA6GKTYp03KWbG7HHdZhpOMP0PFm9r7x1WGwVIkxqcbofFY9d7f8Ng1iaItZvQXGev3k/PUo08462eDKgNq1kPDtOU1JfUta7ss84KvVTgRkDWqNcWB8B9TP/2ipDH/DPVMOZzo4GcTL80gKHdjjxZa6JMyUk/w9iog6kw7HRckv+28NlmL5ONVtMu9j54mXx1lAUB7dIMqWUEfmEALMZrXt4d+kUzUnVDBa03ZBeVZtpT3tH3Fc4lNNG3n0/zT7KsIjTgNTjPMTWiTznm91hGcURp3q7HiMjJtW6uWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SUf5JF1LquhpxB5zcVYE2Umbaq5n8gKtE6VBjKPPdNs=;
 b=s+5UR09KLd6CIpyDG6M8c6FvdH3aeZ+gXbi4NY/sRkyIunPP5X37VlR5XSOzt0AhZgwsOF/p179dmhlw52ymOyEjXT+v0Fs67eX2kXRpj/PbuEKTeMczeCht5Vg1+egK1x6vMRW30U5UfvPTzO5sdLI2b6jDLtfSTwS96Du0cVs=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM5P190MB0355.EURP190.PROD.OUTLOOK.COM (2603:10a6:206:1b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.21; Wed, 21 Apr
 2021 14:28:14 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::f5ee:cc76:ee5f:4095]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::f5ee:cc76:ee5f:4095%4]) with mapi id 15.20.4065.021; Wed, 21 Apr 2021
 14:28:14 +0000
Date: Wed, 21 Apr 2021 16:28:13 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20210421142813.ersfw3ko3gx3xcco@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <CA+SYr1-=KD4d86B6m9Ru-pGYd3Eok-mW+L2JiMPU1sL0xZpejQ@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CA+SYr1-=KD4d86B6m9Ru-pGYd3Eok-mW+L2JiMPU1sL0xZpejQ@mail.gmail.com>
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: AM0PR01CA0136.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:168::41) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by AM0PR01CA0136.eurprd01.prod.exchangelabs.com (2603:10a6:208:168::41) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.21 via Frontend Transport; Wed, 21 Apr 2021 14:28:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 96e68227-37df-40da-71dd-08d904d1b2c3
X-MS-TrafficTypeDiagnostic: AM5P190MB0355:
X-Microsoft-Antispam-PRVS: 
	<AM5P190MB0355B22ECEEFBC1082F90FBEF0479@AM5P190MB0355.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	iHAL/E+2jMhQTAxM83Vl0GxN/APuqLg6AgeR8C7TphKD1uTKhkW6seDYAByUQ9LOmNfHksbQQL+TNX0N7afIjNbgRHWSt3W5xNmsN9tPCCOOKfNLzNzfOauZdc+eYlGgWxUH5y5K4kPbFc9ON7fgibd1zNMJZPOvqb5t7byFAbGYs3F35DiITay5gru/loMnYxoc6MvhN561GdIpK57sofUBDy0Hhy6rUwigLwwvNNFo9shT1jTiW3xm0xdbsoyFsw9vEv7qyTe6AE+KE8+17Qn0k3vk3ySDLLOUBnO31u06D4KDWnUsQObQqlNlDZItmuc/BAiQnZ5XSiE2M9yRxdPAmIqNonqqZfAG4kAvrJniWizk/zodu3fVEwjAnqb946511K2OFrE65orHm1k1WtZ2FlsD8Z7UCKTDvSxqWVwLvWWbvH9Z/JXUUVyqc87xlPxoLSCBSoXZrHXRLl0H78atvYbV0+/UahZJ0afFr367qoSY/vqZR/l/J92eBSqyf3rUTCTS0fn8+5/3OBNYviFh30hUgTjAlzyZfW2KMJyVYmkCy8kdJLNKDdorHrgcBEjvtovYB+QRrc4yz8/d5r3uXAJRd6h2OWGKABhhDtrQ35/mJW4JItUm1EX6iARhfWCEGjobUFKg2Epf8W5FcA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(7916004)(396003)(136003)(39860400002)(346002)(376002)(366004)(86362001)(38100700002)(6916009)(956004)(52116002)(1076003)(8676002)(66476007)(26005)(66556008)(66946007)(786003)(186003)(316002)(5660300002)(33716001)(8936002)(478600001)(6486002)(16526019)(6496006)(2906002)(9686003)(38350700002)(83380400001)(53546011)(4744005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?iso-8859-1?Q?bPxWyrvSBA446i8trOtcwU2pmvSUYrIh1b2rnmSsOgBmjjcDUoxoCsULC0?=
 =?iso-8859-1?Q?9hflLowIJAp672YmLV8R8CQriWi2i6zhNIr6IJNWnaOeOd1wgoDz0xYhqU?=
 =?iso-8859-1?Q?g3wnoLEZVSaHqzR0Z8v8u2KTrMNdnHnBjNe0R/MLJNqdlM0pDTiVwGe3uR?=
 =?iso-8859-1?Q?gIkFW2pwNn/9vFU84b53nwhqqvQJtuACIhzyI0yjkIaz/yuPGQ+wBM0bRW?=
 =?iso-8859-1?Q?dQMq8T5zo2bZKeuElgIFi4z+53Todyt4Us4hSOuOLyz3yYprp5u09yYczU?=
 =?iso-8859-1?Q?Ti45WzHxX/gpMHd9v5481NB7kMOqYO3VdHu3vCJZc6Uh/H9bLNN26qwNsM?=
 =?iso-8859-1?Q?zXBNAfjQ6AOIs5CXBofFX0ML5DhQIIb+7SnASk8LJbkuG+wfZPEJl/y+LK?=
 =?iso-8859-1?Q?fQlrGqWBUGmFnCb9ps3XXXVuxHLW2JyM4gpgnUnb6SQQvCh5bUvMrXM3js?=
 =?iso-8859-1?Q?VPfuad4DysaDmf2sTI1WO4WILo51RvK6jV67vwpUG8LJl5bgORzaXt+qV/?=
 =?iso-8859-1?Q?olb+MZIcEIC9MOfaScAvl44afnBrXlV0jBKCIBZ5/C8EKprk2D6qHFbNJU?=
 =?iso-8859-1?Q?TfbH2CmgS0IHBLZteiuVcOiLnSNc4xJG3/Mvh50iy142gLfZYCACBfjoDE?=
 =?iso-8859-1?Q?5+XyDJJVLSGjVPyttuOjKOqaQ6mInt018qnB0hqB3ej2Gn/Piene+auN90?=
 =?iso-8859-1?Q?UzDTPIPrMQ71RqsBub8W+bcFSxzzBh5Px1csxkmBmmdJ/qFVJu2Kp0H7gI?=
 =?iso-8859-1?Q?isfi8Y+EDbxpmI8HCwmPBfnBrscmWxipd7ZSqCksBWnWtfEmv+BR5UmyZY?=
 =?iso-8859-1?Q?e7SMw5kGXn8qgL5tCj4pKU8MNugtIOvvs+XlO50kGdKAhpLHpdNWIxjO9A?=
 =?iso-8859-1?Q?0/PAlk/RTmdoY8Hl7+F+NXDVm+f1OVmjlEB8ObVdPOWgJy16MwyS5idtzR?=
 =?iso-8859-1?Q?aUIpWnK/VNA8GajyFV6rI8lNIDcFmR/QPhFK/KQmmn25tdBHco3/WORyLf?=
 =?iso-8859-1?Q?82sGFj3OhmVxs014xWqCkqLUHyD9PKuqMYH3qMYz6mYS+t8hvVz3F9Zw+T?=
 =?iso-8859-1?Q?uH+Nm84vej/WUwwYB0bLw5h+SrfGugDmP4jjA8HvVMMaNT68ryyj+6siT+?=
 =?iso-8859-1?Q?oqN0iksabOdUws1Ypu9xaZsQ2+8bDxs8pqLROZU3nKNbuIJ03ZEMOS3+Bz?=
 =?iso-8859-1?Q?mr6yJ3BEhucjobepW5aE53NBF2ntHyNqERdKtybwH9kbH1IbLIQZy7CsV0?=
 =?iso-8859-1?Q?WP5IcM5Iqes9+ttKn/L9ZNzLZi0k2UeyDcfTEzXq3pBabRibx5epYjpU+a?=
 =?iso-8859-1?Q?t9wjW8geN+7B//e5XZ+IG6nJej8mtp/rQbe9ki4dZzroXwinEiqbYtXB7g?=
 =?iso-8859-1?Q?hMi+ONsybP?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 96e68227-37df-40da-71dd-08d904d1b2c3
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2021 14:28:14.5844
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U6dyng3KNWgtWv+0q/BH0b6HLCjVCHR1rxqHs375vPwXaYr+aqgYwHbV8mSa7NgNunSbNQRTG9+DbGJlLIeBvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P190MB0355
Message-ID-Hash: YTKJPWFSGCRMRO4IHXOFOTWDYNVBPTLT
X-Message-ID-Hash: YTKJPWFSGCRMRO4IHXOFOTWDYNVBPTLT
X-MailFrom: Cedric.Hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Transmitter thanks to USRP E312 with high sample rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YTKJPWFSGCRMRO4IHXOFOTWDYNVBPTLT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On 21/04/21 14:16, Margaux Bougeard wrote:
> What is the procedure to create a transmitter with a sample rate of 61,44
> MHz with the USRP E312 ? I wonder if I am not limited by the sample data
> transfer rate of ARM processor.

As stated by Marcus, you are limited by the ARM processor.

> I want to use the USRP E312 to transmit a sequence, with IQ data,
> continuously

Do you mean a known fix sequence that you repeat continuously?
Does it need to be send continuously or periodically,
eg. sending the same preamble sequence every x ms?

Depending on the answer and the size of the sequence, you could use:
 - tx_stream->send with an attached timestamp (tx_medatada).
   This worked on E310 for 320 IQ at 20 MHz, send every ms.
 - A custom RFNOC block (since the Replay is not implemented on E31x) to by=
pass the ARM.


Regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
