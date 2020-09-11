Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C1C265600
	for <lists+usrp-users@lfdr.de>; Fri, 11 Sep 2020 02:24:20 +0200 (CEST)
Received: from [::1] (port=48464 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGWrR-0008Dm-T9; Thu, 10 Sep 2020 20:24:17 -0400
Received: from mail-qv1-f44.google.com ([209.85.219.44]:40030)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kGWrO-00087r-2q
 for usrp-users@lists.ettus.com; Thu, 10 Sep 2020 20:24:14 -0400
Received: by mail-qv1-f44.google.com with SMTP id j3so4319646qvi.7
 for <usrp-users@lists.ettus.com>; Thu, 10 Sep 2020 17:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=LU49JJgYbmD3cvnhVyg7beWh3Q120YpO/BlTewmPJxI=;
 b=Y9iw/yHriNZOxEWGGF8WR7q9Mrye4BfD9B9TzaieVkrIIWkHHTVXd41adBAtSyUZIJ
 F6i0acVqGHdLWy6wQhVToiR4l8N3lONEEMXfinu2NWjCSk7+9KLQs+E5hPJ/WtON7DnT
 e1nSE/PAVB742+6mXz4CrcygRYup/GwezVLD8NvZVqELs5XoL7b9P+7ADsSzJMBs/isi
 EI8xHGngiJhSMgSzf2B+CeU907ZDwiDTogW/Js38D202TTrG/giHNk/nsKis/KUmMJJZ
 IkAuW+T2dn+vAia1H08vv8W9jV947yPJ5hZvBIfnKVZmjtfqJkH7SNHCsvOLbHCYpmTE
 6BGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=LU49JJgYbmD3cvnhVyg7beWh3Q120YpO/BlTewmPJxI=;
 b=eMR7H3jVvPMCg+Bu+b4CHkvLfGssFHfsg261wUMkCSlME737EZO8HhU16HfLWPGfOM
 oD2OPLcUueO90/xlHeCATCLbVfDB+Iz4nOcJ/DAbenx3nArF3p/7NJ7e3Uz859rX8EKJ
 Tjp8Jgn7cNzlrdEAOi3Ru0BbUd/KVjBb79Nfme5t+XO1iZaA4aQrKpPUgOl2G7ap5NhR
 TaeS/7qOWw1gvakA9Ds6uho7SbOu6WY77gRdNxHVbbFCCx8DLrSaNkQWqquMT+naFl5G
 gfu3P2woKJKjuv6UHnw5kS/2ik6nT7nn76rLkYE/pb0M2KQ6ZneJxEMq7E0Y/CDUQLdk
 eRFg==
X-Gm-Message-State: AOAM530moKxRUbibrM3ruON5DctZJSSmxvZZZpFw/g1fD7G1XQJOiXqg
 ctxTaIpKDPq3OZeqRkXZG0UAG9dcvyP1Zg==
X-Google-Smtp-Source: ABdhPJyfMNyckCt57X49j5gqSDF4jL38ugYwdd9ehcopHc+b59AEfstd0AR8ZH/YEnBS0mVTuuLMTQ==
X-Received: by 2002:ad4:4c0a:: with SMTP id bz10mr11159852qvb.14.1599783813159; 
 Thu, 10 Sep 2020 17:23:33 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id t20sm855490qke.79.2020.09.10.17.23.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Sep 2020 17:23:32 -0700 (PDT)
Message-ID: <5F5AC383.4020200@gmail.com>
Date: Thu, 10 Sep 2020 20:23:31 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Xiang Ma <marxwolfs@gmail.com>
CC: usrp-users@lists.ettus.com
References: <CACryqrG8a3S1ARULWRPYte8aoUVmh8B-qBxjX6GS_j_kam_q-w@mail.gmail.com>
 <5F5A50F1.4080500@gmail.com>
 <CACryqrG3Eo6KTFM1v2SpA2Dc8Q71iznrLtai=79bPWgDG=xXRw@mail.gmail.com>
 <5F5A52C5.20703@gmail.com>
 <CACryqrG_kG4==1T_zjWqNPENWoe3y5ff7j9EOeHxQqFv1tFnmg@mail.gmail.com>
 <5F5A54F9.2000502@gmail.com>
 <CACryqrHxwT6RF_xoU=q9n3JSp+fBGyoHZO-+ifG_oxas3Hw2wA@mail.gmail.com>
 <5F5A7638.8010704@gmail.com>
 <CACryqrE+wQDyQt6X1EK2PvgSAEVv8pqaa=rbfur0xKN33hrn5A@mail.gmail.com>
In-Reply-To: <CACryqrE+wQDyQt6X1EK2PvgSAEVv8pqaa=rbfur0xKN33hrn5A@mail.gmail.com>
Subject: Re: [USRP-users] RuntimeError: System receive MTU size
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
Content-Type: multipart/mixed; boundary="===============6091507368213923207=="
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
--===============6091507368213923207==
Content-Type: multipart/alternative;
 boundary="------------060502000104000003070509"

This is a multi-part message in MIME format.
--------------060502000104000003070509
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/10/2020 07:00 PM, Xiang Ma wrote:
> I only have X310, the rfid code is written by someone else that works 
> on N200.
> For the RFID code, I do not have .grc code. But the .py code is here 
> https://github.com/nkargas/Gen2-UHF-RFID-Reader/blob/master/gr-rfid/apps/reader.py
> So what is the difference between /self.source.set_antenna("RX2", 0) 
> /and/self.uhd_usrp_source_0.set_antenna('RX2', 0)?/
> /
> /
> Best,/
> /
I'm now confused about what you're asking.

It sounds like there's TWO DIFFERENT bits of code we're talking about, 
neither of which works?  You refer to your own .grc code. Could you
   share that?

At this point, it's clear that the X310 grossly works, since the 
standard test tools are working, but your own code isn't, and you're 
asking the
   list here to help you debug it.


>
> On Thu, Sep 10, 2020 at 12:53 PM Marcus D. Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 09/10/2020 02:06 PM, Xiang Ma wrote:
>>     I tried several commands including benchmark_rate, there are no
>>     explicit errors.
>>
>>     But I find my USRP is x310 with 2 UBX-160 daughtboards. But the
>>     rfid code is N200 with only 1 daughterboard slot.
>>     This is the python code generated by my grc:
>>     /self.uhd_usrp_source_0.set_samp_rate(samp_rate)
>>     self.uhd_usrp_source_0.set_center_freq(89500000, 0)
>>             self.uhd_usrp_source_0.set_gain(0, 0)
>>     self.uhd_usrp_source_0.set_auto_dc_offset(True, 0)
>>     self.uhd_usrp_source_0.set_auto_iq_balance(True, 0)/
>>     /
>>     /
>>     This is the code of rfid:
>>     /self.source = uhd.usrp_source(
>>         device_addr=self.usrp_address_source,
>>         stream_args=uhd.stream_args(
>>         cpu_format="fc32",
>>         channels=range(1),
>>         ),
>>         )
>>         self.source.set_samp_rate(self.adc_rate)
>>         self.source.set_center_freq(self.freq, 0)
>>         self.source.set_gain(self.rx_gain, 0)
>>         self.source.set_antenna("RX2", 0)
>>         self.source.set_auto_dc_offset(False) # Uncomment this line
>>     for SBX daughterboard/
>>
>>     Is it a reason why the error occurs?
>>
>>     Best.
>>
>     Can you share the .grc code ?
>
>     Do you have both an N200 and an X310 plugged in to your system, or
>     just the X310?
>
>
>
> -- 
> /*Xiang Ma, */Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com <mailto:congshanya@gmail.com>


--------------060502000104000003070509
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/10/2020 07:00 PM, Xiang Ma wrote:<br>
    </div>
    <blockquote
cite="mid:CACryqrE+wQDyQt6X1EK2PvgSAEVv8pqaa=rbfur0xKN33hrn5A@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>I only have X310, the rfid code is written by someone else
          that works on N200.</div>
        <div>For the RFID code, I do not have .grc code. But the .py
          code is here <a moz-do-not-send="true"
href="https://github.com/nkargas/Gen2-UHF-RFID-Reader/blob/master/gr-rfid/apps/reader.py">https://github.com/nkargas/Gen2-UHF-RFID-Reader/blob/master/gr-rfid/apps/reader.py</a></div>
        <div>So what is the difference between <span class="gmail-im"><i>self.source.set_antenna("RX2",
              0) </i>and<i> self.uhd_usrp_source_0.set_antenna('RX2',
              0)?</i></span></div>
        <div><span class="gmail-im"><i><br>
            </i></span></div>
        <div><span class="gmail-im">Best,<i><br>
            </i></span></div>
      </div>
    </blockquote>
    I'm now confused about what you're asking.<br>
    <br>
    It sounds like there's TWO DIFFERENT bits of code we're talking
    about, neither of which works?  You refer to your own .grc code. 
    Could you<br>
      share that?<br>
    <br>
    At this point, it's clear that the X310 grossly works, since the
    standard test tools are working, but your own code isn't, and you're
    asking the<br>
      list here to help you debug it.<br>
    <br>
    <br>
    <blockquote
cite="mid:CACryqrE+wQDyQt6X1EK2PvgSAEVv8pqaa=rbfur0xKN33hrn5A@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Thu, Sep 10, 2020 at 12:53
          PM Marcus D. Leech &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <div>On 09/10/2020 02:06 PM, Xiang Ma wrote:<br>
            </div>
            <blockquote type="cite">
              <div dir="ltr">
                <div>I tried several commands including benchmark_rate,
                  there are no explicit errors.</div>
                <div><br>
                </div>
                <div>But I find my USRP is x310 with 2 UBX-160
                  daughtboards. But the rfid code is N200 with only 1
                  daughterboard slot.</div>
                <div>This is the python code generated by my grc:</div>
                <div><i>self.uhd_usrp_source_0.set_samp_rate(samp_rate)<br>
                           
                    self.uhd_usrp_source_0.set_center_freq(89500000, 0)<br>
                            self.uhd_usrp_source_0.set_gain(0, 0)<br>
                           
                    self.uhd_usrp_source_0.set_auto_dc_offset(True, 0)<br>
                           
                    self.uhd_usrp_source_0.set_auto_iq_balance(True, 0)</i></div>
                <div><i><br>
                  </i></div>
                <div>This is the code of rfid:</div>
                <div><i>self.source = uhd.usrp_source(<br>
                        device_addr=self.usrp_address_source,<br>
                        stream_args=uhd.stream_args(<br>
                        cpu_format="fc32",<br>
                        channels=range(1),<br>
                        ),<br>
                        )<br>
                        self.source.set_samp_rate(self.adc_rate)<br>
                        self.source.set_center_freq(self.freq, 0)<br>
                        self.source.set_gain(self.rx_gain, 0)<br>
                        self.source.set_antenna("RX2", 0)<br>
                        self.source.set_auto_dc_offset(False) #
                    Uncomment this line for SBX daughterboard</i></div>
                <div><br>
                </div>
                <div>Is it a reason why the error occurs?</div>
                <div><br>
                </div>
                <div>Best.<br>
                </div>
              </div>
              <br>
            </blockquote>
            Can you share the .grc code ?<br>
            <br>
            Do you have both an N200 and an X310 plugged in to your
            system, or just the X310?<br>
          </div>
        </blockquote>
      </div>
      <br clear="all">
      <br>
      -- <br>
      <div dir="ltr" class="gmail_signature">
        <div dir="ltr"><font style="color:rgb(136,136,136)" face="times
            new roman, serif" size="4"><i><b>Xiang Ma, </b></i></font><span
            style="color:rgb(136,136,136)">Ph.D. Student</span>
          <div>
            <div style="color:rgb(136,136,136)"><font color="#444444">College
                of Engineering</font></div>
            <div><font color="#444444">Utah State University</font></div>
            <div style="color:rgb(136,136,136)"><font color="#444444">E-mail:<a
                  moz-do-not-send="true"
                  href="mailto:congshanya@gmail.com"
                  style="color:rgb(17,85,204)" target="_blank">marxwolfs@gmail.com</a></font></div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------060502000104000003070509--


--===============6091507368213923207==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6091507368213923207==--

