Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CE934252244
	for <lists+usrp-users@lfdr.de>; Tue, 25 Aug 2020 22:56:25 +0200 (CEST)
Received: from [::1] (port=41258 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAfzT-0004it-Ew; Tue, 25 Aug 2020 16:56:23 -0400
Received: from mail-qk1-f172.google.com ([209.85.222.172]:46363)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kAfzP-0004cC-EB
 for usrp-users@lists.ettus.com; Tue, 25 Aug 2020 16:56:19 -0400
Received: by mail-qk1-f172.google.com with SMTP id o12so81930qki.13
 for <usrp-users@lists.ettus.com>; Tue, 25 Aug 2020 13:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=P3RqQ7hYZnRf5ZJWJRPQzoTEl/3DYVxGQbX8ENE/uRI=;
 b=EFO9oVDjv9IPs9jxTjB71s2VovL2ZA184lhh0E3qz9vqMCe8DPAnlm2B1f8nX8/0L1
 yNgdQLMvc2Jvc+GKbc68IqsEij6COIX+/LILVZJoE0UuyrlhqvxUqEx8P0UrHHakOCF4
 PdYkgCGkhCGtzJF8Ij44gBSuFUOeXpaOalT422dB/oszI3NEjxNdlFjnJgKzcgHs7iYY
 f9gj0nTTUG3AemV4mgITRSUdCPA8kb6KPkpWSu09x6SjxbKWy+kBfqsrD3+4+PwxeNBc
 NjnCBiLGucnEdhNsZsL5g/rAJX4fNimAzYrf1zbcZBH6w5tepM1WGNrqm3wlGhnNJ9nD
 m7IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=P3RqQ7hYZnRf5ZJWJRPQzoTEl/3DYVxGQbX8ENE/uRI=;
 b=YckjyQVKugDFYbWZgfRNlJPM4zL9JNgNVbgUngkbTmQ0QVGwrySiKR0anJZAp3tIFE
 bvVlYkwp3H3Sov3O/mq8pm0sfJ7EM5Ol4ab4CTSFs+AnAuGvaKKbz1bZVne3UjyQ8hn1
 1JP78TWMLSjSOZGL+4Bx2Qcpae50/t71G5SiX98OFvtF6WWE2fue44q+wVsGBT/pfjV7
 uO95tzHlv0vnnTnSPxzCSeIKBxJzWsjtI5pbTe5GR1XJ+3P1Q1j6cxmGGcJayB3Px6pY
 rfBca/veL6rU8V0WRJputNapJywpGu1xrCLYhwJa9f4hRTyZjvX1PT75CCo0Op8ZyGtT
 Impg==
X-Gm-Message-State: AOAM530DTIq+ZGm7cGJDqY+Avci5kgGdcY1mU/Mp+BXmD/ZDA/7v5Ex9
 p/FDUI0n/b5dwc6dSDqRfCD6r3LkR72Rkw==
X-Google-Smtp-Source: ABdhPJx2HtqIAkFd5Z2cCyLrK8ip4rZ7WCFs+Hx+T2mKSh+9Nc/TuTuZkWQe3FAYkJd/Y667OMgs2Q==
X-Received: by 2002:a37:96c5:: with SMTP id
 y188mr10828941qkd.412.1598388938729; 
 Tue, 25 Aug 2020 13:55:38 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id y3sm214907qtj.55.2020.08.25.13.55.38
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Aug 2020 13:55:38 -0700 (PDT)
Message-ID: <5F457AC9.6070805@gmail.com>
Date: Tue, 25 Aug 2020 16:55:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <1068579459.5506610.1598385600265.ref@mail.yahoo.com>
 <1068579459.5506610.1598385600265@mail.yahoo.com>
In-Reply-To: <1068579459.5506610.1598385600265@mail.yahoo.com>
Subject: Re: [USRP-users] B210 RX 2 channels
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============7337260664400773358=="
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
--===============7337260664400773358==
Content-Type: multipart/alternative;
 boundary="------------090406080603060108070200"

This is a multi-part message in MIME format.
--------------090406080603060108070200
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 08/25/2020 04:00 PM, Jay Labhart via USRP-users wrote:
> Hello,
>
> I have started to work with the B210 on a project.  My interest is to 
> collect samples from the 2 RX of the B210 looking at a frequency of 
> channel 1 of 2.4GHz (2412).  My goal is to use a grc to workout the 
> algorithm then move to c++.  I am having some challenges that I would 
> like to ask the group for help.
>
> I used a .grc to collect samples and review the algorithm.  The graph 
> is attached. At this point I am just collecting data. I use a series 
> of variables to create 2 data files.
>
> I moved to c++ and modified a sample to collect the same dataset.
>
> I am using the python file gr_plot_iq.py to review the signals.  When 
> I review the grc graph the signals appear as I would think.  The c++ 
> the signals are scattered way apart and A&B are consistent.
>
> Any thoughts would be greatful.
>
> Test:
>     2.4 GHz router chirping every 100 ms
>         local area with no wireless except router
> uhd
>         2412000000 channel 1
>         rate - 20 MSPS (only get 15)
>         looking at 2 RX channels at same freq
>
> hardware & os
> Intel® Core™ i5-6400 CPU @ 2.70GHz × 4
> 12GB RAM
> Ubuntu 18.04.5 LTS
>
> attached is the probe from the uhd
>
> The challenge is that I am seeing different results from the grc and 
> the c++ file.  On the grc graph I collect a variety of samples from 
> the router.  On the c++ file there only seems to be 1-2 samples.  I 
> would expect to see a similar set of samples.
>
> Inline image
>
>
> *c++ code excerpt*
>
>     // detect which channels to use
>     std::vector<std::string> channel_strings;
>     std::vector<size_t> channel_nums;
>     boost::split(channel_strings, channel_list, boost::is_any_of("\"',"));
>     for (size_t ch = 0; ch < channel_strings.size(); ch++) {
>         size_t chan = std::stoi(channel_strings[ch]);
>         if (chan >= usrp->get_rx_num_channels()) {
>             throw std::runtime_error("Invalid channel(s) specified.");
>         } else
> channel_nums.push_back(std::stoi(channel_strings[ch]));
>     }
>
>     // create a receive streamer
>     // linearly map channels (index0 = channel0, index1 = channel1, ...)
>     uhd::stream_args_t stream_args("fc32"); // complex floats
>     stream_args.channels             = channel_nums;
>     uhd::rx_streamer::sptr rx_stream = usrp->get_rx_stream(stream_args);
>
>       if (total_num_samps == 0){
>        std::signal(SIGINT, &sig_int_handler);
>        std::cout << "Press Ctrl + C to stop streaming..." << std::endl;
>        }
>
>     // setup streaming
>     std::cout << std::endl;
>     std::cout << boost::format("Begin streaming %u samples, %f seconds 
> in the future...")
>                      % total_num_samps % seconds_in_future
>               << std::endl;
>     uhd::stream_cmd_t 
> stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
>     stream_cmd.num_samps  = total_num_samps;
>     stream_cmd.stream_now = false;
>     stream_cmd.time_spec  = uhd::time_spec_t(seconds_in_future);
>     rx_stream->issue_stream_cmd(stream_cmd); // tells all channels to 
> stream
>
>     // meta-data will be filled in by recv()
>     uhd::rx_metadata_t md;
>
>     // allocate buffers to receive with samples (one buffer per channel)
>     const size_t samps_per_buff = rx_stream->get_max_num_samps();
> std::vector<std::vector<std::complex<float>>> buffs(
>         usrp->get_rx_num_channels(), 
> std::vector<std::complex<float>>(samps_per_buff));
>
>     // create a vector of pointers to point to each of the channel buffers
>     std::vector<std::complex<float>*> buff_ptrs;
>     for (size_t i = 0; i < buffs.size(); i++)
>         buff_ptrs.push_back(&buffs[i].front());
>
>     // the first call to recv() will block this many seconds before 
> receiving
>     double timeout = seconds_in_future + 0.1; // timeout (delay before 
> receive + padding)
>
>     size_t num_acc_samps = 0; // number of accumulated samples
>     std::ofstream outfile1, outfile2;
>     outfile1.open(file1.c_str(), std::ofstream::binary);
>     outfile2.open(file2.c_str(), std::ofstream::binary);
>
>     while (not stop_signal_called) {
>         // receive a single packet
>         size_t num_rx_samps = rx_stream->recv(buff_ptrs, 
> samps_per_buff, md, timeout);
>
>         // use a small timeout for subsequent packets
>         timeout = 0.1;
>
>         // handle the error code
>         if (md.error_code == uhd::rx_metadata_t::ERROR_CODE_TIMEOUT)
>             break;
>         if (md.error_code != uhd::rx_metadata_t::ERROR_CODE_NONE) {
>             //throw std::runtime_error(str(boost::format("Receiver 
> error %s") % md.strerror()));
>             std::cout << md.strerror() << std::endl;
>         }
>
>         if (verbose)
>             std::cout << boost::format(
>                              "Received packet: %u samples, %u full 
> secs, %f frac secs")
>                              % num_rx_samps % md.time_spec.get_full_secs()
>                              % md.time_spec.get_frac_secs()
>                       << std::endl;
>
>       if (outfile1.is_open())
>        outfile1.write((const char*)(&buffs[0].front()),
>       num_rx_samps*sizeof(std::complex<float>));
>       if (outfile2.is_open())
>        outfile2.write((const char*)(&buffs[1].front()),
>       num_rx_samps*sizeof(std::complex<float>));
>
>         num_acc_samps += num_rx_samps;
>         // check if continuous or number of samples
>         if (total_num_samps != 0) {
>             if (num_acc_samps >= total_num_samps)
>                 stop_signal_called = true;
>         }
>     }
>
> *output from run with uhd*
>
> Creating the usrp device with: ...
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; 
> UHD_3.14.1.HEAD-0-g0347a6d8
> [INFO] [B200] Detected Device: B210
> [INFO] [B200] Operating over USB 3.
> [INFO] [B200] Initialize CODEC control...
> [INFO] [B200] Initialize Radio control...
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Setting master clock rate selection to 'automatic'.
> [INFO] [B200] Asking for clock rate 16.000000 MHz...
> [INFO] [B200] Actually got clock rate 16.000000 MHz.
> Using Device: Single USRP:
>   Device: B-Series Device
>   Mboard 0: B210
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: FE-RX2
>   RX Channel: 1
>     RX DSP: 1
>     RX Dboard: A
>     RX Subdev: FE-RX1
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: FE-TX2
>   TX Channel: 1
>     TX DSP: 1
>     TX Dboard: A
>     TX Subdev: FE-TX1
>
> Using Antenna 0: RX2
> Using Antenna 1: RX2
> Actual RX Freq: 2412.000000 MHz...
> Actual RX Freq: 2411.999998 MHz...
>
> RX Gain Range 0: (0, 76, 1)
> ...
> Setting RX Gain: 64.000000 dB...
> Actual RX Gain: 64.000000 dB...
>
> Setting RX Bandwidth: 15.000000 MHz...
> Actual RX Bandwidth: 15.000000 MHz...
>
> Setting RX Rate: 15.000000 Msps...
> [INFO] [B200] Asking for clock rate 60.000000 MHz...
> [INFO] [B200] Actually got clock rate 60.000000 MHz.
> Actual RX Rate: 15.000000 Msps...
>
> Setting device timestamp to 0...
>
> Begin streaming 10000 samples, 10.000000 seconds in the future...
> Received packet: 2040 samples, 10 full secs, 0.000003 frac secs
> Received packet: 2040 samples, 10 full secs, 0.000139 frac secs
> Received packet: 2040 samples, 10 full secs, 0.000275 frac secs
> Received packet: 2040 samples, 10 full secs, 0.000411 frac secs
> Received packet: 1840 samples, 10 full secs, 0.000547 frac secs
>
> Done!
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
For one, you're using a 2Msps rate in your .grc flow-graph.



--------------090406080603060108070200
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/25/2020 04:00 PM, Jay Labhart via
      USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:1068579459.5506610.1598385600265@mail.yahoo.com"
      type="cite">
      <div class="yahoo-style-wrap" style="font-family:Helvetica Neue,
        Helvetica, Arial, sans-serif;font-size:16px;">
        <div dir="ltr" data-setdir="false">Hello,</div>
        <div dir="ltr" data-setdir="false"><br>
        </div>
        <div dir="ltr" data-setdir="false">I have started to work with
          the B210 on a project.  My interest is to collect samples from
          the 2 RX of the B210 looking at a frequency of channel 1 of
          2.4GHz (<span>2412).  My goal is to use a grc to workout the
            algorithm then move to c++.  I am having some challenges
            that I would like to ask the group for help.</span></div>
        <div dir="ltr" data-setdir="false"><span><br>
          </span></div>
        <div dir="ltr" data-setdir="false">I used a .grc to collect
          samples and review the algorithm.  The graph is attached. At
          this point I am just collecting data. I use a series of
          variables to create 2 data files.<br>
        </div>
        <div dir="ltr" data-setdir="false"><br>
        </div>
        <div dir="ltr" data-setdir="false">I moved to c++ and modified a
          sample to collect the same dataset.</div>
        <div dir="ltr" data-setdir="false"><br>
        </div>
        <div dir="ltr" data-setdir="false">I am using the python file
          gr_plot_iq.py to review the signals.  When I review the grc
          graph the signals appear as I would think.  The c++ the
          signals are scattered way apart and A&amp;B are consistent.</div>
        <div dir="ltr" data-setdir="false"><br>
        </div>
        <div dir="ltr" data-setdir="false">Any thoughts would be
          greatful.<br>
        </div>
        <div dir="ltr" data-setdir="false"><br>
        </div>
        <div dir="ltr" data-setdir="false">Test:</div>
        <div dir="ltr" data-setdir="false">
          <div>
            <div dir="ltr" data-setdir="false">    2.4 GHz router
              chirping every 100 ms<br>
            </div>
          </div>
          <div>        local area with no wireless except router</div>
        </div>
        <div dir="ltr" data-setdir="false">    <span>uhd <br>
          </span></div>
        <div dir="ltr" data-setdir="false"><span>        2412000000</span> 
          channel 1</div>
        <div dir="ltr" data-setdir="false">        rate - 20 MSPS (only
          get 15)<br>
        </div>
        <div dir="ltr" data-setdir="false">        looking at 2 RX
          channels at same freq<br>
        </div>
        <div><br>
        </div>
        <div dir="ltr" data-setdir="false">
          <div>hardware &amp; os<br>
            Intel® Core™ i5-6400 CPU @ 2.70GHz × 4 <br>
            12GB RAM<br>
            <div>Ubuntu 18.04.5 LTS</div>
            <div><br>
            </div>
            <div dir="ltr" data-setdir="false">attached is the probe
              from the uhd</div>
            <div dir="ltr" data-setdir="false"><br>
            </div>
            <div dir="ltr" data-setdir="false">The challenge is that I
              am seeing different results from the grc and the c++
              file.  On the grc graph I collect a variety of samples
              from the router.  On the c++ file there only seems to be
              1-2 samples.  I would expect to see a similar set of
              samples.</div>
            <div dir="ltr" data-setdir="false"><br>
            </div>
            <div dir="ltr" data-setdir="false"><img
                moz-do-not-send="true" title="Inline image" alt="Inline
                image"
                src="cid:b89b4bc5-4986-c099-0e86-5f22b13ff6aa@yahoo.com"
                class="yahoo-inline-image" style="max-width: 628px;
                width: 100%;" draggable="false"
                data-id="&lt;b89b4bc5-4986-c099-0e86-5f22b13ff6aa@yahoo.com&gt;"><br>
              <br>
            </div>
            <div><br>
            </div>
            <div dir="ltr" data-setdir="false"><b>c++ code excerpt</b></div>
            <div dir="ltr" data-setdir="false"><br>
            </div>
            <div dir="ltr" data-setdir="false">
              <div>    // detect which channels to use<br>
                    std::vector&lt;std::string&gt; channel_strings;<br>
                    std::vector&lt;size_t&gt; channel_nums;<br>
                    boost::split(channel_strings, channel_list,
                boost::is_any_of("\"',"));<br>
                    for (size_t ch = 0; ch &lt; channel_strings.size();
                ch++) {<br>
                        size_t chan = std::stoi(channel_strings[ch]);<br>
                        if (chan &gt;= usrp-&gt;get_rx_num_channels()) {<br>
                            throw std::runtime_error("Invalid channel(s)
                specified.");<br>
                        } else<br>
                           
                channel_nums.push_back(std::stoi(channel_strings[ch]));<br>
                    }<br>
                <br>
                    // create a receive streamer<br>
                    // linearly map channels (index0 = channel0, index1
                = channel1, ...)<br>
                    uhd::stream_args_t stream_args("fc32"); // complex
                floats<br>
                    stream_args.channels             = channel_nums;<br>
                    uhd::rx_streamer::sptr rx_stream =
                usrp-&gt;get_rx_stream(stream_args);<br>
                <br>
                      if (total_num_samps == 0){<br>
                       std::signal(SIGINT, &amp;sig_int_handler);<br>
                       std::cout &lt;&lt; "Press Ctrl + C to stop
                streaming..." &lt;&lt; std::endl;<br>
                       }<br>
                <br>
                    // setup streaming<br>
                    std::cout &lt;&lt; std::endl;<br>
                    std::cout &lt;&lt; boost::format("Begin streaming %u
                samples, %f seconds in the future...")<br>
                                     % total_num_samps %
                seconds_in_future<br>
                              &lt;&lt; std::endl;<br>
                    uhd::stream_cmd_t
                stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);<br>
                    stream_cmd.num_samps  = total_num_samps;<br>
                    stream_cmd.stream_now = false;<br>
                    stream_cmd.time_spec  =
                uhd::time_spec_t(seconds_in_future);<br>
                    rx_stream-&gt;issue_stream_cmd(stream_cmd); // tells
                all channels to stream<br>
                <br>
                    // meta-data will be filled in by recv()<br>
                    uhd::rx_metadata_t md;<br>
                <br>
                    // allocate buffers to receive with samples (one
                buffer per channel)<br>
                    const size_t samps_per_buff =
                rx_stream-&gt;get_max_num_samps();<br>
                   
                std::vector&lt;std::vector&lt;std::complex&lt;float&gt;&gt;&gt;
                buffs(<br>
                        usrp-&gt;get_rx_num_channels(),
                std::vector&lt;std::complex&lt;float&gt;&gt;(samps_per_buff));<br>
                <br>
                    // create a vector of pointers to point to each of
                the channel buffers<br>
                    std::vector&lt;std::complex&lt;float&gt;*&gt;
                buff_ptrs;<br>
                    for (size_t i = 0; i &lt; buffs.size(); i++)<br>
                        buff_ptrs.push_back(&amp;buffs[i].front());<br>
                <br>
                    // the first call to recv() will block this many
                seconds before receiving<br>
                    double timeout = seconds_in_future + 0.1; // timeout
                (delay before receive + padding)<br>
                <br>
                    size_t num_acc_samps = 0; // number of accumulated
                samples<br>
                    std::ofstream outfile1, outfile2;<br>
                    outfile1.open(file1.c_str(), std::ofstream::binary);<br>
                    outfile2.open(file2.c_str(), std::ofstream::binary);<br>
                    <br>
                    while (not stop_signal_called) {<br>
                        // receive a single packet<br>
                        size_t num_rx_samps =
                rx_stream-&gt;recv(buff_ptrs, samps_per_buff, md,
                timeout);<br>
                <br>
                        // use a small timeout for subsequent packets<br>
                        timeout = 0.1;<br>
                <br>
                        // handle the error code<br>
                        if (md.error_code ==
                uhd::rx_metadata_t::ERROR_CODE_TIMEOUT)<br>
                            break;<br>
                        if (md.error_code !=
                uhd::rx_metadata_t::ERROR_CODE_NONE) {<br>
                            //throw
                std::runtime_error(str(boost::format("Receiver error
                %s") % md.strerror()));<br>
                            std::cout &lt;&lt; md.strerror() &lt;&lt;
                std::endl;<br>
                        }<br>
                <br>
                        if (verbose)<br>
                            std::cout &lt;&lt; boost::format(<br>
                                             "Received packet: %u
                samples, %u full secs, %f frac secs")<br>
                                             % num_rx_samps %
                md.time_spec.get_full_secs()<br>
                                             %
                md.time_spec.get_frac_secs()<br>
                                      &lt;&lt; std::endl;<br>
                <br>
                      if (outfile1.is_open())<br>
                       outfile1.write((const
                char*)(&amp;buffs[0].front()),<br>
                      num_rx_samps*sizeof(std::complex&lt;float&gt;));<br>
                      if (outfile2.is_open())<br>
                       outfile2.write((const
                char*)(&amp;buffs[1].front()),<br>
                      num_rx_samps*sizeof(std::complex&lt;float&gt;));<br>
                <br>
                        num_acc_samps += num_rx_samps;<br>
                        // check if continuous or number of samples<br>
                        if (total_num_samps != 0) {<br>
                            if (num_acc_samps &gt;= total_num_samps)<br>
                                stop_signal_called = true;<br>
                        }<br>
                    }<br>
                <br>
              </div>
              <div dir="ltr" data-setdir="false"><b>output from run with
                  uhd</b></div>
              <div dir="ltr" data-setdir="false"><br>
              </div>
              <div dir="ltr" data-setdir="false">
                <div>Creating the usrp device with: ...<br>
                  [INFO] [UHD] linux; GNU C++ version 7.5.0;
                  Boost_106501; UHD_3.14.1.HEAD-0-g0347a6d8<br>
                  [INFO] [B200] Detected Device: B210<br>
                  [INFO] [B200] Operating over USB 3.<br>
                  [INFO] [B200] Initialize CODEC control...<br>
                  [INFO] [B200] Initialize Radio control...<br>
                  [INFO] [B200] Performing register loopback test... <br>
                  [INFO] [B200] Register loopback test passed<br>
                  [INFO] [B200] Performing register loopback test... <br>
                  [INFO] [B200] Register loopback test passed<br>
                  [INFO] [B200] Setting master clock rate selection to
                  'automatic'.<br>
                  [INFO] [B200] Asking for clock rate 16.000000 MHz... <br>
                  [INFO] [B200] Actually got clock rate 16.000000 MHz.<br>
                  Using Device: Single USRP:<br>
                    Device: B-Series Device<br>
                    Mboard 0: B210<br>
                    RX Channel: 0<br>
                      RX DSP: 0<br>
                      RX Dboard: A<br>
                      RX Subdev: FE-RX2<br>
                    RX Channel: 1<br>
                      RX DSP: 1<br>
                      RX Dboard: A<br>
                      RX Subdev: FE-RX1<br>
                    TX Channel: 0<br>
                      TX DSP: 0<br>
                      TX Dboard: A<br>
                      TX Subdev: FE-TX2<br>
                    TX Channel: 1<br>
                      TX DSP: 1<br>
                      TX Dboard: A<br>
                      TX Subdev: FE-TX1<br>
                  <br>
                  Using Antenna 0: RX2<br>
                  Using Antenna 1: RX2<br>
                  Actual RX Freq: 2412.000000 MHz...<br>
                  Actual RX Freq: 2411.999998 MHz...<br>
                  <br>
                  RX Gain Range 0: (0, 76, 1)<br>
                  ...<br>
                  Setting RX Gain: 64.000000 dB...<br>
                  Actual RX Gain: 64.000000 dB...<br>
                  <br>
                  Setting RX Bandwidth: 15.000000 MHz...<br>
                  Actual RX Bandwidth: 15.000000 MHz...<br>
                  <br>
                  Setting RX Rate: 15.000000 Msps...<br>
                  [INFO] [B200] Asking for clock rate 60.000000 MHz... <br>
                  [INFO] [B200] Actually got clock rate 60.000000 MHz.<br>
                  Actual RX Rate: 15.000000 Msps...<br>
                  <br>
                  Setting device timestamp to 0...<br>
                  <br>
                  Begin streaming 10000 samples, 10.000000 seconds in
                  the future...<br>
                  Received packet: 2040 samples, 10 full secs, 0.000003
                  frac secs<br>
                  Received packet: 2040 samples, 10 full secs, 0.000139
                  frac secs<br>
                  Received packet: 2040 samples, 10 full secs, 0.000275
                  frac secs<br>
                  Received packet: 2040 samples, 10 full secs, 0.000411
                  frac secs<br>
                  Received packet: 1840 samples, 10 full secs, 0.000547
                  frac secs<br>
                  <br>
                  Done!<br>
                  <br>
                </div>
                <div><br>
                </div>
              </div>
            </div>
          </div>
          <div><br>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    For one, you're using a 2Msps rate in your .grc flow-graph.<br>
    <br>
    <br>
  </body>
</html>

--------------090406080603060108070200--


--===============7337260664400773358==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7337260664400773358==--

