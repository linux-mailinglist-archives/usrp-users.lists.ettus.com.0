Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E458A31FC85
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 17:00:35 +0100 (CET)
Received: from [::1] (port=55062 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lD8Cn-0005yn-8L; Fri, 19 Feb 2021 11:00:33 -0500
Received: from mail-eopbgr140098.outbound.protection.outlook.com
 ([40.107.14.98]:42721 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1lD8Cj-0005sM-A7
 for usrp-users@lists.ettus.com; Fri, 19 Feb 2021 11:00:29 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KMMWb0TAINT7l4KZYGLTEWhnkeKn6Rd+LrX9aswbsxFckFW1l34orHzo7esi3nIdhDOmlXS0YBC5uXjgZ+gMRV+C4I//19pPrUXZGR3YWNxbxmSw2jM1nCaJx3DxxHGS12dyOvpYszfnB1C8d5xvfeUcQ1Ov9B5LfJRd0yqqeqPsuFj9oWxM1Bs+Lr7RzG5y9979VaZQIlqZdiFf6EW/BOd7U1TRIwlwg8BPc4RgY7jA5RspzX8n0WzvVeEBlfYeDUtzY24SB+EoC4dcaGy72hPc/bCg84jXYZ7b24FaCYhsaAjx0lz7QyK9Yf5xYLbxYk4jf+tkAh0YZdqrEBH18Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DVzvncG0WkKfTqEfAlLylI1umFy9cSmG/UzrelATJYE=;
 b=RIHo5SN8tVVGBT3B5pqHLPY3n2OGfYDPqwkXNwZk2lfixmo6ZWwIUySzdwchwYKGBcB292wLw3F114feaq9H9vbxqNHYchUZq40Qw86suzJWTWdrcvQJIkyW4Lqef8Djbno2ICRgpcl3enq73E0hUyBDSH52z+UjtYpb/g5HMmDbeQDWPpdgZMn8ZOX7Omq2aPDKbEGZ1u42dNhBiJIqybdeMNTtAePdEKd58psZ2Ak/ez4RDEAIfeeEJyYv2wJCsWA2QKOzrufF+SgdzXVLgYoLwgXhh9SMQr2X9gKsVckm1pK5kZ2+1iT0kD0fwmBBQy/L19IVmZlQ6Ijl5qNWTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DVzvncG0WkKfTqEfAlLylI1umFy9cSmG/UzrelATJYE=;
 b=j9YU3hbZgfip811yG/zlPaGwp8JZJ7p4Z8NEcSm1HXq2TsvSX0vO00YJiKxDaVrxk+t//kT8tE8C+erdX/ovhx7DfFkbx7Izfipa+N3mGJx+0thws7rGOdoA6+i2+h4UVa6mWhPeHoGSmQCPCESOX3Y0POb3nmxZt6xHexa+Yms=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AS8P190MB1109.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:2e7::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25; Fri, 19 Feb
 2021 15:59:47 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3846.043; Fri, 19 Feb 2021
 15:59:47 +0000
Date: Fri, 19 Feb 2021 16:59:45 +0100
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <20210219155945.6px2hffwz7nixtnx@barbe>
Mail-Followup-To: usrp-users <usrp-users@lists.ettus.com>
References: <LNXP123MB3724BAB625FE639AF1D8FEBCCA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <20210217172935.joprwj3f6rwdu3jo@barbe>
 <CAB__hTSncBC=XS1YvCoE1jip2kY607aWC2hrFUOYcPCq4V6+iA@mail.gmail.com>
 <20210218090858.serfuy4u67rmor6c@barbe>
 <CAB__hTRwpakb-Vu+Q98vp9MGUW9NgggV=-AmK+4OWc0rw6zTNg@mail.gmail.com>
 <20210218172348.5xjhxl3b3g5ptjnd@barbe>
 <CAB__hTQEGfMFSm8L1jV41d_WSradNM_RJdODcEkGYH27x29q3g@mail.gmail.com>
 <20210219112003.z2mthwtk3xjkrmdl@barbe>
 <CAB__hTQ2VeJ9nNwaO+_pEiih141V7OzdGfYf9xSKn7EYFgHHWA@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAB__hTQ2VeJ9nNwaO+_pEiih141V7OzdGfYf9xSKn7EYFgHHWA@mail.gmail.com>
X-Originating-IP: [164.15.78.67]
X-ClientProxiedBy: AM0PR10CA0097.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:e6::14) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (164.15.78.67) by
 AM0PR10CA0097.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:e6::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.27 via Frontend Transport; Fri, 19 Feb 2021 15:59:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 141f6738-825e-4f66-ede5-08d8d4ef618f
X-MS-TrafficTypeDiagnostic: AS8P190MB1109:
X-Microsoft-Antispam-PRVS: <AS8P190MB11094D411386017246327ACCF0849@AS8P190MB1109.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0t8Kv/JRmOoGhrTqnhM29i4/vU4hteXaV7CTWm7DKhMWPHRmJJuc3Bs3Ntlxvt/SKB37EbTRs1BHAcee4umAUCTK5MiLpZdm1RoIfkaTKSR4pEIVQ3l5gC31TDhWOSfT/mXLglwI0yTCsLoBQNT3kAOoxI8jolldlfEGyoZTI7K0MfeLFr/kveh5dA99lFqCj+T+w6mbUPi6nOCTDc6wDcHlnNuK168alifo4lLX2gkKbAFwTDvdpipjhiNoN1mLr7HyqiUyS76Pbme/EFk8F4d5SCbnPYYdPMIR/5d8wamH+ZdFLoIQnVtycASypuhG1NNRWPlOlC5lot8I26hybJLmhOXnRvASWDRX3ywpCaLstO/B452XsWl4hrUCnuFu7Qvc27nHhcM8asx4VDYkhQzj/wNxd8Vtosxr0UWTPNWgJgU5lXbxZMtkMPjkHsZZKRqEUX9CDO5hOpuQRZ+pBfUtcprjhGzctaxY3aTMSw84nDAXJPn21lAoOB3g7z+ynOWSXqLCa5bWiKR7Z5Qasw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(136003)(366004)(396003)(376002)(346002)(39840400004)(86362001)(66946007)(66556008)(52116002)(186003)(66476007)(83380400001)(2906002)(66574015)(478600001)(33716001)(6916009)(786003)(5660300002)(1076003)(956004)(316002)(9686003)(53546011)(26005)(6496006)(6486002)(16526019)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?F62cPsMXVTORzufzQ73qLftXOsWc4eKNRFV7xop3ykg3kUzE2OnKuEO15J?=
 =?iso-8859-1?Q?caKGCTkjeKRhO7zCpdfCzYYuTdTCqEkOAkS5yyHAsHy05puR7AVYMmErBH?=
 =?iso-8859-1?Q?wVZ/iX1xInWZ1vXdL/hRx3fE9a57i26zZ8z+o2EF9OsO/ouy4KcvYPigA8?=
 =?iso-8859-1?Q?hyj6YJD/9N1RrpmgA5cHW+kOBDEqLbwVtY1cGcvI/GS+4v1o/8UvBxJVtb?=
 =?iso-8859-1?Q?FLJRK7ppAHFTvLtTSKoY2Sn4eIahqxGBcCfLa0cu6FW3wePyjdoP4By/C9?=
 =?iso-8859-1?Q?vTr62s2tAJCFUcUbXMgwMXe9CiMrSWU2dfglQqmmj9OJG0OBRwh1SmQY3R?=
 =?iso-8859-1?Q?5+4MNPr2YtTNifsEmvr4Q5guZplwhZRuifOMsFG+eAJgQTz4Ho7iRe/LhX?=
 =?iso-8859-1?Q?iUcU37QjP+l7p9+oDY/0NDBW6oKJlTfIWr/MT5f5VTc2tFJOlpe0LB2pUf?=
 =?iso-8859-1?Q?t4Hwj7eCntOg/C6AX2PSRaUlLOcymY8qu8cVyrrrwhpolIV/UL/juBTXFS?=
 =?iso-8859-1?Q?uz4D2rx1eO/nMH09LOub2p2AcCQKsLJaiTPeqsAfYwEj5zk8HY0bhxYqLY?=
 =?iso-8859-1?Q?69nQ3Pvi+rmtfGdvI5CIvJ02bIuD8ChSTxpm+h5Z4Afup1FkG8Wcc73F6n?=
 =?iso-8859-1?Q?g1iQPJ7p1Pq+4laumOW2aZ400pV39oPOnE2Lb2imbg63XkzHDQOz285kDg?=
 =?iso-8859-1?Q?bJBQcsvHVPBm8eLV+A6x1FDJBXKjS4oUWPRXohfPfic9nryXDbDL9w4fGk?=
 =?iso-8859-1?Q?ezEZqmAXHCq8NO17aVhErPVl+v0isidqr4av5oWUanvhQafcNNC/bdvZgu?=
 =?iso-8859-1?Q?mZ852lkDCCdAfSZUvlloVUAHrb9IkDd03NjwTj9d4AmUseFVDfNsV6LJor?=
 =?iso-8859-1?Q?J4q7fy9lWwyaqbPODhPf0tmnP/etkuI27qKUSTd0O+HDLAs8iu/W73lZmc?=
 =?iso-8859-1?Q?H2/TD7g5/xICQP9+dvV13wKOMUPzmmTVEBX1vR4LzRHuTwPzmR7XtW1+tu?=
 =?iso-8859-1?Q?XqPQji/UXHwvwDm/3lXLKPSYT++Iw4PvS3IDHJlVyAlSepziVPWxg5zAV0?=
 =?iso-8859-1?Q?jMpl/gl4znLYb4p8alDbBUUguugS01VBgANLvlY1bwOxJCB7sGQ1tSgzoh?=
 =?iso-8859-1?Q?rtCxVRX9VZ2ReztDWv/Hy4+4rKu36msyJdTxvqgjEKeDn5zpwAXmRnhC1J?=
 =?iso-8859-1?Q?LpaR2MuapasnF4njWzgDuvNfPSfD1MoqDTzg7Tl1n6YA+EGNv0idus/bCv?=
 =?iso-8859-1?Q?DsfcpzX/e+qsR+63Ap2NsTW9TeKPlRekP/Ih82NdL0qzzHdAQfJHLt77Yf?=
 =?iso-8859-1?Q?4KelV4DIRLtSSctbFLYxTmw71UUmWLSGetwp9GbdHIJ6QwofM05RYkr3Bo?=
 =?iso-8859-1?Q?gdbMYtLWRi?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 141f6738-825e-4f66-ede5-08d8d4ef618f
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2021 15:59:47.3413 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F2DTrdTxWO69HGFWvwL1nVyBi1Vueu57PQAZjDWBnkGY+eqsLafktNUABtQZrmKVQqy3VZA9AuoDRnwZOeWToQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P190MB1109
Subject: Re: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC
 Digital Down Converter
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
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
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

Hi Rob,

On 19/02/21 09:30, Rob Kossler wrote:
> Yes, I just double-checked and mine is working.
> =

> So, I just re-checked your link to issue #406. In "steps to reproduce", I
> noticed 2 things:
> =

>    - On the next-to-last line, the g++ command does not include your cust=
om
>    library and does not include this link option.  The Ettus example buil=
ds
>    your block controller in its own shared library - it does not add it t=
o the
>    uhd shared library. So, you need to link with both uhd and your
>    rfnoc-example shared library (or whatever it is named). And, you need =
to
>    have that link option.  (as a side note, when you built the rfnoc-exam=
ple,
>    this did build the init_gain_block.cpp example in the apps folder with=
 this
>    link option so if you were to run that example, you could confirm that=
 the
>    block ID in that example is "Gain#0" rather than "Block#0". But since =
this
>    example doesn't use the radio, you couldn't use it to verify action
>    propagation).

So, to summarise:

g++ -g -o test rfnoc_rx_to_file.cpp -lboost_program_options -luhd

does not work,

g++ -g -o test rfnoc_rx_to_file.cpp -lboost_program_options -luhd -lrfnoc_e=
xample

does not work either, but

g++ -g -o test rfnoc_rx_to_file.cpp -lboost_program_options -luhd -Wl,--no-=
as-needed -lrfnoc_example

works.

Am I correct?

Regards
-- =


C=E9dric Hannotier

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
