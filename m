Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4171F1A9910
	for <lists+usrp-users@lfdr.de>; Wed, 15 Apr 2020 11:36:44 +0200 (CEST)
Received: from [::1] (port=33362 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jOeTH-0004oZ-Ao; Wed, 15 Apr 2020 05:36:39 -0400
Received: from mail-eopbgr70099.outbound.protection.outlook.com
 ([40.107.7.99]:5580 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <demel@ant.uni-bremen.de>)
 id 1jOeTC-0004lF-HD
 for usrp-users@lists.ettus.com; Wed, 15 Apr 2020 05:36:34 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ISMzfAZvf6eLCPpT7ivwRjw10zaQEegQO4+ZrE8PSGUZRp6mAwPm27TNBdUVgq2hwmNE3pTJ9nCjsjT7rYBYxyPGeS9u4MA9FRS8Jhm5HiInbmtNEFpNNFAmvx05HEGXqUFegJiGTvozHrkDkvn/hMICnyw5HGgWAFeQal93mYMBLsdpHTV/TziUo9vN/HSPI4XLoFlCt7iofaLPw5Rf7zXugiErtZgDruwlspgZTvta0GXw12mjlRILuzjB1E5eoEywNsUZJ8c1GHQXIKXncYVBOLe74UltJxFtlB9cfkgTUfM9neELvH98hzzlsYUsp+p7fSX/1p18uDCU5wd4PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eZ9qVwE3xsnT9MKBLCMB+VBYvK97q+wGjK0BpTyhaD0=;
 b=WEXJNsmw7N83lOPCz8K6DtiWhGm7fk3FwZuYibPXqLPOYMKe2qXHvJiTN1/kXibvqJ6EI4G04nfwo8DFyoQIEjr+cTwYKmjIANkCePSOJNdfh5wx6kJvzJSlrEZ2mOI4Fa5q1Tfpi0wm4O5WfAO3imhgntaBHv8kO01n4PGO252/RytkfKGZ8T2+tofTyE0xvdCYPTSEL6PKD7n5E1TuVBy5jsr7r1tzTzyf/d07eJyRzBj76QPeaC0608YX8zxbcrVs+tlQcwua/s2hEZK2f1dXbfMFAzn6RNyW0FIZXve1W0t8qwXcRlT0812BNTehrmLOqaqlNzgP9sIYLenPkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eZ9qVwE3xsnT9MKBLCMB+VBYvK97q+wGjK0BpTyhaD0=;
 b=YgM5xyOJe1O6SzETNVJviGcMPhN2U5q2i7Wy8Pse95E2449WBEYZmNXzVGMCWG1TFQY9sOAgCmn76UPlaEe6+sLgiYNHtxWIp3rnS9V2/jBT4RkqJprgVG18fa/YNsLT18aQU6zclU7p49CA1F1bbOR/GRSTIyrJbFfOxFTBngI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=demel@ant.uni-bremen.de; 
Received: from AM6PR0402MB3398.eurprd04.prod.outlook.com (2603:10a6:209:6::15)
 by AM6PR0402MB3735.eurprd04.prod.outlook.com (2603:10a6:209:1a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Wed, 15 Apr
 2020 09:35:51 +0000
Received: from AM6PR0402MB3398.eurprd04.prod.outlook.com
 ([fe80::91ba:d0f9:3491:9c20]) by AM6PR0402MB3398.eurprd04.prod.outlook.com
 ([fe80::91ba:d0f9:3491:9c20%7]) with mapi id 15.20.2900.028; Wed, 15 Apr 2020
 09:35:51 +0000
To: usrp-users@lists.ettus.com
References: <c94fdf66-0e4a-4d70-9456-208a25085ee2@ant.uni-bremen.de>
Message-ID: <c355c495-fb7f-f870-935b-69d94c530108@ant.uni-bremen.de>
Date: Wed, 15 Apr 2020 11:35:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <c94fdf66-0e4a-4d70-9456-208a25085ee2@ant.uni-bremen.de>
Content-Language: en-US
X-ClientProxiedBy: FR2P281CA0030.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::17) To AM6PR0402MB3398.eurprd04.prod.outlook.com
 (2603:10a6:209:6::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from rangun.ant.uni-bremen.de
 (2003:ca:7f19:4e00:2824:43dc:2e1d:1f52) by
 FR2P281CA0030.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:14::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.25 via Frontend Transport; Wed, 15 Apr 2020 09:35:51 +0000
X-Originating-IP: [2003:ca:7f19:4e00:2824:43dc:2e1d:1f52]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c77bb398-b072-4e4d-2b26-08d7e12062f5
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3735:
X-Microsoft-Antispam-PRVS: <AM6PR0402MB3735A611F69C8B33D707383EA9DB0@AM6PR0402MB3735.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0374433C81
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0402MB3398.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(376002)(396003)(39830400003)(346002)(366004)(136003)(6486002)(16526019)(186003)(5660300002)(966005)(508600001)(31686004)(786003)(7696005)(52116002)(6916009)(316002)(8936002)(53546011)(66946007)(81156014)(8676002)(66556008)(66476007)(2616005)(86362001)(31696002)(2906002);
 DIR:OUT; SFP:1102; 
Received-SPF: None (protection.outlook.com: ant.uni-bremen.de does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UR9dbJ4AIVLaroczCprxiPz8c9RnlzI2htkfQ7wNJZ8br2LWBsXAZcBTIpnNd/wjVDaZAnutUOQS+VYagszTjboj1F8NInyZPyjzR1L2/+X2UGzDdeixjOyCjsVex+/aYhNx6MN/hpsfgG+UnGD2/SXNbPKEpN/XaYFy8hgv4yx2WuStHvPcKwN5XImIthGAqxwdsDcoGZPa7N60+r3q2tkAm43rvnYQyOWZNlr/SjGLFnbDTdRbugqRKBtqe+ydee8Ge0XrZn8WTGtk3Zk1D2dXwZYrvxDZXXM1fB1qsCcaWYb6VMBylm+5pgptLhfn+co+KDhVDYW3McQaOSoTSfqsLxhaga/eNwmFnC/XmDWTpmuc59JeGZtGMfaepirEZidQ/wxhTW9plxUU0WtzCLjymHa59Un9FUjXMWETNgWWfwhPf4VC+6MIgM6Lgqenm47yNADrTq/XfsBo0PyjtftQzomcq11JLSyPiXgaFRRj9zvT9E9+RWZ+U5AaqrkxVMWtpWO70waO6B2mNXiGgw==
X-MS-Exchange-AntiSpam-MessageData: TSbmvcmHjp7mSjUnhgA8RQLzrBXiQIeLO/J2mmyWtoAJCZJIIKjyLAPhs/8LfAc4krafKKmen53lI8KSs1CGlAhbEgtkigmzHzbJh/g4Ns+pRjAAnY6mlsMt0xS2Z1y763k/uTbwyKTXDAkHyQUio8OoX4BrqsU1f5mgLFTSmPhketvm+eUtKk72xJxW9cbt8jxSUgoCUG6FdABhQOrd2w==
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: c77bb398-b072-4e4d-2b26-08d7e12062f5
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 09:35:51.4030 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FL/Wh9J8eJ17V7SAoEpzR+JD5nBnhYD++PMUm8FXIw+dMhM7OqkSrE/2y5iil3o1RNOhnhpYCclh3ScBuEZZrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3735
Subject: Re: [USRP-users] N310 remote management
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

I want to give you all an update on my experience with my issues so far.

So far I didn't hear back from anyone on the mailing list, thus I went 
forward and had someone update my network configuration.

First off, N310s are usable with both management and stream ports 
connected. It is just important to assign those ports to different 
subnets that are separated via their subnet masks. I assume this is 
basic network knowledge which I had chosen to ignore.

My new network setup looks like this:
I have 4 N310s connected. All 4 of them have their management ports 
connected to our network with its own subnet etc. Just like all other 
machines are connected to this network.
Currently I use 2 machines with Intel X710-DA2 NICs. Each machine is 
directly connected to 2 N310s via SFP+ cables. This setup works nicely. 
Just put each N310 into its own subet and you're good to go.

 From another machine in our network `uhd_find_devices` may look like this:
Device Address:
     serial: XXXXXX
     claimed: False
     mgmt_addr: x.x.x.149
     product: n310
     reachable: No
     type: n3xx


On the machine where the N310 is connected with its streaming port:
Device Address:
     serial: XXXXXX
     addr: y.y.y.217
     claimed: False
     mgmt_addr: x.x.x.149
     mgmt_addr: y.y.y.217
     product: n310
     type: n3xx

Besides `uhd_find_devices` I check each USRP with `uhd_usrp_probe` which 
I consider a good quick check. And further I run `benchmark_rate` with 
each USRP to confirm that it is still able to stream samples.


So far so good. BUT:

What I observe is that these N310s tend to disappear from the network 
after a week or so. I could use them last Thursday but today half of 
them disappeared. That happened before and triggered my initial email.

Even with all N310s connected via their management ports, by now only 2 
out of 4 are reachable via network. `uhd_find_devices` can't find them 
anymore. Not even their management address.

Also, after a few days all N310s did not work as well as they did after 
boot. And it didn't help to reboot them via `reboot now`. My experience 
in such situations is that it just helps to have physical access to 
them. Unplug them etc. And of course, this is impossible at the moment.

Interestingly, I have 2 X310s connected to another machine and these 
X310s are still up and running. I never had issues with these devices 
disappearing after a while.

I use all USRPs with UHD 3.15LTS. All SDimages are flashed with this 
version.
I use this guide for bmaptool to flash all of them:
https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card#Using_bmaptool_to_write_the_disk_image
It's way faster than `dd`.
X310s are in sync with UHD3.15LTS via `uhd_images_downloader && 
uhd_image_loader`.

It would be great to be able to manage those N310s remotely over a 
longer period of time. Occasional reboot wouldn't be an issue as long as 
all devices are reliably available without quirks.

Did I stumble over a known issue here? Is this something new? Are my 
devices broken? How do I debug this? Is something else going on? Do I 
need to provide more info?

Cheers
Johannes


On 27.03.20 09:41, Johannes Demel via USRP-users wrote:
> Hi all,
> 
> last week I set up the N310s we have with UHD3.15LTS to run in our 
> network. By now, most of them are not accessible remotely anymore. Since 
> I don't have physical access to them anymore, I'd like to figure out a 
> way to reliably manage them before someone fixes the immediate issue for 
> me.
> 
> I've seen 2 error patterns.
> 
> 1. A N310 may not get a lock on its PLL anymore. Even after a reboot or 
> "force_reinit=1"
> 
> 2. N310s disappear from the network. Or they are unresponsive or I can't 
> log into them via ssh anymore to reboot them.
> 
> I use Ubuntu 18.04 with UHD3.15LTS without any RFNoC.
> 
> Currently, all N310s are only connected via an SFP+ port. In the past, I 
> had issues with an additional connection via the management port. So I 
> currently do not connect them via the management port.
> 
> Does it help to connect the USRPs via their management port? Would I be 
> able to manage them more reliably?
> 
> How do I make this setup work? Is it sufficient to assign them to 
> different subnets? Can I assign them different IP addresses on the same 
> subnet? Do I need to physically separate the two networks?
> 
> It would be great to hear from people's experience how to set up their 
> N310s.
> 
> Cheers
> Johannes
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
