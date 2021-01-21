Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DE12FF830
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 23:49:15 +0100 (CET)
Received: from [::1] (port=52098 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2ilM-000894-Hp; Thu, 21 Jan 2021 17:49:12 -0500
Received: from mail-eopbgr10117.outbound.protection.outlook.com
 ([40.107.1.117]:29857 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1l2ilI-00083T-Ey
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 17:49:08 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P5QfYBnPlAKTHqYkwRBjsCGHJp6r+SiraHKtgWcyVxfqdD4tk80OUoVcRzVzC4KMw+n6ZpYLD0cvWoyLZ5k2jgsQMausRi/2M0J2y75cCO9gv4JUTSmdVWgqX7qzuM4Y50aJXl4TLrnP5XoCOPjb4PqREzKAiomCP/2Vil/gfXqHGPbSc1knGlLc3WkXuRHHPPmXgSbnYWgCX/mXd8woU1gZX2W1+EW6QFQmQ0G18ysvUxUzZqLEcDu3flVMNgCWAHMqdCLgrjL9KqDLXM/zSbBo3CA4ugcDJxFvgnx8m15tqQ5942QDw8yLS28DHElS7yyU2sW3+7Azfxv8P9G2JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uvJz8ZBfgueoko5hEAP58qkRnob4ZWbcVYqij5aq6jA=;
 b=Y4IJi6zAqWlrqZDCsG9B279QHTTlTE3eRLJ5cRrAD4T6/7+ac0M5uhxlfPQOSkxo37m4EzTRd7VW4eGlqpZY8Z6ARdW5BYboU8pgKyo9DDIlY59nvrKVL9qADJy7DYqnDjLUtfCUZx9/kB1cloDrdTqqvosJalK83pyTarZBJt+dtqGcAEKD1ddTfo5zUeQEDk/1OPsC6QMwU5Uw2ytHWJsAgIl/bQ21y4YIN1D2ORcg3cTubfWypmGjX4aKy4qqfyph+v+AMB1oOQ+vY+9pKofsZeo8kA50BTXT0MyIAa5kSSjHhMQC4q3SHJgQVmjGRo9/ns7qGQ+K1ECZfj7jAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uvJz8ZBfgueoko5hEAP58qkRnob4ZWbcVYqij5aq6jA=;
 b=Rux5Mw8QFQnRvmw0qftGl4r2GBPOA8+tLeJt0OROcX04jiJftGQ3aXR3ZDxVv8/rvArMWzrOve+v8R3oT9/1Ac0RWnZWNdGvFnVX9L2kC8vNlnPx+IWLfnCA/e0kqjGelPpFefIDj6cYKrhD6VEDnyXaYx+Jip/gMvF+zKXeI7g=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM7P190MB0631.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11c::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.13; Thu, 21 Jan
 2021 22:48:26 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3784.013; Thu, 21 Jan 2021
 22:48:25 +0000
Date: Thu, 21 Jan 2021 23:48:24 +0100
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <20210121224824.uajvcmmust7bgzfc@barbe>
Mail-Followup-To: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="2m2adouqiewftx5u"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAB__hTT+gaOgFF2_ME+=bY9S21e_D-+XfCv7dH_qRmAZ-6h6oQ@mail.gmail.com>
 <CAB__hTTKkyz0fx9fGa_ePM9xZXHLcvYnbhsSCH3vYLA5z2G5Og@mail.gmail.com>
X-Originating-IP: [2a02:1811:371b:2300:191a:95a4:11e8:fcdd]
X-ClientProxiedBy: AM4PR0701CA0039.eurprd07.prod.outlook.com
 (2603:10a6:200:42::49) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:191a:95a4:11e8:fcdd) by
 AM4PR0701CA0039.eurprd07.prod.outlook.com (2603:10a6:200:42::49) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.6 via Frontend
 Transport; Thu, 21 Jan 2021 22:48:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0728def6-5952-49ed-3e88-08d8be5ea9b9
X-MS-TrafficTypeDiagnostic: AM7P190MB0631:
X-Microsoft-Antispam-PRVS: <AM7P190MB0631096DCB37067C5E67CF46F0A10@AM7P190MB0631.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yl2ayYCCaKyQ1o5dAqhdJ+GMOEfLcXyHa8ZIkJ6zyEYEQtpwQvMQ409YhgLGD0rSK9m0heZ/XfzD/p/MgTOitXw6rnkKTkzNgAa0Y36f37q52TG03fyCfemv6lzv5DZmYbioD973sRX8hvBvrnE9fnfN4VnkLdU+5kfOS3NmS8eJtUQBKVucMO1c90Nk1JhVC3noTyDq+m91xJ7kJUKoUkmP4kwVbp2zrOdMH1b+iMzbIHvslbd7dNEa30RJMDRHv5mLBwJ94k16qbdEWVr4mp5ESuRsyzu0YR06DRenvAiETijACVB7kSKnQGtKrHODJLMxHxLqthOkkp8ghe38W26LZ8zUlMuzIFDRm9b13a3qUqVPMp3R9Tmt8tcjPRoITYLjTckF8VLYQiaqn9WRJVU7jyW0tDJV34FGxjXmBY8FgianB8TEZQyWMLdSzoh9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(39860400002)(366004)(136003)(346002)(396003)(376002)(52116002)(6486002)(8676002)(44144004)(86362001)(6496006)(66576008)(33716001)(186003)(5660300002)(16526019)(66946007)(2906002)(66556008)(66476007)(316002)(53546011)(235185007)(6916009)(21480400003)(1076003)(478600001)(786003)(66574015)(8936002)(83380400001)(9686003)(2700100001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?ieBHGPr7emD4XbkpgjPWEWVv29uXll9mc862csOtEvdf15aTM7BqEJqc66?=
 =?iso-8859-1?Q?LNgPauj4Ky6pDUw3X3FEM/zIv/Ix9hUWDgLwDzq5mo5eTPQSOwsxb9dj/Z?=
 =?iso-8859-1?Q?i024AwPISKJjqWMMCaUKdOWAqnd6HCVbOr03M8VUhbIdlioFXuehz0KGqE?=
 =?iso-8859-1?Q?X2mDzJ1PcsnbnLRKfkCT2xtfXhZPvoyu/fsfDXKL7V1CwBXYKuwOUkXEYO?=
 =?iso-8859-1?Q?CM3iMGBBrvLY5FOzfz+muqEtTurv8f2BNx+7KO08CDkbsdQzQadMzqT0Xs?=
 =?iso-8859-1?Q?seK0DNqt2rDYQ0ESFLDXqpcDQz0cTT5ig/0g1zdAi7O8EmdYpaXFqQ5afJ?=
 =?iso-8859-1?Q?UjlyBd8Sb1geOAdo+o73k9uhV1qqSlyNOxFHd9/bxGbbIz5OC5nCAIBZa7?=
 =?iso-8859-1?Q?uQ0E0Reln+CHF3S2PAhyquWc/FSmgRpreMVwBGsa12bN1iuluPGAzy5g+a?=
 =?iso-8859-1?Q?A6zQUVfAW1c9qC7EExyE/x80nTFC7Oy9i8NaYmqMFz6kPG2bkgzgOthO1t?=
 =?iso-8859-1?Q?X8M43O5r91wTxViEocVa2OFtQE5hRUPRIVFl7sjKhmhOg58MvptmdjYgio?=
 =?iso-8859-1?Q?0mdGe8DlV+5F4VCS11SWl6iDdYtS+2C4fxqWc1IK3JzOO1cxKCzQzCubop?=
 =?iso-8859-1?Q?oqIJOdtIpMMvX0/q9dPD18lHt4a5WkuScwwPBZVSU00tp5c98gOoF4H5JM?=
 =?iso-8859-1?Q?BNoi6mKMGge0n6I9OCUOEKxFhNA/ZF8G3L610DHsbOx3UGBv7+F0/ayK1c?=
 =?iso-8859-1?Q?cLxjvbkNOjUgiSm6feDCjD1fcqNJXvRxXGTxz8GTB7ejjovMiPIvIMGUyY?=
 =?iso-8859-1?Q?oQjTgfvHaloF0asJACkZuAcbpN7HQLG/vaH/k49jC+0lEZSNPhsfinfbdp?=
 =?iso-8859-1?Q?nZBX2mRCs3mqOyjoE+jcvDSxIKQ2f1kpDXhxn0MbtTKHmU7GiCQAhUTSRe?=
 =?iso-8859-1?Q?xSTU0lVWx78ZtHNMPmV5jf5BBrNpx9GT4gSZxUJQREFORG/ryzj5FmTKh1?=
 =?iso-8859-1?Q?9QIJxvtcndwu0tS3YHb0gOKHN8FzbuFA2QDqJK1VPr3MW8kUR/M4JL0oLA?=
 =?iso-8859-1?Q?PCh5JvlRhww7bnkKp6DF3vfQavoOiF4FiyCnbBPVxlpe?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 0728def6-5952-49ed-3e88-08d8be5ea9b9
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2021 22:48:25.9196 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jtb9F3/NU2m1zBel/REaVNx4pmBzNsFrFe8LKRUM5GmSX/4+bRaXn98JGMqvuOIvI158U9aiB/5Lju539uPOIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7P190MB0631
Subject: Re: [USRP-users] No streaming using OOT RFNoC Block in UHD4
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

--2m2adouqiewftx5u
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Rob,

Thanks for your reply :)

On 21/01/21 09:32, Rob Kossler wrote:
> [...]
> In the rfnoc_rx_to_file program,
> streaming is started by the function rx_stream->issue_stream_cmd().  Note
> that this is a command to the streamer which then must be forwarded to the
> gain controller and then the ddc controller and then the radio controller
> which will then turn on the radio.

I have a question regarding that statement.
Since the gain block and the radio+ddc are on different EP,
wouldn't the rx_streamer able to transfer that command to the radio
without forwarding it to the gain block?
I do not know the type of issue_stream_cmd.
From the RFNoC Specification, it is stated that it is an "Action",
"calling into API provided by the graph".
It is also stated that it "propagates". But it does not specify
in which case it does or not and how it does it.

> So, one question I have is: does the command make it to the radio?  I think
> that you can tell by looking at the LED - does it turn on?
> 
>    - If so, then I am on the wrong path.
>    - If not, then
>       - Maybe there is some setting in the gain block controller that is
>       not forwarding the command.
>       - Or, more likely, maybe the gain block controller is not being used
>       at all because of the block finding issue "block#0" vs "gain#0".  In this
>       case, perhaps building the gain block controller in-tree would help

You are right!
The LED does not turn on when putting the gain block
(Radio -> DDC -> Gain -> rx_streamer).
So it seems that the stream_cmd is not forwarded... But why?

You said that I could try to build the controller in-tree.
I would like to avoid that.
Could I issue_stream_cmd on the radio_ctrl instead of rx_streamer?
How would it work with multiple radios (like in the X310)?

On a side note:
Are we forced to implement a custom controller for each RFNoC block?
I was expecting that I could just write the verilog part
and use the basic noc_block_base controller to manage my blocks in C++,
using regs()->peek32/poke32 to set my registers etc.
But from above, it seems that it does not forward the issue_stream_cmd
by default? Is that correct?

> Also, it might help if you turn on "debug" logging (export
> UHD_LOG_LEVEL=debug; export UHD_LOG_CONSOLE_LEVEL=debug) and run the
> rfnoc_rx_to_file example.  First try with a working block such as FFT and
> then with the gain block and see if there are any clues.
> Rob

I attached 3 logs:
 - normal.log is (Radio -> DDC -> rx_streamer)
 - fft.log is (Radio -> DDC -> fft -> rx_streamer)
 - gain.log is (Radio -> DDC -> gain -> rx_streamer)

I just had to specify "--spp 256" to match the default FFT size
(otherwise I get overrun).

-- 

Cédric Hannotier

--2m2adouqiewftx5u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="fft.log"

$ ./test  --rate 20e6 --block-id 0/FFT#0 --spp 256 --progress

Creating the RFNoC graph with args: ...
[INFO] [UHD] linux; GNU C++ version 10.2.1 20201224; Boost_107400; UHD_4.0.0.0-4
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[INFO] [X300] X300 initialization sequence...
[DEBUG] [X300] Motherboard 0 has remote device ID: 1
[DEBUG] [X300] Setting up basic communication...
[DEBUG] [X300] Using FPGA version: 38.0 git hash: 1a34ba8-dirty
[DEBUG] [X300] Loading values from EEPROM...
[DEBUG] [X300] Determining maximum frame size... 
[INFO] [X300] Maximum frame size: 8000 bytes.
[DEBUG] [X300] Setting up RF frontend clocking...
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=8, Requested=0.000000, Digital Taps=5, Half Shift=OFF, Analog Delay=0 (OFF), Coerced Delay=0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=4, Requested=0.000000, Digital Taps=5, Half Shift=OFF, Analog Delay=0 (OFF), Coerced Delay=0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=5, Requested=0.000000, Digital Taps=5, Half Shift=OFF, Analog Delay=0 (OFF), Coerced Delay=0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=0, Requested=0.000000, Digital Taps=5, Half Shift=OFF, Analog Delay=0 (OFF), Coerced Delay=0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=2, Requested=0.000000, Digital Taps=5, Half Shift=OFF, Analog Delay=0 (OFF), Coerced Delay=0.000000ns
[INFO] [X300] Radio 1x clock: 200 MHz
[DEBUG] [X300] Motherboard 0 has local device IDs: 
[DEBUG] [X300] * 2
[DEBUG] [RFNOC::MGMT] Starting topology discovery from device:2/sep:1
[DEBUG] [RFNOC::MGMT] Discovered node device:1/xport:0
[DEBUG] [RFNOC::MGMT] Initialized node device:1/xport:0
[DEBUG] [RFNOC::MGMT] Discovered node device:1/xbar:0
[DEBUG] [RFNOC::MGMT] Initialized node device:1/xbar:0
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:0
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:0
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:1
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:1
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:2
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:2
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:3
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:3
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:4
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:4
[DEBUG] [RFNOC::MGMT] The following endpoints are reachable from device:2/sep:1
[DEBUG] [RFNOC::MGMT] * 1:0
[DEBUG] [RFNOC::MGMT] * 1:1
[DEBUG] [RFNOC::MGMT] * 1:2
[DEBUG] [RFNOC::MGMT] * 1:3
[DEBUG] [RFNOC::MGMT] * 1:4
[DEBUG] [RFNOC::GRAPH] Connecting the Host to Endpoint 1:0 through Adapter 0 (0 = no preference)... 
[DEBUG] [RFNOC::MGMT] Bound stream endpoint with Addr=(1,0) to EPID=2
[DEBUG] [RFNOC] Started thread uhd_ctrl_ep0001 to process messages control messages on EPID 1
[DEBUG] [RFNOC::MGMT] Established a route from EPID=1 (SW) to EPID=2
[DEBUG] [RFNOC] Created ctrlport endpoint for port 0 on EPID 1
[DEBUG] [RFNOC::GRAPH] Connection to Endpoint 1:0 completed through Device 2. Using EPIDs 1 -> 2.
[WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
[DEBUG] [RFNOC] Created ctrlport endpoint for port 2 on EPID 1
[DEBUG] [0/DUC#0] Checking compat number for FPGA component `0/DUC#0': Expecting 0.1, actual: 0.1.
[DEBUG] [0/DUC#0] Loading DUC with 3 halfbands and max CIC interpolation 255
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DUC#0 (NOC ID=d0c00000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 3 on EPID 1
[DEBUG] [0/DDC#0] Checking compat number for FPGA component `0/DDC#0': Expecting 0.1, actual: 0.1.
[DEBUG] [0/DDC#0] Loading DDC with 3 halfbands and max CIC decimation 255
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DDC#0 (NOC ID=ddc00000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 4 on EPID 1
[DEBUG] [0/Radio#0] Checking compat number for FPGA component `0/Radio#0': Expecting 0.0, actual: 0.0.
[DEBUG] [0/Radio#0] ADC capture delay self-cal done (Tap=12, Window=25, TapDelay=78.125ps, Iter=1)
[DEBUG] [0/Radio#0] Actual sample rate: 200 Msps.
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/Radio#0 (NOC ID=12ad1000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 5 on EPID 1
[DEBUG] [0/DUC#1] Checking compat number for FPGA component `0/DUC#1': Expecting 0.1, actual: 0.1.
[DEBUG] [0/DUC#1] Loading DUC with 3 halfbands and max CIC interpolation 255
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DUC#1 (NOC ID=d0c00000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 6 on EPID 1
[DEBUG] [0/DDC#1] Checking compat number for FPGA component `0/DDC#1': Expecting 0.1, actual: 0.1.
[DEBUG] [0/DDC#1] Loading DDC with 3 halfbands and max CIC decimation 255
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DDC#1 (NOC ID=ddc00000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 7 on EPID 1
[DEBUG] [0/Radio#1] Checking compat number for FPGA component `0/Radio#1': Expecting 0.0, actual: 0.0.
[DEBUG] [0/Radio#1] ADC capture delay self-cal done (Tap=18, Window=22, TapDelay=78.125ps, Iter=1)
[DEBUG] [0/Radio#1] Actual sample rate: 200 Msps.
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/Radio#1 (NOC ID=12ad1000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 8 on EPID 1
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/FFT#0 (NOC ID=ff700000)
[DEBUG] [0/DDC#1] Not setting frequency until sampling rate is set.
[DEBUG] [0/DDC#1] Not setting frequency until sampling rate is set.
[DEBUG] [0/DUC#1] Not setting frequency until sampling rate is set.
[DEBUG] [0/DDC#0] Not setting frequency until sampling rate is set.
[DEBUG] [0/DDC#0] Not setting frequency until sampling rate is set.
[DEBUG] [0/DUC#0] Not setting frequency until sampling rate is set.
[DEBUG] [0/Radio#0] Running ADC self-cal...
[DEBUG] [0/Radio#1] Running ADC self-cal...
Using radio 0, channel 0
Looking for source block 0/Radio#0, port 0
Setting RX Rate: 20.000000 Msps...
DDC block found
Setting decimation value to 10
Actual decimation value is 10
Actual RX Rate: 20.000000 Msps...

Setting RX Freq: 0.000000 MHz...
Actual RX Freq: 10.000000 MHz...

Setting samples per packet to: 256
Actual samples per packet = 256
Using streamer args: 
[DEBUG] [CONVERT] get_converter: For converter ID: conversion ID
  Input format:  sc16_chdr
  Num inputs:    1
  Output format: sc16
  Num outputs:   1
 Using prio: 0
[DEBUG] [RFNOC::GRAPH] Initializing data stream from Endpoint 1:0 to Endpoint 1:4...
[DEBUG] [RFNOC::MGMT] Bound stream endpoint with Addr=(1,4) to EPID=3
[DEBUG] [RFNOC::MGMT] Established a route from EPID=1 (SW) to EPID=3
[DEBUG] [RFNOC::MGMT] Established a route from EPID=1 (SW) to EPID=2
[DEBUG] [RFNOC::MGMT] The two routes above now enable a route from EPID=2 to EPID=3
[DEBUG] [RFNOC::GRAPH] Connection from Endpoint 1:0 to Endpoint 1:4 completed through Device 2. Using EPIDs 2 -> 3.
[DEBUG] [RFNOC::MGMT] Established a route from EPID=1 (SW) to EPID=3
[DEBUG] [RFNOC::MGMT] Established a route from EPID=1 (SW) to EPID=2
[DEBUG] [RFNOC::MGMT] The two routes above now enable a route from EPID=2 to EPID=3
[DEBUG] [RFNOC::MGMT] Setup a stream from EPID=2 to EPID=3
[DEBUG] [RFNOC::MGMT] Established a route from EPID=1 (SW) to EPID=3
[DEBUG] [RFNOC::MGMT] Established a route from EPID=1 (SW) to EPID=2
[DEBUG] [RFNOC::MGMT] The two routes above now enable a route from EPID=2 to EPID=3
[DEBUG] [RFNOC::MGMT] Setup a stream from EPID=2 to EPID=3
[DEBUG] [RFNOC::GRAPH] Data stream between EPID 2 and EPID 3 established where downstream buffer can hold 262143 bytes and 16777215 packets
[DEBUG] [RFNOC::MGMT] Established a route from EPID=4 (SW) to EPID=3
[DEBUG] [RFNOC::MGMT] Initiated RX stream setup for EPID=3
[DEBUG] [RFNOC::MGMT] Finished RX stream setup for EPID=3
Press Ctrl + C to stop streaming...
Issuing stream cmd
Issuing stop stream cmd

Done!

[DEBUG] [0/FFT#0] deinit() called, but not implemented.
[DEBUG] [0/FFT#0] Invalidating register interface
[DEBUG] [0/Radio#1] Invalidating register interface
[DEBUG] [0/DDC#1] deinit() called, but not implemented.
[DEBUG] [0/DDC#1] Invalidating register interface
[DEBUG] [0/DUC#1] deinit() called, but not implemented.
[DEBUG] [0/DUC#1] Invalidating register interface
[DEBUG] [0/Radio#0] Invalidating register interface
[DEBUG] [0/DDC#0] deinit() called, but not implemented.
[DEBUG] [0/DDC#0] Invalidating register interface
[DEBUG] [0/DUC#0] deinit() called, but not implemented.
[DEBUG] [0/DUC#0] Invalidating register interface

--2m2adouqiewftx5u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="gain.log"

$ ./test  --rate 20e6  --block-id 0/Block#0 --spp 256 --progress

Creating the RFNoC graph with args: ...
[INFO] [UHD] linux; GNU C++ version 10.2.1 20201224; Boost_107400; UHD_4.0.0.0-4
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[INFO] [X300] X300 initialization sequence...
[DEBUG] [X300] Motherboard 0 has remote device ID: 1
[DEBUG] [X300] Setting up basic communication...
[DEBUG] [X300] Using FPGA version: 38.0 git hash: 1a34ba8-dirty
[DEBUG] [X300] Loading values from EEPROM...
[DEBUG] [X300] Determining maximum frame size... 
[INFO] [X300] Maximum frame size: 8000 bytes.
[DEBUG] [X300] Setting up RF frontend clocking...
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=8, Requested=0.000000, Digital Taps=5, Half Shift=OFF, Analog Delay=0 (OFF), Coerced Delay=0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=4, Requested=0.000000, Digital Taps=5, Half Shift=OFF, Analog Delay=0 (OFF), Coerced Delay=0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=5, Requested=0.000000, Digital Taps=5, Half Shift=OFF, Analog Delay=0 (OFF), Coerced Delay=0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=0, Requested=0.000000, Digital Taps=5, Half Shift=OFF, Analog Delay=0 (OFF), Coerced Delay=0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=2, Requested=0.000000, Digital Taps=5, Half Shift=OFF, Analog Delay=0 (OFF), Coerced Delay=0.000000ns
[INFO] [X300] Radio 1x clock: 200 MHz
[DEBUG] [X300] Motherboard 0 has local device IDs: 
[DEBUG] [X300] * 2
[DEBUG] [RFNOC::MGMT] Starting topology discovery from device:2/sep:1
[DEBUG] [RFNOC::MGMT] Discovered node device:1/xport:0
[DEBUG] [RFNOC::MGMT] Initialized node device:1/xport:0
[DEBUG] [RFNOC::MGMT] Discovered node device:1/xbar:0
[DEBUG] [RFNOC::MGMT] Initialized node device:1/xbar:0
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:0
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:0
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:1
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:1
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:2
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:2
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:3
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:3
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:4
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:4
[DEBUG] [RFNOC::MGMT] The following endpoints are reachable from device:2/sep:1
[DEBUG] [RFNOC::MGMT] * 1:0
[DEBUG] [RFNOC::MGMT] * 1:1
[DEBUG] [RFNOC::MGMT] * 1:2
[DEBUG] [RFNOC::MGMT] * 1:3
[DEBUG] [RFNOC::MGMT] * 1:4
[DEBUG] [RFNOC::GRAPH] Connecting the Host to Endpoint 1:0 through Adapter 0 (0 = no preference)... 
[DEBUG] [RFNOC::MGMT] Bound stream endpoint with Addr=(1,0) to EPID=2
[DEBUG] [RFNOC] Started thread uhd_ctrl_ep0001 to process messages control messages on EPID 1
[DEBUG] [RFNOC::MGMT] Established a route from EPID=1 (SW) to EPID=2
[DEBUG] [RFNOC] Created ctrlport endpoint for port 0 on EPID 1
[DEBUG] [RFNOC::GRAPH] Connection to Endpoint 1:0 completed through Device 2. Using EPIDs 1 -> 2.
[DEBUG] [RFNOC] Created ctrlport endpoint for port 2 on EPID 1
[DEBUG] [0/DUC#0] Checking compat number for FPGA component `0/DUC#0': Expecting 0.1, actual: 0.1.
[DEBUG] [0/DUC#0] Loading DUC with 3 halfbands and max CIC interpolation 255
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DUC#0 (NOC ID=d0c00000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 3 on EPID 1
[DEBUG] [0/DDC#0] Checking compat number for FPGA component `0/DDC#0': Expecting 0.1, actual: 0.1.
[DEBUG] [0/DDC#0] Loading DDC with 3 halfbands and max CIC decimation 255
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DDC#0 (NOC ID=ddc00000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 4 on EPID 1
[DEBUG] [0/Radio#0] Checking compat number for FPGA component `0/Radio#0': Expecting 0.0, actual: 0.0.
[DEBUG] [0/Radio#0] ADC capture delay self-cal done (Tap=12, Window=25, TapDelay=78.125ps, Iter=1)
[DEBUG] [0/Radio#0] Actual sample rate: 200 Msps.
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/Radio#0 (NOC ID=12ad1000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 5 on EPID 1
[DEBUG] [0/DUC#1] Checking compat number for FPGA component `0/DUC#1': Expecting 0.1, actual: 0.1.
[DEBUG] [0/DUC#1] Loading DUC with 3 halfbands and max CIC interpolation 255
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DUC#1 (NOC ID=d0c00000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 6 on EPID 1
[DEBUG] [0/DDC#1] Checking compat number for FPGA component `0/DDC#1': Expecting 0.1, actual: 0.1.
[DEBUG] [0/DDC#1] Loading DDC with 3 halfbands and max CIC decimation 255
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DDC#1 (NOC ID=ddc00000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 7 on EPID 1
[DEBUG] [0/Radio#1] Checking compat number for FPGA component `0/Radio#1': Expecting 0.0, actual: 0.0.
[DEBUG] [0/Radio#1] ADC capture delay self-cal done (Tap=18, Window=22, TapDelay=78.125ps, Iter=1)
[DEBUG] [0/Radio#1] Actual sample rate: 200 Msps.
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/Radio#1 (NOC ID=12ad1000)
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xb16, 0xffff
[DEBUG] [RFNOC] Created ctrlport endpoint for port 8 on EPID 1
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/Block#0 (NOC ID=00000b16)
[DEBUG] [0/DDC#1] Not setting frequency until sampling rate is set.
[DEBUG] [0/DDC#1] Not setting frequency until sampling rate is set.
[DEBUG] [0/DUC#1] Not setting frequency until sampling rate is set.
[DEBUG] [0/DDC#0] Not setting frequency until sampling rate is set.
[DEBUG] [0/DDC#0] Not setting frequency until sampling rate is set.
[DEBUG] [0/DUC#0] Not setting frequency until sampling rate is set.
[DEBUG] [0/Radio#0] Running ADC self-cal...
[DEBUG] [0/Radio#1] Running ADC self-cal...
Using radio 0, channel 0
Looking for source block 0/Radio#0, port 0
Setting RX Rate: 20.000000 Msps...
DDC block found
Setting decimation value to 10
Actual decimation value is 10
Actual RX Rate: 20.000000 Msps...

Setting RX Freq: 0.000000 MHz...
Actual RX Freq: 10.000000 MHz...

Setting samples per packet to: 256
Actual samples per packet = 256
Using streamer args: 
[DEBUG] [CONVERT] get_converter: For converter ID: conversion ID
  Input format:  sc16_chdr
  Num inputs:    1
  Output format: sc16
  Num outputs:   1
 Using prio: 0
[DEBUG] [RFNOC::GRAPH] Initializing data stream from Endpoint 1:0 to Endpoint 1:4...
[DEBUG] [RFNOC::MGMT] Bound stream endpoint with Addr=(1,4) to EPID=3
[DEBUG] [RFNOC::MGMT] Established a route from EPID=1 (SW) to EPID=3
[DEBUG] [RFNOC::MGMT] Established a route from EPID=1 (SW) to EPID=2
[DEBUG] [RFNOC::MGMT] The two routes above now enable a route from EPID=2 to EPID=3
[DEBUG] [RFNOC::GRAPH] Connection from Endpoint 1:0 to Endpoint 1:4 completed through Device 2. Using EPIDs 2 -> 3.
[DEBUG] [RFNOC::MGMT] Established a route from EPID=1 (SW) to EPID=3
[DEBUG] [RFNOC::MGMT] Established a route from EPID=1 (SW) to EPID=2
[DEBUG] [RFNOC::MGMT] The two routes above now enable a route from EPID=2 to EPID=3
[DEBUG] [RFNOC::MGMT] Setup a stream from EPID=2 to EPID=3
[DEBUG] [RFNOC::MGMT] Established a route from EPID=1 (SW) to EPID=3
[DEBUG] [RFNOC::MGMT] Established a route from EPID=1 (SW) to EPID=2
[DEBUG] [RFNOC::MGMT] The two routes above now enable a route from EPID=2 to EPID=3
[DEBUG] [RFNOC::MGMT] Setup a stream from EPID=2 to EPID=3
[DEBUG] [RFNOC::GRAPH] Data stream between EPID 2 and EPID 3 established where downstream buffer can hold 262143 bytes and 16777215 packets
[DEBUG] [RFNOC::MGMT] Established a route from EPID=4 (SW) to EPID=3
[DEBUG] [RFNOC::MGMT] Initiated RX stream setup for EPID=3
[DEBUG] [RFNOC::MGMT] Finished RX stream setup for EPID=3
Press Ctrl + C to stop streaming...
Issuing stream cmd
Timeout while streaming
Issuing stop stream cmd

Done!

[DEBUG] [0/Block#0] deinit() called, but not implemented.
[DEBUG] [0/Block#0] Invalidating register interface
[DEBUG] [0/Radio#1] Invalidating register interface
[DEBUG] [0/DDC#1] deinit() called, but not implemented.
[DEBUG] [0/DDC#1] Invalidating register interface
[DEBUG] [0/DUC#1] deinit() called, but not implemented.
[DEBUG] [0/DUC#1] Invalidating register interface
[DEBUG] [0/Radio#0] Invalidating register interface
[DEBUG] [0/DDC#0] deinit() called, but not implemented.
[DEBUG] [0/DDC#0] Invalidating register interface
[DEBUG] [0/DUC#0] deinit() called, but not implemented.
[DEBUG] [0/DUC#0] Invalidating register interface

--2m2adouqiewftx5u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="normal.log"

$ ./test  --rate 20e6  --spp 256 --progress

Creating the RFNoC graph with args: ...
[INFO] [UHD] linux; GNU C++ version 10.2.1 20201224; Boost_107400; UHD_4.0.0.0-4
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[DEBUG] [MPMD] Discovering MPM devices on port 49600
[INFO] [X300] X300 initialization sequence...
[DEBUG] [X300] Motherboard 0 has remote device ID: 1
[DEBUG] [X300] Setting up basic communication...
[DEBUG] [X300] Using FPGA version: 38.0 git hash: 1a34ba8-dirty
[DEBUG] [X300] Loading values from EEPROM...
[DEBUG] [X300] Determining maximum frame size... 
[INFO] [X300] Maximum frame size: 8000 bytes.
[DEBUG] [X300] Setting up RF frontend clocking...
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=8, Requested=0.000000, Digital Taps=5, Half Shift=OFF, Analog Delay=0 (OFF), Coerced Delay=0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=4, Requested=0.000000, Digital Taps=5, Half Shift=OFF, Analog Delay=0 (OFF), Coerced Delay=0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=5, Requested=0.000000, Digital Taps=5, Half Shift=OFF, Analog Delay=0 (OFF), Coerced Delay=0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=0, Requested=0.000000, Digital Taps=5, Half Shift=OFF, Analog Delay=0 (OFF), Coerced Delay=0.000000ns
[DEBUG] [X300] x300_clock_ctrl::set_clock_delay: Which=2, Requested=0.000000, Digital Taps=5, Half Shift=OFF, Analog Delay=0 (OFF), Coerced Delay=0.000000ns
[INFO] [X300] Radio 1x clock: 200 MHz
[DEBUG] [X300] Motherboard 0 has local device IDs: 
[DEBUG] [X300] * 2
[DEBUG] [RFNOC::MGMT] Starting topology discovery from device:2/sep:1
[DEBUG] [RFNOC::MGMT] Discovered node device:1/xport:0
[DEBUG] [RFNOC::MGMT] Initialized node device:1/xport:0
[DEBUG] [RFNOC::MGMT] Discovered node device:1/xbar:0
[DEBUG] [RFNOC::MGMT] Initialized node device:1/xbar:0
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:0
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:0
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:1
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:1
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:2
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:2
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:3
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:3
[DEBUG] [RFNOC::MGMT] Discovered node device:1/sep:4
[DEBUG] [RFNOC::MGMT] Initialized node device:1/sep:4
[DEBUG] [RFNOC::MGMT] The following endpoints are reachable from device:2/sep:1
[DEBUG] [RFNOC::MGMT] * 1:0
[DEBUG] [RFNOC::MGMT] * 1:1
[DEBUG] [RFNOC::MGMT] * 1:2
[DEBUG] [RFNOC::MGMT] * 1:3
[DEBUG] [RFNOC::MGMT] * 1:4
[DEBUG] [RFNOC::GRAPH] Connecting the Host to Endpoint 1:0 through Adapter 0 (0 = no preference)... 
[DEBUG] [RFNOC::MGMT] Bound stream endpoint with Addr=(1,0) to EPID=2
[DEBUG] [RFNOC] Started thread uhd_ctrl_ep0001 to process messages control messages on EPID 1
[DEBUG] [RFNOC::MGMT] Established a route from EPID=1 (SW) to EPID=2
[DEBUG] [RFNOC] Created ctrlport endpoint for port 0 on EPID 1
[DEBUG] [RFNOC::GRAPH] Connection to Endpoint 1:0 completed through Device 2. Using EPIDs 1 -> 2.
[WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
[DEBUG] [RFNOC] Created ctrlport endpoint for port 2 on EPID 1
[DEBUG] [0/DUC#0] Checking compat number for FPGA component `0/DUC#0': Expecting 0.1, actual: 0.1.
[DEBUG] [0/DUC#0] Loading DUC with 3 halfbands and max CIC interpolation 255
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DUC#0 (NOC ID=d0c00000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 3 on EPID 1
[DEBUG] [0/DDC#0] Checking compat number for FPGA component `0/DDC#0': Expecting 0.1, actual: 0.1.
[DEBUG] [0/DDC#0] Loading DDC with 3 halfbands and max CIC decimation 255
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DDC#0 (NOC ID=ddc00000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 4 on EPID 1
[DEBUG] [0/Radio#0] Checking compat number for FPGA component `0/Radio#0': Expecting 0.0, actual: 0.0.
[DEBUG] [0/Radio#0] ADC capture delay self-cal done (Tap=12, Window=25, TapDelay=78.125ps, Iter=1)
[DEBUG] [0/Radio#0] Actual sample rate: 200 Msps.
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/Radio#0 (NOC ID=12ad1000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 5 on EPID 1
[DEBUG] [0/DUC#1] Checking compat number for FPGA component `0/DUC#1': Expecting 0.1, actual: 0.1.
[DEBUG] [0/DUC#1] Loading DUC with 3 halfbands and max CIC interpolation 255
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DUC#1 (NOC ID=d0c00000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 6 on EPID 1
[DEBUG] [0/DDC#1] Checking compat number for FPGA component `0/DDC#1': Expecting 0.1, actual: 0.1.
[DEBUG] [0/DDC#1] Loading DDC with 3 halfbands and max CIC decimation 255
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/DDC#1 (NOC ID=ddc00000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 7 on EPID 1
[DEBUG] [0/Radio#1] Checking compat number for FPGA component `0/Radio#1': Expecting 0.0, actual: 0.0.
[DEBUG] [0/Radio#1] ADC capture delay self-cal done (Tap=18, Window=22, TapDelay=78.125ps, Iter=1)
[DEBUG] [0/Radio#1] Actual sample rate: 200 Msps.
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/Radio#1 (NOC ID=12ad1000)
[DEBUG] [RFNOC] Created ctrlport endpoint for port 8 on EPID 1
[DEBUG] [RFNOC::BLOCK_CONTAINER] Registering block: 0/FFT#0 (NOC ID=ff700000)
[DEBUG] [0/DDC#1] Not setting frequency until sampling rate is set.
[DEBUG] [0/DDC#1] Not setting frequency until sampling rate is set.
[DEBUG] [0/DUC#1] Not setting frequency until sampling rate is set.
[DEBUG] [0/DDC#0] Not setting frequency until sampling rate is set.
[DEBUG] [0/DDC#0] Not setting frequency until sampling rate is set.
[DEBUG] [0/DUC#0] Not setting frequency until sampling rate is set.
[DEBUG] [0/Radio#0] Running ADC self-cal...
[DEBUG] [0/Radio#1] Running ADC self-cal...
Using radio 0, channel 0
Looking for source block 0/Radio#0, port 0
Setting RX Rate: 20.000000 Msps...
DDC block found
Setting decimation value to 10
Actual decimation value is 10
Actual RX Rate: 20.000000 Msps...

Setting RX Freq: 0.000000 MHz...
Actual RX Freq: 10.000000 MHz...

Setting samples per packet to: 256
Actual samples per packet = 256
Using streamer args: 
[DEBUG] [CONVERT] get_converter: For converter ID: conversion ID
  Input format:  sc16_chdr
  Num inputs:    1
  Output format: sc16
  Num outputs:   1
 Using prio: 0
[DEBUG] [RFNOC::MGMT] Established a route from EPID=3 (SW) to EPID=2
[DEBUG] [RFNOC::MGMT] Initiated RX stream setup for EPID=2
[DEBUG] [RFNOC::MGMT] Finished RX stream setup for EPID=2
Press Ctrl + C to stop streaming...
Issuing stream cmd
	20.0096 MSps
Issuing stop stream cmd

Done!

[DEBUG] [0/FFT#0] deinit() called, but not implemented.
[DEBUG] [0/FFT#0] Invalidating register interface
[DEBUG] [0/DDC#1] deinit() called, but not implemented.
[DEBUG] [0/DDC#1] Invalidating register interface
[DEBUG] [0/DUC#1] deinit() called, but not implemented.
[DEBUG] [0/DUC#1] Invalidating register interface
[DEBUG] [0/Radio#0] Invalidating register interface
[DEBUG] [0/DDC#0] deinit() called, but not implemented.
[DEBUG] [0/DDC#0] Invalidating register interface
[DEBUG] [0/Radio#1] Invalidating register interface
[DEBUG] [0/DUC#0] deinit() called, but not implemented.
[DEBUG] [0/DUC#0] Invalidating register interface

--2m2adouqiewftx5u
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--2m2adouqiewftx5u--

