Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C1B3E49BE
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 18:23:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 92A81384E40
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 12:23:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nIaX/2J+";
	dkim-atps=neutral
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 1BC4F3843A9
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 12:22:43 -0400 (EDT)
Received: by mail-qv1-f51.google.com with SMTP id db14so9235325qvb.10
        for <usrp-users@lists.ettus.com>; Mon, 09 Aug 2021 09:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=HjahthLJLMQxtYSVn9y2nKWy9NvE4TSWz4m8qXVget0=;
        b=nIaX/2J+KKBPhmL2i0xTFcLNKOxei0Po3aUn71HedaYnvxSQqDu1Nx1oKXwL16h49z
         MsXMbRX0CqlatiUbkffRI6jHIEuS+sS06aj1GjHcHKlk5P62DOk1Si5jgjGZUchqcOSf
         sZGyrolabEf2K8GGN7waITWjJOfgnAJTj2wLYFKHfRYXWp67GbD1s/NnYMor7FDz5XOb
         LAmUOuiJBICotbwOPtvtI3X6GmVe02d+KB0fwLtFu4Q0WDdnXz/OccnFCKbbZITbasPq
         HR8WaZbCaphrBdzsSLBfI6xt6aBIFoRhQ6olf0fwZpvrGs8TW/RkkWI2dnr/8z2xJsto
         /r2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=HjahthLJLMQxtYSVn9y2nKWy9NvE4TSWz4m8qXVget0=;
        b=lvmaFEif0SN6eVH0oBLaxQfDWOmCLc5xR3i7JDZ7KilaKaL6x04kLpBE+oSSTimRGR
         9/KfN93Lymmt0l5HsdSZpnmZ46RqpeaLGA/jOzvBwB53Fm6tJiQI3k2Sxww3CbsUEiFn
         KtoxQBlRAiPHsyKaoOrQXTYRjrl5qv87qL51q7AjHh8NR9Adf9egLBGk4fcs/7lSrsB2
         Miosm0y0x9G/oEZXM1lZiaAsQzHSh9ck7dc9aOXr1ne9uo2p8l+T4QZr3k82Ey38giQh
         UeGO75YeSZ/XT7A8RuCY9K7yB6D6nQGarYuxOvCWxA4e0+o/9+FGoTdRMJlPrjuoAS7g
         FhaA==
X-Gm-Message-State: AOAM530vlyYzHMHhT8HXYYvWuJJrAxq/yojiZxdYSZekDO9OauEBToem
	8wqXGz7ECYYdg/ct55c/8ADtUvpzFsBdTA==
X-Google-Smtp-Source: ABdhPJyNsQguQGJ/fivu9ZkXAgcTh7WZ7psTq8INDU+qRNyM1o/1/NPk0ds9BYe1PsiWy4jsPo/Adw==
X-Received: by 2002:a05:6214:621:: with SMTP id a1mr9496250qvx.12.1628526162379;
        Mon, 09 Aug 2021 09:22:42 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id m28sm3798599qki.86.2021.08.09.09.22.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Aug 2021 09:22:41 -0700 (PDT)
Message-ID: <61115650.6000405@gmail.com>
Date: Mon, 09 Aug 2021 12:22:40 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Tellrell White <t_whit_87@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <1343769836.268037.1628477116595.ref@mail.yahoo.com> <1343769836.268037.1628477116595@mail.yahoo.com> <61112AE8.4050100@gmail.com> <221044459.342469.1628517452268@mail.yahoo.com> <67539975.406248.1628525463281@mail.yahoo.com>
In-Reply-To: <67539975.406248.1628525463281@mail.yahoo.com>
Message-ID-Hash: FOR2CUN3EJ6QXCQVTG3NU6WD5JR3BENL
X-Message-ID-Hash: FOR2CUN3EJ6QXCQVTG3NU6WD5JR3BENL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: "Failure to create rfnoc_graph" error when updating FGPA on N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FOR2CUN3EJ6QXCQVTG3NU6WD5JR3BENL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5691103051840978885=="

This is a multi-part message in MIME format.
--===============5691103051840978885==
Content-Type: multipart/alternative;
 boundary="------------070408020308080106070600"

This is a multi-part message in MIME format.
--------------070408020308080106070600
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/09/2021 12:11 PM, Tellrell White wrote:
>
> Also, I should have mentioned that I'm connected to the device via the 
> console JTAG interface, however, I believe this interface may only be 
> for command and control of the N310. Unfortunately, I don't have an 
> SFP adapter so I've been trying to load the FPGA image onto the device 
> using JTAG and I believe this can only successfully be done using the 
> SFP port. Can someone confirm this for me.
> On Monday, August 9, 2021, 9:58:15 AM EDT, Tellrell White via 
> USRP-users <usrp-users@lists.ettus.com> wrote:
>
>
The JTAG interface or the RJ-45 management port?

You should be able to load images just fine on that RJ-45 port.  The 
JTAG interface is something else entirely.


>
> Marcus
> No, I haven't. This is a new VM I created running Ubuntu 18.04. 
> Checking to see if there's an active firewall results in the following:
>
> tw@tw-virtual-machine:~/uhd$ sudo ufw status
> Status: inactive
>
>
>
> On Monday, August 9, 2021, 9:18:04 AM EDT, Marcus D. Leech 
> <patchvonbraun@gmail.com> wrote:
>
>
> On 08/08/2021 10:45 PM, Tellrell White via USRP-users wrote:
>> Hello
>> I'm currently trying to update the default fpga image on a usrp n310 
>> and I'm getting an error. This a print out
>>
>>
>> tw@tw-virtual-machine:/usr/local/share/uhd/images$ uhd_image_loader 
>> --args "type=n3xx,addr=172.37.104.131" --fpga-path=usrp_n310_fpga_HG.bit
>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; 
>> UHD_4.1.0.heads-v4.0.0.0-13-g240c7fdd
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
>> mgmt_addr=172.37.104.131,type=n3xx,product=n310,serial=316CD05,fpga=HG,claimed=False,skip_init=1
>> [INFO] [MPMD] Claimed device without full initialization.
>> [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
>> [INFO] [MPM.PeriphManager] Installing component `fpga'
>> [INFO] [MPM.PeriphManager] Installing component `dts'
>> [INFO] [MPM.RPCServer] Resetting peripheral manager.
>> [INFO] [MPM.PeriphManager] Device serial number: 316CD05
>> [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
>> [INFO] [MPM.PeriphManager] init() called with device args 
>> `clock_source=internal,time_source=internal'.
>> [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
>> [WARNING] [MPM.PeriphManager.UDP.UDP] No internal interface to 
>> forward CHDR packets to from eth0.
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
>> mgmt_addr=172.37.104.131,type=n3xx,product=n310,serial=316CD05,fpga=HG,claimed=False,addr=172.37.104.131,find_all=1
>> [WARNING] [UDP] The recv buffer could not be resized sufficiently.
>> Target sock buff size: 2500000 bytes.
>> Actual sock buff size: 212992 bytes.
>> See the transport application notes on buffer resizing.
>> Please run: sudo sysctl -w net.core.rmem_max=2500000
>> [WARNING] [UDP] The send buffer could not be resized sufficiently.
>> Target sock buff size: 2500000 bytes.
>> Actual sock buff size: 212992 bytes.
>> See the transport application notes on buffer resizing.
>> Please run: sudo sysctl -w net.core.wmem_max=2500000
>> [WARNING] [UDP] The current recv_buff_size of 212992 is less than the 
>> minimum recommended size of 816000 and may result in dropped packets 
>> on some NICs
>> [WARNING] [UDP] The current send_buff_size of 212992 is less than the 
>> minimum recommended size of 307200 and may result in dropped packets 
>> on some NICs
>> [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. 
>> EnvironmentError: IOError: recv error on socket: Connection refused
>> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: 
>> EnvironmentError: IOError: recv error on socket: Connection refused
>> [INFO] [MPM.PeriphManager] init() called with device args 
>> `find_all=1,fpga=HG,mgmt_addr=172.37.104.131,product=n310,clock_source=internal,time_source=internal'.
>> [WARNING] [MPM.PeriphManager.UDP.UDP] No internal interface to 
>> forward CHDR packets to from eth0.
>> Error: RuntimeError: Failure to create rfnoc_graph.
>>
>>
> You have you used a USRP device successfully on your host PC before?  
> I wonder if your firewall is blocking packets to/from UDP 49152?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com 
> <mailto:usrp-users@lists.ettus.com>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com 
> <mailto:usrp-users-leave@lists.ettus.com>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com 
> <mailto:usrp-users@lists.ettus.com>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com 
> <mailto:usrp-users-leave@lists.ettus.com>


--------------070408020308080106070600
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/09/2021 12:11 PM, Tellrell White
      wrote:<br>
    </div>
    <blockquote cite=3D"mid:67539975.406248.1628525463281@mail.yahoo.com"
      type=3D"cite">
      <div class=3D"ydpccf5363eyahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Also, I should have mentio=
ned
          that I'm connected to the device via the console JTAG
          interface, however, I believe this interface may only be for
          command and control of the N310. Unfortunately, I don't have
          an SFP adapter so I've been trying to load the FPGA image onto
          the device using JTAG and I believe this can only successfully
          be done using the SFP port. Can someone confirm this for me. <b=
r>
        </div>
      </div>
      <div id=3D"yahoo_quoted_8874763480" class=3D"yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Monday, August 9, 2021, 9:58:15 AM EDT, Tellrell
            White via USRP-users <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a=
>
            wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    The JTAG interface or the RJ-45 management port?<br>
    <br>
    You should be able to load images just fine on that RJ-45 port.=C2=A0=
 The
    JTAG interface is something else entirely.<br>
    <br>
    <br>
    <blockquote cite=3D"mid:67539975.406248.1628525463281@mail.yahoo.com"
      type=3D"cite">
      <div id=3D"yahoo_quoted_8874763480" class=3D"yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div>
            <div id=3D"yiv5011282540">
              <div>
                <div class=3D"yiv5011282540ydp2559e301yahoo-style-wrap"
                  style=3D"font-family:Helvetica Neue, Helvetica, Arial,
                  sans-serif;font-size:13px;">
                  <div><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">Marcus</div>
                  <div dir=3D"ltr">No, I haven't. This is a new VM I
                    created running Ubuntu 18.04. Checking to see if
                    there's an active firewall results in the following:
                    <br clear=3D"none">
                  </div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">
                    <div>tw@tw-virtual-machine:~/uhd$ sudo ufw status<br
                        clear=3D"none">
                      Status: inactive<br clear=3D"none">
                      <br clear=3D"none">
                    </div>
                    <div><br clear=3D"none">
                    </div>
                  </div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                </div>
                <div class=3D"yiv5011282540yahoo_quoted"
                  id=3D"yiv5011282540yahoo_quoted_9129661450">
                  <div style=3D"font-family:'Helvetica Neue', Helvetica,
                    Arial, sans-serif;font-size:13px;color:#26282a;">
                    <div class=3D"yiv5011282540yqt8701757017"
                      id=3D"yiv5011282540yqt37084">
                      <div> On Monday, August 9, 2021, 9:18:04 AM EDT,
                        Marcus D. Leech <a class=3D"moz-txt-link-rfc2396E=
" href=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;=
</a>
                        wrote: </div>
                      <div><br clear=3D"none">
                      </div>
                      <div><br clear=3D"none">
                      </div>
                      <div>
                        <div id=3D"yiv5011282540">
                          <div>
                            <div class=3D"yiv5011282540yqt3811638609"
                              id=3D"yiv5011282540yqt03735">
                              <div class=3D"yiv5011282540moz-cite-prefix"=
>On
                                08/08/2021 10:45 PM, Tellrell White via
                                USRP-users wrote:<br clear=3D"none">
                              </div>
                              <blockquote type=3D"cite">
                                <div
                                  class=3D"yiv5011282540yahoo-style-wrap"
                                  style=3D"font-family:Helvetica Neue,
                                  Helvetica, Arial,
                                  sans-serif;font-size:13px;">
                                  <div dir=3D"ltr">Hello <br clear=3D"non=
e">
                                  </div>
                                  <div dir=3D"ltr">
                                    <div>I'm currently trying to update
                                      the default fpga image on a usrp
                                      n310 and I'm getting an error.
                                      This a print out <br clear=3D"none"=
>
                                    </div>
                                    <div><br clear=3D"none">
                                      <br clear=3D"none">
                                      tw@tw-virtual-machine:/usr/local/sh=
are/uhd/images$

                                      uhd_image_loader --args
                                      "type=3Dn3xx,addr=3D172.37.104.131"
                                      --fpga-path=3Dusrp_n310_fpga_HG.bit=
<br
                                        clear=3D"none">
                                      [INFO] [UHD] linux; GNU C++
                                      version 7.5.0; Boost_106501;
                                      UHD_4.1.0.heads-v4.0.0.0-13-g240c7f=
dd<br
                                        clear=3D"none">
                                      [INFO] [MPMD] Initializing 1
                                      device(s) in parallel with args:
mgmt_addr=3D172.37.104.131,type=3Dn3xx,product=3Dn310,serial=3D316CD05,fp=
ga=3DHG,claimed=3DFalse,skip_init=3D1<br
                                        clear=3D"none">
                                      [INFO] [MPMD] Claimed device
                                      without full initialization.<br
                                        clear=3D"none">
                                      [INFO] [MPMD IMAGE LOADER]
                                      Starting update. This may take a
                                      while.<br clear=3D"none">
                                      [INFO] [MPM.PeriphManager]
                                      Installing component `fpga'<br
                                        clear=3D"none">
                                      [INFO] [MPM.PeriphManager]
                                      Installing component `dts'<br
                                        clear=3D"none">
                                      [INFO] [MPM.RPCServer] Resetting
                                      peripheral manager.<br
                                        clear=3D"none">
                                      [INFO] [MPM.PeriphManager] Device
                                      serial number: 316CD05<br
                                        clear=3D"none">
                                      [INFO] [MPM.PeriphManager]
                                      Initialized 2 daughterboard(s).<br
                                        clear=3D"none">
                                      [INFO] [MPM.PeriphManager] init()
                                      called with device args
                                      `clock_source=3Dinternal,time_sourc=
e=3Dinternal'.<br
                                        clear=3D"none">
                                      [INFO] [MPMD IMAGE LOADER] Update
                                      component function succeeded.<br
                                        clear=3D"none">
                                      [WARNING]
                                      [MPM.PeriphManager.UDP.UDP] No
                                      internal interface to forward CHDR
                                      packets to from eth0.<br
                                        clear=3D"none">
                                      [INFO] [MPMD] Initializing 1
                                      device(s) in parallel with args:
mgmt_addr=3D172.37.104.131,type=3Dn3xx,product=3Dn310,serial=3D316CD05,fp=
ga=3DHG,claimed=3DFalse,addr=3D172.37.104.131,find_all=3D1<br
                                        clear=3D"none">
                                      [WARNING] [UDP] The recv buffer
                                      could not be resized sufficiently.<=
br
                                        clear=3D"none">
                                      Target sock buff size: 2500000
                                      bytes.<br clear=3D"none">
                                      Actual sock buff size: 212992
                                      bytes.<br clear=3D"none">
                                      See the transport application
                                      notes on buffer resizing.<br
                                        clear=3D"none">
                                      Please run: sudo sysctl -w
                                      net.core.rmem_max=3D2500000<br
                                        clear=3D"none">
                                      [WARNING] [UDP] The send buffer
                                      could not be resized sufficiently.<=
br
                                        clear=3D"none">
                                      Target sock buff size: 2500000
                                      bytes.<br clear=3D"none">
                                      Actual sock buff size: 212992
                                      bytes.<br clear=3D"none">
                                      See the transport application
                                      notes on buffer resizing.<br
                                        clear=3D"none">
                                      Please run: sudo sysctl -w
                                      net.core.wmem_max=3D2500000<br
                                        clear=3D"none">
                                      [WARNING] [UDP] The current
                                      recv_buff_size of 212992 is less
                                      than the minimum recommended size
                                      of 816000 and may result in
                                      dropped packets on some NICs<br
                                        clear=3D"none">
                                      [WARNING] [UDP] The current
                                      send_buff_size of 212992 is less
                                      than the minimum recommended size
                                      of 307200 and may result in
                                      dropped packets on some NICs<br
                                        clear=3D"none">
                                      [ERROR] [RFNOC::GRAPH] IO Error
                                      during GSM initialization.
                                      EnvironmentError: IOError: recv
                                      error on socket: Connection
                                      refused<br clear=3D"none">
                                      [ERROR] [RFNOC::GRAPH] Caught
                                      exception while initializing
                                      graph: EnvironmentError: IOError:
                                      recv error on socket: Connection
                                      refused<br clear=3D"none">
                                      [INFO] [MPM.PeriphManager] init()
                                      called with device args
`find_all=3D1,fpga=3DHG,mgmt_addr=3D172.37.104.131,product=3Dn310,clock_s=
ource=3Dinternal,time_source=3Dinternal'.<br
                                        clear=3D"none">
                                      [WARNING]
                                      [MPM.PeriphManager.UDP.UDP] No
                                      internal interface to forward CHDR
                                      packets to from eth0.<br
                                        clear=3D"none">
                                      Error: RuntimeError: Failure to
                                      create rfnoc_graph.<br
                                        clear=3D"none">
                                      <br clear=3D"none">
                                    </div>
                                  </div>
                                  <br clear=3D"none">
                                </div>
                              </blockquote>
                            </div>
                            You have you used a USRP device successfully
                            on your host PC before?=C2=A0 I wonder if you=
r
                            firewall is blocking packets to/from UDP
                            49152?<br clear=3D"none">
                            <br clear=3D"none">
                            <br clear=3D"none">
                          </div>
                        </div>
                        <div class=3D"yiv5011282540yqt3811638609"
                          id=3D"yiv5011282540yqt02357">__________________=
_____________________________<br
                            clear=3D"none">
                          USRP-users mailing list -- <a
                            moz-do-not-send=3D"true" rel=3D"nofollow
                            noopener noreferrer" shape=3D"rect"
                            ymailto=3D"mailto:usrp-users@lists.ettus.com"
                            target=3D"_blank"
                            href=3D"mailto:usrp-users@lists.ettus.com">us=
rp-users@lists.ettus.com</a><br
                            clear=3D"none">
                          To unsubscribe send an email to <a
                            moz-do-not-send=3D"true" rel=3D"nofollow
                            noopener noreferrer" shape=3D"rect"
                            ymailto=3D"mailto:usrp-users-leave@lists.ettu=
s.com"
                            target=3D"_blank"
                            href=3D"mailto:usrp-users-leave@lists.ettus.c=
om">usrp-users-leave@lists.ettus.com</a><br
                            clear=3D"none">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class=3D"yqt8701757017" id=3D"yqt82341">________________=
_______________________________<br
                clear=3D"none">
              USRP-users mailing list -- <a moz-do-not-send=3D"true"
                shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.ettus.c=
om"
                href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lis=
ts.ettus.com</a><br
                clear=3D"none">
              To unsubscribe send an email to <a moz-do-not-send=3D"true"
                shape=3D"rect"
                ymailto=3D"mailto:usrp-users-leave@lists.ettus.com"
                href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-use=
rs-leave@lists.ettus.com</a><br
                clear=3D"none">
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------070408020308080106070600--

--===============5691103051840978885==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5691103051840978885==--
