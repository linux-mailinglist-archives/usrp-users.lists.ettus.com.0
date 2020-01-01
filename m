Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E178B12DE5A
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jan 2020 10:39:20 +0100 (CET)
Received: from [::1] (port=39800 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1imaTB-0001tO-Iq; Wed, 01 Jan 2020 04:39:13 -0500
Received: from dslsn201.fix.netvision.net.il ([82.166.192.201]:46617
 helo=sept12.barochoren.com) by mm2.emwd.com with esmtp (Exim 4.92)
 (envelope-from <baroch@6tzvaim.com>) id 1imaT8-0001q9-JI
 for usrp-users@lists.ettus.com; Wed, 01 Jan 2020 04:39:10 -0500
Received: from [192.168.14.139] (bzq-79-178-210-118.red.bezeqint.net
 [79.178.210.118])
 by sept12.barochoren.com (Postfix) with ESMTPSA id E9E672251BC;
 Wed,  1 Jan 2020 11:04:27 +0200 (IST)
To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>,
 usrp-users@lists.ettus.com
References: <c00377a3-bfc9-79eb-a033-6b11611b372d@6tzvaim.com>
 <d750d9ab21391528e690db20bc4e4530baaebcb1.camel@ettus.com>
Message-ID: <c3277435-2654-2a3c-6f11-9849db56553e@6tzvaim.com>
Date: Wed, 1 Jan 2020 11:38:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <d750d9ab21391528e690db20bc4e4530baaebcb1.camel@ettus.com>
Content-Language: en-US
Subject: Re: [USRP-users] Gain difference in 4 RX on N310
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
From: Baroch Oren via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Baroch Oren <baroch@6tzvaim.com>
Content-Type: multipart/mixed; boundary="===============3134899761701982128=="
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

--===============3134899761701982128==
Content-Type: text/html; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style type="text/css">body p { margin-bottom: 0cm; margin-top: 0pt; } </style>
  </head>
  <body bidimailui-charset-is-forced="true">
    <p>Hi Marcus, thank you for the reply.</p>
    <p>I've built and installed UHD using AN-445 "Building and
      Installing the USRP Open-Source Toolchain (UHD and GNU Radio) on
      Linux" instructions (<a
href="https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux">https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux</a>)</p>
    <p><br>
    </p>
    <p>Do you think that a gain setting bug is possible when I set the
      gain using this code? and the screen output says all channels are
      set to same gain (60dB)?<br>
    </p>
    <p>This code is an adaptation of the rx_multi_samples.cpp example.</p>
    <p><br>
    </p>
    <p><tt>    // detect which channels to use &amp; init them</tt><tt><br>
      </tt><tt>    std::vector&lt;std::string&gt; channel_strings;</tt><tt><br>
      </tt><tt>    std::vector&lt;size_t&gt; channel_nums;</tt><tt><br>
      </tt><tt>    boost::split(channel_strings, channel_list,
        boost::is_any_of("\"',"));</tt><tt><br>
      </tt><tt>    int current_channel = 0;</tt><tt><br>
      </tt><tt>    for (size_t ch = 0; ch &lt; channel_strings.size();
        ch++) {</tt><tt><br>
      </tt><tt>        size_t chan = std::stoi(channel_strings[ch]);</tt><tt><br>
      </tt><tt>        if (chan &gt;= usrp-&gt;get_rx_num_channels()) {</tt><tt><br>
      </tt><tt>            throw std::runtime_error("Invalid channel(s)
        specified.");</tt><tt><br>
      </tt><tt>        } else {</tt><tt><br>
      </tt><tt>        current_channel = std::stoi(channel_strings[ch]);</tt><tt><br>
      </tt><tt>            channel_nums.push_back(current_channel);</tt><tt><br>
      </tt><tt><br>
      </tt><tt>            //set the rx center frequency</tt><tt><br>
      </tt><tt>        std::cout &lt;&lt; boost::format("Setting RX
        chan%d Freq: %f Mhz... ") % current_channel % (freq/1e6);</tt><tt><br>
      </tt><tt>            usrp-&gt;set_rx_freq(freq, current_channel);</tt><tt><br>
      </tt><tt>            std::cout &lt;&lt; boost::format("Actual: %f
        Mhz") % (usrp-&gt;get_rx_freq()/1e6) &lt;&lt; std::endl;</tt><tt><br>
      </tt><tt><br>
      </tt><tt><br>
      </tt><tt>            // set the rf gain</tt><tt><br>
      </tt><tt>            if (vm.count("gain")) {</tt><tt><br>
      </tt><tt>                std::cout &lt;&lt; boost::format("Setting
        RX chan%d Gain: %f dB... ") % current_channel % gain;</tt><tt><br>
      </tt><tt>                usrp-&gt;set_rx_gain(gain,
        current_channel);</tt><tt><br>
      </tt><tt>                std::cout &lt;&lt; boost::format("Actual
        RX Gain: %f dB...")</tt><tt><br>
      </tt><tt>                         %
        usrp-&gt;get_rx_gain(current_channel)</tt><tt><br>
      </tt><tt>                  &lt;&lt; std::endl;</tt><tt><br>
      </tt><tt>            }</tt><tt><br>
      </tt><tt>    }</tt><tt><br>
      </tt><tt>    }</tt><br>
    </p>
    <p><br>
    </p>
    <p>Thanks,</p>
    <p>Baroch<br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 25/12/2019 16:18, Marcus Müller
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:d750d9ab21391528e690db20bc4e4530baaebcb1.camel@ettus.com">
      <pre class="moz-quote-pre" wrap="">Hi Baroch,

oh, that's interesting and I must admit I don't really know where to
start looking into this, but let's take this top-down:
How are you setting the gain, and how are you doing the capturing?
My gut feeling tells me there's something in UHD not handling multi-
channel gain setting right, but lacking an N310 on my desk right now, I
can't just trace this with a debugger.
How did you build and install your UHD?
Best regards,
Marcus

On Wed, 2019-12-25 at 15:29 +0200, Baroch Oren via USRP-users wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Hello.
I've been capturing with N310 on 4 channels simultaneously. A strange
behavioure occurs:
First experiment: capturing on a single channel when all the other 3
rx channels are terminated, I get a similar captured gain on every
one of the RX channels.
Second experiment: capturing simultaneously, channel 3 (RF2 RX2)
shows a decreased capture gain in about -14db. all other channels
show capture gain similar to first experiment.
Third experiment: capturing simultaneously on 4 channels, all inputs
terminated: thermal noise of same gain on all 4 channels.

Anyone has any clue for direction to further research this?

My setup: UHD_3.14.1.HEAD-0-g0347a6d8 on Ubuntu

Thanks,
Baroch Oren

_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <div class="moz-signature">-- <br>
      <div dir="rtl">
        <p><bold>ברוך אורן بروح اورن Baroch Oren</bold></p>
        <p>טל' 058-7799233 cell</p>
        <p><a href="https://www.patreon.com/barochoren">תמכו באקטיביזם
            שלי support my activism</a></p>
      </div>
    </div>
  </body>
</html>


--===============3134899761701982128==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3134899761701982128==--
