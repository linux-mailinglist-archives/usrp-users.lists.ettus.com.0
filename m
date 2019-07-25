Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD0C7589D
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jul 2019 22:05:19 +0200 (CEST)
Received: from [::1] (port=53476 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hqjzI-0000tW-1G; Thu, 25 Jul 2019 16:05:16 -0400
Received: from mail-qt1-f181.google.com ([209.85.160.181]:44529)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hqjzE-0000il-91
 for usrp-users@lists.ettus.com; Thu, 25 Jul 2019 16:05:12 -0400
Received: by mail-qt1-f181.google.com with SMTP id 44so19306437qtg.11
 for <usrp-users@lists.ettus.com>; Thu, 25 Jul 2019 13:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=y5mPhxYwZUJwIN1aREzIVdLKOKedp3URHcgGRj5VvDE=;
 b=sX/XjhCHqjgpreT3LEHj4FWDJrSpyQ5vB58Lckv/YZlLjnBFdLWjgZr87ntHOdkQXt
 IFM7EZ4QIQuIcZZ6/cNEVjp3v+fEzlVDhf2JYvezPAcPAyQL9lTwug1wqZC5e39BJjE3
 Zy2p078D/NjXLVu89DjpxVENQYyBu1VmITjBk58jrquZUvLbEPaqHzp9Pp1ZyFT4O386
 DKZUXZV4rNlXP7G5t75KP2vnw2padWTR7qIrD5OxE7RMdHmDADvY/6YvrrVgm2ZPitHb
 T0j2TFNZXE1i8gnwCamooCZepo38o45tttsiNkIopXLJFg1l0gyrbPpQSF7Lh+tLXhlS
 y7yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=y5mPhxYwZUJwIN1aREzIVdLKOKedp3URHcgGRj5VvDE=;
 b=ktjJTfhTL3GlFP4Nv5Dm7ipvN8PYuiAyeAjARs5nbCghORbBTiBNbux2Lk2u1tjMPI
 BAwZA1+dikq5RJKQMO6oK5onMRTBcmyPzfY6wkP8kiRGjvBJ/3wMiUQ15uLbGUdQGZoA
 5WxdJUBxa0ekz9+x7wVekfW+x3CsLZImfSjT5Si+nHPNFQO9SPLZJdpTRHzI0fyIcdHX
 QS3/TAr72t8Ey71JcP9ireHxfLH/zl9GjMfgErpGB0Yy2awslxe0OrM8objnqf4m9CmR
 b4ygzvNNAiw8ZXepvMO7rk+TBlk2FOhllHOUtmV1fN+kNJ/aOLLGa5SrmMOs20JEX9Lp
 0HGg==
X-Gm-Message-State: APjAAAVmqslhTHI9OaqIF5S0V1GnZx0Uh2vdJO9wyCYOqnKyVocrP4lB
 y6D13DA3z/Zklsd4MliM8RljMmDG
X-Google-Smtp-Source: APXvYqwrYHZzhAmOE+x4Rkr4E/6OFgiUwyi6aXPW7o6c9Yo4mauj+AyO3Wl+xsWwnoLLAdhHCJ+vGg==
X-Received: by 2002:aed:3b1c:: with SMTP id p28mr60470580qte.312.1564085071605; 
 Thu, 25 Jul 2019 13:04:31 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id t26sm26163818qtc.95.2019.07.25.13.04.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 13:04:31 -0700 (PDT)
Message-ID: <5D3A0B4E.6030907@gmail.com>
Date: Thu, 25 Jul 2019 16:04:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Sam Reiter <sam.reiter@ettus.com>
References: <HK0PR01MB2835921DB0A5915C119C4BE5F3CB0@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <CANf970Zt=7PJEOS5a6GsCichToKx=jFOp3o2kGcZQv3zYt8Csg@mail.gmail.com>
 <HK0PR01MB28356667C6C50BC7C37C7153F3C70@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <06CA772E-8BE6-4BFF-880B-30B7F97492B9@gmail.com>
 <HK0PR01MB28358F40DF973B33B3EC4A1FF3C60@HK0PR01MB2835.apcprd01.prod.exchangelabs.com>
 <B93D0C94-7692-4C77-994D-27ADFD22DBB5@gmail.com>
 <CANf970bQb8vKkrJr8Kruc6YNf_y9VAfUZ6AUwjacZ0z6okH-3w@mail.gmail.com>
In-Reply-To: <CANf970bQb8vKkrJr8Kruc6YNf_y9VAfUZ6AUwjacZ0z6okH-3w@mail.gmail.com>
Subject: Re: [USRP-users] 
 =?utf-8?b?562U5aSNOiAg562U5aSNOiBOMzEwICJCYWQgQ0hE?=
 =?utf-8?q?R_or_packet_fragment=22_Problem?=
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1417941795711827971=="
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
--===============1417941795711827971==
Content-Type: multipart/alternative;
 boundary="------------070105030601060607060104"

This is a multi-part message in MIME format.
--------------070105030601060607060104
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 07/25/2019 03:56 PM, Sam Reiter wrote:
> Follow up on this thread. I ran my N310 with a 1GbE link and was able 
> to reproduce the "Bad CHDR or packet fragment issue". It seems 
> specific to N3xx RX over a 1GbE link on 3.14.1.0. I didn't spend a ton 
> of time trying to find a workaround on 3.14.1.0, but rolling back to 
> 3.14.0.0 cleared the issue for me.
>
> I'll spend some time finding the offending commit and see what I can't 
> do to get a fix / workaround figured out for 3.14.1.0.
>
> Sam Reiter
> SDR Support Engineer
> Ettus Research
>
Thanks, Sam.  When I go into the lab later, I can probably confirm this 
as well, I haven't seen it before, but I think I'm runing 3.14.0.0


> On Tue, Jul 23, 2019 at 10:13 PM Marcus D Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     Normally Intel controllers have better performance but even a
>     RealTek chip should have no problem at those data rates.
>
>
>
>     Sent from my iPhone
>
>     On Jul 23, 2019, at 10:01 PM, 汤 飞 <retina999@hotmail.com
>     <mailto:retina999@hotmail.com>> wrote:
>
>>     Actually my pc’s Ethernet card chip is from Realtek.
>>
>>     I’ve tried all possible MTU sizes of auto, 1000, 1500, 2000, and
>>     up to 9000. Always the same errors.
>>
>>     Is it the inherent problem with the Realtek chip?
>>
>>     If that, is there any workaround? eg. Changing the default Linux
>>     driver,
>>
>>     or the last solution, ie. I have to try install a PCIE network
>>     card. Which brand ethernet card is compatible, one from Intel?
>>
>>     ------------------------------------------------------------------------
>>     *发件人:* Marcus D Leech <patchvonbraun@gmail.com
>>     <mailto:patchvonbraun@gmail.com>>
>>     *发送时间:* Wednesday, July 24, 2019 7:34:13 AM
>>     *收件人:* 汤 飞 <retina999@hotmail.com
>>     <mailto:retina999@hotmail.com>>
>>     *抄送:* Sam Reiter <sam.reiter@ettus.com
>>     <mailto:sam.reiter@ettus.com>>; usrp-users@lists.ettus.com
>>     <mailto:usrp-users@lists.ettus.com> <usrp-users@lists.ettus.com
>>     <mailto:usrp-users@lists.ettus.com>>
>>     *主题:* Re: [USRP-users] 答复: N310 "Bad CHDR or packet fragment"
>>     Problem
>>     Some Ethernet 1g controllers won’t actually do MTUs greater than
>>     1500 despite ethnology telling them to. Some Realtek for example.
>>
>>     If it’s just 1G try default MTU of 1500 and work your way up to
>>     see where it fails.
>>
>>     Sent from my iPhone
>>
>>     On Jul 23, 2019, at 7:15 PM, 汤 飞 via USRP-users
>>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>>     wrote:
>>
>>>     It’s a  1g SFP0 link. I set MTU  to 8000 according to the
>>>     Application Note.
>>>
>>>     ------------------------------------------------------------------------
>>>     *发 件人:* Sam Reiter <sam.reiter@ettus.com
>>>     <mailto:sam.reiter@ettus.com>>
>>>     *发送时间:* Wednesday, July 24, 2019 4:56:21 AM
>>>     *收件人:* 汤 飞 <retina999@hotmail.com
>>>     <mailto:retina999@hotmail.com>>
>>>     *抄送:* usrp-users@lists.ettus.com
>>>     <mailto:usrp-users@lists.ettus.com> <usrp-users@lists.ettus.com
>>>     <mailto:usrp-users@lists.ettus.com>>
>>>     *主题:* Re: [USRP-users] N310 "Bad CHDR or packet fragment" Problem
>>>     If you're connected over a 10GbE link, make sure to set your
>>>     host's MTU appropriately. I set mine to 9000.
>>>
>>>     Sam Reiter
>>>     SDR Support Engineer
>>>     Ettus Research
>>>
>>>
>>>     On Fri, Jul 19, 2019 at 2:21 AM 汤 飞 via USRP-users
>>>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>>>     wrote:
>>>
>>>         Hi, all,
>>>
>>>         When benchmarking my N310, I keep getting such[RX FLOW CTRL]  errors.
>>>         What causes this and how to solve it?
>>>
>>>         Thanks in advance!
>>>
>>>         FT
>>>
>>>
>>>         /usr/local/lib/uhd/examples/benchmark_rate  \
>>>         >    --args "type=n3xx,mgmt_addr=192.168.10.2,addr=192.168.10.2,master_clock_rate=122.88e6" \
>>>         >    --duration 60 \
>>>         >    --channels "0" \
>>>         >    --rx_rate 3.84e6 \
>>>         >    --rx_subdev "A:0" \
>>>         >    --tx_rate 3.84e6 \
>>>         >    --tx_subdev "A:0"
>>>
>>>         [INFO] [UHD]linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14.1.HEAD-0-gbfb9c1c7
>>>         [00:00:00.000014] Creating the usrp device with: type=n3xx,mgmt_addr=192.168.10.2,addr=192.168.10.2,master_clock_rate=122.88e6...
>>>         [INFO] [MPMD]Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3182B09,claimed=False,addr=192.168.10.2,master_clock_rate=122.88e6
>>>         [INFO] [MPM.PeriphManager]init() called with device args `master_clock_rate=122.88e6,time_source=internal,clock_source=internal,mgmt_addr=192.168.10.2,product=n310'.
>>>         [INFO] [0/Replay_0]Initializing block control (NOC ID: 0x4E91A00000000004)
>>>         [INFO] [0/Radio_0]Initializing block control (NOC ID: 0x12AD100000011312)
>>>         [INFO] [0/Radio_1]Initializing block control (NOC ID: 0x12AD100000011312)
>>>         [INFO] [0/DDC_0]Initializing block control (NOC ID: 0xDDC0000000000000)
>>>         [INFO] [0/DDC_1]Initializing block control (NOC ID: 0xDDC0000000000000)
>>>         [INFO] [0/DUC_0]Initializing block control (NOC ID: 0xD0C0000000000002)
>>>         [INFO] [0/DUC_1]Initializing block control (NOC ID: 0xD0C0000000000002)
>>>         [INFO] [0/FIFO_0]Initializing block control (NOC ID: 0xF1F0000000000000)
>>>         [INFO] [0/FIFO_1]Initializing block control (NOC ID: 0xF1F0000000000000)
>>>         [INFO] [0/FIFO_2]Initializing block control (NOC ID: 0xF1F0000000000000)
>>>         [INFO] [0/FIFO_3]Initializing block control (NOC ID: 0xF1F0000000000000)
>>>         Using Device: Single USRP:
>>>            Device: N300-Series Device
>>>            Mboard 0: ni-n3xx-3182B09
>>>            RX Channel: 0
>>>              RX DSP: 0
>>>              RX Dboard: A
>>>              RX Subdev: Magnesium
>>>            TX Channel: 0
>>>              TX DSP: 0
>>>              TX Dboard: A
>>>              TX Subdev: Magnesium
>>>
>>>         [00:00:17.353184] Setting device timestamp to 0...
>>>         [00:00:17.412187] Testing receive rate 3.840000 Msps on 1 channels
>>>         [00:00:17.414164] Receiver error: ERROR_CODE_BAD_PACKET
>>>         [[ERROR] [RX FLOW CTRL]Error unpacking packet: ValueError: Bad CHDR or packet fragment
>>>
>>>         [ERROR] [STREAMER]The receive packet handler caught a value exception.
>>>         ValueError: Bad CHDR or packet fragment
>>>         00:00:17.414180] Unexpected error on recv, continuing...
>>>         [00:00:17.514258] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>>>         [00:00:17.514312] Receiver error: ERROR_CODE_BAD_PACKET
>>>         [00:00:17.514317] Unexpected error on recv, continuing...
>>>         [ERROR] [RX FLOW CTRL]Error unpacking packet: ValueError: Bad CHDR or packet fragment
>>>
>>>         [ERROR] [STREAMER]The receive packet handler caught a value exception.
>>>         ValueError: Bad CHDR or packet fragment
>>>         [00:00:17.532991] Testing transmit rate 3.840000 Msps on 1 channels
>>>         [00:00:17.614329] Receiver error: ERROR_CODE_TIMEOUT, continuing...
>>>         [00:00:17.614372] Receiver error: ERROR_CODE_BAD_PACKET
>>>         [00:00:17.614377] Unexpected error on recv, continuing...
>>>
>>>         _______________________________________________
>>>         USRP-users mailing list
>>>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>>     _______________________________________________
>>>     USRP-users mailing list
>>>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------070105030601060607060104
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/25/2019 03:56 PM, Sam Reiter
      wrote:<br>
    </div>
    <blockquote
cite="mid:CANf970bQb8vKkrJr8Kruc6YNf_y9VAfUZ6AUwjacZ0z6okH-3w@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Follow up on this thread. I ran my N310 with a 1GbE link
          and was able to reproduce the "Bad CHDR or packet fragment
          issue". It seems specific to N3xx RX over a 1GbE link on
          3.14.1.0. I didn't spend a ton of time trying to find a
          workaround on 3.14.1.0, but rolling back to 3.14.0.0 cleared
          the issue for me. <br>
        </div>
        <div><br>
        </div>
        <div>I'll spend some time finding the offending commit and see
          what I can't do to get a fix / workaround figured out for
          3.14.1.0.<br>
        </div>
        <div><br>
        </div>
        <div>
          <div>
            <div dir="ltr" class="gmail_signature"
              data-smartmail="gmail_signature">
              <div dir="ltr">
                <div>
                  <div dir="ltr">Sam Reiter 
                    <div>SDR Support Engineer</div>
                    <div>Ettus Research<br>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    Thanks, Sam.  When I go into the lab later, I can probably confirm
    this as well, I haven't seen it before, but I think I'm runing
    3.14.0.0<br>
    <br>
    <br>
    <blockquote
cite="mid:CANf970bQb8vKkrJr8Kruc6YNf_y9VAfUZ6AUwjacZ0z6okH-3w@mail.gmail.com"
      type="cite">
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, Jul 23, 2019 at 10:13
          PM Marcus D Leech &lt;<a moz-do-not-send="true"
            href="mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="auto">Normally Intel controllers have better
            performance but even a RealTek chip should have no problem
            at those data rates. 
            <div><br>
            </div>
            <div><br>
              <br>
              <div id="gmail-m_-1782705882285278276AppleMailSignature"
                dir="ltr">Sent from my iPhone</div>
              <div dir="ltr"><br>
                On Jul 23, 2019, at 10:01 PM, 汤 飞 &lt;<a
                  moz-do-not-send="true"
                  href="mailto:retina999@hotmail.com" target="_blank">retina999@hotmail.com</a>&gt;
                wrote:<br>
                <br>
              </div>
              <blockquote type="cite">
                <div dir="ltr">
                  <div class="gmail-m_-1782705882285278276WordSection1">
                    <p class="MsoNormal"><span lang="EN-US">Actually my
                        pc’s Ethernet card chip is from Realtek.
                      </span></p>
                    <p class="MsoNormal"><span lang="EN-US">I’ve tried
                        all possible MTU sizes of auto, 1000, 1500,
                        2000, and up to 9000. Always the same errors.
                      </span></p>
                    <p class="MsoNormal"><span lang="EN-US">Is it the
                        inherent problem with the Realtek chip?
                      </span></p>
                    <p class="MsoNormal"><span lang="EN-US">If that, is
                        there any workaround? eg. Changing the default
                        Linux driver,
                      </span></p>
                    <p class="MsoNormal"><span lang="EN-US">or the last
                        solution, ie. I have to try install a PCIE
                        network card. Which brand ethernet card is
                        compatible, one from Intel?</span></p>
                    <p class="MsoNormal"><span lang="EN-US"> </span></p>
                  </div>
                  <hr style="display:inline-block;width:98%">
                  <div id="gmail-m_-1782705882285278276divRplyFwdMsg"
                    dir="ltr"><font style="font-size:11pt"
                      color="#000000" face="Calibri, sans-serif"><b>发件人:</b>
                      Marcus D Leech &lt;<a moz-do-not-send="true"
                        href="mailto:patchvonbraun@gmail.com"
                        target="_blank">patchvonbraun@gmail.com</a>&gt;<br>
                      <b>发送时间:</b> Wednesday, July 24, 2019 7:34:13 AM<br>
                      <b>收件人:</b> 汤 飞 &lt;<a moz-do-not-send="true"
                        href="mailto:retina999@hotmail.com"
                        target="_blank">retina999@hotmail.com</a>&gt;<br>
                      <b>抄送:</b> Sam Reiter &lt;<a
                        moz-do-not-send="true"
                        href="mailto:sam.reiter@ettus.com"
                        target="_blank">sam.reiter@ettus.com</a>&gt;; <a
                        moz-do-not-send="true"
                        href="mailto:usrp-users@lists.ettus.com"
                        target="_blank">usrp-users@lists.ettus.com</a>
                      &lt;<a moz-do-not-send="true"
                        href="mailto:usrp-users@lists.ettus.com"
                        target="_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                      <b>主题:</b> Re: [USRP-users] 答复: N310 "Bad CHDR or
                      packet fragment" Problem</font>
                    <div> </div>
                  </div>
                  <div>Some Ethernet 1g controllers won’t actually do
                    MTUs greater than 1500 despite ethnology telling
                    them to. Some Realtek for example. 
                    <div><br>
                    </div>
                    <div>If it’s just 1G try default MTU of 1500 and
                      work your way up to see where it fails. <br>
                      <br>
                      <div
                        id="gmail-m_-1782705882285278276AppleMailSignature"
                        dir="ltr">Sent from my iPhone</div>
                      <div dir="ltr"><br>
                        On Jul 23, 2019, at 7:15 PM, 汤 飞 via USRP-users
                        &lt;<a moz-do-not-send="true"
                          href="mailto:usrp-users@lists.ettus.com"
                          target="_blank">usrp-users@lists.ettus.com</a>&gt;
                        wrote:<br>
                        <br>
                      </div>
                      <blockquote type="cite">
                        <div dir="ltr">
                          <div
                            class="gmail-m_-1782705882285278276WordSection1">
                            <p class="MsoNormal"><span lang="EN-US">It</span>’<span
                                lang="EN-US">s a  1g SFP0 link. I set
                                MTU  to 8000 according to the
                                Application Note.
                              </span></p>
                            <p class="MsoNormal"><span lang="EN-US"> </span></p>
                          </div>
                          <hr style="display:inline-block;width:98%">
                          <div
                            id="gmail-m_-1782705882285278276divRplyFwdMsg"
                            dir="ltr"><font style="font-size:11pt"
                              color="#000000" face="Calibri, sans-serif"><b>发
                                件人:</b> Sam Reiter &lt;<a
                                moz-do-not-send="true"
                                href="mailto:sam.reiter@ettus.com"
                                target="_blank">sam.reiter@ettus.com</a>&gt;<br>
                              <b>发送时间:</b> Wednesday, July 24, 2019
                              4:56:21 AM<br>
                              <b>收件人:</b> 汤 飞 &lt;<a
                                moz-do-not-send="true"
                                href="mailto:retina999@hotmail.com"
                                target="_blank">retina999@hotmail.com</a>&gt;<br>
                              <b>抄送:</b> <a moz-do-not-send="true"
                                href="mailto:usrp-users@lists.ettus.com"
                                target="_blank">usrp-users@lists.ettus.com</a>
                              &lt;<a moz-do-not-send="true"
                                href="mailto:usrp-users@lists.ettus.com"
                                target="_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                              <b>主题:</b> Re: [USRP-users] N310 "Bad CHDR
                              or packet fragment" Problem</font>
                            <div> </div>
                          </div>
                          <div>
                            <div dir="ltr">If you're connected over a
                              10GbE link, make sure to set your host's
                              MTU appropriately. I set mine to 9000.
                              <div><br clear="all">
                                <div>
                                  <div dir="ltr"
                                    class="gmail-m_-1782705882285278276gmail_signature">
                                    <div dir="ltr">
                                      <div>
                                        <div dir="ltr">Sam Reiter 
                                          <div>SDR Support Engineer</div>
                                          <div>Ettus Research<br>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <br>
                              </div>
                            </div>
                            <br>
                            <div class="gmail_quote">
                              <div dir="ltr" class="gmail_attr">On Fri,
                                Jul 19, 2019 at 2:21 AM 汤 飞 via
                                USRP-users &lt;<a moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>&gt;
                                wrote:<br>
                              </div>
                              <blockquote class="gmail_quote"
                                style="margin:0px 0px 0px
                                0.8ex;border-left:1px solid
                                rgb(204,204,204);padding-left:1ex">
                                <div bgcolor="#FFFFFF">
                                  <pre>Hi, all,

When benchmarking my N310, I keep getting such <font color="#CC0000">[RX FLOW CTRL]</font> errors. 
What causes this and how to solve it?

Thanks in advance!

FT


/usr/local/lib/uhd/examples/benchmark_rate  \
&gt;    --args "type=n3xx,mgmt_addr=192.168.10.2,addr=192.168.10.2,master_clock_rate=122.88e6" \
&gt;    --duration 60 \
&gt;    --channels "0" \
&gt;    --rx_rate 3.84e6 \
&gt;    --rx_subdev "A:0" \
&gt;    --tx_rate 3.84e6 \
&gt;    --tx_subdev "A:0"

<font color="#4E9A06">[INFO] [UHD] </font>linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14.1.HEAD-0-gbfb9c1c7
[00:00:00.000014] Creating the usrp device with: type=n3xx,mgmt_addr=192.168.10.2,addr=192.168.10.2,master_clock_rate=122.88e6...
<font color="#4E9A06">[INFO] [MPMD] </font>Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3182B09,claimed=False,addr=192.168.10.2,master_clock_rate=122.88e6
<font color="#4E9A06">[INFO] [MPM.PeriphManager] </font>init() called with device args `master_clock_rate=122.88e6,time_source=internal,clock_source=internal,mgmt_addr=192.168.10.2,product=n310'.
<font color="#4E9A06">[INFO] [0/Replay_0] </font>Initializing block control (NOC ID: 0x4E91A00000000004)
<font color="#4E9A06">[INFO] [0/Radio_0] </font>Initializing block control (NOC ID: 0x12AD100000011312)
<font color="#4E9A06">[INFO] [0/Radio_1] </font>Initializing block control (NOC ID: 0x12AD100000011312)
<font color="#4E9A06">[INFO] [0/DDC_0] </font>Initializing block control (NOC ID: 0xDDC0000000000000)
<font color="#4E9A06">[INFO] [0/DDC_1] </font>Initializing block control (NOC ID: 0xDDC0000000000000)
<font color="#4E9A06">[INFO] [0/DUC_0] </font>Initializing block control (NOC ID: 0xD0C0000000000002)
<font color="#4E9A06">[INFO] [0/DUC_1] </font>Initializing block control (NOC ID: 0xD0C0000000000002)
<font color="#4E9A06">[INFO] [0/FIFO_0] </font>Initializing block control (NOC ID: 0xF1F0000000000000)
<font color="#4E9A06">[INFO] [0/FIFO_1] </font>Initializing block control (NOC ID: 0xF1F0000000000000)
<font color="#4E9A06">[INFO] [0/FIFO_2] </font>Initializing block control (NOC ID: 0xF1F0000000000000)
<font color="#4E9A06">[INFO] [0/FIFO_3] </font>Initializing block control (NOC ID: 0xF1F0000000000000)
Using Device: Single USRP:
  Device: N300-Series Device
  Mboard 0: ni-n3xx-3182B09
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Magnesium
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Magnesium

[00:00:17.353184] Setting device timestamp to 0...
[00:00:17.412187] Testing receive rate 3.840000 Msps on 1 channels
[00:00:17.414164] Receiver error: ERROR_CODE_BAD_PACKET
[<font color="#CC0000">[ERROR] [RX FLOW CTRL] </font>Error unpacking packet: ValueError: Bad CHDR or packet fragment

<font color="#CC0000">[ERROR] [STREAMER] </font>The receive packet handler caught a value exception.
ValueError: Bad CHDR or packet fragment
00:00:17.414180] Unexpected error on recv, continuing...
[00:00:17.514258] Receiver error: ERROR_CODE_TIMEOUT, continuing...
[00:00:17.514312] Receiver error: ERROR_CODE_BAD_PACKET
[00:00:17.514317] Unexpected error on recv, continuing...
<font color="#CC0000">[ERROR] [RX FLOW CTRL] </font>Error unpacking packet: ValueError: Bad CHDR or packet fragment

<font color="#CC0000">[ERROR] [STREAMER] </font>The receive packet handler caught a value exception.
ValueError: Bad CHDR or packet fragment
[00:00:17.532991] Testing transmit rate 3.840000 Msps on 1 channels
[00:00:17.614329] Receiver error: ERROR_CODE_TIMEOUT, continuing...
[00:00:17.614372] Receiver error: ERROR_CODE_BAD_PACKET
[00:00:17.614377] Unexpected error on recv, continuing...
</pre>
                                </div>
_______________________________________________<br>
                                USRP-users mailing list<br>
                                <a moz-do-not-send="true"
                                  href="mailto:USRP-users@lists.ettus.com"
                                  target="_blank">USRP-users@lists.ettus.com</a><br>
                                <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                                  rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                              </blockquote>
                            </div>
                          </div>
                        </div>
                      </blockquote>
                      <blockquote type="cite">
                        <div dir="ltr"><span>_______________________________________________</span><br>
                          <span>USRP-users mailing list</span><br>
                          <span><a moz-do-not-send="true"
                              href="mailto:USRP-users@lists.ettus.com"
                              target="_blank">USRP-users@lists.ettus.com</a></span><br>
                          <span><a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                              target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br>
                        </div>
                      </blockquote>
                    </div>
                  </div>
                </div>
              </blockquote>
            </div>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------070105030601060607060104--


--===============1417941795711827971==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1417941795711827971==--

