Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E9A2549EB
	for <lists+usrp-users@lfdr.de>; Thu, 27 Aug 2020 17:53:33 +0200 (CEST)
Received: from [::1] (port=59158 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBKDN-00075P-TX; Thu, 27 Aug 2020 11:53:25 -0400
Received: from mail-qk1-f182.google.com ([209.85.222.182]:36212)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kBKDK-0006zp-GN
 for usrp-users@lists.ettus.com; Thu, 27 Aug 2020 11:53:22 -0400
Received: by mail-qk1-f182.google.com with SMTP id g26so6309391qka.3
 for <usrp-users@lists.ettus.com>; Thu, 27 Aug 2020 08:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=EeGA9HKkk+XH8cg0iIBS9xn888SxmjaCp+sGVPbHFJs=;
 b=kEuwagL55EFuw+9I5Q/z2rIHPvFlhPm4RmPi9E7wcFcATiBfJPSWrAj2Yza3pRU9ya
 JdAKKZGB3gY/AX3ODhuoYq9/Y5pUHVfvItAmvfKYSwSJl+iy6UckooNz0lGVDSJMZvCo
 4n0P4r3jGMk564muUaNFCK9O845+hykK5KNDqB6FONo3vjFB9raHwSAsuwlYIPnfcwIX
 3E00CPdf2ke3rHTCIW/b5SCMPX0zpbf++xjjA75a22PpsPGTHsHd2hQaTSILdGdkvmIe
 FcilYM2fhsck6vG0ck+qiNVtcdCzKFRa4GnCJPn6NIxNJCyAvqxnya4QmXHvK6DmMa1h
 zFyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=EeGA9HKkk+XH8cg0iIBS9xn888SxmjaCp+sGVPbHFJs=;
 b=LEWIpKAQCnega75ZuBiR8fWvpD8/+NoRVfgMReGOiG9/+NOUmM1wDnkD4Kpr4/ot+r
 b2h0uQ7cJjlHFJvuKH4xI5GQUUhtZj3SOSeuLScY0e+IjnMHZBL2HheiW1J3MPr6llvg
 pDS2XwEkm4CDSCH0D+Am47LTgkrTrAXks/BQSFmbhCizhD/biCC5eD9QBAumTb2D2aFz
 ZMcoxYE3z0obOyrEnaUen7ztl2JJ3B7xM5gpZIckm7TYZKbDfFDZ3KNcYCTUtp50HPkG
 NFOHws7mDieBCLWTDeI+eGl7sN6LZTc+4Oe0trMctLpXmPVAKT7fwrB/0ifvEuNXEUHX
 yLnw==
X-Gm-Message-State: AOAM531unJ1w2HChwpcbkIRxHYLYPTQ7zXQwg6qI0yVkuUKu0FT2Qxvm
 D/ywd0C/XeV1OmYuN+hkJwoyx7QUtS71AQ==
X-Google-Smtp-Source: ABdhPJyGkMyQ7JnG6pojAU4Lje9dwRWOFMsmBiIDpA/dfht5N+nPj0QO1mJlRJmTcc+S8GAP5mJkng==
X-Received: by 2002:a05:620a:9c6:: with SMTP id
 y6mr5535127qky.392.1598543561689; 
 Thu, 27 Aug 2020 08:52:41 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id w32sm2218606qtw.66.2020.08.27.08.52.40
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Aug 2020 08:52:41 -0700 (PDT)
Message-ID: <5F47D6C0.4060803@gmail.com>
Date: Thu, 27 Aug 2020 11:52:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAPRRyxupfiy8YpfrZR_xfAq4jQdhQq-JaaF_CUK3B6X820F6=g@mail.gmail.com>
 <CAPRRyxtZ1D_d2T=xYqZqMdWKaTvc4S9GrmpJx5p6rWavJFRQYg@mail.gmail.com>
 <CAGNhwTPfvjBumJN2fNghdYgpQuaH0UJJb2_CEcUBT-ucfhbhNw@mail.gmail.com>
 <CAPRRyxsCc2uFOghYQKYh4aS--fOVTr2LcE4ojNG-gDNjYJvtew@mail.gmail.com>
 <CAGNhwTN4J+f02kmB3jU5E9nhz_j69PW8yY-pw=jgVmzhNX4nhQ@mail.gmail.com>
 <CAPRRyxvfdfuxsLP+SQ__S5_ZXqHZohwqgfuhEPffznxaP5TuAw@mail.gmail.com>
 <CAGNhwTMB-xmiC8_T_9h3rtOP+=oQdxXr30D+hhos7Xo_3_xZPg@mail.gmail.com>
 <CAPRRyxumHkxt1TpnhdSpyhecsVPhJhfoe3MszwMzsKWB35-GMw@mail.gmail.com>
 <CAGNhwTM5LE_u-p-cmUGCDTu0pfZOpOrFaxKGyxZcX3Asn+u52w@mail.gmail.com>
 <CAPRRyxtXaZonYzsaGq=xGnO9zbptyt4Mse-Oh4zNbtNxv4HqhQ@mail.gmail.com>
 <CAGNhwTOwsP6BaseXkPayMg6yQVY-P3SEF-k56X-CE1fgDNqo_g@mail.gmail.com>
 <CAPRRyxsWsqbQtYRfVL99Oez0Vkp-+=sktsGmsd1ZDg8oDpAW5w@mail.gmail.com>
 <CAGNhwTNboTno3Ok6=k1HfZ=g=OpYW3_4k0DpHZ+frDAHVV9s1A@mail.gmail.com>
 <CAPRRyxtyuiCF4ikKZsz8T-gNSmfWC0BBEgVA6ypEEEbN=2Y-4g@mail.gmail.com>
In-Reply-To: <CAPRRyxtyuiCF4ikKZsz8T-gNSmfWC0BBEgVA6ypEEEbN=2Y-4g@mail.gmail.com>
Subject: Re: [USRP-users] GPIO setup via gnuradio
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
Content-Type: multipart/mixed; boundary="===============7260048428411028071=="
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
--===============7260048428411028071==
Content-Type: multipart/alternative;
 boundary="------------090802030300080805050504"

This is a multi-part message in MIME format.
--------------090802030300080805050504
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 08/27/2020 08:20 AM, Ivan Zahartchuk via USRP-users wrote:
> Hi there. My problem is that even after calibration I can clearly see 
> the mirror channel on my USRP N 210 with SBX. Maybe someone will tell 
> you how to solve this problem. This problem is observed on several 
> boards and different boards.
What version of UHD?

How are you running the calibration tools?

Looks like the image suppression is only about 20dB, which I *think* is 
poorer than the algorithms can achieve (it has been a while since I looked
   at this).


>
> вт, 16 июн. 2020 г. в 17:28, Michael Dickens 
> <michael.dickens@ettus.com <mailto:michael.dickens@ettus.com>>:
>
>     Hi Ivan - OK; so you got the GRC <-> GR <-> UHD <-> GPIO access to
>     work? Well done!
>
>     As for your next question about tuning times: the E313 is the same
>     as an E310 in terms of the USRP part. Here's my understanding:
>
>     Tuning times if the frequencies do not require changing out a RX
>     filter should be around 25 ms; jumping between RX filters should
>     be more like 125 ms; we use a different "RX filter" for each
>     different frequency range. These are -very- typical tuning times
>     for the E31x series; actually, this is true for most of our USRPs
>     except the N3xy series which are intentionally designed with fast
>     frequency switching in mind (among other attributes).
>
>     In theory one could speed up tuning via FPGA code. I'm not an FPGA
>     programmer, so I don't know how to do this nor the complexity of
>     doing so -- just that in theory it could be done for specific user
>     needs.
>
>     I hope this is useful! - MLD
>     ---
>     Michael Dickens
>     Ettus Research Technical Support
>     Email: support@ettus.com <mailto:support@ettus.com>
>     Web: https://ettus.com/
>
>
>     On Tue, Jun 16, 2020 at 6:39 AM Ivan Zahartchuk
>     <adray0001@gmail.com <mailto:adray0001@gmail.com>> wrote:
>
>           Hello. I nevertheless got to work and equipment and
>         everything worked out for me. Gpio works. It turns out that in
>         theory, you can connect to it through dev as well as to the
>         gps receiver. I have one more question for you. I plan to also
>         use the E313 as a frequency tunable scanning receiver. But as
>         far as I was written before (and I was convinced of this
>         myself) that the frequency tuning is slow due to the
>         configuration of the filters on the board. Tell me how can I
>         get around this and speed up the scan. I want to achieve a
>         speed of at least 1ms at 50 MHz and the frequency tuning
>         itself in the E310 takes about 100 ms.
>
>         пт, 29 мая 2020 г. в 23:28, Michael Dickens
>         <michael.dickens@ettus.com <mailto:michael.dickens@ettus.com>>:
>
>             Hi Ivan - It was a crazy week for me; I still don't even
>             have the required software installed; putting out so many
>             fires I can't count them any longer! I sincerely hope next
>             week is less stressful, and I can make progress on getting
>             things installed. Have you made any progress on your end?
>             Cheers & happy weekend again! - MLD
>             ---
>             Michael Dickens
>             Ettus Research Technical Support
>             Email: support@ettus.com <mailto:support@ettus.com>
>             Web: https://ettus.com/
>
>
>             On Mon, May 25, 2020 at 6:36 PM Ivan Zahartchuk
>             <adray0001@gmail.com <mailto:adray0001@gmail.com>> wrote:
>
>                   Hello. There are no changes so far. There is no way
>                 to get to the equipment. Waiting for your feedback on
>                 the code. Have a nice weekend))))
>
>                 вт, 19 мая 2020 г. в 00:19, Michael Dickens
>                 <michael.dickens@ettus.com
>                 <mailto:michael.dickens@ettus.com>>:
>
>                     HI Ivan - Happy Monday! I hope you had a good
>                     weekend. I took an extra part day off on both
>                     ends, which made for a lovely elongated time. I'll
>                     take a look at your code shortly; I'm moving
>                     between computers, so I'll need to create the UHD
>                     3.15.0.0 + GR 3.7.14.0 Release + gr-ettus master
>                     installs for testing this. Always a good time
>                     getting a new computer, but it does take time to
>                     set it up reasonably well! Any updates on your
>                     end? - MLD
>                     ---
>                     Michael Dickens
>                     Ettus Research Technical Support
>                     Email: support@ettus.com <mailto:support@ettus.com>
>                     Web: https://ettus.com/
>
>
>                     On Fri, May 15, 2020 at 9:46 AM Ivan Zahartchuk
>                     <adray0001@gmail.com <mailto:adray0001@gmail.com>>
>                     wrote:
>
>                         Thanks for your support. The archive has a
>                         file for USRP E310 and for PC. For now, I'm
>                         just sending a request via gnuradio using the
>                         slider. I just have not figured out
>                         get_gpio_attr but the fact that the values
>                         change there gives me hope that this works.
>
>                         пт, 15 мая 2020 г. в 00:09, Michael Dickens
>                         <michael.dickens@ettus.com
>                         <mailto:michael.dickens@ettus.com>>:
>
>                             That's some positive progress, Ivan! Do
>                             you have any code you can pass on to me to
>                             try? I have a variety of USRPs around that
>                             should be usable with GPIO; doesn't need
>                             to be an E310 specifically (that's what my
>                             notes tell me you're using ... yes?). I
>                             also have both UHD 3.15.0.0 and the
>                             3.15.LTS branch available for testing. - MLD
>                             ---
>                             Michael Dickens
>                             Ettus Research Technical Support
>                             Email: support@ettus.com
>                             <mailto:support@ettus.com>
>                             Web: https://ettus.com/
>
>
>                             On Thu, May 14, 2020 at 3:50 PM Ivan
>                             Zahartchuk <adray0001@gmail.com
>                             <mailto:adray0001@gmail.com>> wrote:
>
>                                 Hello. Yes, I have advanced in this direction. Indeed, I figured out a bit with GPIO. The idea is to initialize usrp_source earlier than the RFNoC block (I don’t know what this is related to), and then I avoid the error and in theory I have the same access to gpio. But when calling the get_gpio_banks command. “FP0” is returned to me and not “INTO”; I have not yet carried out any further experiments in connection with quarantine.
>
>
>                                 чт, 14 мая 2020 г. в 22:29, Michael
>                                 Dickens <michael.dickens@ettus.com
>                                 <mailto:michael.dickens@ettus.com>>:
>
>                                     Hi Ivan - I'm glad to hear you got
>                                     the firmware / FPGA images sorted
>                                     out. That's really quite
>                                     something! I'll need to do some
>                                     playing around with how to do GPIO
>                                     in UHD C++. I'm confident there's
>                                     a way ... just need the right
>                                     "special sauce" if you know what I
>                                     mean. Maybe you've made progress
>                                     on this end? - MLD
>                                     ---
>                                     Michael Dickens
>                                     Ettus Research Technical Support
>                                     Email: support@ettus.com
>                                     <mailto:support@ettus.com>
>                                     Web: https://ettus.com/
>
>
>                                     On Mon, May 11, 2020 at 4:04 PM
>                                     Ivan Zahartchuk
>                                     <adray0001@gmail.com
>                                     <mailto:adray0001@gmail.com>> wrote:
>
>                                         If I understand you correctly,
>                                         then I need to create another
>                                         block uhd
>                                         self.uhd_usrp_source =
>                                         uhd.usrp_source (         ",".
>                                         join (("", "")),
>                                                 uhd.stream_args (
>                                                 cpu_format = "fc32",
>                                                 channels = range (1),
>                                                 ),         )
>                                         so I created it. But I don’t
>                                         understand how it works since
>                                         I don’t connect it anywhere
>                                         and I get an error
>                                          [WARNING] [RFNOC] [legacy
>                                         compat] Not enough FIFO ports
>                                         to connect, not all TX sinks
>                                         will be connected [WARNING]
>                                         [RFNOC] [legacy_compat] No
>                                         DDCs detected. You will only
>                                         be able to receive at the
>                                         radio frontend rate. [WARNING]
>                                         [RFNOC] [legacy_compat] No
>                                         DUCs detected. You will only
>                                         be able to transmit at the
>                                         radio frontend rate. [WARNING]
>                                         [RFNOC] Assuming max packet
>                                         size for 0 / Radio_0 thread
>                                         [thread-per-block [0]: <block
>                                         uhd_rfnoc_FIFO (7)>]:
>                                         RuntimeError: On node 0 /
>                                         FIFO_0, output port 0 is
>                                         already connected.
>                                          If somewhere there are
>                                         examples of how to get to gpio
>                                         correctly, I would be very
>                                         grateful if you would provide
>                                         them to me. I figured out the
>                                         FPGA firmware and now the only
>                                         problem is gpio.
>
>                                         пн, 11 мая 2020 г. в 17:58,
>                                         Michael Dickens
>                                         <michael.dickens@ettus.com
>                                         <mailto:michael.dickens@ettus.com>>:
>
>                                             Hi Ivan - I was out last
>                                             week; here now for a few
>                                             days. Please keep
>                                             support@ettus.com
>                                             <mailto:support@ettus.com>
>                                             on CC so that someone
>                                             there can try to help you
>                                             when I'm away.
>
>                                             Here's a summary of the
>                                             discussion with the Ettus
>                                             R&D person I spoke with
>                                             about accessing the GPIO
>                                             via GRC: you have to
>                                             create a UHD USRP
>                                             Source/Sink object, then
>                                             you use it to access the
>                                             underlying C++ USRP object
>                                             (via Python) to obtain the
>                                             GPIO API. You can't access
>                                             the UHD GPIO API from
>                                             RFNoC blocks; there is no
>                                             USRP object to provide access.
>
>                                             Are you still having
>                                             issues with the FPGA
>                                             creation? If so, please
>                                             update me on where you're
>                                             at and I'll do what I can
>                                             to help. - MLD
>                                             ---
>                                             Michael Dickens
>                                             Ettus Research Technical
>                                             Support
>                                             Email: support@ettus.com
>                                             <mailto:support@ettus.com>
>                                             Web: https://ettus.com/
>
>
>                                             On Thu, May 7, 2020 at
>                                             7:38 AM Ivan Zahartchuk
>                                             <adray0001@gmail.com
>                                             <mailto:adray0001@gmail.com>>
>                                             wrote:
>
>                                                 Hello. Sorry to bother
>                                                 you so often. But I
>                                                 really want to
>                                                 understand this board
>                                                 and firmware. I solved
>                                                 the problem with the
>                                                 fact that I did not
>                                                 create an image for
>                                                 FPGA. The problem was
>                                                 that at startup, the
>                                                 rfnoc_ce_auto_inst_e31x.v
>                                                 configuration file is
>                                                 created, which also
>                                                 tells which blocks to
>                                                 compile for VIvado.
>                                                 But the next time you
>                                                 call
>                                                 ./uhd_image_builder,
>                                                 this file is not
>                                                 replaced with a new
>                                                 one, but the
>                                                 rfnoc_ce_auto_inst_e310.v
>                                                 file is created, which
>                                                 does not participate
>                                                 in further work. But I
>                                                 also had questions
>                                                 about the GPIO.
>
>                                                 вс, 3 мая 2020 г. в
>                                                 14:09, Ivan Zahartchuk
>                                                 <adray0001@gmail.com
>                                                 <mailto:adray0001@gmail.com>>:
>
>                                                     Hello. Your
>                                                     colleagues haven’t
>                                                     answered anything
>                                                     yet? Tell me,
>                                                     could you generate
>                                                     firmware for RFNoC
>                                                     and drop it to me.
>                                                     Sorry to ask a
>                                                     lot, I just can
>                                                     not test the error
>                                                     with generating a
>                                                     bit file for FPGA
>                                                     differently.
>
>                                                     ср, 29 апр. 2020
>                                                     г. в 08:11, Ivan
>                                                     Zahartchuk
>                                                     <adray0001@gmail.com
>                                                     <mailto:adray0001@gmail.com>>:
>
>                                                         Thanks! I
>                                                         found out that
>                                                         the problem in
>                                                         the firmware
>                                                         comes from
>                                                         applications
>                                                         for creating
>                                                         this firmware.
>                                                         After opening
>                                                         the firmware
>                                                         using Vivado,
>                                                         I found in it
>                                                         the same FIR
>                                                         block that I
>                                                         did not add
>                                                         there. Perhaps
>                                                         this is due to
>                                                         the fact that
>                                                         I installed
>                                                         the wrong
>                                                         version of
>                                                         Vivado.
>                                                         Because I also
>                                                         don’t generate
>                                                         the dts file
>                                                         that is needed
>                                                         for firmware.
>                                                         I installed
>                                                         Vivado 18.3 HL
>                                                         System Edition.
>
>                                                         ср, 29 апр.
>                                                         2020 г. в
>                                                         00:12, Michael
>                                                         Dickens
>                                                         <michael.dickens@ettus.com
>                                                         <mailto:michael.dickens@ettus.com>>:
>
>                                                             Hi Ivan -
>                                                             Let me
>                                                             discuss
>                                                             your query
>                                                             with the
>                                                             Ettus R&D
>                                                             guy who
>                                                             handles
>                                                             gr-uhd.
>                                                             Hopefully
>                                                             he'll be
>                                                             able to
>                                                             clarify
>                                                             your
>                                                             query. - MLD
>                                                             ---
>                                                             Michael
>                                                             Dickens
>                                                             Ettus
>                                                             Research
>                                                             Technical
>                                                             Support
>                                                             Email:
>                                                             support@ettus.com
>                                                             <mailto:support@ettus.com>
>                                                             Web:
>                                                             https://ettus.com/
>
>
>                                                             On Mon,
>                                                             Apr 27,
>                                                             2020 at
>                                                             7:59 PM
>                                                             Ivan
>                                                             Zahartchuk
>                                                             <adray0001@gmail.com
>                                                             <mailto:adray0001@gmail.com>>
>                                                             wrote:
>
>                                                                 Unfortunately for all this time I have not come a step closer to solving my problems. I don’t know how to solve the problem with flashing fpga.
>                                                                 I even reinstalled ubuntu but it did not help. The only assumption is that the board has its own memory that is not erased after overwriting the SD card. But this is also doubtful.
>                                                                 In addition, I still didn’t get to switch to the GPIO through the RFNoC block and I am thinking about returning to version 3.14. But honestly I would like to deal with this version.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------090802030300080805050504
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/27/2020 08:20 AM, Ivan Zahartchuk
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAPRRyxtyuiCF4ikKZsz8T-gNSmfWC0BBEgVA6ypEEEbN=2Y-4g@mail.gmail.com"
      type="cite">
      <div dir="ltr"><span class="gmail-tlid-translation
          gmail-translation" lang="en"><span title="">Hi there.</span> <span
            title="">My problem is that even after calibration I can
            clearly see the mirror channel on my USRP N 210 with SBX.</span>
          <span title="" class="gmail-">Maybe someone will tell you how
            to solve this problem.</span> <span title="" class="gmail-">This
            problem is observed on several boards and different boards.</span></span></div>
    </blockquote>
    What version of UHD?<br>
    <br>
    How are you running the calibration tools?<br>
    <br>
    Looks like the image suppression is only about 20dB, which I *think*
    is poorer than the algorithms can achieve (it has been a while since
    I looked<br>
      at this).<br>
    <br>
    <br>
    <blockquote
cite="mid:CAPRRyxtyuiCF4ikKZsz8T-gNSmfWC0BBEgVA6ypEEEbN=2Y-4g@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">вт, 16 июн. 2020 г. в 17:28,
          Michael Dickens &lt;<a moz-do-not-send="true"
            href="mailto:michael.dickens@ettus.com">michael.dickens@ettus.com</a>&gt;:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">Hi Ivan - OK; so you got the GRC &lt;-&gt; GR
            &lt;-&gt; UHD &lt;-&gt; GPIO access to work? Well done!
            <div><br>
            </div>
            <div>As for your next question about tuning times: the E313
              is the same as an E310 in terms of the USRP part. Here's
              my understanding:</div>
            <div><br>
            </div>
            <div>Tuning times if the frequencies do not require changing
              out a RX filter should be around 25 ms; jumping between RX
              filters should be more like 125 ms; we use a different "RX
              filter" for each different frequency range. These are
              -very- typical tuning times for the E31x series; actually,
              this is true for most of our USRPs except the N3xy series
              which are intentionally designed with fast frequency
              switching in mind (among other attributes).</div>
            <div><br>
            </div>
            <div>In theory one could speed up tuning via FPGA code. I'm
              not an FPGA programmer, so I don't know how to do this nor
              the complexity of doing so -- just that in theory it could
              be done for specific user needs.</div>
            <div><br>
            </div>
            <div>I hope this is useful! - MLD<br clear="all">
              <div>
                <div dir="ltr">
                  <div dir="ltr">
                    <div>
                      <div dir="ltr">
                        <div>
                          <div dir="ltr">
                            <div>
                              <div dir="ltr">
                                <div>
                                  <div dir="ltr">---</div>
                                  <div dir="ltr">Michael Dickens<br>
                                    Ettus Research Technical Support<br>
                                    Email: <a moz-do-not-send="true"
                                      href="mailto:support@ettus.com"
                                      target="_blank">support@ettus.com</a><br>
                                    Web: <a moz-do-not-send="true"
                                      href="https://ettus.com/"
                                      target="_blank">https://ettus.com/</a></div>
                                </div>
                              </div>
                            </div>
                          </div>
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
            <div dir="ltr" class="gmail_attr">On Tue, Jun 16, 2020 at
              6:39 AM Ivan Zahartchuk &lt;<a moz-do-not-send="true"
                href="mailto:adray0001@gmail.com" target="_blank">adray0001@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div dir="ltr">  Hello. I nevertheless got to work and
                equipment and everything worked out for me. Gpio works.
                It turns out that in theory, you can connect to it
                through dev as well as to the gps receiver. I have one
                more question for you. I plan to also use the E313 as a
                frequency tunable scanning receiver. But as far as I was
                written before (and I was convinced of this myself) that
                the frequency tuning is slow due to the configuration of
                the filters on the board. Tell me how can I get around
                this and speed up the scan. I want to achieve a speed of
                at least 1ms at 50 MHz and the frequency tuning itself
                in the E310 takes about 100 ms.  <br>
              </div>
              <br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">пт, 29 мая 2020 г. в
                  23:28, Michael Dickens &lt;<a moz-do-not-send="true"
                    href="mailto:michael.dickens@ettus.com"
                    target="_blank">michael.dickens@ettus.com</a>&gt;:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div dir="ltr">Hi Ivan - It was a crazy week for me; I
                    still don't even have the required
                    software installed; putting out so many fires I
                    can't count them any longer! I sincerely hope next
                    week is less stressful, and I can make progress on
                    getting things installed. Have you made any progress
                    on your end? Cheers &amp; happy weekend again! - MLD<br
                      clear="all">
                    <div>
                      <div dir="ltr">
                        <div dir="ltr">
                          <div>
                            <div dir="ltr">
                              <div>
                                <div dir="ltr">
                                  <div>
                                    <div dir="ltr">
                                      <div>
                                        <div dir="ltr">---</div>
                                        <div dir="ltr">Michael Dickens<br>
                                          Ettus Research Technical
                                          Support<br>
                                          Email: <a
                                            moz-do-not-send="true"
                                            href="mailto:support@ettus.com"
                                            target="_blank">support@ettus.com</a><br>
                                          Web: <a
                                            moz-do-not-send="true"
                                            href="https://ettus.com/"
                                            target="_blank">https://ettus.com/</a></div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <br>
                  </div>
                  <br>
                  <div class="gmail_quote">
                    <div dir="ltr" class="gmail_attr">On Mon, May 25,
                      2020 at 6:36 PM Ivan Zahartchuk &lt;<a
                        moz-do-not-send="true"
                        href="mailto:adray0001@gmail.com"
                        target="_blank">adray0001@gmail.com</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class="gmail_quote" style="margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">
                      <div dir="ltr">  Hello. There are no changes so
                        far. There is no way to get to the equipment.
                        Waiting for your feedback on the code. Have a
                        nice weekend))))  </div>
                      <br>
                      <div class="gmail_quote">
                        <div dir="ltr" class="gmail_attr">вт, 19 мая
                          2020 г. в 00:19, Michael Dickens &lt;<a
                            moz-do-not-send="true"
                            href="mailto:michael.dickens@ettus.com"
                            target="_blank">michael.dickens@ettus.com</a>&gt;:<br>
                        </div>
                        <blockquote class="gmail_quote"
                          style="margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">
                          <div dir="ltr">HI Ivan - Happy Monday! I
                            hope you had a good weekend. I took an extra
                            part day off on both ends, which made for a
                            lovely elongated time. I'll take a look at
                            your code shortly; I'm moving between
                            computers, so I'll need to create the UHD
                            3.15.0.0 + GR 3.7.14.0 Release + gr-ettus
                            master installs for testing this. Always a
                            good time getting a new computer, but it
                            does take time to set it up reasonably well!
                            Any updates on your end? - MLD<br
                              clear="all">
                            <div>
                              <div dir="ltr">
                                <div dir="ltr">
                                  <div>
                                    <div dir="ltr">
                                      <div>
                                        <div dir="ltr">
                                          <div>
                                            <div dir="ltr">
                                              <div>
                                                <div dir="ltr">---</div>
                                                <div dir="ltr">Michael
                                                  Dickens<br>
                                                  Ettus Research
                                                  Technical Support<br>
                                                  Email: <a
                                                    moz-do-not-send="true"
href="mailto:support@ettus.com" target="_blank">support@ettus.com</a><br>
                                                  Web: <a
                                                    moz-do-not-send="true"
href="https://ettus.com/" target="_blank">https://ettus.com/</a></div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <br>
                          </div>
                          <br>
                          <div class="gmail_quote">
                            <div dir="ltr" class="gmail_attr">On Fri,
                              May 15, 2020 at 9:46 AM Ivan Zahartchuk
                              &lt;<a moz-do-not-send="true"
                                href="mailto:adray0001@gmail.com"
                                target="_blank">adray0001@gmail.com</a>&gt;
                              wrote:<br>
                            </div>
                            <blockquote class="gmail_quote"
                              style="margin:0px 0px 0px
                              0.8ex;border-left:1px solid
                              rgb(204,204,204);padding-left:1ex">
                              <div dir="ltr">Thanks for your support.
                                The archive has a file for USRP E310 and
                                for PC. For now, I'm just sending a
                                request via gnuradio using the slider. I
                                just have not figured out get_gpio_attr
                                but the fact that the values change
                                there gives me hope that this works.<br>
                              </div>
                              <br>
                              <div class="gmail_quote">
                                <div dir="ltr" class="gmail_attr">пт, 15
                                  мая 2020 г. в 00:09, Michael Dickens
                                  &lt;<a moz-do-not-send="true"
                                    href="mailto:michael.dickens@ettus.com"
                                    target="_blank">michael.dickens@ettus.com</a>&gt;:<br>
                                </div>
                                <blockquote class="gmail_quote"
                                  style="margin:0px 0px 0px
                                  0.8ex;border-left:1px solid
                                  rgb(204,204,204);padding-left:1ex">
                                  <div dir="ltr">That's some positive
                                    progress, Ivan! Do you have any code
                                    you can pass on to me to try? I have
                                    a variety of USRPs around that
                                    should be usable with GPIO; doesn't
                                    need to be an E310 specifically
                                    (that's what my notes tell me you're
                                    using ... yes?). I also have both
                                    UHD 3.15.0.0 and the 3.15.LTS branch
                                    available for testing. - MLD<br
                                      clear="all">
                                    <div>
                                      <div dir="ltr">
                                        <div dir="ltr">
                                          <div>
                                            <div dir="ltr">
                                              <div>
                                                <div dir="ltr">
                                                  <div>
                                                    <div dir="ltr">
                                                      <div>
                                                        <div dir="ltr">---</div>
                                                        <div dir="ltr">Michael
                                                          Dickens<br>
                                                          Ettus Research
                                                          Technical
                                                          Support<br>
                                                          Email: <a
                                                          moz-do-not-send="true"
href="mailto:support@ettus.com" target="_blank">support@ettus.com</a><br>
                                                          Web: <a
                                                          moz-do-not-send="true"
href="https://ettus.com/" target="_blank">https://ettus.com/</a></div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <br>
                                  </div>
                                  <br>
                                  <div class="gmail_quote">
                                    <div dir="ltr" class="gmail_attr">On
                                      Thu, May 14, 2020 at 3:50 PM Ivan
                                      Zahartchuk &lt;<a
                                        moz-do-not-send="true"
                                        href="mailto:adray0001@gmail.com"
                                        target="_blank">adray0001@gmail.com</a>&gt;
                                      wrote:<br>
                                    </div>
                                    <blockquote class="gmail_quote"
                                      style="margin:0px 0px 0px
                                      0.8ex;border-left:1px solid
                                      rgb(204,204,204);padding-left:1ex">
                                      <div dir="ltr">
                                        <div
id="gmail-m_-365934121322736913gmail-m_3053749019241539358gmail-m_838044723809316699gmail-m_-3022953311440817250gmail-m_2535866332927259255gmail-m_-1151591874624397141gmail-m_-1668025680000192425gmail-m_-8472392558182387111gmail-tw-target-text-container"
                                          style="overflow:hidden;outline:currentcolor
                                          none 0px">
                                          <pre id="gmail-m_-365934121322736913gmail-m_3053749019241539358gmail-m_838044723809316699gmail-m_-3022953311440817250gmail-m_2535866332927259255gmail-m_-1151591874624397141gmail-m_-1668025680000192425gmail-m_-8472392558182387111gmail-tw-target-text" dir="ltr" style="unicode-bidi:isolate;line-height:36px;background-color:transparent;border:medium none;padding:2px 0.14em 2px 0px;overflow:hidden;width:277px;white-space:pre-wrap"><span lang="en"><font face="georgia, serif">Hello. Yes, I have advanced in this direction. Indeed, I figured out a bit with GPIO. The idea is to initialize usrp_source earlier than the RFNoC block (I don’t know what this is related to), and then I avoid the error and in theory I have the same access to gpio. But when calling the get_gpio_banks command. “FP0” is returned to me and not “INTO”; I have not yet carried out any further experiments in connection with quarantine.</font></span></pre>
                                        </div>
                                        <div
                                          style="display:flex;width:309px;height:48px">
                                          <div
                                            style="display:flex;margin:0px
                                            11px">
                                            <div><span
                                                style="outline:currentcolor
                                                none
                                                0px;display:inline-block">
                                                <div
style="opacity:0.74;color:rgb(0,0,0);font-size:12px;font-style:italic;height:26px;line-height:26px;min-width:26px;padding:11px"><span
style="display:inline-block;vertical-align:text-bottom;padding-left:5px"></span><span
style="display:inline-block;word-break:break-all"></span></div>
                                              </span></div>
                                          </div>
                                          <div
id="gmail-m_-365934121322736913gmail-m_3053749019241539358gmail-m_838044723809316699gmail-m_-3022953311440817250gmail-m_2535866332927259255gmail-m_-1151591874624397141gmail-m_-1668025680000192425gmail-m_-8472392558182387111gmail-tw-tmenu"
style="display:inline-block;line-height:normal;white-space:nowrap"><span
style="display:inline-block"><span style="display:inline-block"></span></span><span
id="gmail-m_-365934121322736913gmail-m_3053749019241539358gmail-m_838044723809316699gmail-m_-3022953311440817250gmail-m_2535866332927259255gmail-m_-1151591874624397141gmail-m_-1668025680000192425gmail-m_-8472392558182387111gmail-tw-spkr-button"
                                              style="display:inline-block;height:48px;color:rgba(0,0,0,0.54);overflow:hidden;width:48px;outline:currentcolor
                                              none 0px"><span
                                                title="Слушать перевод"
                                                style="display:inline-block;height:26px;line-height:24px;width:26px;border:1px
                                                solid
                                                transparent;padding:10px"></span></span></div>
                                        </div>
                                      </div>
                                      <br>
                                      <div class="gmail_quote">
                                        <div dir="ltr"
                                          class="gmail_attr">чт, 14 мая
                                          2020 г. в 22:29, Michael
                                          Dickens &lt;<a
                                            moz-do-not-send="true"
                                            href="mailto:michael.dickens@ettus.com"
                                            target="_blank">michael.dickens@ettus.com</a>&gt;:<br>
                                        </div>
                                        <blockquote class="gmail_quote"
                                          style="margin:0px 0px 0px
                                          0.8ex;border-left:1px solid
                                          rgb(204,204,204);padding-left:1ex">
                                          <div dir="ltr">Hi Ivan - I'm
                                            glad to hear you got the
                                            firmware / FPGA images
                                            sorted out. That's really
                                            quite something! I'll need
                                            to do some playing around
                                            with how to do GPIO in UHD
                                            C++. I'm confident there's a
                                            way ... just need the right
                                            "special sauce" if you know
                                            what I mean. Maybe you've
                                            made progress on this end? -
                                            MLD<br clear="all">
                                            <div>
                                              <div dir="ltr">
                                                <div dir="ltr">
                                                  <div>
                                                    <div dir="ltr">
                                                      <div>
                                                        <div dir="ltr">
                                                          <div>
                                                          <div dir="ltr">
                                                          <div>
                                                          <div dir="ltr">---</div>
                                                          <div dir="ltr">Michael
                                                          Dickens<br>
                                                          Ettus Research
                                                          Technical
                                                          Support<br>
                                                          Email: <a
                                                          moz-do-not-send="true"
href="mailto:support@ettus.com" target="_blank">support@ettus.com</a><br>
                                                          Web: <a
                                                          moz-do-not-send="true"
href="https://ettus.com/" target="_blank">https://ettus.com/</a></div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                            <br>
                                          </div>
                                          <br>
                                          <div class="gmail_quote">
                                            <div dir="ltr"
                                              class="gmail_attr">On Mon,
                                              May 11, 2020 at 4:04 PM
                                              Ivan Zahartchuk &lt;<a
                                                moz-do-not-send="true"
                                                href="mailto:adray0001@gmail.com"
                                                target="_blank">adray0001@gmail.com</a>&gt;
                                              wrote:<br>
                                            </div>
                                            <blockquote
                                              class="gmail_quote"
                                              style="margin:0px 0px 0px
                                              0.8ex;border-left:1px
                                              solid
                                              rgb(204,204,204);padding-left:1ex">
                                              <div dir="ltr">If I
                                                understand you
                                                correctly, then I need
                                                to create another block
                                                uhd
                                                 
                                                <div>self.uhd_usrp_source
                                                  = uhd.usrp_source (
                                                          ",". join
                                                  (("", "")),
                                                          uhd.stream_args
                                                  (
                                                          cpu_format =
                                                  "fc32",
                                                          channels =
                                                  range (1),
                                                          ),
                                                          ) </div>
                                                <div>so I created it.
                                                  But I don’t understand
                                                  how it works since I
                                                  don’t connect it
                                                  anywhere and I get an
                                                  error</div>
                                                <div> [WARNING] [RFNOC]
                                                  [legacy compat] Not
                                                  enough FIFO ports to
                                                  connect, not all TX
                                                  sinks will be
                                                  connected
                                                  [WARNING] [RFNOC]
                                                  [legacy_compat] No
                                                  DDCs detected. You
                                                  will only be able to
                                                  receive at the radio
                                                  frontend rate.
                                                  [WARNING] [RFNOC]
                                                  [legacy_compat] No
                                                  DUCs detected. You
                                                  will only be able to
                                                  transmit at the radio
                                                  frontend rate.
                                                  [WARNING] [RFNOC]
                                                  Assuming max packet
                                                  size for 0 / Radio_0
                                                  thread
                                                  [thread-per-block [0]:
                                                  &lt;block
                                                  uhd_rfnoc_FIFO
                                                  (7)&gt;]:
                                                  RuntimeError: On node
                                                  0 / FIFO_0, output
                                                  port 0 is already
                                                  connected.</div>
                                                <div> If somewhere there
                                                  are examples of how to
                                                  get to gpio correctly,
                                                  I would be very
                                                  grateful if you would
                                                  provide them to me. I
                                                  figured out the FPGA
                                                  firmware and now the
                                                  only problem is gpio.</div>
                                              </div>
                                              <br>
                                              <div class="gmail_quote">
                                                <div dir="ltr"
                                                  class="gmail_attr">пн,
                                                  11 мая 2020 г. в
                                                  17:58, Michael Dickens
                                                  &lt;<a
                                                    moz-do-not-send="true"
href="mailto:michael.dickens@ettus.com" target="_blank">michael.dickens@ettus.com</a>&gt;:<br>
                                                </div>
                                                <blockquote
                                                  class="gmail_quote"
                                                  style="margin:0px 0px
                                                  0px
                                                  0.8ex;border-left:1px
                                                  solid
                                                  rgb(204,204,204);padding-left:1ex">
                                                  <div dir="ltr">Hi Ivan
                                                    - I was out last
                                                    week; here now for a
                                                    few days. Please
                                                    keep <a
                                                      moz-do-not-send="true"
href="mailto:support@ettus.com" target="_blank">support@ettus.com</a> on
                                                    CC so that someone
                                                    there can try to
                                                    help you when I'm
                                                    away.
                                                    <div><br>
                                                    </div>
                                                    <div>Here's a
                                                      summary of the
                                                      discussion with
                                                      the Ettus R&amp;D
                                                      person I spoke
                                                      with about
                                                      accessing the GPIO
                                                      via GRC: you have
                                                      to create a UHD
                                                      USRP Source/Sink
                                                      object, then you
                                                      use it to access
                                                      the underlying C++
                                                      USRP object (via
                                                      Python) to obtain
                                                      the GPIO API. You
                                                      can't access the
                                                      UHD GPIO API from
                                                      RFNoC blocks;
                                                      there is no USRP
                                                      object to provide
                                                      access.</div>
                                                    <div><br>
                                                    </div>
                                                    <div>Are you still
                                                      having issues with
                                                      the FPGA creation?
                                                      If so, please
                                                      update me on where
                                                      you're at and I'll
                                                      do what I can to
                                                      help. - MLD</div>
                                                    <div>
                                                      <div>
                                                        <div dir="ltr">
                                                          <div dir="ltr">
                                                          <div>
                                                          <div dir="ltr">
                                                          <div>
                                                          <div dir="ltr">
                                                          <div>
                                                          <div dir="ltr">
                                                          <div>
                                                          <div dir="ltr">---</div>
                                                          <div dir="ltr">Michael
                                                          Dickens<br>
                                                          Ettus Research
                                                          Technical
                                                          Support<br>
                                                          Email: <a
                                                          moz-do-not-send="true"
href="mailto:support@ettus.com" target="_blank">support@ettus.com</a><br>
                                                          Web: <a
                                                          moz-do-not-send="true"
href="https://ettus.com/" target="_blank">https://ettus.com/</a></div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
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
                                                  <div
                                                    class="gmail_quote">
                                                    <div dir="ltr"
                                                      class="gmail_attr">On
                                                      Thu, May 7, 2020
                                                      at 7:38 AM Ivan
                                                      Zahartchuk &lt;<a
moz-do-not-send="true" href="mailto:adray0001@gmail.com" target="_blank">adray0001@gmail.com</a>&gt;
                                                      wrote:<br>
                                                    </div>
                                                    <blockquote
                                                      class="gmail_quote"
                                                      style="margin:0px
                                                      0px 0px
                                                      0.8ex;border-left:1px
                                                      solid
                                                      rgb(204,204,204);padding-left:1ex">
                                                      <div dir="ltr">Hello.
                                                        Sorry to bother
                                                        you so often.
                                                        But I really
                                                        want to
                                                        understand this
                                                        board and
                                                        firmware. I
                                                        solved the
                                                        problem with the
                                                        fact that I did
                                                        not create an
                                                        image for FPGA.
                                                        The problem was
                                                        that at startup,
                                                        the
                                                        rfnoc_ce_auto_inst_e31x.v
                                                        configuration
                                                        file is created,
                                                        which also tells
                                                        which blocks to
                                                        compile for
                                                        VIvado. But the
                                                        next time you
                                                        call
                                                        ./uhd_image_builder,
                                                        this file is not
                                                        replaced with a
                                                        new one, but the
                                                        rfnoc_ce_auto_inst_e310.v
                                                        file is created,
                                                        which does not
                                                        participate in
                                                        further work.
                                                        But I also had
                                                        questions about
                                                        the GPIO.<br>
                                                      </div>
                                                      <br>
                                                      <div
                                                        class="gmail_quote">
                                                        <div dir="ltr"
                                                          class="gmail_attr">вс,
                                                          3 мая 2020 г.
                                                          в 14:09, Ivan
                                                          Zahartchuk
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:adray0001@gmail.com" target="_blank">adray0001@gmail.com</a>&gt;:<br>
                                                        </div>
                                                        <blockquote
                                                          class="gmail_quote"
                                                          style="margin:0px
                                                          0px 0px
                                                          0.8ex;border-left:1px
                                                          solid
                                                          rgb(204,204,204);padding-left:1ex">
                                                          <div dir="ltr">Hello.
                                                          Your
                                                          colleagues
                                                          haven’t
                                                          answered
                                                          anything yet?
                                                          Tell me, could
                                                          you generate
                                                          firmware for
                                                          RFNoC and drop
                                                          it to me.
                                                          Sorry to ask a
                                                          lot, I just
                                                          can not test
                                                          the error with
                                                          generating a
                                                          bit file for
                                                          FPGA
                                                          differently.<br>
                                                          </div>
                                                          <br>
                                                          <div
                                                          class="gmail_quote">
                                                          <div dir="ltr"
class="gmail_attr">ср, 29 апр. 2020 г. в 08:11, Ivan Zahartchuk &lt;<a
                                                          moz-do-not-send="true"
href="mailto:adray0001@gmail.com" target="_blank">adray0001@gmail.com</a>&gt;:<br>
                                                          </div>
                                                          <blockquote
                                                          class="gmail_quote"
                                                          style="margin:0px
                                                          0px 0px
                                                          0.8ex;border-left:1px
                                                          solid
                                                          rgb(204,204,204);padding-left:1ex">
                                                          <div dir="ltr">Thanks! I
                                                          found out that
                                                          the problem in
                                                          the firmware
                                                          comes from
                                                          applications
                                                          for creating
                                                          this firmware.
                                                          After opening
                                                          the firmware
                                                          using Vivado,
                                                          I found in it
                                                          the same FIR
                                                          block that I
                                                          did not add
                                                          there. Perhaps
                                                          this is due to
                                                          the fact that
                                                          I installed
                                                          the wrong
                                                          version of
                                                          Vivado.
                                                          Because I also
                                                          don’t generate
                                                          the dts file
                                                          that is needed
                                                          for firmware.
                                                          I installed
                                                          Vivado 18.3 HL
                                                          System
                                                          Edition.<span
style="background-color:rgb(248,249,250);font-family:inherit;font-size:28px;white-space:pre-wrap"></span></div>
                                                          <br>
                                                          <div
                                                          class="gmail_quote">
                                                          <div dir="ltr"
class="gmail_attr">ср, 29 апр. 2020 г. в 00:12, Michael Dickens &lt;<a
                                                          moz-do-not-send="true"
href="mailto:michael.dickens@ettus.com" target="_blank">michael.dickens@ettus.com</a>&gt;:<br>
                                                          </div>
                                                          <blockquote
                                                          class="gmail_quote"
                                                          style="margin:0px
                                                          0px 0px
                                                          0.8ex;border-left:1px
                                                          solid
                                                          rgb(204,204,204);padding-left:1ex">
                                                          <div dir="ltr">Hi
                                                          Ivan - Let me
                                                          discuss your
                                                          query with the
                                                          Ettus R&amp;D
                                                          guy who
                                                          handles
                                                          gr-uhd.
                                                          Hopefully
                                                          he'll be able
                                                          to clarify
                                                          your query. -
                                                          MLD<br
                                                          clear="all">
                                                          <div>
                                                          <div dir="ltr">
                                                          <div dir="ltr">
                                                          <div>
                                                          <div dir="ltr">
                                                          <div>
                                                          <div dir="ltr">
                                                          <div>
                                                          <div dir="ltr">
                                                          <div>
                                                          <div dir="ltr">---</div>
                                                          <div dir="ltr">Michael
                                                          Dickens<br>
                                                          Ettus Research
                                                          Technical
                                                          Support<br>
                                                          Email: <a
                                                          moz-do-not-send="true"
href="mailto:support@ettus.com" target="_blank">support@ettus.com</a><br>
                                                          Web: <a
                                                          moz-do-not-send="true"
href="https://ettus.com/" target="_blank">https://ettus.com/</a></div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          <br>
                                                          </div>
                                                          <br>
                                                          <div
                                                          class="gmail_quote">
                                                          <div dir="ltr"
class="gmail_attr">On Mon, Apr 27, 2020 at 7:59 PM Ivan Zahartchuk &lt;<a
moz-do-not-send="true" href="mailto:adray0001@gmail.com" target="_blank">adray0001@gmail.com</a>&gt;
                                                          wrote:<br>
                                                          </div>
                                                          <blockquote
                                                          class="gmail_quote"
                                                          style="margin:0px
                                                          0px 0px
                                                          0.8ex;border-left:1px
                                                          solid
                                                          rgb(204,204,204);padding-left:1ex">
                                                          <div dir="ltr">
                                                          <pre id="gmail-m_-365934121322736913gmail-m_3053749019241539358gmail-m_838044723809316699gmail-m_-3022953311440817250gmail-m_2535866332927259255gmail-m_-1151591874624397141gmail-m_-1668025680000192425gmail-m_-8472392558182387111gmail-m_-7401521056776547995gmail-m_4049573063320729433gmail-m_-2686627051027188575gmail-m_7853533297241329503gmail-m_9135370524100431939gmail-m_-8884878915660599770gmail-m_4976518520255204370gmail-m_2907319175527483697gmail-tw-target-text" style="text-align:left" dir="ltr"><span style="font-family:georgia,serif"><span lang="en">Unfortunately for all this time I have not come a step closer to solving my problems. I don’t know how to solve the problem with flashing fpga. 
I even reinstalled ubuntu but it did not help. The only assumption is that the board has its own memory that is not erased after overwriting the SD card. But this is also doubtful. 
In addition, I still didn’t get to switch to the GPIO through the RFNoC block and I am thinking about returning to version 3.14. But honestly I would like to deal with this version.</span></span></pre>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                        </blockquote>
                                                      </div>
                                                    </blockquote>
                                                  </div>
                                                </blockquote>
                                              </div>
                                            </blockquote>
                                          </div>
                                        </blockquote>
                                      </div>
                                    </blockquote>
                                  </div>
                                </blockquote>
                              </div>
                            </blockquote>
                          </div>
                        </blockquote>
                      </div>
                    </blockquote>
                  </div>
                </blockquote>
              </div>
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

--------------090802030300080805050504--


--===============7260048428411028071==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7260048428411028071==--

