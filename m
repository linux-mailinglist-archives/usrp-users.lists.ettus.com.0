Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCC07ED06
	for <lists+usrp-users@lfdr.de>; Fri,  2 Aug 2019 08:59:56 +0200 (CEST)
Received: from [::1] (port=52720 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htRXe-0007xp-Hx; Fri, 02 Aug 2019 02:59:54 -0400
Received: from www.itsystems.it ([62.94.30.103]:48436 helo=mx1.itsystems.it)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <p.palana@itsystems.it>)
 id 1htRXY-0007pV-18
 for usrp-users@lists.ettus.com; Fri, 02 Aug 2019 02:59:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=itsystems.it; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:
 From:References:Cc:To:Subject:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WWYCEYqtzkZOomahk3Oy1RaL6ZWaqyW97gtTkLVXH9E=; b=uPiMrL4ZSqlz3VH8t1eMu9vQss
 b7Rtk4+HODvG54DndgWNVRGUUFDkUn8SuKXhd5OzsWC6nB9cEDGAGtX7mRTaOY4L7B2uHB6RoBkzp
 uc15tvIvR5YTnJi28nybpROeNuwWqEqPST9fiU0xT1i2qXhARADLBpVFxLHhSmffAvq0=;
Received: from [10.10.0.138]
 by mx1.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.90_1) (envelope-from <p.palana@itsystems.it>)
 id 1htRW8-0001zz-Uc; Fri, 02 Aug 2019 06:58:23 +0000
To: Marcus D Leech <patchvonbraun@gmail.com>
References: <4b8b3148-ef5f-6296-dab6-4651e65723ca@itsystems.it>
 <ACD6110B-2AE9-45F0-B103-3A31A076C7C9@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <82c48e1d-2957-1337-440c-c9ca0d55d9cd@itsystems.it>
Date: Fri, 2 Aug 2019 08:59:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <ACD6110B-2AE9-45F0-B103-3A31A076C7C9@gmail.com>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "v-mx.virt.itsystems.it", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 01/08/19 17:12, Marcus D Leech wrote: > Could you share
 the device arguments you used? Hello Marcus, thank you for your reply. These
 are the args i use. 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [USRP-users] N310 Streaming 4 channels using both SFP issue
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
From: Paolo Palana via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Paolo Palana <p.palana@itsystems.it>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============3422876632220652848=="
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
--===============3422876632220652848==
Content-Type: multipart/alternative;
 boundary="------------7708F0EA3194890AD2CB7B91"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7708F0EA3194890AD2CB7B91
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 01/08/19 17:12, Marcus D Leech wrote:

> Could you share the device arguments you used?
Hello Marcus, thank you for your reply.

These are the args i use.

args=mgmt_addr=<ip_addr>,addr=192.168.30.2,second_addr=192.168.40.2,type=n3xx,master_clock_rate=153.6e6


>
>
> Sent from my iPhone
>
> On Aug 1, 2019, at 6:28 AM, Paolo Palana via USRP-users
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>> Good morning to all the mailing list users.
>>
>> It is about a couple of months that I'm fighting with my N310 for
>> different reasons.
>>
>> Now I want to report a couple  of strange behaviors I'm observing
>> with this device. Of course their can be my faults... I hope some one
>> in the community can make light.
>>
>> I try be as clear as possible.
>>
>> My goal: Streaming the 4 RX channels over the two SFP+. Let me say I
>> want A:0 and A:1 on sfp0, while B:0 and B:1 on sfp1.
>>
>> Premise: * I'm using 10G link with fibers. I'm sure the network
>> adapter and fibers work well because they are the same I used with my
>> X310 (and it works).
>>
>>                * I'm using N310 in legacy compat mode
>>
>>                * The software I use is the same I used for my X310
>> and it works (at least with X310 of course!)
>>
>>                * MTU is to 9000 on both the host and N310
>>
>>                * I'm using UHD 3.14.0
>>
>> Strange behavior 1: when I start my acquisition program I can see
>> (using tcpdump on the host side) small packets (16 or 24 bytes in
>> size, I think they are some kind of commands) flowing through, let
>> just say sfp0 iface. If I reboot the N310 and the I start again my
>> program I can see the same kind of packets flowing through sfp1 (but
>> not through sfp0). If I reboot the N310 again may be these packets
>> start flowing through sfp0 or sfp1.... it depends!!!! Is that the
>> normal behavior of N310?
>>
>>
>> Strange behavior 2: in order to start streaming the 4 channels I use
>> this code:
>>
>>
>>    time_spec_t start_sampling = mUsrp->get_time_now() + 1.0;
>>    
>>     uhd::stream_args_t str_args("sc16", "sc16");
>>     str_args.channels.push_back(mChannels[0]);
>>     str_args.channels.push_back(mChannels[2]);
>>     mStreamArgs.push_back(str_args);
>>     uhd::stream_cmd_t
>> tmp_strcmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);
>>     tmp_strcmd.num_samps = 0;
>>     // Timed
>>      tmp_strcmd.stream_now = false;
>>      tmp_strcmd.time_spec = start_sampling;
>>     uhd::rx_streamer::sptr tmp_rx_stream =
>> mUsrp->get_rx_stream(str_args);
>>     tmp_rx_stream->issue_stream_cmd(tmp_strcmd);
>>     mStreamCmds.push_back(tmp_strcmd);
>>     mRxStreams.push_back(tmp_rx_stream);
>>  
>>     uhd::stream_args_t str_args2("sc16", "sc16");
>>     str_args2.channels.push_back(mChannels[1]);
>>     str_args2.channels.push_back(mChannels[3]);
>>    
>>
>>     mStreamArgs.push_back(str_args2);
>>     uhd::stream_cmd_t
>> tmp_strcmd2(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);
>>     tmp_strcmd2.num_samps = 0;
>>     // Timed
>>      tmp_strcmd2.stream_now = false;
>>      tmp_strcmd2.time_spec = start_sampling;
>>     uhd::rx_streamer::sptr tmp_rx_stream2 =
>> mUsrp->get_rx_stream(str_args2);
>>     tmp_rx_stream2->issue_stream_cmd(tmp_strcmd2);
>>     mStreamCmds.push_back(tmp_strcmd2);
>>     mRxStreams.push_back(tmp_rx_stream2);
>>
>>
>> It works perfectly with my X310, but with the N310 it starts the
>> streaming of only a couple of channels (A:0 and A:1 to be precise)
>> and on sfp0 or sfp1... it depends!!
>>
>> Of course I miss something (or at least I hope so!). I checked and
>> double checked examples coming from libuhd repository but there is
>> nothing specific about the N310.
>>
>> Any help is appreciated. Thank you in advance.
>>
>> Of course if more details are necessary, please let me know.
>>
>> Have a good day
>>
>> Paolo
>>
>>
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com



--------------7708F0EA3194890AD2CB7B91
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 01/08/19 17:12, Marcus D Leech
      wrote:<br>
    </div>
    <br>
    <blockquote type="cite"
      cite="mid:ACD6110B-2AE9-45F0-B103-3A31A076C7C9@gmail.com">Could
      you share the device arguments you used?</blockquote>
    Hello Marcus, thank you for your reply.<br>
    <p>These are the args i use.<br>
    </p>
    <p>args=mgmt_addr=&lt;ip_addr&gt;,addr=192.168.30.2,second_addr=192.168.40.2,type=n3xx,master_clock_rate=153.6e6</p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:ACD6110B-2AE9-45F0-B103-3A31A076C7C9@gmail.com">
      <div><br>
      </div>
      <div><br>
        <div id="AppleMailSignature" dir="ltr">Sent from my iPhone</div>
        <div dir="ltr"><br>
          On Aug 1, 2019, at 6:28 AM, Paolo Palana via USRP-users &lt;<a
            href="mailto:usrp-users@lists.ettus.com"
            moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
          <br>
        </div>
        <blockquote type="cite">
          <div dir="ltr">
            <meta http-equiv="content-type" content="text/html;
              charset=UTF-8">
            <p>Good morning to all the mailing list users.</p>
            <p>It is about a couple of months that I'm <span
                class="tlid-translation translation" lang="en"><span
                  title="" class="">fighting with my N310 for different
                  reasons.</span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class="">Now I want to report a couple  of
                  strange </span></span><span class="tlid-translation
                translation" lang="en"><span title="" class="">behaviors
                  I'm observing with this device. Of course their can be
                  my faults... I hope some one in the community can make
                  light.</span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class="">I try be as clear as possible.<br>
                </span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class="">My goal: Streaming the 4 RX channels
                  over the two SFP+. Let me say I want A:0 and A:1 on
                  sfp0, while B</span></span><span
                class="tlid-translation translation" lang="en"><span
                  title="" class=""><span class="tlid-translation
                    translation" lang="en"><span title="" class="">:0
                      and B:1 on sfp1.</span></span></span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class="">Premise: * I'm using 10G link with
                  fibers. I'm sure the network adapter and fibers work
                  well because they are the same I used with my X310
                  (and it works).</span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class="">               * I'm using N310 in
                  legacy compat mode</span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class="">               * The software I use
                  is the same I used for my X310 and it works (at least
                  with X310 of course!)</span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class="">               * MTU is to 9000 on
                  both the host and N310</span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class="">               * I'm using UHD
                  3.14.0<br>
                </span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class="">Strange </span></span><span
                class="tlid-translation translation" lang="en"><span
                  title="" class=""><span class="tlid-translation
                    translation" lang="en"><span title="" class="">behavior
                      1: when I start my </span></span></span></span><span
                class="tlid-translation translation" lang="en"><span
                  title="" class=""><span class="tlid-translation
                    translation" lang="en"><span title="" class=""><span
                        class="tlid-translation translation" lang="en"><span
                          title="" class="">acquisition</span></span>
                      program I can see (using tcpdump on the host side)
                      small packets (16 or 24 bytes in size, I think
                      they are some kind of commands) flowing through,
                      let just say sfp0 iface. If I reboot the N310 and
                      the I start again my program I can see the same
                      kind of packets flowing through sfp1 (but not
                      through sfp0). If I reboot the N310 again may be
                      these packets start flowing through sfp0 or
                      sfp1.... it depends!!!! Is that the normal
                      behavior of N310?<br>
                    </span></span></span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class=""><span class="tlid-translation
                    translation" lang="en"><span title="" class=""><br>
                    </span></span></span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class=""><span class="tlid-translation
                    translation" lang="en"><span title="" class="">Strange
                      behavior 2: in order to start streaming the 4
                      channels I use this code:</span></span></span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class=""><span class="tlid-translation
                    translation" lang="en"><span title="" class=""><br>
                    </span></span></span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class=""><span class="tlid-translation
                    translation" lang="en"><span title="" class="">   <font
                        size="-1"> time_spec_t start_sampling =
                        mUsrp-&gt;get_time_now() + 1.0;<br>
                            <br>
                            uhd::stream_args_t str_args("sc16", "sc16");<br>
                            str_args.channels.push_back(mChannels[0]);<br>
                            str_args.channels.push_back(mChannels[2]);<br>
                            mStreamArgs.push_back(str_args);<br>
                            uhd::stream_cmd_t
                        tmp_strcmd(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);<br>
                            tmp_strcmd.num_samps = 0;<br>
                            // Timed<br>
                             tmp_strcmd.stream_now = false;<br>
                             tmp_strcmd.time_spec = start_sampling;<br>
                            uhd::rx_streamer::sptr tmp_rx_stream =
                        mUsrp-&gt;get_rx_stream(str_args);<br>
                           
                        tmp_rx_stream-&gt;issue_stream_cmd(tmp_strcmd);<br>
                            mStreamCmds.push_back(tmp_strcmd);<br>
                            mRxStreams.push_back(tmp_rx_stream);<br>
                         <br>
                            uhd::stream_args_t str_args2("sc16",
                        "sc16");<br>
                            str_args2.channels.push_back(mChannels[1]);<br>
                            str_args2.channels.push_back(mChannels[3]);<br>
                            <br>
                        <br>
                            mStreamArgs.push_back(str_args2);<br>
                            uhd::stream_cmd_t
                        tmp_strcmd2(uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS);<br>
                            tmp_strcmd2.num_samps = 0;<br>
                            // Timed<br>
                             tmp_strcmd2.stream_now = false;<br>
                             tmp_strcmd2.time_spec = start_sampling;<br>
                            uhd::rx_streamer::sptr tmp_rx_stream2 =
                        mUsrp-&gt;get_rx_stream(str_args2);<br>
                           
                        tmp_rx_stream2-&gt;issue_stream_cmd(tmp_strcmd2);<br>
                            mStreamCmds.push_back(tmp_strcmd2);<br>
                            mRxStreams.push_back(tmp_rx_stream2);</font></span></span></span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class=""><span class="tlid-translation
                    translation" lang="en"><span title="" class=""><font
                        size="-1"><br>
                      </font></span></span></span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class=""><span class="tlid-translation
                    translation" lang="en"><span title="" class="">It
                      works perfectly with my X310, but with the N310 it
                      starts the streaming of only a couple of channels
                      (A:0 and A:1 to be precise) and on sfp0 or sfp1...
                      it depends!!<br>
                    </span></span></span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class=""><span class="tlid-translation
                    translation" lang="en"><span title="" class="">Of
                      course I miss something (or at least I hope so!).
                      I checked and double checked examples coming from
                      libuhd repository but there is nothing specific
                      about the N310.<br>
                    </span></span></span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class=""><span class="tlid-translation
                    translation" lang="en"><span title="" class="">Any
                      help is appreciated. Thank you in advance.</span></span></span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class=""><span class="tlid-translation
                    translation" lang="en"><span title="" class="">Of
                      course if more details are necessary, please let
                      me know.<br>
                    </span></span></span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class=""><span class="tlid-translation
                    translation" lang="en"><span title="" class="">Have
                      a good day</span></span></span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class=""><span class="tlid-translation
                    translation" lang="en"><span title="" class="">Paolo<br>
                    </span></span></span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class=""><span class="tlid-translation
                    translation" lang="en"><span title="" class=""><br>
                    </span></span></span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class=""><span class="tlid-translation
                    translation" lang="en"><span title="" class=""><br>
                    </span></span></span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class=""><span class="tlid-translation
                    translation" lang="en"><span title="" class=""><br>
                    </span></span></span></span></p>
            <p><span class="tlid-translation translation" lang="en"><span
                  title="" class=""><br>
                </span></span></p>
            <p><br>
              <span class="tlid-translation translation" lang="en"><span
                  title="" class=""></span></span><span
                class="tlid-translation translation" lang="en"><span
                  title="" class=""><span class="tlid-translation
                    translation" lang="en"><span title="" class=""></span></span></span></span></p>
          </div>
        </blockquote>
        <blockquote type="cite">
          <div dir="ltr"><span>_______________________________________________</span><br>
            <span>USRP-users mailing list</span><br>
            <span><a href="mailto:USRP-users@lists.ettus.com"
                moz-do-not-send="true">USRP-users@lists.ettus.com</a></span><br>
            <span><a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------7708F0EA3194890AD2CB7B91--


--===============3422876632220652848==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3422876632220652848==--

