Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6142B6036D4
	for <lists+usrp-users@lfdr.de>; Wed, 19 Oct 2022 01:57:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5903380D98
	for <lists+usrp-users@lfdr.de>; Tue, 18 Oct 2022 19:57:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666137474; bh=WjaFrqAGfJQoD4Z7qf2JOwYeczhfNh9FHsL1Lixg+Vc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=sCc4rmE2KRN5TC2EBkeBGGZ+gqYwhUtITPduiUL8vEyrb8Wjr0zLMAhyK8NLbn0l6
	 H6bsBOYDxMr/p/Yjs0grOAoQFFhWkVS3QoAxDKGP9o4sBQiHS0GXpQ2lALJM91fnDn
	 7FiwtIFfcsoRLLs5fWNhn10PcEhChyztAcrlaR5YQ6t3LYg2L9wTjR4QzSTys561Yn
	 9psEEOtcfiMK5lDOHp20/BWsDnf0lIGi8a/u2/bWBGfs5cM6ofasPkGoAUJs8AW2+x
	 6fQ3G1Ut/7IHZNqjSXQBVgJcDYtnD7+NlnvhNo4wtMECtmfgrSbu5tDU33RQq5pTjl
	 fxfwDv+uKHW9g==
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam04on2063.outbound.protection.outlook.com [40.107.101.63])
	by mm2.emwd.com (Postfix) with ESMTPS id 7376A380BBD
	for <usrp-users@lists.ettus.com>; Tue, 18 Oct 2022 19:57:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=srcaus.onmicrosoft.com header.i=@srcaus.onmicrosoft.com header.b="lj+eHgKp";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CZ+owuUlPXzbmupFpwWYGXu1cPw0EnMYREi1NUxbpVqk4aIzFAtNukP4H3Y1efbPYARS9e0g1BhTwXEj+nb20RO05lSH0b2Gn3J7w6gEd92DO6OTssDoomWB2QB9sHDFqFn2Avf/EY2VzumkFOPxVzeKKPPxauP6jYU+HXzwfhoBZ3l4adv08jKrrfGutDw3hq5CWyHqm3W7BY7C14pMgqhtMnS7815S0g2BxYfseVvRBCMxoxQN9xxanzcwXUedS6ZPBwCof5y1EBUkpZWEe/T37JsNVUCPyzJTc3orcU0s63EUqcPpIWPjwlSGvssWaznIVQjCII+n0TfFga0S8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a3y5LG28KGORQ2+enEP5x6Bur3AcV91NU2AUp6sjxg0=;
 b=VyYZLmnEys5NGiRS34LEtECkZxQoDs7hwV0ovxRuuB/XUHE3RY2WpKoiR1SRZNxi1lK78PdVYP3KA5Usjq3vZdI0+0P9hH9Cyy315MvodEgEIckZr1f4XtS+1fv6g/S+Zey+LWkw6Y4eC9RZJ3Ouzq6o8fNzL8NFZWyWiBzinBfz9lnXTXOABVIaI+eyD6GAykWY7dX6hjGCrod0rAgmEF8SP/ielYTKirOPqkGFTcbK156hJowC7YY0Q52w1L7sDwA2nCAYW+ox7v9QH14QLPyWnn73AU0JpWeh42MJAxLslcpIml7Ve5q4ftzuFllJ3RDNoGvGAAGKncyVioFrQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=srcaus.com; dmarc=pass action=none header.from=srcaus.com;
 dkim=pass header.d=srcaus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=srcaus.onmicrosoft.com; s=selector2-srcaus-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a3y5LG28KGORQ2+enEP5x6Bur3AcV91NU2AUp6sjxg0=;
 b=lj+eHgKpH56e7fzdk3qQ13ypSm9HYHgSX27Bgu1MJhT6MQ4M/DrZgdOtXnqh9Hz013RDaSLE9MnpzKZg3zNYlUFfk561SVCx5Ilm2mJpE+Cb5AvpcF3XHlcscVlEpJ0QhRQpQINESVllQeETgam2e01Im3WVCsHIPY6ArgC+zOY=
Received: from BYAPR16MB2952.namprd16.prod.outlook.com (2603:10b6:a03:f0::10)
 by DM5PR16MB1817.namprd16.prod.outlook.com (2603:10b6:4:19::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.32; Tue, 18 Oct
 2022 23:57:08 +0000
Received: from BYAPR16MB2952.namprd16.prod.outlook.com
 ([fe80::e65f:222c:d740:51eb]) by BYAPR16MB2952.namprd16.prod.outlook.com
 ([fe80::e65f:222c:d740:51eb%5]) with mapi id 15.20.5723.033; Tue, 18 Oct 2022
 23:57:08 +0000
From: Jonathan Pratt <jpratt@srcaus.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: [ERROR] [RFNOC::GRAPH] Error during
 initialization of block 0/Radio#0
Thread-Index: AdjjSOr3Hg/HS0HOSIOikP9Vftjc0wAA632AAAAYmPA=
Date: Tue, 18 Oct 2022 23:57:07 +0000
Message-ID: 
 <BYAPR16MB2952EA77A2796D897FF4399EB9289@BYAPR16MB2952.namprd16.prod.outlook.com>
References: 
 <BYAPR16MB2952D76B86E7A8A82923FB3FB9289@BYAPR16MB2952.namprd16.prod.outlook.com>
 <7e0821ca-636a-88f6-eb38-c58cc7d408d4@gmail.com>
In-Reply-To: <7e0821ca-636a-88f6-eb38-c58cc7d408d4@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=srcaus.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR16MB2952:EE_|DM5PR16MB1817:EE_
x-ms-office365-filtering-correlation-id: e69ca035-1b50-4125-5eb1-08dab1647721
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 GCKCldX+CIQJYNORAinfggIx/5QzKWkAr/1F4empQF3Njkmauhg5CwRuKJ63+sa+vWmAcHUyQTv+A07y9mtU4I/9Ajy1N+B2cYcCnuZIIZTaoB0p7aYJt3U5vkpYo3weHbGJKjrhFJaovb3hyHKJGZl5HLPr5FX2zhSBAz0oRToocuTQENxWZtoZ02uKa0o15fcl2C5iwZM33mBQP9d3IiNwAlWPoB8GqhP075yRrmrasq8cAtpP8jGPl/VoYtR7A1vh4DOJsCrw4WFv2Pew98JmET+JGasfhjTQ5ztMY7GIX5UlgyvtLkqPXmgg8PSJsSfknNVDcDbl5LRgPQ4EAwRbviUREGZykZop5O67FAdaZq+cQn0cVc+opNgU6kbGHnJUYrtZTewFht40mAxzOXLwx4e9K9672d+MCvam/9QIxPvpdBL9IrNCOLcQZszrujJ0waR3ZYvBdEyAhqMMW2Voq+oyTOeqj88eha0ZF/FZli6Fd97xpPbZMe1bpNPpwx8XIFkl+HJgNBBWvEj8eNP4qUsXsa4y74+PSYEUP0uhmfL7La6Y2An+aqlWBF/LJ1fST1ec7I7PMKJiZpUj7aZIRzWk4cfR+alZV0M8vYV9L48jRWITNgOE24bEaBxkGxgS3mKMixlRc6nA4QNirYzArRPwNs3leIKQ0axaPy5qyy4iyZv93ENfAH521PenMxr9O4mtvsuHpENP69TpZUcxaDdAca+DXqTkoxwChONl5Up1gkL6g0xla4kLKN52t5i00ZY21Tj/rF8gHQk6/g==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR16MB2952.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(396003)(346002)(376002)(366004)(136003)(39830400003)(451199015)(66556008)(8676002)(66446008)(66946007)(7696005)(33656002)(66476007)(64756008)(9686003)(76116006)(478600001)(6916009)(316002)(186003)(2906002)(4001150100001)(38100700002)(83380400001)(26005)(55016003)(38070700005)(53546011)(52536014)(6506007)(122000001)(8936002)(86362001)(5660300002)(66899015)(41300700001)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?anRDalhaOXlRN283UGhtbkR1N1htVC9JMHlqZnYxMlBYZzBRRjZKN0NZckNv?=
 =?utf-8?B?OGJhSXg2blFTNkpoS1p0c1hWbnBOSWFmRCszYkxhV3NFM1h3YW9xT3RZWSsx?=
 =?utf-8?B?SUExaXhHY2FRKzREYnpTYThHSHQzL1ZkdTFzOVBzeTBuRDlFZGJINUczNWFt?=
 =?utf-8?B?SHAzMEx2M0M1RFE5VUU3QnlhcytiNUN5NkJtWXlaQ1hKVzR5MUJOYzZ3NmFE?=
 =?utf-8?B?UlM5TzFFUlFsY0hMYS9mekhqMDQ0VW9Qd21NRUZ2L2RQazB2UGhHYTlqWEw4?=
 =?utf-8?B?WUVrTnkxSlh2cEhETjMwcjZnZ2VHdW05NkZYZTRHZWhjbkZOcDlHZkx0dzZv?=
 =?utf-8?B?M1diMUVaL0dUZ0svRWVVdlBWeXU3TUFpOXA5a0h6b2hPZ255QmhMdmZBdVdF?=
 =?utf-8?B?ZXZQZi9nYnB0RkFYZndFT005L0hIUHRRYU9VSzNUb1dCcjJsSFFtcGJCRzE4?=
 =?utf-8?B?SUR4RDYrZDNJdDhublhuOEdzSUt2QWx6L2o1VmJaRkk3T1dZR1hWSkt0QklH?=
 =?utf-8?B?cldTQkVOM3c0SE1YL2w5blovSTFtYnJQTSthQ0oxVm5SWFV2UHlsWU5Gc2cx?=
 =?utf-8?B?V3l6UlB5dTh0aktsVERWQ3A5NG51TkM4RnQyOEoyYUJhOE9Ia3lkQnoyUUVu?=
 =?utf-8?B?Q1hnUHJjV0FwK1ljMlo5cmtpQmNQaGtSM1dObmt0U2p5V1cySEdBUnpTVkdv?=
 =?utf-8?B?Q3RjR25IRkloRy90Vi9FOTZ0bDdRVjYzYUpYeXQ2T3NOVDFpOVNPMUZkcnRo?=
 =?utf-8?B?SVdOcEhHaks0aUUzYVBTMW1CY1NPNk0zNS9FUUFkRHl6RGtrcW8rdEFmYW5i?=
 =?utf-8?B?MEt4U2ZXa2lFRXAzcE9iMDc0SG5vQWduYzNMaU5JVWJvZ0l1UERXaU9HRzF0?=
 =?utf-8?B?aWdDa0ZaL0hpOVBBeS9FelRxQWJCdm1qVVZDNTR0ZUw3ODNhOGMvNkZOR1Bq?=
 =?utf-8?B?RUJqUjRtS0lyMVJNbldXaDNzb1ltbVRxbkU1MlpRQnpsY2JOTXprU2M4ZWJK?=
 =?utf-8?B?cmJZVDBrNWFWdkhmSDd4S2o3KzRHTkJRc3oxV1lGd0J0RjhQNm9yejJDZGg2?=
 =?utf-8?B?QW0wVStJUzBWUXJnWE5nVzFJQndJa3hrUkNMMFR2SXFBcWQvdXphSFdab2RO?=
 =?utf-8?B?ZE9zY1BTZncycUprcjh5TC8waElqSjZScnZhcytCSG1ndEpFbXpkY3ZQRmF6?=
 =?utf-8?B?UklCNFFLY0xhWGdOcDNoQVp0SE44OGdrT3ZmV0VnejJaOTc4SHBNYm1PRm13?=
 =?utf-8?B?dUltQ21qMDFNRkc5WEM4SXhhOTlMaUl5UUZOb2NuQjlEckdaYi9VSGtBakZv?=
 =?utf-8?B?Yk5iQUtEK1liUDQ5S2Y4R0VINWc2bTZuMmM3bVJ6M2s4VUtlaG9Gc3RaN24z?=
 =?utf-8?B?Ti82VFoyakl2YmdMSEh0cjQ0RVovZUg2My80SDh3Q0dKTTRVWjdyakJrV1Na?=
 =?utf-8?B?RGRCeW5CakhEQVloeG5WQU5LYWxVYnAzVUtNczFndEwvWlFEL3h5UDNLTmdL?=
 =?utf-8?B?bkNhczVyQ2xaWEYzRlFwZ0kwMVlVUUc5K2dESG1XZFkyWnlDK1ltcjJGRzJK?=
 =?utf-8?B?ZzlETnM3RmxldnRJT0FKNkZZQWhETUc2WDFiMFBVTWdqTG9mcWRtL1BYSElN?=
 =?utf-8?B?T2ZlcmxuS29jeGsyK0lUVXdSNXhMczZhUVBDTTFObDVaQUQvV0J6N2Y4UWxV?=
 =?utf-8?B?WUhtcmlPUlQ5VzI2UTRiRWJSeStkNmluZzQ4ZWtBTElZc1BrbDZ0V05NdkJt?=
 =?utf-8?B?QkY5bFdIUDRraTNWUzA4bjJ4MkV1dFd6ZTR6NHRveWRvaVdQdXdFMENCa0Z5?=
 =?utf-8?B?Zy9oUTRNblVUeHVqTGtXelE3aDl6YVdmMENUYTF6MmtqNjloTlhKdjVEaUEw?=
 =?utf-8?B?K203ZEZza3kxWFY4NXlWUk9lL0tlTE15V0tsWUhZUlVablRaUTVQQ1QydzBH?=
 =?utf-8?B?NDVteFBMcG9Sb283M0tZUkNVWTVmMXY1OGpvZWZTM20wd0tNZ2k0eTB5aWJj?=
 =?utf-8?B?Vldid1VHUG1nVVR5YkdIT0tiUGYwa2R2N0M5K2RCMkN2T3dET3RiRGVEd0lU?=
 =?utf-8?B?NEU2cVhHaFY0MlE2OHBLWTNzVkUrOWxOQXlTeE9sUFNFa1M4N0JaZUhZZ3NS?=
 =?utf-8?Q?Pmbs=3D?=
MIME-Version: 1.0
X-OriginatorOrg: srcaus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR16MB2952.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e69ca035-1b50-4125-5eb1-08dab1647721
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2022 23:57:07.9399
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22db5897-105f-4d6a-8017-4b11749bab04
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bxIEWoqC+awVjVdwgSagJXygMViYcIeQJa/me5tVLZF52dFNblTJC9EVY9d6aYrm4RHZwrFu4QqnS68Yj6KIeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR16MB1817
Message-ID-Hash: NBP7HW5E4HHYGEYFQZE7HKMRVFKRIFX2
X-Message-ID-Hash: NBP7HW5E4HHYGEYFQZE7HKMRVFKRIFX2
X-MailFrom: jpratt@srcaus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [ERROR] [RFNOC::GRAPH] Error during initialization of block 0/Radio#0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IFWDX35JXWCPDWTDK4UHRRAJIFCVUBJH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

To clarify, the communication has previously worked with the same software/radio configuration.

This is an evolved error and we would just like to know what it means so that we have the hope of fixing it - needs to be a remote fix as we no longer have physical access to the radio.

thanks - JP

-----Original Message-----
From: Marcus D. Leech <patchvonbraun@gmail.com> 
Sent: Wednesday, 19 October 2022 09:52
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: [ERROR] [RFNOC::GRAPH] Error during initialization of block 0/Radio#0

WARNING: This message has originated from an untrusted source. Be mindful of attachments and embedded links.

On 2022-10-18 19:41, Jonathan Pratt wrote:
> Hi
>   We are trying to talk to an x310. Access to the device is limited to the ethernet connection.
> The message we get back when starting a gnuradio flow graph is [ERROR] 
> [RFNOC::GRAPH] Error during initialization of block 0/Radio#0!
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RuntimeError: self_cal_adc_capture_delay: Self calibration failed. Convergence error.
>
> The X310 has ONE TwinRx RF Daughterboard attached.
>
> Can someone please indicate what the error means and suggest a 
> workaround? Please ignore any prefix that we have added
>
> thanks - JP
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe 
> send an email to usrp-users-leave@lists.ettus.com
What version of UHD are you using?  What version of Gnu Radio?

I've been using an X310 with UHD 4.1.0.5 and GR version 3.10.1.1 with two TwinRX installed, without any issues.  I'm using
   the first SFP port (SFP0) but at 10Gbit.   I've previously used it at
1GBit without any issues.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
