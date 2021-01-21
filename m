Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9EC2FECA2
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 15:08:09 +0100 (CET)
Received: from [::1] (port=47964 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2ad6-0006oz-Du; Thu, 21 Jan 2021 09:08:08 -0500
Received: from mail-vi1eur05on2121.outbound.protection.outlook.com
 ([40.107.21.121]:46816 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <Cedric.Hannotier@ulb.be>)
 id 1l2ad1-0006ie-Oh
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 09:08:03 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DuXU/Q9p6m/n4ZONrRlDd06Td5zm5/Gq7Nf9wkE+DXobAC3pHf5K1OQz2+TZrbKKdnHNlwS7/ZreOIoLRVCJjWktmwk4g9ucqvBnCEtNpBZF3uBI31zzAufZyul8KQfxN5jVBjD4uaZpMbA2xBjvnvSmSM6hlhuKzm/JNDtJsvMee2PS5er3/Sa9eby9RMrLJLpOoKsnnPD0HmhfmQ7MBmrCQ4SBKFgCdkMUU39RKQfTDYvbyVyfr09BJ+YGiad+FpY/xGGBQ50/jpsvi+TOxhxXyBD57gHhJv3pL1ivM+2+S1KLTBr8IRTGz+xwfouTTdjvfXAv07Cf2ByuB2tZ9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LUxzdfJj8jwx9be+x45y8dcc5d53npXx9KD9/pfdBMA=;
 b=Hx/ugsWhc2kQHfaxeVW3pacesapd8nHtvfvejdZQ23eU8pZ3GX8vT3c8WdssulEjqvEyDJ9uNJmm8DIdIEfR6BN3dGW5VBTA+l8ySJ3u9BI1wMA5HNWkux4ZW1D90XEs0rZS0wWcNXKxIqs+1VaLabbZ3nilhvUXjMwkairXgENLKSnhs5gccl/cH2qtYJPWeuNg4NV0Izeuw54Sm6smP55Fp7ltiOsPVkLZbS6O0FNWsPDe/hlGtEr2/x8sGROk4OGTXZstpv1Zfe/UEgwYT33BeX05V3ALv6u67Zj7kAWOxmDuYRFu159+nPu7EMfmDku1W+ctS5ald3L1FGvpiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LUxzdfJj8jwx9be+x45y8dcc5d53npXx9KD9/pfdBMA=;
 b=fqeFa62HgvD/Nubh2MJb1y0v0b66z0r8Vm9VEwdMVXFrFyR/VOR5sXYIMOW+FpUSZudoqCuG1rCIjUVz9EolcFzv5Z4f02fT/VYYBSQcQGOSu5A9A04CWdgHm5C5SIpwhbnIC7i9tqojhp+GXHj5yGuLOwzWVI3HJNTbHLOgw74=
Authentication-Results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=ulb.be;
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::20)
 by AM5P190MB0307.EURP190.PROD.OUTLOOK.COM (2603:10a6:206:18::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.13; Thu, 21 Jan
 2021 14:07:21 +0000
Received: from AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb]) by AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 ([fe80::8fd:f689:885a:6afb%9]) with mapi id 15.20.3784.013; Thu, 21 Jan 2021
 14:07:21 +0000
Date: Thu, 21 Jan 2021 15:07:20 +0100
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <20210121140720.br62jzoem33ovwsr@barbe>
Mail-Followup-To: usrp-users <usrp-users@lists.ettus.com>
References: <20210119174249.2552vsmlnc35d6i4@barbe>
 <CAB__hTT9z0WHtD88DTrrn6CeCXd8Eg3TEdLAjuh_vt0s7sqncg@mail.gmail.com>
Content-Type: multipart/mixed; boundary="hki4zkcsijfl7lrc"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAB__hTT9z0WHtD88DTrrn6CeCXd8Eg3TEdLAjuh_vt0s7sqncg@mail.gmail.com>
X-Originating-IP: [2a02:1811:371b:2300:ecfc:3d22:1f91:100b]
X-ClientProxiedBy: AM4PR0101CA0084.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::52) To AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:11e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a02:1811:371b:2300:ecfc:3d22:1f91:100b) by
 AM4PR0101CA0084.eurprd01.prod.exchangelabs.com (2603:10a6:200:41::52) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11 via Frontend
 Transport; Thu, 21 Jan 2021 14:07:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d05a8633-0cc4-4d97-6a0d-08d8be15dec3
X-MS-TrafficTypeDiagnostic: AM5P190MB0307:
X-Microsoft-Antispam-PRVS: <AM5P190MB030744DD45F0FD86C7CD3CFBF0A10@AM5P190MB0307.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qA5NFW2qVSAE2cVuWraGQe4YKgrxELSMyFbJmtOL/Z1oyeNYKDe6Hg01K28m2DqjT5kIDoxNENZwQoOlWdrVC65zxzOwSv2GwjCCzICtAnEt4/aIe7mSJutu2ZWg/ArgKAuAutVbV4TD870UnRWZEMLyvXt5ynk7O0FloeQOksSCWK79JIuUxk+MN0dbBVaWU4OUr2juVdgsf9/JRK4PgqAmwf3MGmQqfmxo+aZmkgLnGrlC16ycWw6jEW3zkn1WfM9l9CWbII/Ir20U6OJwzCuqEOjWGNkW8kyKxdkcR3FNTPluzHcwppXa9CIe8ECkpwCUq7IqRGYJTzAQrwlGnrhkXgehQP1HMgtEmgoslcqXAiQmAIVYbEcVVxFhRNWQdkwg3FxaPBxkCQuQl7cH1hxxdgcvneRz63pAAV0yJvALC5u67LCABBYcnHwtcJce
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P190MB0632.EURP190.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(136003)(39850400004)(346002)(366004)(396003)(376002)(66476007)(66946007)(478600001)(5660300002)(8936002)(66556008)(52116002)(44144004)(16526019)(8676002)(6916009)(66616009)(235185007)(2906002)(53546011)(86362001)(6486002)(66574015)(33716001)(6496006)(1076003)(186003)(9686003)(83380400001)(21480400003)(786003)(316002)(2700100001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?LDtdoS1mEjSUdvjYMViHYQVcc0ZQb99zBDwLwki/+UiTqurG7a/pAZVYWV?=
 =?iso-8859-1?Q?zdnCscQXFeG6haDynV2gy6wHOF97MkDkVR4E2xonkfv32fsmc1oYBSFghF?=
 =?iso-8859-1?Q?tYHu53yjG5hZkl/uwGikKkp43+t93rvsR9EBkOHKhzrToWfJuvcALLWtzJ?=
 =?iso-8859-1?Q?Z1xjtiQV/Tept5P8mdzITfL4lNbHRVf3JzANjUKDi6jTVvM9nHtjYMhXBs?=
 =?iso-8859-1?Q?RJyEPPPUfTEvPQtW9tUka65a0uolmv3jzrlm6Vg+Yo9QpmPHufGhJM3oQk?=
 =?iso-8859-1?Q?YLODabHrfN4tRYMkOPYoPA4dPR9h85sLCBJxvHtMUN06MgF2qICq4wuIGE?=
 =?iso-8859-1?Q?P43NnW7VnXUduQJwap4PRFYu7XkuXrL3tLK5wd0MWmPMchsoepvijExi7R?=
 =?iso-8859-1?Q?MmlociNGoqHDnXpDlqZlKPDJRMi7ne4j25SxcvzLXqLN5Y2mbupRlcnzlN?=
 =?iso-8859-1?Q?6QH1I4tlowE+WFSK5HngzRwX0OL9zacQu6Q33EIFf7WuuLP4NBgFMwzEfl?=
 =?iso-8859-1?Q?BieFuxVvcqYH/tiWxYriJ0PtSYAD+ymx2sk+PS3e6VAH+2CkovEluiF3fZ?=
 =?iso-8859-1?Q?9kLbcv3DUYZyzM/UYYWHbw0FwCS6z3bsLcyb++q9iYhl98z8Hzw6XPTf5S?=
 =?iso-8859-1?Q?9AfYbKMgsP6DU60PatNCSdRUC8U66KR0katrLGhmxErljxznIH0qrBfsBG?=
 =?iso-8859-1?Q?xmXAKcuGhnxn5bW/Q4yB8dWDLRsgFP3BKubuzsMD8jWDIkOpYoh9nfiB2n?=
 =?iso-8859-1?Q?PdNLuAY4EJzpq4ywCdnB4jwZ/QdplyK1Ofpog1FqjRh+IjLvkkxwsWHLhY?=
 =?iso-8859-1?Q?+iJO58eFhcX2wx5wWGKxAQ9Be6st0K0lHEsoaLV4OZ9WIsYAkYaNXB3Xic?=
 =?iso-8859-1?Q?5dI8+l3MvoGxaMgxd77v+gC1xcSyeyNmamEDYRbwssvdqtu+AlH0J2Ax3H?=
 =?iso-8859-1?Q?BuImkjp3fO0l2aPubhgPEFKdWay76oXytW4N2yNpq56Fdy5ysOFm4hvKPN?=
 =?iso-8859-1?Q?mwJ1M7sLfvVOzyKjwn1RLddOWvyNQ0uP8T4pGbBYw6EBLETWuILBAzkHXx?=
 =?iso-8859-1?Q?PV2GIHK0pCnEFKzH690spLScmDbiE1PvI2byDlEKiQhu?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: d05a8633-0cc4-4d97-6a0d-08d8be15dec3
X-MS-Exchange-CrossTenant-AuthSource: AM7P190MB0632.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2021 14:07:21.6293 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pwGtGqWIYlsLgjL2SgYtVjs37lWUyVtPLnTxJPS1l0KCDRk+N2GvYDRoRIJcOmDYGH4OoMXMR724JukwhqTuLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P190MB0307
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

--hki4zkcsijfl7lrc
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Rob,

Thanks for your help.

On 20/01/21 16:46, Rob Kossler wrote:
> I don't see anything wrong.  Given that you said the FFT block works but
> your block doesn't, could it be something related to a c++ block
> controller?

It is not just *my* block. the gain block from
"uhd/host/examples/rfnoc-example" does not work either.
Same for the initial block generated by rfnocmodtool (just a passthrough).

For simplicity, let's just focus on the "example" gain block
(since that one is provided by Ettus/uhd).

The procedure I followed:
 1. UHD_DIR=/path/to/uhd # git branch UHD-4.0
 2. cp -r $UHD_DIR/host/examples/rfnoc-example /tmp
 3. cd /tmp/rfnoc-example
 4. sed -i '/^set(RFNOC_PKG_DATA_DIR/ s/uhd/uhd4.0.0/' CMakeLists.txt # rfnoc block are in /usr/share/uhd4.0.0/rfnoc/...
 5. cmake -S . -B build -DUHD_FPGA_DIR=$UHD_DIR/fpga/ -DCMAKE_INSTALL_PREFIX=/usr # installation is on /usr not /usr/local
 6. cd build
 7. make

"""
[ 25%] Building CXX object lib/CMakeFiles/rfnoc-example.dir/gain_block_control.cpp.o
[ 50%] Linking CXX shared library librfnoc-example.so
[ 50%] Built target rfnoc-example
Scanning dependencies of target init_gain_block
[ 75%] Building CXX object apps/CMakeFiles/init_gain_block.dir/init_gain_block.cpp.o
[100%] Linking CXX executable init_gain_block
[100%] Built target init_gain_block
"""

 8. sudo make install

"""
[ 50%] Built target rfnoc-example
[100%] Built target init_gain_block
Install the project...
-- Install configuration: ""
-- Installing: /usr/share/uhd4.0.0/rfnoc/blocks/gain.yml
-- Installing: /usr/share/uhd4.0.0/rfnoc/example/fpga/Makefile.srcs
-- Installing: /usr/share/uhd4.0.0/rfnoc/example/fpga/rfnoc_block_gain/Makefile.srcs
-- Installing: /usr/share/uhd4.0.0/rfnoc/example/fpga/rfnoc_block_gain/rfnoc_block_gain.v
-- Installing: /usr/share/uhd4.0.0/rfnoc/example/fpga/rfnoc_block_gain/noc_shell_gain.v
-- Installing: /usr/include/rfnoc/gain/gain_block_control.hpp
-- Installing: /usr/lib/librfnoc-example.so
-- Set runtime path of "/usr/lib/librfnoc-example.so" to ""
"""

 9. make x310_rfnoc_image_core
 10. cd $UHD_DIR/fpga/usrp3/top/x300/
 11. source setupenv.sh
 12. viv_jtag_program build/usrp_x310_fpga_HG.bit

Then, using the code provided from your mail:

"""
$ g++ -g -o test rfnoc_block_test.cpp  -lboost_program_options -luhd
$ ./test --block-id '0/Block#0' --tx-stream-args "spp=256" --rx-stream-args "spp=256"

Creating the USRP device with args:
[INFO] [UHD] linux; GNU C++ version 10.2.1 20201224; Boost_107400; UHD_4.0.0.0-4
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xb16, 0xffff
Device creation complete

Block to test: 0/Block#0

Creating rx streamer with args: spp=256
Creating tx streamer with args: spp=256

tx_streamer->send(), time: 5.6789, tick count: 5678900, nsamps: 1024, SOB: 1, EOB: 1, SPP: 256

rx_streamer->recv(), time: 6, tick count: 6000000, nsamps: 256, SOB: 0, EOB: 0
rx_streamer->recv(), time: 262, tick count: 262000000, nsamps: 256, SOB: 0, EOB: 0
rx_streamer->recv(), time: 518, tick count: 518000000, nsamps: 256, SOB: 0, EOB: 0
rx_streamer->recv(), time: 774, tick count: 774000000, nsamps: 256, SOB: 0, EOB: 1
rx_streamer->recv(), time: -1, tick count: 0, nsamps: 0, SOB: 0, EOB: 0
"""

So, it worked.

However,
it still does not solve the patched version of rfnoc_rx_to_file
that I provided in my original mail (it is attached to this email).
It still exits with timeout (not receiving any packet).

"""
$ g++ -g -o test rfnoc_rx_to_file.cpp  -lboost_program_options -luhd
$ ./test  --block-id '0/Block#0' --rate 20e6 --progress

Creating the RFNoC graph with args: ...
[INFO] [UHD] linux; GNU C++ version 10.2.1 20201224; Boost_107400; UHD_4.0.0.0-4
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xb16, 0xffff
Using radio 0, channel 0
Looking for source block 0/Radio#0, port 0
Setting RX Rate: 20.000000 Msps...
DDC block found
Setting decimation value to 10
Actual decimation value is 10
Actual RX Rate: 20.000000 Msps...

Setting RX Freq: 0.000000 MHz...
Actual RX Freq: 10.000000 MHz...

Setting samples per packet to: 64
Actual samples per packet = 64
Using streamer args:
Press Ctrl + C to stop streaming...
Issuing stream cmd
Timeout while streaming
Issuing stop stream cmd

Done!
"""

Sadly, I am still stuck :(
Any further help appreciated!

-- 

Cédric Hannotier

--hki4zkcsijfl7lrc
Content-Type: text/x-c++src; charset=us-ascii
Content-Disposition: attachment; filename="rfnoc_rx_to_file.cpp"

//
// Copyright 2014-2016 Ettus Research LLC
// Copyright 2019 Ettus Research, a National Instruments Brand
//
// SPDX-License-Identifier: GPL-3.0-or-later
//

#include <uhd/exception.hpp>
#include <uhd/rfnoc/ddc_block_control.hpp>
#include <uhd/rfnoc/defaults.hpp>
#include <uhd/rfnoc/mb_controller.hpp>
#include <uhd/rfnoc/radio_control.hpp>
#include <uhd/rfnoc_graph.hpp>
#include <uhd/types/sensors.hpp>
#include <uhd/types/tune_request.hpp>
#include <uhd/utils/safe_main.hpp>
#include <uhd/utils/thread.hpp>
#include <boost/format.hpp>
#include <boost/program_options.hpp>
#include <chrono>
#include <complex>
#include <csignal>
#include <fstream>
#include <functional>
#include <iostream>
#include <thread>

namespace po = boost::program_options;

const int64_t UPDATE_INTERVAL = 1; // 1 second update interval for BW summary

static bool stop_signal_called = false;
void sig_int_handler(int)
{
    stop_signal_called = true;
}

template <typename samp_type>
void recv_to_file(uhd::rx_streamer::sptr rx_stream,
    const std::string& file,
    const size_t samps_per_buff,
    const double rx_rate,
    const unsigned long long num_requested_samples,
    double time_requested       = 0.0,
    bool bw_summary             = false,
    bool stats                  = false,
    bool enable_size_map        = false,
    bool continue_on_bad_packet = false)
{
    unsigned long long num_total_samps = 0;

    uhd::rx_metadata_t md;
    std::vector<samp_type> buff(samps_per_buff);
    std::ofstream outfile;
    if (not file.empty()) {
        outfile.open(file.c_str(), std::ofstream::binary);
    }
    bool overflow_message = true;

    // setup streaming
    uhd::stream_cmd_t stream_cmd((num_requested_samples == 0)
                                     ? uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS
                                     : uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
    stream_cmd.num_samps  = size_t(num_requested_samples);
    stream_cmd.stream_now = true;
    stream_cmd.time_spec  = uhd::time_spec_t();
    std::cout << "Issuing stream cmd" << std::endl;
    rx_stream->issue_stream_cmd(stream_cmd);

    const auto start_time = std::chrono::steady_clock::now();
    const auto stop_time =
        start_time + std::chrono::milliseconds(int64_t(1000 * time_requested));
    // Track time and samps between updating the BW summary
    auto last_update                     = start_time;
    unsigned long long last_update_samps = 0;

    typedef std::map<size_t, size_t> SizeMap;
    SizeMap mapSizes;

    // Run this loop until either time expired (if a duration was given), until
    // the requested number of samples were collected (if such a number was
    // given), or until Ctrl-C was pressed.
    while (not stop_signal_called
           and (num_requested_samples != num_total_samps or num_requested_samples == 0)
           and (time_requested == 0.0 or std::chrono::steady_clock::now() <= stop_time)) {
        const auto now = std::chrono::steady_clock::now();

        size_t num_rx_samps =
            rx_stream->recv(&buff.front(), buff.size(), md, 3.0, enable_size_map);

        if (md.error_code == uhd::rx_metadata_t::ERROR_CODE_TIMEOUT) {
            std::cout << boost::format("Timeout while streaming") << std::endl;
            break;
        }
        if (md.error_code == uhd::rx_metadata_t::ERROR_CODE_OVERFLOW) {
            if (overflow_message) {
                overflow_message = false;
                std::cerr
                    << boost::format(
                           "Got an overflow indication. Please consider the following:\n"
                           "  Your write medium must sustain a rate of %fMB/s.\n"
                           "  Dropped samples will not be written to the file.\n"
                           "  Please modify this example for your purposes.\n"
                           "  This message will not appear again.\n")
                           % (rx_rate * sizeof(samp_type) / 1e6);
            }
            continue;
        }
        if (md.error_code != uhd::rx_metadata_t::ERROR_CODE_NONE) {
            std::string error = str(boost::format("Receiver error: %s") % md.strerror());
            if (continue_on_bad_packet) {
                std::cerr << error << std::endl;
                continue;
            } else
                throw std::runtime_error(error);
        }

        if (enable_size_map) {
            SizeMap::iterator it = mapSizes.find(num_rx_samps);
            if (it == mapSizes.end())
                mapSizes[num_rx_samps] = 0;
            mapSizes[num_rx_samps] += 1;
        }

        num_total_samps += num_rx_samps;

        if (outfile.is_open()) {
            outfile.write((const char*)&buff.front(), num_rx_samps * sizeof(samp_type));
        }

        if (bw_summary) {
            last_update_samps += num_rx_samps;
            const auto time_since_last_update = now - last_update;
            if (time_since_last_update > std::chrono::seconds(UPDATE_INTERVAL)) {
                const double time_since_last_update_s =
                    std::chrono::duration<double>(time_since_last_update).count();
                const double rate = double(last_update_samps) / time_since_last_update_s;
                std::cout << "\t" << (rate / 1e6) << " MSps" << std::endl;
                last_update_samps = 0;
                last_update       = now;
            }
        }
    }
    const auto actual_stop_time = std::chrono::steady_clock::now();

    stream_cmd.stream_mode = uhd::stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS;
    std::cout << "Issuing stop stream cmd" << std::endl;
    rx_stream->issue_stream_cmd(stream_cmd);

    // Run recv until nothing is left
    int num_post_samps = 0;
    do {
        num_post_samps = rx_stream->recv(&buff.front(), buff.size(), md, 3.0);
    } while (num_post_samps and md.error_code == uhd::rx_metadata_t::ERROR_CODE_NONE);

    if (outfile.is_open())
        outfile.close();

    if (stats) {
        std::cout << std::endl;

        const double actual_duration_seconds =
            std::chrono::duration<float>(actual_stop_time - start_time).count();

        std::cout << boost::format("Received %d samples in %f seconds") % num_total_samps
                         % actual_duration_seconds
                  << std::endl;
        const double rate = (double)num_total_samps / actual_duration_seconds;
        std::cout << (rate / 1e6) << " MSps" << std::endl;

        if (enable_size_map) {
            std::cout << std::endl;
            std::cout << "Packet size map (bytes: count)" << std::endl;
            for (SizeMap::iterator it = mapSizes.begin(); it != mapSizes.end(); it++)
                std::cout << it->first << ":\t" << it->second << std::endl;
        }
    }
}

typedef std::function<uhd::sensor_value_t(const std::string&)> get_sensor_fn_t;

bool check_locked_sensor(std::vector<std::string> sensor_names,
    const char* sensor_name,
    get_sensor_fn_t get_sensor_fn,
    double setup_time)
{
    if (std::find(sensor_names.begin(), sensor_names.end(), sensor_name)
        == sensor_names.end())
        return false;

    auto setup_timeout = std::chrono::steady_clock::now()
                         + std::chrono::milliseconds(int64_t(setup_time * 1000));
    bool lock_detected = false;

    std::cout << boost::format("Waiting for \"%s\": ") % sensor_name;
    std::cout.flush();

    while (true) {
        if (lock_detected and (std::chrono::steady_clock::now() > setup_timeout)) {
            std::cout << " locked." << std::endl;
            break;
        }
        if (get_sensor_fn(sensor_name).to_bool()) {
            std::cout << "+";
            std::cout.flush();
            lock_detected = true;
        } else {
            if (std::chrono::steady_clock::now() > setup_timeout) {
                std::cout << std::endl;
                throw std::runtime_error(
                    str(boost::format(
                            "timed out waiting for consecutive locks on sensor \"%s\"")
                        % sensor_name));
            }
            std::cout << "_";
            std::cout.flush();
        }
        std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }

    std::cout << std::endl;
    return true;
}

int UHD_SAFE_MAIN(int argc, char* argv[])
{
    // variables to be set by po
    std::string args, file, format, ant, subdev, ref, wirefmt, streamargs, block_id,
        block_args;
    size_t total_num_samps, spb, spp, radio_id, radio_chan;
    double rate, freq, gain, bw, total_time, setup_time;

    // setup the program options
    po::options_description desc("Allowed options");
    // clang-format off
    desc.add_options()
        ("help", "help message")
        ("file", po::value<std::string>(&file)->default_value("usrp_samples.dat"), "name of the file to write binary samples to")
        ("format", po::value<std::string>(&format)->default_value("sc16"), "File sample format: sc16, fc32, or fc64")
        ("duration", po::value<double>(&total_time)->default_value(0), "total number of seconds to receive")
        ("nsamps", po::value<size_t>(&total_num_samps)->default_value(0), "total number of samples to receive")
        ("spb", po::value<size_t>(&spb)->default_value(10000), "samples per buffer")
        ("spp", po::value<size_t>(&spp)->default_value(64), "samples per packet (on FPGA and wire)")
        ("streamargs", po::value<std::string>(&streamargs)->default_value(""), "stream args")
        ("progress", "periodically display short-term bandwidth")
        ("stats", "show average bandwidth on exit")
        ("sizemap", "track packet size and display breakdown on exit")
        ("null", "run without writing to file")
        ("continue", "don't abort on a bad packet")

        ("args", po::value<std::string>(&args)->default_value(""), "USRP device address args")
        ("setup", po::value<double>(&setup_time)->default_value(1.0), "seconds of setup time")

        ("radio-id", po::value<size_t>(&radio_id)->default_value(0), "Radio ID to use (0 or 1).")
        ("radio-chan", po::value<size_t>(&radio_chan)->default_value(0), "Radio channel")
        ("rate", po::value<double>(&rate)->default_value(1e6), "RX rate of the radio block")
        ("freq", po::value<double>(&freq)->default_value(0.0), "RF center frequency in Hz")
        ("gain", po::value<double>(&gain), "gain for the RF chain")
        ("ant", po::value<std::string>(&ant), "antenna selection")
        ("bw", po::value<double>(&bw), "analog frontend filter bandwidth in Hz")
        ("ref", po::value<std::string>(&ref), "reference source (internal, external, mimo)")
        ("skip-lo", "skip checking LO lock status")
        ("int-n", "tune USRP with integer-N tuning")

        ("block-id", po::value<std::string>(&block_id)->default_value(""), "If block ID is specified, this block is inserted between radio and host.")
        ("block-args", po::value<std::string>(&block_args)->default_value(""), "These args are passed straight to the block.")
    ;
    // clang-format on
    po::variables_map vm;
    po::store(po::parse_command_line(argc, argv, desc), vm);
    po::notify(vm);

    // print the help message
    if (vm.count("help")) {
        std::cout << boost::format("UHD/RFNoC RX samples to file %s") % desc << std::endl;
        std::cout << std::endl
                  << "This application streams data from a single channel of a USRP "
                     "device to a file.\n"
                  << std::endl;
        return ~0;
    }

    bool bw_summary = vm.count("progress") > 0;
    bool stats      = vm.count("stats") > 0;
    if (vm.count("null") > 0) {
        file = "";
    }
    bool enable_size_map        = vm.count("sizemap") > 0;
    bool continue_on_bad_packet = vm.count("continue") > 0;

    if (enable_size_map) {
        std::cout << "Packet size tracking enabled - will only recv one packet at a time!"
                  << std::endl;
    }

    if (format != "sc16" and format != "fc32" and format != "fc64") {
        std::cout << "Invalid sample format: " << format << std::endl;
        return EXIT_FAILURE;
    }

    /************************************************************************
     * Create device and block controls
     ***********************************************************************/
    std::cout << std::endl;
    std::cout << boost::format("Creating the RFNoC graph with args: %s...") % args
              << std::endl;
    uhd::rfnoc::rfnoc_graph::sptr graph = uhd::rfnoc::rfnoc_graph::make(args);

    // Create handle for radio object
    uhd::rfnoc::block_id_t radio_ctrl_id(0, "Radio", radio_id);
    // This next line will fail if the radio is not actually available
    uhd::rfnoc::radio_control::sptr radio_ctrl =
        graph->get_block<uhd::rfnoc::radio_control>(radio_ctrl_id);
    std::cout << "Using radio " << radio_id << ", channel " << radio_chan << std::endl;

    // Enumerate blocks in the chain
    auto edges = graph->enumerate_static_connections();

    std::string source_block = radio_ctrl->get_block_id();
    size_t source_port       = radio_chan;
    auto chain               = std::vector<uhd::rfnoc::graph_edge_t>();
    uhd::rfnoc::ddc_block_control::sptr ddc_ctrl;
    size_t ddc_chan = 0;
    while (true) {
        std::cout << "Looking for source block " << source_block << ", port "
                  << source_port << std::endl;
        bool src_found = false;
        for (auto& edge : edges) {
            if (edge.src_blockid == source_block && edge.src_port == source_port) {
                auto blockid = uhd::rfnoc::block_id_t(source_block);
                if (blockid.match("DDC")) {
                    ddc_ctrl = graph->get_block<uhd::rfnoc::ddc_block_control>(blockid);
                    ddc_chan = edge.src_port;
                }
                src_found = true;
                chain.push_back(edge);
                source_block = edge.dst_blockid;
                source_port  = edge.dst_port;
            }
        }
        if (not src_found) {
            std::cerr << "ERROR: Failed to find target source block" << std::endl;
            break;
        }
        if (uhd::rfnoc::block_id_t(source_block).match(uhd::rfnoc::NODE_ID_SEP)) {
            break;
        }
    }

    /************************************************************************
     * Set up radio
     ***********************************************************************/
    // Lock mboard clocks
    if (vm.count("ref")) {
        graph->get_mb_controller(0)->set_clock_source(ref);
    }

    // set the sample rate
    if (rate <= 0.0) {
        std::cerr << "Please specify a valid sample rate" << std::endl;
        return EXIT_FAILURE;
    }
    std::cout << boost::format("Setting RX Rate: %f Msps...") % (rate / 1e6) << std::endl;
    double radio_rate = radio_ctrl->get_rate();
    if (ddc_ctrl) {
        std::cout << "DDC block found" << std::endl;
        int decim = (int)(radio_rate / rate);
        std::cout << boost::format("Setting decimation value to %d") % decim << std::endl;
        ddc_ctrl->set_property<int>("decim", decim, ddc_chan);
        decim = ddc_ctrl->get_property<int>("decim", ddc_chan);
        std::cout << boost::format("Actual decimation value is %d") % decim << std::endl;
        rate = radio_rate / decim;
    } else {
        rate = radio_ctrl->set_rate(rate);
    }
    std::cout << boost::format("Actual RX Rate: %f Msps...") % (rate / 1e6) << std::endl
              << std::endl;

    // set the center frequency
    if (vm.count("freq")) {
        std::cout << boost::format("Setting RX Freq: %f MHz...") % (freq / 1e6)
                  << std::endl;
        uhd::tune_request_t tune_request(freq);
        if (vm.count("int-n")) {
            // tune_request.args = uhd::device_addr_t("mode_n=integer"); TODO
        }
        radio_ctrl->set_rx_frequency(freq, radio_chan);
        std::cout << boost::format("Actual RX Freq: %f MHz...")
                         % (radio_ctrl->get_rx_frequency(radio_chan) / 1e6)
                  << std::endl
                  << std::endl;
    }

    // set the rf gain
    if (vm.count("gain")) {
        std::cout << boost::format("Setting RX Gain: %f dB...") % gain << std::endl;
        radio_ctrl->set_rx_gain(gain, radio_chan);
        std::cout << boost::format("Actual RX Gain: %f dB...")
                         % radio_ctrl->get_rx_gain(radio_chan)
                  << std::endl
                  << std::endl;
    }

    // set the IF filter bandwidth
    if (vm.count("bw")) {
        // std::cout << boost::format("Setting RX Bandwidth: %f MHz...") % (bw/1e6) <<
        // std::endl; radio_ctrl->set_rx_bandwidth(bw, radio_chan); // TODO std::cout <<
        // boost::format("Actual RX Bandwidth: %f MHz...") %
        // (radio_ctrl->get_rx_bandwidth(radio_chan)/1e6) << std::endl << std::endl;
    }

    // set the antenna
    if (vm.count("ant")) {
        radio_ctrl->set_rx_antenna(ant, radio_chan);
    }

    std::this_thread::sleep_for(std::chrono::milliseconds(int64_t(1000 * setup_time)));

    // check Ref and LO Lock detect
    if (not vm.count("skip-lo")) {
        // TODO
        // check_locked_sensor(usrp->get_rx_sensor_names(0), "lo_locked",
        // std::bind(&uhd::usrp::multi_usrp::get_rx_sensor, usrp, _1, radio_id),
        // setup_time); if (ref == "external")
        // check_locked_sensor(usrp->get_mboard_sensor_names(0), "ref_locked",
        // std::bind(&uhd::usrp::multi_usrp::get_mboard_sensor, usrp, _1, radio_id),
        // setup_time);
    }

    std::cout << "Setting samples per packet to: " << spp << std::endl;
    radio_ctrl->set_property<int>("spp", spp, 0);
    spp = radio_ctrl->get_property<int>("spp", 0);
    std::cout << "Actual samples per packet = " << spp << std::endl;

    /************************************************************************
     * Set up streaming
     ***********************************************************************/
    uhd::device_addr_t streamer_args(streamargs);

    // create a receive streamer
    // std::cout << "Samples per packet: " << spp << std::endl;
    uhd::stream_args_t stream_args(
        format, "sc16"); // We should read the wire format from the blocks
    stream_args.args = streamer_args;
    // TODO?
    // stream_args.args["spp"] = boost::lexical_cast<std::string>(spp);
    std::cout << "Using streamer args: " << stream_args.args.to_string() << std::endl;
    uhd::rx_streamer::sptr rx_stream = graph->create_rx_streamer(1, stream_args);

    // Set the stream args on the radio:
    // if (block_id.empty()) {
    //    // If no extra block is required, connect to the radio:
    //    streamer_args["block_id"]   = radio_ctrl_id.to_string();
    //    streamer_args["block_port"] = str(boost::format("%d") % radio_chan);
    //} else {
    //    // Otherwise, see if the requested block exists and connect it to the radio:
    //    if (not usrp->has_block(block_id)) {
    //        std::cout << "Block does not exist on current device: " << block_id
    //                  << std::endl;
    //        return EXIT_FAILURE;
    //    }

    //    uhd::rfnoc::source_block_ctrl_base::sptr blk_ctrl =
    //        usrp->get_block_ctrl<uhd::rfnoc::source_block_ctrl_base>(block_id);

    //    if (not block_args.empty()) {
    //        // Set the block args on the other block:
    //        blk_ctrl->set_args(uhd::device_addr_t(block_args));
    //    }
    //    // Connect:
    //    std::cout << "Connecting " << radio_ctrl_id << " ==> " <<
    //    blk_ctrl->get_block_id()
    //              << std::endl;
    //    rx_graph->connect(
    //        radio_ctrl_id, radio_chan, blk_ctrl->get_block_id(), uhd::rfnoc::ANY_PORT);
    //    streamer_args["block_id"] = blk_ctrl->get_block_id().to_string();

    //    spp = blk_ctrl->get_args().cast<size_t>("spp", spp);
    //}

    // Connect blocks and commit the graph
    //for (auto& edge : chain) {
    //    if (uhd::rfnoc::block_id_t(edge.dst_blockid).match(uhd::rfnoc::NODE_ID_SEP)) {
    //        graph->connect(edge.src_blockid, edge.src_port, rx_stream, 0);
    //    } else {
    //        graph->connect(
    //            edge.src_blockid, edge.src_port, edge.dst_blockid, edge.dst_port);
    //    }
    //}
    auto ddc_ctrl_id = ddc_ctrl->get_block_id();
    graph->connect(radio_ctrl_id, 0, ddc_ctrl_id, 0);
    if (!block_id.empty()) {
	    graph->connect(ddc_ctrl_id, 0, block_id, 0);
	    graph->connect(block_id, 0, rx_stream, 0);
    }
    else {
	    graph->connect(ddc_ctrl_id, 0, rx_stream, 0);
    }
    graph->commit();


    if (total_num_samps == 0) {
        std::signal(SIGINT, &sig_int_handler);
        std::cout << "Press Ctrl + C to stop streaming..." << std::endl;
    }
#define recv_to_file_args() \
    (rx_stream,             \
        file,               \
        spb,                \
        rate,               \
        total_num_samps,    \
        total_time,         \
        bw_summary,         \
        stats,              \
        enable_size_map,    \
        continue_on_bad_packet)
    // recv to file
    if (format == "fc64")
        recv_to_file<std::complex<double>> recv_to_file_args();
    else if (format == "fc32")
        recv_to_file<std::complex<float>> recv_to_file_args();
    else if (format == "sc16")
        recv_to_file<std::complex<short>> recv_to_file_args();
    else
        throw std::runtime_error("Unknown data format: " + format);

    // finished
    std::cout << std::endl << "Done!" << std::endl << std::endl;

    return EXIT_SUCCESS;
}

--hki4zkcsijfl7lrc
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--hki4zkcsijfl7lrc--

