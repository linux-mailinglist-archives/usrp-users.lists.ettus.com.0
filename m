Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CE75795D97
	for <lists+usrp-users@lfdr.de>; Tue, 20 Aug 2019 13:40:59 +0200 (CEST)
Received: from [::1] (port=43218 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i02VO-0007R9-QQ; Tue, 20 Aug 2019 07:40:50 -0400
Received: from smtp93.iad3b.emailsrvr.com ([146.20.161.93]:50662)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jasonr@3db-labs.com>) id 1i02VK-0007Mt-JJ
 for usrp-users@lists.ettus.com; Tue, 20 Aug 2019 07:40:46 -0400
X-Auth-ID: jasonr@3db-labs.com
Received: by smtp20.relay.iad3b.emailsrvr.com (Authenticated sender:
 jasonr-AT-3db-labs.com) with ESMTPSA id E3582A014B; 
 Tue, 20 Aug 2019 07:40:05 -0400 (EDT)
X-Sender-Id: jasonr@3db-labs.com
Received: from [192.168.101.19] (rrcs-74-142-203-226.central.biz.rr.com
 [74.142.203.226]) (using TLSv1.2 with cipher AES128-SHA)
 by 0.0.0.0:25 (trex/5.7.12); Tue, 20 Aug 2019 07:40:06 -0400
To: Neel Pandeya <neel.pandeya@ettus.com>
References: <9d637be0-b80a-33cb-492d-0197e3ba6f5a@3db-labs.com>
 <5D576746.1010008@gmail.com>
 <e74ba0af-5c65-9b46-d3d7-360ab9d9dda5@3db-labs.com>
 <CACaXmv-XwDKP8ok_325K_hahwWUAuesQJddD8-CkoNrJY7GqfQ@mail.gmail.com>
 <8a61a15c-6018-c30b-2cd3-15220e2ea1e6@3db-labs.com>
 <CACaXmv87s56ttKCk4io8Z5nJq3DjyhzL6Qv1PgTMUvahmSad7A@mail.gmail.com>
Message-ID: <d551a3fe-5f6a-147a-6bf3-0be3aaa86bcd@3db-labs.com>
Date: Tue, 20 Aug 2019 07:40:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CACaXmv87s56ttKCk4io8Z5nJq3DjyhzL6Qv1PgTMUvahmSad7A@mail.gmail.com>
Content-Type: multipart/mixed; boundary="------------09FD66B9D422ADE2CF337440"
Content-Language: en-US
Subject: Re: [USRP-users] Incorrect RX time_spec values with X300, TwinRX,
 and v3.14.1.0
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jason Roehm via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Roehm <jasonr@3db-labs.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
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

This is a multi-part message in MIME format.
--------------09FD66B9D422ADE2CF337440
Content-Type: multipart/alternative;
 boundary="------------4FFCB4973A992DEDB56B02A3"


--------------4FFCB4973A992DEDB56B02A3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 8/19/19 6:52 PM, Neel Pandeya wrote:
> Hello Jason:
>
> Thanks for all the detailed feedback!  No worries about not having a 
> stand-alone reproducing program at the moment.  Could you please try 
> using the head of the "UHD-3.14" branch?  We just tagged v3.14.1.1-rc1 
> with some bug fixes, which we think should address the issue.  Please 
> let me know your results running with that, and we'll go from there.
>
> --Neel Pandeya
>
Neel,

I saw the same behavior with the UHD-3.14 branch. I was able to take the 
time to put together a self-contained reproducer; see the attached 
source file. It's just a simple C++ program that initializes the USRP, 
streams a few blocks of data in, and checks the timestamps of 
consecutive blocks for continuity. When I run it, I see the following 
output:

[jasonr@host:~/test_uhd]$ LD_LIBRARY_PATH=~/git/sceptre/deps/lib ./test_uhd
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106900; 
UHD_3.14.1.HEAD-0-g98c7c986
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1303 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1312 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
[WARNING] [X300] Cannot update master clock rate! X300 Series does not 
allow changing the clock rate during runtime.
Block 1: 16384 samples @ 100 MSPS
     Timestamp:           1.96557
Block 2: 16384 samples @ 100 MSPS
     Timestamp:           1.9659
     Last timestamp:      1.96557
     Difference:          0.00032352
     Expected difference: 0.00016384
Block 3: 16384 samples @ 100 MSPS
     Timestamp:           1.96622
     Last timestamp:      1.9659
     Difference:          0.00032352
     Expected difference: 0.00016384
Block 4: 16384 samples @ 100 MSPS
     Timestamp:           1.96654
     Last timestamp:      1.96622
     Difference:          0.00032352
     Expected difference: 0.00016384
Block 5: 16384 samples @ 100 MSPS
     Timestamp:           1.96687
     Last timestamp:      1.96654
     Difference:          0.00032352
     Expected difference: 0.00016384
Block 6: 16384 samples @ 100 MSPS
     Timestamp:           1.96721
     Last timestamp:      1.96687
     Difference:          0.00034348
     Expected difference: 0.00016384
Block 7: 16384 samples @ 100 MSPS
     Timestamp:           1.96753
     Last timestamp:      1.96721
     Difference:          0.00032352
     Expected difference: 0.00016384
Block 8: 16384 samples @ 100 MSPS
     Timestamp:           1.96786
     Last timestamp:      1.96753
     Difference:          0.00032352
     Expected difference: 0.00016384
Block 9: 16384 samples @ 100 MSPS
     Timestamp:           1.96818
     Last timestamp:      1.96786
     Difference:          0.00032352
     Expected difference: 0.00016384
Block 10: 16384 samples @ 100 MSPS
     Timestamp:           1.96851
     Last timestamp:      1.96818
     Difference:          0.00032352
     Expected difference: 0.00016384
[jasonr@gauss:~/git/sceptre/test/test_uhd]$

Thanks for your help.

Jason


--------------4FFCB4973A992DEDB56B02A3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 8/19/19 6:52 PM, Neel Pandeya wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CACaXmv87s56ttKCk4io8Z5nJq3DjyhzL6Qv1PgTMUvahmSad7A@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">Hello Jason:</div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif"><br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">Thanks for all the
          detailed feedback!  No worries about not having a stand-alone
          reproducing program at the moment.  Could you please try using
          the head of the "UHD-3.14" branch?  We just tagged
          v3.14.1.1-rc1 with some bug fixes, which we think should
          address the issue.  Please let me know your results running
          with that, and we'll go from there.</div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif"><br>
        </div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif">--Neel Pandeya</div>
        <div class="gmail_default"
          style="font-family:verdana,sans-serif"><br>
        </div>
      </div>
    </blockquote>
    <p>Neel,</p>
    <p>I saw the same behavior with the UHD-3.14 branch. I was able to
      take the time to put together a self-contained reproducer; see the
      attached source file. It's just a simple C++ program that
      initializes the USRP, streams a few blocks of data in, and checks
      the timestamps of consecutive blocks for continuity. When I run
      it, I see the following output:</p>
    <p><tt>[jasonr@host:~/test_uhd]$
        LD_LIBRARY_PATH=~/git/sceptre/deps/lib ./test_uhd </tt><tt><br>
      </tt><tt>[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106900;
        UHD_3.14.1.HEAD-0-g98c7c986</tt><tt><br>
      </tt><tt>[INFO] [X300] X300 initialization sequence...</tt><tt><br>
      </tt><tt>[INFO] [X300] Maximum frame size: 8000 bytes.</tt><tt><br>
      </tt><tt>[INFO] [X300] Radio 1x clock: 200 MHz</tt><tt><br>
      </tt><tt>[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev
        0.929a</tt><tt><br>
      </tt><tt>[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
        0xF1F0D00000000000)</tt><tt><br>
      </tt><tt>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1303 MB/s)</tt><tt><br>
      </tt><tt>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1312 MB/s)</tt><tt><br>
      </tt><tt>[INFO] [0/Radio_0] Initializing block control (NOC ID:
        0x12AD100000000001)</tt><tt><br>
      </tt><tt>[INFO] [0/Radio_1] Initializing block control (NOC ID:
        0x12AD100000000001)</tt><tt><br>
      </tt><tt>[INFO] [0/DDC_0] Initializing block control (NOC ID:
        0xDDC0000000000000)</tt><tt><br>
      </tt><tt>[INFO] [0/DDC_1] Initializing block control (NOC ID:
        0xDDC0000000000000)</tt><tt><br>
      </tt><tt>[INFO] [0/DUC_0] Initializing block control (NOC ID:
        0xD0C0000000000000)</tt><tt><br>
      </tt><tt>[INFO] [0/DUC_1] Initializing block control (NOC ID:
        0xD0C0000000000000)</tt><tt><br>
      </tt><tt>[WARNING] [X300] Cannot update master clock rate! X300
        Series does not allow changing the clock rate during runtime.</tt><tt><br>
      </tt><tt>Block 1: 16384 samples @ 100 MSPS</tt><tt><br>
      </tt><tt>    Timestamp:           1.96557</tt><tt><br>
      </tt><tt>Block 2: 16384 samples @ 100 MSPS</tt><tt><br>
      </tt><tt>    Timestamp:           1.9659</tt><tt><br>
      </tt><tt>    Last timestamp:      1.96557</tt><tt><br>
      </tt><tt>    Difference:          0.00032352</tt><tt><br>
      </tt><tt>    Expected difference: 0.00016384</tt><tt><br>
      </tt><tt>Block 3: 16384 samples @ 100 MSPS</tt><tt><br>
      </tt><tt>    Timestamp:           1.96622</tt><tt><br>
      </tt><tt>    Last timestamp:      1.9659</tt><tt><br>
      </tt><tt>    Difference:          0.00032352</tt><tt><br>
      </tt><tt>    Expected difference: 0.00016384</tt><tt><br>
      </tt><tt>Block 4: 16384 samples @ 100 MSPS</tt><tt><br>
      </tt><tt>    Timestamp:           1.96654</tt><tt><br>
      </tt><tt>    Last timestamp:      1.96622</tt><tt><br>
      </tt><tt>    Difference:          0.00032352</tt><tt><br>
      </tt><tt>    Expected difference: 0.00016384</tt><tt><br>
      </tt><tt>Block 5: 16384 samples @ 100 MSPS</tt><tt><br>
      </tt><tt>    Timestamp:           1.96687</tt><tt><br>
      </tt><tt>    Last timestamp:      1.96654</tt><tt><br>
      </tt><tt>    Difference:          0.00032352</tt><tt><br>
      </tt><tt>    Expected difference: 0.00016384</tt><tt><br>
      </tt><tt>Block 6: 16384 samples @ 100 MSPS</tt><tt><br>
      </tt><tt>    Timestamp:           1.96721</tt><tt><br>
      </tt><tt>    Last timestamp:      1.96687</tt><tt><br>
      </tt><tt>    Difference:          0.00034348</tt><tt><br>
      </tt><tt>    Expected difference: 0.00016384</tt><tt><br>
      </tt><tt>Block 7: 16384 samples @ 100 MSPS</tt><tt><br>
      </tt><tt>    Timestamp:           1.96753</tt><tt><br>
      </tt><tt>    Last timestamp:      1.96721</tt><tt><br>
      </tt><tt>    Difference:          0.00032352</tt><tt><br>
      </tt><tt>    Expected difference: 0.00016384</tt><tt><br>
      </tt><tt>Block 8: 16384 samples @ 100 MSPS</tt><tt><br>
      </tt><tt>    Timestamp:           1.96786</tt><tt><br>
      </tt><tt>    Last timestamp:      1.96753</tt><tt><br>
      </tt><tt>    Difference:          0.00032352</tt><tt><br>
      </tt><tt>    Expected difference: 0.00016384</tt><tt><br>
      </tt><tt>Block 9: 16384 samples @ 100 MSPS</tt><tt><br>
      </tt><tt>    Timestamp:           1.96818</tt><tt><br>
      </tt><tt>    Last timestamp:      1.96786</tt><tt><br>
      </tt><tt>    Difference:          0.00032352</tt><tt><br>
      </tt><tt>    Expected difference: 0.00016384</tt><tt><br>
      </tt><tt>Block 10: 16384 samples @ 100 MSPS</tt><tt><br>
      </tt><tt>    Timestamp:           1.96851</tt><tt><br>
      </tt><tt>    Last timestamp:      1.96818</tt><tt><br>
      </tt><tt>    Difference:          0.00032352</tt><tt><br>
      </tt><tt>    Expected difference: 0.00016384</tt><tt><br>
      </tt><tt>[jasonr@gauss:~/git/sceptre/test/test_uhd]$</tt><tt><br>
      </tt></p>
    <p>Thanks for your help.</p>
    <p>Jason<br>
    </p>
  </body>
</html>

--------------4FFCB4973A992DEDB56B02A3--

--------------09FD66B9D422ADE2CF337440
Content-Type: text/x-c++src;
 name="test_uhd.cc"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="test_uhd.cc"

#include <uhd/usrp/multi_usrp.hpp>

int main()
{
    std::string args = "type=x300, addr=192.168.40.2, recv_buff_size=100000000";
    std::string clock_source = "internal";
    std::string time_source = "internal";
    std::string subdev = "A:0";
    double rate = 100e6;
    double freq = 100e6;
    int tl = 16384;
    double timeout = 5.0;

    uhd::usrp::multi_usrp::sptr usrp = uhd::usrp::multi_usrp::make(args);
    usrp->set_clock_source(clock_source);
    usrp->set_time_source(time_source);
    if (!subdev.empty()) usrp->set_rx_subdev_spec(subdev);
    usrp->set_rx_rate(rate);
    usrp->set_rx_freq(freq, 0);

    uhd::stream_args_t stream_args("sc16");
    stream_args.channels.push_back(0);
    uhd::rx_streamer::sptr streamer = usrp->get_rx_stream(stream_args);

    std::vector<std::complex<int16_t> > buf;
    buf.resize(tl);
    std::vector<std::complex<int16_t> *> ptrs;
    ptrs.push_back(&buf[0]);

    uhd::stream_cmd_t stream_cmd( uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);
    uhd::time_spec_t cmd_time = usrp->get_time_now() + uhd::time_spec_t(0.1);
    stream_cmd.num_samps = 0;
    stream_cmd.stream_now = false;
    stream_cmd.time_spec = cmd_time;
    streamer->issue_stream_cmd(stream_cmd);

    uhd::rx_metadata_t last_md;
    for (int i = 0; i < 10; ++i)
    {
        uhd::rx_metadata_t md;
        size_t n = streamer->recv(ptrs, tl, md, timeout);

        std::cout << "Block " << i + 1 << ": " << n << " samples @ " << rate / 1e6 << " MSPS" << std::endl;
        std::cout << "    Timestamp:           " << md.time_spec.get_real_secs() << std::endl;
        if (i)
        {    
            std::cout << "    Last timestamp:      " << last_md.time_spec.get_real_secs() << std::endl;
            std::cout << "    Difference:          " << (md.time_spec - last_md.time_spec).get_real_secs() << std::endl;
            std::cout << "    Expected difference: " << n / rate << std::endl; 
        }

        last_md = md;
    }

    stream_cmd.stream_mode = uhd::stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS;
    streamer->issue_stream_cmd(stream_cmd);
}

--------------09FD66B9D422ADE2CF337440
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------09FD66B9D422ADE2CF337440--

