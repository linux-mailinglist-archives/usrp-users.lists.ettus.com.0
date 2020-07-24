Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EE722C810
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 16:33:16 +0200 (CEST)
Received: from [::1] (port=44692 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyyl9-00044l-4m; Fri, 24 Jul 2020 10:33:15 -0400
Received: from mail-qk1-f178.google.com ([209.85.222.178]:45723)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jyyl5-0003xT-1Y
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 10:33:11 -0400
Received: by mail-qk1-f178.google.com with SMTP id u64so8732217qka.12
 for <usrp-users@lists.ettus.com>; Fri, 24 Jul 2020 07:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=pVGb6naxa0o/jpqIdKg0BitdQD4pwOARrptWD5ntqWA=;
 b=Bu0n24A+ZI709lZwlNriG8DJRbvdiFZ+dZATbUAR9LuuZ9O4YKsGP0TKDlzIOoPoWD
 4a8LXSkD/Sty9PBBMWweVbwl8aHJ1ukwDynUw0GoejxPguok2UPZJooJF641Cm6z263c
 DomqIRN34maq+lGch7iWoa7L/UbSNRv6oJ4HuLdLHktwGWnjwanT5lw3CQKW7yg7dAX2
 pmR0pZgSmAP7xJK6tyv2gDq7eJ+Oc4idy5LEg+pUuYMcQArJkTt1f+Nvy/hhM/E1VbHv
 rbBS0kvuKe2uSjdtRmbL2cII8qFUfKUBNShmwpCddr9tmeYdF1P++SHRxIzrHd7ogmxN
 PprA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=pVGb6naxa0o/jpqIdKg0BitdQD4pwOARrptWD5ntqWA=;
 b=Sx6DmpQSvIPVgLHpidKYeJSFbYo5GI3j5d0Q0IivXc8FAn7/57qew/1G1fiRIlZLqJ
 3vGwNiXZG3qg2i1wseQzdJ7XOtzHnS78nTlHiaUQv88EklWYjr4O6VrVdSz8sGOP7mOw
 a3hjeBwaJmG3h4WXIKlBCXZdHLUI3TD+0lYak8uQMyaMF6yvs7kN4RCGWdExohCKl1Do
 Qrkfn0u6u9hczZiTmWfoxQe58nTvUKbPy3FV/ci6FyZVlqv0UbN1Z7jMMhHOymwXQr4Q
 eNEgAoT8d1Zb+/2sYqqwVq0PxnE9lNpp3buh2DRnkRSY0f5fv2KAi5qxZz0lDStDjL+8
 2/7g==
X-Gm-Message-State: AOAM532AqGoRZ/usXbH55fklQzbv99LZnghAJK+C7N2sAt+eWpaC9FoO
 0jg5v/ll9LJciSWdO6UdvRSTCbXOcgE=
X-Google-Smtp-Source: ABdhPJxVocCZ9bkx4UE5biGi0j+OMIRF38runTrECkZfvg9qlhLAGHpiOD8pQjGdE5nvgIqQbv6/tQ==
X-Received: by 2002:a37:44c1:: with SMTP id
 r184mr10951212qka.232.1595601150206; 
 Fri, 24 Jul 2020 07:32:30 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id m7sm1456839qti.6.2020.07.24.07.32.29
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jul 2020 07:32:29 -0700 (PDT)
Message-ID: <5F1AF0FC.80106@gmail.com>
Date: Fri, 24 Jul 2020 10:32:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAANLyua6xgH+TsH2bqmKLMu4buMm93QqYQ-JPy+vd4F9aB26SA@mail.gmail.com>
 <81D12D30-8BD2-4ED2-906C-E9F7F08B2B82@gmail.com>
 <CAB__hTTc80gTmTWXK2GnsBQpdAj6vZ_=oV_Nc_8oLs0vRzcMGA@mail.gmail.com>
 <CAANLyua3t1JCyUPPopWCjekFm9okhoycbvvFxNwkBNHXN5kgwg@mail.gmail.com>
In-Reply-To: <CAANLyua3t1JCyUPPopWCjekFm9okhoycbvvFxNwkBNHXN5kgwg@mail.gmail.com>
Subject: Re: [USRP-users] tx_stream->get_max_num_samps() too low
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
Content-Type: multipart/mixed; boundary="===============1881745507611694232=="
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
--===============1881745507611694232==
Content-Type: multipart/alternative;
 boundary="------------040200010006040600080603"

This is a multi-part message in MIME format.
--------------040200010006040600080603
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 07/24/2020 10:28 AM, Devin Kelly via USRP-users wrote:
> OK, I'm not sure what SPP is but I'll find it.
>
> I'm also not using GNU Radio if that's what you mean by "radio block 
> XML file".
>
> Thanks again,
> Devin
>
The "spp" parameter is "samples per packet".  It's a stream argument:

https://files.ettus.com/manual/structuhd_1_1stream__args__t.html


> On Fri, Jul 24, 2020 at 10:19 AM Rob Kossler <rkossler@nd.edu 
> <mailto:rkossler@nd.edu>> wrote:
>
>     spp can be changed in the radio block xml file
>
>     On Thu, Jul 23, 2020 at 9:20 PM Marcus D Leech via USRP-users
>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>     wrote:
>
>         Try using the Spp parameter in the device ages.
>
>         Sent from my iPhone
>
>>         On Jul 23, 2020, at 5:50 PM, Devin Kelly via USRP-users
>>         <usrp-users@lists.ettus.com
>>         <mailto:usrp-users@lists.ettus.com>> wrote:
>>
>>         ﻿
>>         Hello,
>>
>>         I'm having an issue where tx_stream->get_max_num_samps() is
>>         returning 364 (for sc16) despite my MTU being set to 9000.
>>
>>         I modified tx_timed_samples to print out how many samples I
>>         can place in each packet, the number is always 364.
>>
>>         364 samples makes sense for an MTU of 1500 bytes, 364 * 2 * 2
>>         = 1456 bytes.  Two bytes per sample, one sample for I and
>>         another sample for Q.
>>
>>         $ ./examples/tx_timed_samples --args="name=node4" --nsamps
>>         100000 --rate 10e6
>>
>>         Creating the usrp device with: name=node4...
>>         [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat
>>         4.8.5-39); Boost_106900; UHD_3.15.0.heads-v3.15.0.0-0-gaea0e2de
>>         [INFO] [X300] X300 initialization sequence...
>>         [INFO] [X300] Maximum frame size: 8000 bytes.
>>         [INFO] [X300] Radio 1x clock: 200 MHz
>>         [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
>>         [WARNING] [GPS] update_cache: Malformed GPSDO string: EEPROM
>>         Write Failed!
>>         [WARNING] [GPS] update_cache: Malformed GPSDO string: EEPROM
>>         Write Failed!
>>         [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
>>         0xF1F0D00000000000)
>>         [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1313 MB/s)
>>         [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
>>         [INFO] [0/Radio_0] Initializing block control (NOC ID:
>>         0x12AD100000000001)
>>         [INFO] [0/Radio_1] Initializing block control (NOC ID:
>>         0x12AD100000000001)
>>         [INFO] [0/DDC_0] Initializing block control (NOC ID:
>>         0xDDC0000000000000)
>>         [INFO] [0/DDC_1] Initializing block control (NOC ID:
>>         0xDDC0000000000000)
>>         [INFO] [0/DUC_0] Initializing block control (NOC ID:
>>         0xD0C0000000000000)
>>         [INFO] [0/DUC_1] Initializing block control (NOC ID:
>>         0xD0C0000000000000)
>>         Using Device: Single USRP:
>>           Device: X-Series Device
>>           Mboard 0: X310
>>           RX Channel: 0
>>             RX DSP: 0
>>             RX Dboard: A
>>             RX Subdev: UBX RX
>>           RX Channel: 1
>>             RX DSP: 0
>>             RX Dboard: B
>>             RX Subdev: UBX RX
>>           TX Channel: 0
>>             TX DSP: 0
>>             TX Dboard: A
>>             TX Subdev: UBX TX
>>           TX Channel: 1
>>             TX DSP: 0
>>             TX Dboard: B
>>             TX Subdev: UBX TX
>>
>>         Setting TX Rate: 10.000000 Msps...
>>         Actual TX Rate: 10.000000 Msps...
>>
>>         Setting device timestamp to 0...
>>         tx_stream->get_max_num_samps() = 364
>>
>>         Waiting for async burst ACK... success
>>
>>         Done!
>>
>>         I've verified that my interface is using a 9000 byte MTU:
>>
>>         $ ip l show dev p4p2
>>         4: p4p2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq
>>         state UP mode DEFAULT group default qlen 4000
>>         link/ether 00:0a:f7:da:6a:e9 brd ff:ff:ff:ff:ff:ff
>>
>>         And that it actually works:
>>
>>         $ ping -I p4p2 -c1 -s 8100 192.168.30.2
>>         PING 192.168.30.2 (192.168.30.2) from 192.168.30.1 p4p2:
>>         8100(8128) bytes of data.
>>         8108 bytes from 192.168.30.2 <http://192.168.30.2>:
>>         icmp_seq=1 ttl=32 time=23.7 ms
>>
>>         --- 192.168.30.2 ping statistics ---
>>         1 packets transmitted, 1 received, 0% packet loss, time 0ms
>>         rtt min/avg/max/mdev = 23.705/23.705/23.705/0.000 ms
>>
>>         Note that the "don't fragment" flag is set:
>>
>>         $ sudo tcpdump -nn -vv -i p4p2 icmp
>>         tcpdump: listening on p4p2, link-type EN10MB (Ethernet),
>>         capture size 262144 bytes
>>         17:25:12.973794 IP (tos 0x0, ttl 64, id 5942, offset 0, flags
>>         [DF], proto ICMP (1), length 8128)
>>             192.168.30.1 > 192.168.30.2 <http://192.168.30.2>: ICMP
>>         echo request, id 47608, seq 1, length 8108
>>         17:25:12.997481 IP (tos 0x0, ttl 32, id 0, offset 0, flags
>>         [DF], proto ICMP (1), length 8128)
>>             192.168.30.2 > 192.168.30.1 <http://192.168.30.1>: ICMP
>>         echo reply, id 47608, seq 1, length 8108
>>
>>
>>         Strangely though using a slightly larger packet (8300 bytes)
>>         my USRP seems to not respond:
>>
>>         $ ping -I p4p2 -c1 -s 8300 192.168.30.2
>>         PING 192.168.30.2 (192.168.30.2) from 192.168.30.1 p4p2:
>>         8300(8328) bytes of data.
>>         ^C
>>         --- 192.168.30.2 ping statistics ---
>>         1 packets transmitted, 0 received, 100% packet loss, time 0ms
>>
>>         $ sudo tcpdump -nn -vv -i p4p2 icmp
>>         tcpdump: listening on p4p2, link-type EN10MB (Ethernet),
>>         capture size 262144 bytes
>>         17:23:03.060789 IP (tos 0x0, ttl 64, id 23157, offset 0,
>>         flags [DF], proto ICMP (1), length 8328)
>>             192.168.30.1 > 192.168.30.2 <http://192.168.30.2>: ICMP
>>         echo request, id 47339, seq 1, length 8308
>>
>>
>>         Do I have to do anything besides simply changing my MTU to
>>         get the UHD to take advantage of jumbo frames?
>>
>>         Thanks for any help,
>>         Devin
>>         _______________________________________________
>>         USRP-users mailing list
>>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>         _______________________________________________
>         USRP-users mailing list
>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------040200010006040600080603
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/24/2020 10:28 AM, Devin Kelly via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAANLyua3t1JCyUPPopWCjekFm9okhoycbvvFxNwkBNHXN5kgwg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>OK, I'm not sure what SPP is but I'll find it.</div>
        <div><br>
        </div>
        <div>I'm also not using GNU Radio if that's what you mean by
          "radio block XML file".</div>
        <div><br>
        </div>
        <div>Thanks again,</div>
        <div>Devin<br>
        </div>
      </div>
      <br>
    </blockquote>
    The "spp" parameter is "samples per packet".  It's a stream
    argument:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/structuhd_1_1stream__args__t.html">https://files.ettus.com/manual/structuhd_1_1stream__args__t.html</a><br>
    <br>
    <br>
    <blockquote
cite="mid:CAANLyua3t1JCyUPPopWCjekFm9okhoycbvvFxNwkBNHXN5kgwg@mail.gmail.com"
      type="cite">
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Fri, Jul 24, 2020 at 10:19
          AM Rob Kossler &lt;<a moz-do-not-send="true"
            href="mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">spp can be changed in the radio block xml file</div>
          <br>
          <div class="gmail_quote">
            <div dir="ltr" class="gmail_attr">On Thu, Jul 23, 2020 at
              9:20 PM Marcus D Leech via USRP-users &lt;<a
                moz-do-not-send="true"
                href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div dir="auto">Try using the Spp parameter in the device
                ages. <br>
                <br>
                <div dir="ltr">Sent from my iPhone</div>
                <div dir="ltr"><br>
                  <blockquote type="cite">On Jul 23, 2020, at 5:50 PM,
                    Devin Kelly via USRP-users &lt;<a
                      moz-do-not-send="true"
                      href="mailto:usrp-users@lists.ettus.com"
                      target="_blank">usrp-users@lists.ettus.com</a>&gt;
                    wrote:<br>
                    <br>
                  </blockquote>
                </div>
                <blockquote type="cite">
                  <div dir="ltr">﻿
                    <div dir="ltr">
                      <div>Hello,</div>
                      <div><br>
                      </div>
                      <div>I'm having an issue where
                        tx_stream-&gt;get_max_num_samps() is returning
                        364 (for sc16) despite my MTU being set to 9000.</div>
                      <div><br>
                      </div>
                      <div>I modified tx_timed_samples to print out how
                        many samples I can place in each packet, the
                        number is always 364. </div>
                      <div><br>
                      </div>
                      <div>364 samples makes sense for an MTU of 1500
                        bytes, 364 * 2 * 2 = 1456 bytes.  Two bytes per
                        sample, one sample for I and another sample for
                        Q.<br>
                      </div>
                      <div><br>
                      </div>
                      <div style="margin-left:40px"><span
                          style="font-family:monospace">$
                          ./examples/tx_timed_samples
                          --args="name=node4" --nsamps 100000 --rate
                          10e6<br>
                          <br>
                          Creating the usrp device with: name=node4...<br>
                          [INFO] [UHD] linux; GNU C++ version 4.8.5
                          20150623 (Red Hat 4.8.5-39); Boost_106900;
                          UHD_3.15.0.heads-v3.15.0.0-0-gaea0e2de<br>
                          [INFO] [X300] X300 initialization sequence...<br>
                          [INFO] [X300] Maximum frame size: 8000 bytes.<br>
                          [INFO] [X300] Radio 1x clock: 200 MHz<br>
                          [INFO] [GPS] Found an internal GPSDO: LC_XO,
                          Firmware Rev 0.929b<br>
                          [WARNING] [GPS] update_cache: Malformed GPSDO
                          string: EEPROM Write Failed!<br>
                          [WARNING] [GPS] update_cache: Malformed GPSDO
                          string: EEPROM Write Failed!<br>
                          [INFO] [0/DmaFIFO_0] Initializing block
                          control (NOC ID: 0xF1F0D00000000000)<br>
                          [INFO] [0/DmaFIFO_0] BIST passed (Throughput:
                          1313 MB/s)<br>
                          [INFO] [0/DmaFIFO_0] BIST passed (Throughput:
                          1306 MB/s)<br>
                          [INFO] [0/Radio_0] Initializing block control
                          (NOC ID: 0x12AD100000000001)<br>
                          [INFO] [0/Radio_1] Initializing block control
                          (NOC ID: 0x12AD100000000001)<br>
                          [INFO] [0/DDC_0] Initializing block control
                          (NOC ID: 0xDDC0000000000000)<br>
                          [INFO] [0/DDC_1] Initializing block control
                          (NOC ID: 0xDDC0000000000000)<br>
                          [INFO] [0/DUC_0] Initializing block control
                          (NOC ID: 0xD0C0000000000000)<br>
                          [INFO] [0/DUC_1] Initializing block control
                          (NOC ID: 0xD0C0000000000000)<br>
                          Using Device: Single USRP:<br>
                            Device: X-Series Device<br>
                            Mboard 0: X310<br>
                            RX Channel: 0<br>
                              RX DSP: 0<br>
                              RX Dboard: A<br>
                              RX Subdev: UBX RX<br>
                            RX Channel: 1<br>
                              RX DSP: 0<br>
                              RX Dboard: B<br>
                              RX Subdev: UBX RX<br>
                            TX Channel: 0<br>
                              TX DSP: 0<br>
                              TX Dboard: A<br>
                              TX Subdev: UBX TX<br>
                            TX Channel: 1<br>
                              TX DSP: 0<br>
                              TX Dboard: B<br>
                              TX Subdev: UBX TX<br>
                          <br>
                          Setting TX Rate: 10.000000 Msps...<br>
                          Actual TX Rate: 10.000000 Msps...<br>
                          <br>
                          Setting device timestamp to 0...<br>
                          tx_stream-&gt;get_max_num_samps() = 364</span></div>
                      <div style="margin-left:40px"><span
                          style="font-family:monospace"><br>
                          Waiting for async burst ACK... success<br>
                          <br>
                          Done!</span></div>
                      <div><span style="font-family:monospace"><br>
                        </span></div>
                      <div><span style="font-family:arial,sans-serif">I've
                          verified that my interface is using a 9000
                          byte MTU:</span></div>
                      <div><span style="font-family:monospace"><br>
                        </span></div>
                      <div style="margin-left:40px"><span
                          style="font-family:monospace">$ ip l show dev
                          p4p2</span><br>
                        <span style="font-family:monospace">4: p4p2:
                          &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu
                          9000 qdisc mq state UP mode DEFAULT group
                          default qlen 4000</span><br>
                        <span style="font-family:monospace">   
                          link/ether 00:0a:f7:da:6a:e9 brd
                          ff:ff:ff:ff:ff:ff</span></div>
                      <div><span style="font-family:arial,sans-serif"><br>
                        </span></div>
                      <div><span style="font-family:arial,sans-serif">And
                          that it actually works:</span><span
                          style="font-family:monospace"><br>
                        </span></div>
                      <div><span style="font-family:monospace"><br>
                        </span>
                        <div style="margin-left:40px"><span
                            style="font-family:monospace">$ ping -I p4p2
                            -c1 -s 8100 192.168.30.2 </span><br>
                          <span style="font-family:monospace">PING
                            192.168.30.2 (192.168.30.2) from
                            192.168.30.1 p4p2: 8100(8128) bytes of data.</span><br>
                          <span style="font-family:monospace">8108 bytes
                            from <a moz-do-not-send="true"
                              href="http://192.168.30.2" target="_blank">192.168.30.2</a>:
                            icmp_seq=1 ttl=32 time=23.7 ms</span><br>
                          <span style="font-family:monospace"></span><br>
                          <span style="font-family:monospace">---
                            192.168.30.2 ping statistics ---</span><br>
                          <span style="font-family:monospace">1 packets
                            transmitted, 1 received, 0% packet loss,
                            time 0ms</span><br>
                          <span style="font-family:monospace">rtt
                            min/avg/max/mdev =
                            23.705/23.705/23.705/0.000 ms</span></div>
                      </div>
                      <div><span style="font-family:arial,sans-serif"><br>
                        </span></div>
                      <div><span style="font-family:arial,sans-serif">Note
                          that the "don't fragment" flag is set:</span><span
                          style="font-family:monospace"><br>
                        </span></div>
                      <div style="margin-left:40px"><span
                          style="font-family:monospace"><br>
                        </span></div>
                      <div style="margin-left:40px"><span
                          style="font-family:monospace">$ sudo tcpdump
                          -nn -vv -i p4p2 icmp<br>
                          tcpdump: listening on p4p2, link-type EN10MB
                          (Ethernet), capture size 262144 bytes<br>
                          17:25:12.973794 IP (tos 0x0, ttl 64, id 5942,
                          offset 0, flags [DF], proto ICMP (1), length
                          8128)<br>
                              192.168.30.1 &gt; <a
                            moz-do-not-send="true"
                            href="http://192.168.30.2" target="_blank">192.168.30.2</a>:
                          ICMP echo request, id 47608, seq 1, length
                          8108<br>
                          17:25:12.997481 IP (tos 0x0, ttl 32, id 0,
                          offset 0, flags [DF], proto ICMP (1), length
                          8128)<br>
                              192.168.30.2 &gt; <a
                            moz-do-not-send="true"
                            href="http://192.168.30.1" target="_blank">192.168.30.1</a>:
                          ICMP echo reply, id 47608, seq 1, length 8108<br>
                        </span></div>
                      <div><span style="font-family:monospace"><br>
                        </span></div>
                      <div><span style="font-family:arial,sans-serif"><br>
                        </span></div>
                      <div><span style="font-family:arial,sans-serif">Strangely
                          though using a slightly larger packet (8300
                          bytes) my USRP seems to not respond:</span><span
                          style="font-family:monospace"><br>
                        </span></div>
                      <div><span style="font-family:monospace"><br>
                        </span></div>
                      <div style="margin-left:40px"><span
                          style="font-family:monospace">$ ping -I p4p2
                          -c1 -s 8300 192.168.30.2 </span><br>
                        <span style="font-family:monospace">PING
                          192.168.30.2 (192.168.30.2) from 192.168.30.1
                          p4p2: 8300(8328) bytes of data.</span><br>
                        <span style="font-family:monospace">^C</span><br>
                        <span style="font-family:monospace">---
                          192.168.30.2 ping statistics ---</span><br>
                        <span style="font-family:monospace">1 packets
                          transmitted, 0 received, 100% packet loss,
                          time 0ms</span></div>
                      <div><span style="font-family:monospace"><br>
                        </span></div>
                      <div style="margin-left:40px"><span
                          style="font-family:monospace">$ sudo tcpdump
                          -nn -vv -i p4p2 icmp<br>
                          tcpdump: listening on p4p2, link-type EN10MB
                          (Ethernet), capture size 262144 bytes<br>
                          17:23:03.060789 IP (tos 0x0, ttl 64, id 23157,
                          offset 0, flags [DF], proto ICMP (1), length
                          8328)<br>
                              192.168.30.1 &gt; <a
                            moz-do-not-send="true"
                            href="http://192.168.30.2" target="_blank">192.168.30.2</a>:
                          ICMP echo request, id 47339, seq 1, length
                          8308<br>
                        </span></div>
                      <div style="margin-left:40px"><br>
                        <span style="font-family:monospace"></span></div>
                      <div style="margin-left:40px"><br>
                      </div>
                      <div><font face="arial,sans-serif">Do I have to do
                          anything besides simply changing my MTU to get
                          the UHD to take advantage of jumbo frames?</font></div>
                      <div><font face="arial,sans-serif"><br>
                        </font></div>
                      <div><font face="arial,sans-serif">Thanks for any
                          help,</font></div>
                      <div><font face="arial,sans-serif">Devin<br>
                        </font></div>
                    </div>
                    <span>_______________________________________________</span><br>
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
              _______________________________________________<br>
              USRP-users mailing list<br>
              <a moz-do-not-send="true"
                href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
              <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
            </blockquote>
          </div>
        </blockquote>
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
    <br>
  </body>
</html>

--------------040200010006040600080603--


--===============1881745507611694232==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1881745507611694232==--

