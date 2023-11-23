Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 910177F5C16
	for <lists+usrp-users@lfdr.de>; Thu, 23 Nov 2023 11:17:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 44AF03845B0
	for <lists+usrp-users@lfdr.de>; Thu, 23 Nov 2023 05:17:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700734669; bh=LKy+CyMDeXPoi6vmgAcp7Pftwh3K5GVd+nPzHYS0GXI=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=Nm5X74LdJTgBjIdcp7pkjWboCrL7WcOD1+3gyp3oGIICwKbYdzqNO0IKFXDZp0KFq
	 aLsrMyDrdTyVl4QOptDfMZrDNGj5GruRoBfv/KQX9xNpYuW/K4EIj4OnZ/DRImn1tN
	 YzuSraYctRZugatuuT+0kGvV8zG34rlQBflHFd4FyXuMard6GBAESGIkD5ldX5UcPy
	 o4AHl2DGZw6lFl4Tx2qG8Oe/RAbWRtQnQYkRv23oqiMDKL9vet6y8rW0ZVTVe5fhGT
	 FOTwdfwdiSaXYuvrJ3xVnZZj6dlQhkHyMlJ3Kzk/6P0faKvkwKD69MkgPs3Ffa/odb
	 tvecJ+SiIhScQ==
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2100.outbound.protection.outlook.com [40.107.94.100])
	by mm2.emwd.com (Postfix) with ESMTPS id A5DC438444B
	for <usrp-users@lists.ettus.com>; Thu, 23 Nov 2023 05:17:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=fugro.com header.i=@fugro.com header.b="PWrFnadg";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fzgkLSjhjF0sJUf3WCge+Lm+E/OJarRmbbRbv5H+pzYzRKp//0NJqSxe81psAMB69VcHt/2o+cJdohJyUeDnIcz+DdJGenzcYghEKOfm2Mkq1wPxCuCmfSb8PK8o6STfP4x58svresn7v91LIMOeqSnXS0EhTeYl5qEiZRLVVJgGMd2m202NtTFcbY/UprpGHakhWn2tFhQ0r3V4+YvYwrZyNM92l9CHMrp2SIwDbC9AtKqcBzdaUSQXUC55XOS8dhOsauEpBBCly6cHTD2j+QIoUYIlydaCoabWBQZ2XV/7Yn/h4TiGRizF7mBADYvE2n/0Vku1LjUbNrHZ7tL8qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wViWQseohMImwKdxEiQPXDdbcxRKhL3XZ6UyJWtY1Ks=;
 b=AIdjoBG5iZfPkCcBmoDZFGsr6ps82L+FuwP6IphnCwh4nf4uib0e5GJsc1/KyS19Ed3LmxN5uqvD0Fx3vQdxwKqV5rMaSu5Z0sMEKv565w8eclbXP1oG03Chx6iDQXOeQFcViqzgbLSpvY/P9riyMtYjGHDIdimSpHTC8bxEGBEFVrkhwXHlyrYFqPa2JM0HMbeNWm1c+vvIiBU2WHJlszF/Y++AsgMB9+7gbLa0R6NxjMm1JxbvP3KkxJCTr78ohtI4acBskJoQeAk7ttQAuIrkwCdXQwYPRaU7lAWyVP05RDSfWTA+r1yxjlAg1j75hEbNogpga1H9437UHRMcQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fugro.com; dmarc=pass action=none header.from=fugro.com;
 dkim=pass header.d=fugro.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fugro.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wViWQseohMImwKdxEiQPXDdbcxRKhL3XZ6UyJWtY1Ks=;
 b=PWrFnadg2vw6p1YkIu2qWDqEqmaDmDosX0eUMlzfBVM/v8HKCPxBogNAMvpYfa0I9wkXVCxgE4nVCwaSqnyQZVjILLWaRmPh1HPEcWk0nbi8uy0rA/b0oa1cQ83H8LZuQiwLKSmJJmZi7NHQJAeheGzF3WrQDhF6TQu04aIkmZs=
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by BL1PR11MB5272.namprd11.prod.outlook.com (2603:10b6:208:30a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.20; Thu, 23 Nov
 2023 10:17:22 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::3285:5057:137b:3dc2]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::3285:5057:137b:3dc2%7]) with mapi id 15.20.7025.020; Thu, 23 Nov 2023
 10:17:22 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: GPIO delay on B210 (Timed command)
Thread-Index: Adod9Wopynx3XAFtSb2zsN1GOoiEtg==
Date: Thu, 23 Nov 2023 10:17:22 +0000
Message-ID: 
 <PH0PR11MB5095A4703514F7B1FCBF1EEB9CB9A@PH0PR11MB5095.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fugro.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5095:EE_|BL1PR11MB5272:EE_
x-ms-office365-filtering-correlation-id: 8ae29d85-347c-46e3-808d-08dbec0d61e1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 kai8UuWjIyMKVcQwScNKt8Y4ToAVCGlP3W2VwCdyzhg7TbmQ3Z5SUvuz8DlJ2HGmgYnbupsrYp8/blGzpFlCV1+cyYKVBpx3/CMawR8LvAkMdXsKnB669fBsgxlPrHZ4WP6e96axp6C1zLI32NcpJRyL8D3Gs1DGy3UwX90llTXm5UW58zkIIp6MC1Uxr/7hBhsYtEMq+ucMYVYEVm5RtzJ5ISw1rK0Mi4Xp9pAduM0Rh19UwQuics8gK4p4wd3Kl4DIgPalC0P1jRmRGlqP/FXmPwVho8EBpCnEewYNWm65V8tbIYNl34QhRpjBBe8J+HRUonruk9i2v14j0pGegNJhky+TDt+EBq7tFgLtHL7qgA1sytYXTzwgL05xhgli1K88k3xw2MPFyuSTIYSqsR4GA67XMaUXHnmuzD03zQF3u1/YxTo1xeFdyha2/dCPxRZbbEORFxHp+KIIqo4ZuwebJRYQaaRV9XpbkPKrNLKmHIeari8uPywMLLP72JIyUHUeqP8NoKTElF7KxL8lmSiOqjtFmrfiihixkA6zW69mVR/SkXxV7lz8sc5g+Jdl3KJhNoSVx0kdOHgDLtngghunNB8MT7/MBq/NYgiDzxiufIkvnecdCXA2cIvP3Z2Usxu2kboMiGB6op5rBAsTRV/299HEMF9e3TXoDbI3L2w=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB5095.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(136003)(346002)(366004)(376002)(39860400002)(230922051799003)(230173577357003)(230273577357003)(451199024)(186009)(1800799012)(64100799003)(55016003)(41300700001)(2906002)(5660300002)(8936002)(8676002)(83380400001)(52536014)(66946007)(66446008)(76116006)(38070700009)(66476007)(66556008)(64756008)(478600001)(316002)(6916009)(38100700002)(122000001)(71200400001)(9686003)(86362001)(33656002)(26005)(7696005)(6506007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?vRyuBA9ZaH5pe402qUKjLerOXJEWIddOtnODM4kd3/Jqd1/p0nf3Fvq1baJ5?=
 =?us-ascii?Q?xbFcjf1q/mX5stfB4/zuyeIrOK3IxIqhyabX6ymM1qLmCOuulnPwOKunAvJ1?=
 =?us-ascii?Q?IAxIaghfyfgPzlkz5w/u2YQ+gkA8PP1ZZ2kqA7rK7bsufznrMoVOpJ55gh1o?=
 =?us-ascii?Q?wF10MdcVwFRdm3FRpF3yJ/6x3JwH3p9U+xo420JZYpuYOXNBhyK7tNrvA721?=
 =?us-ascii?Q?pEKPqAw37IXaqMKar9frYy/Aer/YoBZn315PlkPE4YYC8xBnQn+pPrpQKPvW?=
 =?us-ascii?Q?g9kZqc6I+JYfcORJFC6nnB7W3H+klBq7dhdtkvYE/F6MIhy9CGX75+e8EigF?=
 =?us-ascii?Q?x2AYyRUMXxSUdcmZMlKbgRr2jTmcQZ4MAdYhPjjEYUzh+ERHLSVYl3BfbgQ0?=
 =?us-ascii?Q?ZYYKfYMsanHzX40VgwA8+2MYQtFtDfMwWddJnSZzYODsQ7+T20E+6NjdmiQd?=
 =?us-ascii?Q?ed9M548rLGXjtymj/S72dxJvPTHrklILxJbr/WW42M/ilYQTLAhLeiAnCapN?=
 =?us-ascii?Q?4/T80kO9wJFCd+oRdnwolsnFNBPOuJ2K9qAd2WViHqgLvOMBLe6FdnFo+N+0?=
 =?us-ascii?Q?yyEcxEbvfwloiC0lVaamo1K3P67MrjyGa8cf5viDDGYlnZpDdGUwue0ZDljN?=
 =?us-ascii?Q?g0zct6oUZ/uhmQiXs/OM3peJXBRx0GweXtKYnsFBxHk0koOSyWJYzyWfq31H?=
 =?us-ascii?Q?zD1B+hvR16olSIuEXimfL5b2BpB1CaXeJ45SxVa3pIYpbHOInYynChgiio2p?=
 =?us-ascii?Q?K1K/y+Vdmpr0XRYxOOlfssTdDgaQdZ8El50dDTYmPB/iKJtl8/MJFF9Z+D/i?=
 =?us-ascii?Q?t/U/HmyfAVsdc4Rd5oB2DVoSJGb7iredbKiTnjXDFGycqJ5Sepr/mf30CvFb?=
 =?us-ascii?Q?t3lmWXjRlQtW7kLYaGZGaesonQEfCFLyhw5d4HVghDb/h3KD/OmhnPifYJ55?=
 =?us-ascii?Q?1LsKZrkbvfuYTW+DYJEk50CkS7mZK/cvSges59Lp8G/cjO/CxKpYB9v7Lkyg?=
 =?us-ascii?Q?ET7sljxWzfRF8234zgxNgVONopvDwK81kOC8YtX4cNfDVApxMG6GaZV/XjXf?=
 =?us-ascii?Q?K/1zw4mzd1b6fykgGwRCrt+ebqiglwiWLER7gxn3pBkB/pi/Oxjukki/UpCj?=
 =?us-ascii?Q?cXLm3i/TvAE6waOReldoO63linF9D5jPk+zTUC7fQZBKy6Th8RJL3YWiFIM5?=
 =?us-ascii?Q?hnVhj+HiKDhgqb2NZyrwT7UHsok5lny1pGeARGBuQ+W2p5J+WBLphEG0SmEl?=
 =?us-ascii?Q?irbK3Xu8tyP7xocrRJnTXeg+R1V0jWnYJdPpWqGgeSQDO9roHdiQ3SuE6jtl?=
 =?us-ascii?Q?tn6leS+7oRGpKNMeCPrT57WMgOe+P8VTVRoU36EYAGajrW5QB+zOPG6Tskg4?=
 =?us-ascii?Q?pdN+4a5h7+gvWEquRAb5gSGzjeyRdeCXBnPS7w6E34CpIrsNOH1lrhrBZVoW?=
 =?us-ascii?Q?1Q33MQsaPy9TENFR9XhntZh6lD72d9Od27rlANSAXoLOY2TgOhTIiVcnhMIP?=
 =?us-ascii?Q?qf3YiN86a8hlUJv4vw7NLGR5uwICoJ9TgaW0+VERPXll5aAakake9Doj0h/O?=
 =?us-ascii?Q?70tuddo5WDnR3J58uAprYRVepAAq7xAC9TvxgPbs?=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-OriginatorOrg: fugro.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ae29d85-347c-46e3-808d-08dbec0d61e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 10:17:22.3513
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3b48527-4cbe-42a2-b4d2-11b3cc7a86fc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MX4hhHLZrcbHGj0QpdeUSrHezKKP2Hbm9VLDnI5dL1Io50hv/xnWdzb/sBS+7iTvEAquzMU/MfpxX7dH6wHj1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5272
Message-ID-Hash: 7IIEC5PD5WJO6SFV2CAKUPLAGZJ4XD5J
X-Message-ID-Hash: 7IIEC5PD5WJO6SFV2CAKUPLAGZJ4XD5J
X-MailFrom: j.rognskog@fugro.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] GPIO delay on B210 (Timed command)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TSWK72TWXVG3TMJY2RODSNBFRSOPJ5HH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Rognskog, John-Harry via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Rognskog, John-Harry" <j.rognskog@fugro.com>
Content-Transfer-Encoding: 7bit

Hi,

I am measuring GPIO delay between PPS input and GPIO output of approximately 9/MCLK using the script below. I have run through all master clock frequencies with 1MHz steps and measuring the PPS input and GPIO output on a oscilloscope.
For example a 4MHz master clock gives a delay of 2.1us and a 40MHz master clock gives a delay of 220ns.
Could anyone shed a light on where this delay comes from, is there an input delay from PPS to VITA time, or is this delay only on the GPIO output?

import uhd
import time

usrp = uhd.usrp.MultiUSRP()
usrp.set_master_clock_rate(61e6)

# set timing sources
usrp.set_clock_source("external")
usrp.set_time_source("external")


# set GPIO registers
usrp.set_gpio_attr('FP0','CTRL', 0x000, 0xFFF)
usrp.set_gpio_attr('FP0','DDR', 0xFFF, 0xFFF)
usrp.set_gpio_attr('FP0','OUT',0x3FF, 0x3FF, 0)

# synchronize to time
usrp.set_time_unknown_pps(uhd.types.TimeSpec(0))
usrp.set_time_next_pps(uhd.types.TimeSpec(0))

for i in range(1000000):
    ppstime = usrp.get_time_last_pps()

    # clear FPGA command queue
    usrp.clear_command_time()
    triggertime = uhd.types.TimeSpec(ppstime.get_full_secs() + 1)

    usrp.set_command_time(triggertime)

    print("loop ",i, ppstime.get_full_secs(), ppstime.get_frac_secs(), "triggertime", triggertime.get_full_secs(), triggertime.get_frac_secs() )

    # issue this command at ppstime + i
    usrp.set_gpio_attr('FP0', 'OUT', 0xFFF, 0xFFF)

    # issue this command set ppstime + i + 0.1
    usrp.set_command_time(triggertime + 0.1)
    usrp.set_gpio_attr('FP0', 'OUT', 0x0, 0xFFF)

    time.sleep(0.9)

Cheers,
John
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
