Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CE019531E
	for <lists+usrp-users@lfdr.de>; Fri, 27 Mar 2020 09:42:47 +0100 (CET)
Received: from [::1] (port=45770 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jHkZd-0005xH-OP; Fri, 27 Mar 2020 04:42:41 -0400
Received: from mail-eopbgr40132.outbound.protection.outlook.com
 ([40.107.4.132]:46936 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <demel@ant.uni-bremen.de>)
 id 1jHkZZ-0005te-GZ
 for usrp-users@lists.ettus.com; Fri, 27 Mar 2020 04:42:37 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EI8c4ufu+kPJN4k9CHtrC9g0lvlVtT9QDuE5vc/4RZWubt28neXG3c9DvjyOpBb3VvwD92L29StTS8kOH0d4PVf3fzW8GdnlfS3dBMgyVb5++bww9je+EWIOiH2ZAcgX3oCO/kGnuW01JO7ByOAJVnpNjv4zKY1q5rHyOfdUmRqAx6/f0FH7yfExKuSGkV4IfuRKbmH9zrWIMG4DpOJdw6xxLtOH8S4UKK9uj88SHCnv/pb5G1SMov1g8vLqOHYBbXkEOvKvsLOklkjcrIxKqqtWM/ckD7rFuyNGbdvHbJ5zxQLFyqwwnCAfONLo+oLTimZaYu7Ai4gyfwtzOq6+Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aRCUG8M/5PfNBCR1Z/+ovVjDZBIxwBGpe/eFTzGuXQg=;
 b=VScwvK+5nPmm3NkbFkW2BxN91hEEclw2Tp44tYkIDepHF5NjW0msvGU5lIkdAziynjaPG9GzNC1Yw53bQH8PZaLw8xcaXK52KAr4d00E7mFqFkrKcuB9KCF3WidLe0slefJUXfmKCtafjR5RCFmGHKklMyjc8oR6k87kM/un8BfmJ1Uj5Lth41sAmsnkKBWV4UY5PysQr+PvKJhN1vWvrkFA4w5PCfoUttsciauURgNb9LzdPkMmJhZHpf16dJ9IrXBMfJ7wqD/m3Koqc2ckSPeWaBfr9aBh0NLKuc40Dt4ln0YNXdZNkdHJ88lWiBIpiMv4h5Zm9EoGOQUHF5AkKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aRCUG8M/5PfNBCR1Z/+ovVjDZBIxwBGpe/eFTzGuXQg=;
 b=K0iB9bnaSUHLa98nA3eTpRW8C634Tz82conoTcQCdWdJahYav8sOwvoiCv28rPEBWqYZ0iQWAVpT0zDPGOKu33Nl7La1kaFd1/1v1wqnD4/vPE33JPTabJCYuVYj6kiM1N9wxzeqEb4ai7402Cm7xLz8yftUl5Mqa/OJPUkmywg=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=demel@ant.uni-bremen.de; 
Received: from AM6PR0402MB3398.eurprd04.prod.outlook.com (52.133.19.15) by
 AM6PR0402MB3798.eurprd04.prod.outlook.com (52.133.29.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.19; Fri, 27 Mar 2020 08:41:55 +0000
Received: from AM6PR0402MB3398.eurprd04.prod.outlook.com
 ([fe80::91ba:d0f9:3491:9c20]) by AM6PR0402MB3398.eurprd04.prod.outlook.com
 ([fe80::91ba:d0f9:3491:9c20%7]) with mapi id 15.20.2835.023; Fri, 27 Mar 2020
 08:41:54 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <c94fdf66-0e4a-4d70-9456-208a25085ee2@ant.uni-bremen.de>
Date: Fri, 27 Mar 2020 09:41:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
Content-Language: en-US
X-ClientProxiedBy: FR2P281CA0035.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::22) To AM6PR0402MB3398.eurprd04.prod.outlook.com
 (2603:10a6:209:6::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from rangun.ant.uni-bremen.de
 (2003:ca:7f06:5700:f8dd:6748:d0a3:8664) by
 FR2P281CA0035.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:14::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20 via Frontend Transport; Fri, 27 Mar 2020 08:41:54 +0000
X-Originating-IP: [2003:ca:7f06:5700:f8dd:6748:d0a3:8664]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c273d120-99db-4a72-8dab-08d7d22ab3d1
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3798:
X-Microsoft-Antispam-PRVS: <AM6PR0402MB379839AB0CE5D7817BC29267A9CC0@AM6PR0402MB3798.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0355F3A3AE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0402MB3398.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(136003)(39830400003)(376002)(346002)(396003)(366004)(186003)(316002)(2616005)(8676002)(5660300002)(6916009)(786003)(16526019)(7116003)(66476007)(81156014)(508600001)(8936002)(6486002)(81166006)(31696002)(86362001)(7696005)(2906002)(31686004)(66556008)(66946007)(52116002);
 DIR:OUT; SFP:1102; 
Received-SPF: None (protection.outlook.com: ant.uni-bremen.de does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6UZC30Ioi8JXjxHqmn7if4gxJ8V2wEiz86V8TozCVaXt6xzZByiL9F2q1gsTo+fl7RJM8fuDMJV5qok985Guu3/DLfgGWPlU2Y0lLJOeZDxnuKBXs1V3wfXy8TOD9gBrcFDtZoaiwZUxzCWdpSmXKHvolDd/OUHPHnjEzrJWu4IINOrUZ5e/1bXs7sf2lCvL95x8AcxC3UcwVnv07Q5pqw+YhepDfjFh81C89SvRAwBBkfyYvusjS1sOskA0+FQNZpIq0LuMNkBEoj88xQgSaI69Yo2zfw4yKd+VKvODlsvQ4Ykzu03cCUpWNwHbf+Cz7dnpULU1I2Zc0y1ZzlfgU7b8s1nCnYQTEDoj8g2qOdUrSCChVTvIIuoaspUhvMgOjMiXM2r4svt2Bi89YEP6vPzdQR+PnP/R0LJedHxXwGT0hAYV4yLHyWK+1kTFmofs
X-MS-Exchange-AntiSpam-MessageData: ZFrC3krN6XeoENjtkczHbDXHiAPs47r/nurRppdG7DtM8nMi3ASTnqmmi7I8uxsQ2VQjK4jT9W3ma60EXNYer4mB0oFwn3UPfTKsLd0gnYtHVHodSWL4VSbIWFqPpCULaRDIhmnGOFlWlprDS/0k+QoiEDqdCHFLQjE5pCVqQi44vmYY77wCFz/pJqzpXb1y0yGUStihnK4S4PlI+bEeCg==
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: c273d120-99db-4a72-8dab-08d7d22ab3d1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2020 08:41:54.5317 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3ISb9jOt+ci7IKv52nYi89j66KDrwOrKUWwUs3jzV5lZBC3kjViXGaUEJ91LmXZSdwccA/uvZ/kUpF/2Sa9lQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3798
Subject: [USRP-users] N310 remote management
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
From: Johannes Demel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Johannes Demel <demel@ant.uni-bremen.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

Hi all,

last week I set up the N310s we have with UHD3.15LTS to run in our 
network. By now, most of them are not accessible remotely anymore. Since 
I don't have physical access to them anymore, I'd like to figure out a 
way to reliably manage them before someone fixes the immediate issue for me.

I've seen 2 error patterns.

1. A N310 may not get a lock on its PLL anymore. Even after a reboot or 
"force_reinit=1"

2. N310s disappear from the network. Or they are unresponsive or I can't 
log into them via ssh anymore to reboot them.

I use Ubuntu 18.04 with UHD3.15LTS without any RFNoC.

Currently, all N310s are only connected via an SFP+ port. In the past, I 
had issues with an additional connection via the management port. So I 
currently do not connect them via the management port.

Does it help to connect the USRPs via their management port? Would I be 
able to manage them more reliably?

How do I make this setup work? Is it sufficient to assign them to 
different subnets? Can I assign them different IP addresses on the same 
subnet? Do I need to physically separate the two networks?

It would be great to hear from people's experience how to set up their 
N310s.

Cheers
Johannes

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
