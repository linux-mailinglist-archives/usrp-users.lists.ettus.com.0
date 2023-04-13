Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C0F6E1692
	for <lists+usrp-users@lfdr.de>; Thu, 13 Apr 2023 23:41:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 93E70384037
	for <lists+usrp-users@lfdr.de>; Thu, 13 Apr 2023 17:41:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681422110; bh=n3eH3w67/ER1ju/dnAtnav3Olz9MuI+/3mnpx7/2I7c=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=CA3ji7/TqrGFLPFQJ18y/MdKFZnIC9e4GtsLJktoZY8tKTn7nn41e6MSfXUPGxKbf
	 gMfG2Ed4nTKoS0H9GHQQBFvsg3WugU6g0FzJh/K8pPt5ETSlk01R8aqz4N/HCga2pe
	 ZoPGzJGEzcCwnH+rdLssfkRnhwgXI70Ht6cwQJiLTufzvOwkKn29B8Orac8JDMkCTU
	 46957w66d80HV39DzN1FzrNy5ykt/BXnCDrM7NAhvqgFQJFD0jIe09NgqMDvxH0XtZ
	 /w8ihPKnOrfTftG3JcjWBXz3gC3UvMm7oSdKg8mGRHwzUdcTHPyhRbDLwnWPNXImlU
	 9T3FdHW2ZjCzg==
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 4A33C3810A7
	for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 17:41:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LEutG11t";
	dkim-atps=neutral
Received: by mail-qv1-f46.google.com with SMTP id dd8so3596490qvb.13
        for <usrp-users@lists.ettus.com>; Thu, 13 Apr 2023 14:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681422077; x=1684014077;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RNFf3j9jmu5BZPKQv/3jx3GojsXwEa2noRD+5RmrpLY=;
        b=LEutG11tNyDZeEgdIihiDumDVrLalrcVdk4bltW1vkvEasvu9ZW+eKV603MzhTy9M+
         K3RM/c61JWUywAwz9lW1ZMFzYWSow2jxK7vI2KRxrzMizBCcckzf7CBojPwMZsyRSLW0
         RzaHlDueseZexaV7ATu9uacvbynpBebktJAyasV/D8AvSS433rWcHvmHwfthNSyyO8pC
         S23dMekWoDzO9INlAbWuO1A7Z3i697ttfL/416i3LVz4mmlSsz4ravAuQjl5zUmgSjRz
         1MvgNQZjRTBTleBdqZIMhY0LmCubtTvA4iiEBwrLhK7ltJcXS4YMK5uCxWuuiHet+C1s
         0i4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681422077; x=1684014077;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RNFf3j9jmu5BZPKQv/3jx3GojsXwEa2noRD+5RmrpLY=;
        b=PGW+94Uina8YzR7OW/92QknOQfs0KcivMyEO1J1WNBzniXGvBkMrmFcBCcjXkw5VJ3
         pZHdKT/2rHlO9wRto8SeWVelv3nf6cFBE8w8Rp7Vc0tVLrlm7FzD6nYkYtiHriBr1ydw
         /9biOj3EPkfwY1CExT8aTLv6yxsCs90hTkz7IDY3SS1uiSk2pOAA69JANREqp+PAQd4m
         MhVmSH1ZBAQNS/EdpBp4A+Q81428u10o0AKxt+JomTSsKUewqgHbxF6ZxG689o3Tvm/Y
         RxZLGB1FRzHeiq6F15quW4aOt4HA8oRmZZ8JjUiy8/rDJGIhwi3jVZUqXRvF4nDpvNz5
         HTVg==
X-Gm-Message-State: AAQBX9d1r/mHq36RHyarUBcdLwwl10ORngnMqSB9A6IhEE3LAuRcxWq0
	G0ibZhZSv/KJxc4Yj0uZ7Wc=
X-Google-Smtp-Source: AKy350bSI36piPpHRqVfhzE7N31UpzgJQyr5qiQT7ryuL2IEgqyePcPEZV0GQCemy7gUCkCVMHUa9g==
X-Received: by 2002:a05:6214:c8d:b0:5ef:5250:c5e0 with SMTP id r13-20020a0562140c8d00b005ef5250c5e0mr144515qvr.7.1681422077675;
        Thu, 13 Apr 2023 14:41:17 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id s192-20020a37a9c9000000b00742bc037f29sm754138qke.120.2023.04.13.14.41.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Apr 2023 14:41:17 -0700 (PDT)
Message-ID: <abbfb85f-77e4-4636-b837-444968c09069@gmail.com>
Date: Thu, 13 Apr 2023 17:41:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>,
 Jim Schatzman <james.schatzman@futurelabusa.com>
References: <20230408021338.994254D94B@mail.futurelabusa.com>
 <d5460510-c3e2-9f3f-31ea-2bf55fedcf7e@gmail.com>
 <20230411011218.5513E4D94B@mail.futurelabusa.com>
 <ec810fb7-3220-4fbb-3ce5-31385a878931@gmail.com>
 <20230413210221.4BED44D905@mail.futurelabusa.com>
 <CAB__hTR+N0tZ=B8s9urCWK9U2uGT96g=x8w7rS5WkHQLW_H_gw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTR+N0tZ=B8s9urCWK9U2uGT96g=x8w7rS5WkHQLW_H_gw@mail.gmail.com>
Message-ID-Hash: ZAE3OQUT64F6EYIBS5OTE2UDIOAMRIIP
X-Message-ID-Hash: ZAE3OQUT64F6EYIBS5OTE2UDIOAMRIIP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Halting issue with USRP socket connection - how to set SO_PRIORITY?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZAE3OQUT64F6EYIBS5OTE2UDIOAMRIIP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6270412040143442645=="

This is a multi-part message in MIME format.
--===============6270412040143442645==
Content-Type: multipart/alternative;
 boundary="------------cXNVSMSxszx7HcYbpLPNJOeR"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------cXNVSMSxszx7HcYbpLPNJOeR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/04/2023 17:37, Rob Kossler wrote:
> Hi Jim,
> From a quick review of this chain, it appears your concern is for the=20
> transmit direction (hence, Underruns). Although I have never tried to=20
> run for extended periods such as you are requiring, I am reasonably=20
> confident that the issue is on the host side and not the Radio side.=C2=
=A0=20
> Some remarks:
>
>   * Perhaps you would get more reliable streaming using DPDK. When I
>     last tried this a couple of years ago, the performance was
>     great=C2=A0(at much higher rates than you, but for shorter periods =
of
>     time). But, the side effects were substantial (PC mis-behaving to
>     the point of becoming unusable) and so I abandoned it. The new
>     DPDK is more mature (as is the OS) from when I tried it so it may
>     be much better now with regard to side effects.
>   * You could add buffering on the N310 (by building a custom FPGA
>     image) that could robustly handle short host "hiccups" in
>     streaming.=C2=A0 Originally, the DMA-FIFO RFNoC block was put in th=
e Tx
>     path of devices such as the X310 for this express purpose. But,
>     the DMA-FIFO block cannot handle 4 streams at full rate on an N310
>     so it is not part of the stock FPGA. The external RAM is used
>     instead for the "Replay" block.=C2=A0 But at your data rates, the
>     external RAM can handle four streams so you could build an FPGA
>     image that replaced the Replay block with the DMA-FIFO such that
>     you would have very large buffers on the FPGA to handle host
>     streaming hiccups.=C2=A0 Note that you could also build a new image
>     with larger FPGA fabric buffers, but they wouldn't approach the
>     size of the external RAM.=C2=A0 If building your own FPGA image see=
ms
>     daunting (for some this is a show stopper), I just want to mention
>     that what I am suggesting would not require FPGA design talent -
>     the necessary blocks already exist=C2=A0 - it would just require
>     purchasing Xilinx Vivado and getting past the initial learning
>     curve of building an image.
>   * How are you generating your Tx samples?=C2=A0 Custom app? Reading f=
rom
>     a very large data file?=C2=A0 I ask this because I have had the mos=
t
>     streaming success when transmitting from a file (or receive to a
>     file) if the file is in a "RAM disk".=C2=A0 We generally order Linu=
x
>     PCs with as much RAM as we can afford in order to configure such
>     RAM as a RAM disk for the purpose of fast streaming to/from files.
>   * Finally, if your data is not dynamic (a repeated fixed length
>     sequence such as in a repeated radar transmission), I would highly
>     recommend using the Replay block to send the data rather than
>     streaming from the host. You will likely never see an underrun in
>     this case.=C2=A0 But, I realize that if the data is dynamic, this i=
s
>     not possible.
>
> Rob
>
I'll observe that I have an application that streams 4 x 10Msps in the=20
*receive* direction from an X310, and I don't experience
 =C2=A0 'O' at all.=C2=A0 The application is sometimes used to stream for=
 24 or=20
more hours at a time. Now, this isn't an N310, but the N310
 =C2=A0 shares a LOT of FPGA architecture with the X310, and the streamin=
g is=20
in the other direction.=C2=A0 So, just an anecdote that is only
 =C2=A0 very-slightly useful.




>
> On Thu, Apr 13, 2023 at 5:03=E2=80=AFPM Jim Schatzman=20
> <james.schatzman@futurelabusa.com> wrote:
>
>     Even with all the recommended settings, and a very fast computer
>     that is doing nothing except sending the data, it is maybe 50/50
>     that a 2 hour simulation can be conducted without an underrun. The
>     longest run I have been able to do without an underrun is about
>     2.5 hours.
>
>     The sample rate is 12.5 Msamp/sec at 16 bit I + 16 bit Q or 400
>     Mbit/sec.
>
>     For our application, that is unacceptable. I need to be able to
>     run for days without data loss.
>
>     It is a mystery to me why a 10 Gbit connection cannot support 400
>     Mbit/sec UDP reliably.
>
>     Any ideas about how we can completely eliminate underruns?
>
>     At the moment, I am uncertain whether the problem is occurring on
>     the host or on the radio. I suspect the radio, but I will do some
>     testing of the host to see what UDP data rate it can support
>     without loss.
>
>     Thanks!
>
>
>
>
>
>     At 10:53 PM 4/10/2023, Marcus D. Leech wrote:
>     >On 10/04/2023 21:12, Jim Schatzman wrote:
>     >>The following steps had no impact:
>     >>
>     >>a) Don't use a switch but do a point-to-point connection between
>     the comptuer's NIC and the N310.
>     >>b) Adjust network buffers and ring buffer per recommendations
>     (actually, the network buffers setting was always being done).
>     >>
>     >>Increasing the MTU to 9000 had a significant impact. An
>     occasionaly underrun is still experienced, but an hour or two of
>     continuous transmission is possible.
>     >>
>     >>I am wondering if this is not an issue on the computer side but
>     on the radio side. Is the N310 incapable of supporting 1x 10 Gbps
>     streams with a MTU of 1500?=C2=A0 Perhaps.
>     >>
>     >>I will do some computer-to-computer testing to see if the
>     problem can be reproduced there.
>     >>
>     >>Jim
>     >Even non-SDR applications tend to use jumbo-frames for continuous
>     traffic at 10Gbit.=C3=82=C2=A0 I'm sorry that I didn't clue in to t=
hat
>     >=C3=82=C2=A0 in the first round.
>     >
>     >
>     >>
>     >>
>     >>
>     >>
>     >>At 08:39 PM 4/7/2023, Marcus D. Leech wrote:
>     >>>On 07/04/2023 22:13, Jim Schatzman wrote:
>     >>>>We have been unable to estable 100% reliable connections to an
>     N310 USRP radio through its 10 Gbit ethernet from Linux. What
>     happens is that it works fine for a period of time - 30 to 60
>     minutes, typically. Then we see a couple of U's in the output.
>     Unfortunately, that is fatal for our application.
>     >>>>
>     >>>>Using the unmodified tx_samples_from_file or one modified to
>     use separate threads to read data from the file and to sent it
>     over the socket to the radio, the symptoms are the same.
>     >>>>
>     >>>>All the evidence is that the application is sending data
>     continuously without any delays. Also, the "network" has no
>     devices on it except for the host computer, a high performance 10G
>     switch, and the N310 radio.
>     >>>>
>     >>>>We are wondering if this could be a Linux "feature". We would
>     like to try increasing the socket priority with SO_PRIORITY.
>     However, we are not finding any hooks in the UHD software for this.
>     >>>>
>     >>>>Suggestions?
>     >>>>
>     >>>>Thanks!
>     >>>>Jim
>     >>>>_______________________________________________
>     >>>Have you increased the ring buffers on your card?
>     >>>
>     >>>https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Trick=
s#Increasing_Ring_Buffers
>     >>>
>     >>>Also, adjust the network buffers:
>     >>>
>     >>>https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Trick=
s#Adjust_Network_Buffers
>     >>>
>     >>>Have you tried a direct connection--without the switch?=C3=83=E2=
=80=9A =C3=83=E2=80=9A
>     =C3=83=E2=80=9A=C2=A0 Just to eliminate it.=C3=83=E2=80=9A=C2=A0 Be=
fore you say "oh, it's not the switch",
>     >>>=C3=83=E2=80=9A=C2=A0 many "high performance" 10G switches have =
a less-than-ideal
>     switching fabric.
>     >>>
>     >>>_______________________________________________ USRP-users
>     mailing list -- usrp-users@lists.ettus.com To unsubscribe send an
>     email to usrp-users-leave@lists.ettus.com </x-flowed>
>     >>_______________________________________________
>     >>USRP-users mailing list -- usrp-users@lists.ettus.com
>     >>To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     >_______________________________________________ USRP-users
>     mailing list -- usrp-users@lists.ettus.com To unsubscribe send an
>     email to usrp-users-leave@lists.ettus.com </x-flowed>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------cXNVSMSxszx7HcYbpLPNJOeR
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/04/2023 17:37, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTR+N0tZ=3DB8s9urCWK9U2uGT96g=3Dx8w7rS5WkHQLW_H_gw@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hi Jim,</div>
        <div>From a quick review of this chain, it appears your concern
          is for the transmit direction (hence, Underruns). Although I
          have never tried to run for extended periods such as you are
          requiring, I am reasonably confident that the issue is on the
          host side and not the Radio side.=C2=A0 Some remarks:</div>
        <div>
          <ul>
            <li>Perhaps you would get more reliable streaming using
              DPDK. When I last tried this a couple of years ago, the
              performance was great=C2=A0(at much higher rates than you, =
but
              for shorter periods of time). But, the side effects were
              substantial (PC mis-behaving to the point of becoming
              unusable) and so I abandoned it. The new DPDK is more
              mature (as is the OS) from when I tried it so it may be
              much better now with regard to side effects.</li>
            <li>You could add buffering on the N310 (by building a
              custom FPGA image) that could robustly handle short host
              "hiccups" in streaming.=C2=A0 Originally, the DMA-FIFO RFNo=
C
              block was put in the Tx path of devices such as the X310
              for this express purpose. But, the DMA-FIFO block cannot
              handle 4 streams at full rate on an N310 so it is not part
              of the stock FPGA. The external RAM is used instead for
              the "Replay" block.=C2=A0 But at your data rates, the exter=
nal
              RAM can handle four streams so you could build an FPGA
              image that replaced the Replay block with the DMA-FIFO
              such that you would have very large buffers on the FPGA to
              handle host streaming hiccups.=C2=A0 Note that you could al=
so
              build a new image with larger FPGA fabric buffers, but
              they wouldn't approach the size of the external RAM.=C2=A0 =
If
              building your own FPGA image seems daunting (for some this
              is a show stopper), I just want to mention that what I am
              suggesting would not require FPGA design talent - the
              necessary blocks already exist=C2=A0 - it would just requir=
e
              purchasing Xilinx Vivado and getting past the initial
              learning curve of building an image.</li>
            <li>How are you generating your Tx samples?=C2=A0 Custom app?=
=C2=A0
              Reading from a very large data file?=C2=A0 I ask this becau=
se I
              have had the most streaming success when transmitting from
              a file (or receive to a file) if the file is in a "RAM
              disk".=C2=A0 We generally order Linux PCs with as much RAM =
as
              we can afford in order to configure such RAM as a RAM disk
              for the purpose of fast streaming to/from files.</li>
            <li>Finally, if your data is not dynamic (a repeated fixed
              length sequence such as in a repeated radar transmission),
              I would highly recommend using the Replay block to send
              the data rather than streaming from the host. You will
              likely never see an underrun in this case.=C2=A0 But, I rea=
lize
              that if the data is dynamic, this is not possible.</li>
          </ul>
        </div>
        Rob
        <div><br>
        </div>
      </div>
    </blockquote>
    I'll observe that I have an application that streams 4 x 10Msps in
    the *receive* direction from an X310, and I don't experience<br>
    =C2=A0 'O' at all.=C2=A0 The application is sometimes used to stream =
for 24 or
    more hours at a time. Now, this isn't an N310, but the N310<br>
    =C2=A0 shares a LOT of FPGA architecture with the X310, and the strea=
ming
    is in the other direction.=C2=A0 So, just an anecdote that is only<br=
>
    =C2=A0 very-slightly useful.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTR+N0tZ=3DB8s9urCWK9U2uGT96g=3Dx8w7rS5WkHQLW_H_gw@mail.=
gmail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 13, 2023 at
          5:03=E2=80=AFPM Jim Schatzman &lt;<a
            href=3D"mailto:james.schatzman@futurelabusa.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">jame=
s.schatzman@futurelabusa.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
Even
          with all the recommended settings, and a very fast computer
          that is doing nothing except sending the data, it is maybe
          50/50 that a 2 hour simulation can be conducted without an
          underrun. The longest run I have been able to do without an
          underrun is about 2.5 hours.<br>
          <br>
          The sample rate is 12.5 Msamp/sec at 16 bit I + 16 bit Q or
          400 Mbit/sec.<br>
          <br>
          For our application, that is unacceptable. I need to be able
          to run for days without data loss.<br>
          <br>
          It is a mystery to me why a 10 Gbit connection cannot support
          400 Mbit/sec UDP reliably.<br>
          <br>
          Any ideas about how we can completely eliminate underruns?<br>
          <br>
          At the moment, I am uncertain whether the problem is occurring
          on the host or on the radio. I suspect the radio, but I will
          do some testing of the host to see what UDP data rate it can
          support without loss.<br>
          <br>
          Thanks!<br>
          <br>
          <br>
          <br>
          <br>
          <br>
          At 10:53 PM 4/10/2023, Marcus D. Leech wrote:<br>
          &gt;On 10/04/2023 21:12, Jim Schatzman wrote:<br>
          &gt;&gt;The following steps had no impact:<br>
          &gt;&gt;<br>
          &gt;&gt;a) Don't use a switch but do a point-to-point
          connection between the comptuer's NIC and the N310.<br>
          &gt;&gt;b) Adjust network buffers and ring buffer per
          recommendations (actually, the network buffers setting was
          always being done).<br>
          &gt;&gt;<br>
          &gt;&gt;Increasing the MTU to 9000 had a significant impact.
          An occasionaly underrun is still experienced, but an hour or
          two of continuous transmission is possible.<br>
          &gt;&gt;<br>
          &gt;&gt;I am wondering if this is not an issue on the computer
          side but on the radio side. Is the N310 incapable of
          supporting 1x 10 Gbps streams with a MTU of 1500?=C2=A0 Perhaps=
.<br>
          &gt;&gt;<br>
          &gt;&gt;I will do some computer-to-computer testing to see if
          the problem can be reproduced there.<br>
          &gt;&gt;<br>
          &gt;&gt;Jim<br>
          &gt;Even non-SDR applications tend to use jumbo-frames for
          continuous traffic at 10Gbit.=C3=82=C2=A0 I'm sorry that I didn=
't clue
          in to that<br>
          &gt;=C3=82=C2=A0 in the first round.<br>
          &gt;<br>
          &gt;<br>
          &gt;&gt;<br>
          &gt;&gt;<br>
          &gt;&gt;<br>
          &gt;&gt;<br>
          &gt;&gt;At 08:39 PM 4/7/2023, Marcus D. Leech wrote:<br>
          &gt;&gt;&gt;On 07/04/2023 22:13, Jim Schatzman wrote:<br>
          &gt;&gt;&gt;&gt;We have been unable to estable 100% reliable
          connections to an N310 USRP radio through its 10 Gbit ethernet
          from Linux. What happens is that it works fine for a period of
          time - 30 to 60 minutes, typically. Then we see a couple of
          U's in the output. Unfortunately, that is fatal for our
          application.<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;Using the unmodified tx_samples_from_file or
          one modified to use separate threads to read data from the
          file and to sent it over the socket to the radio, the symptoms
          are the same.<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;All the evidence is that the application is
          sending data continuously without any delays. Also, the
          "network" has no devices on it except for the host computer, a
          high performance 10G switch, and the N310 radio.<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;We are wondering if this could be a Linux
          "feature". We would like to try increasing the socket priority
          with SO_PRIORITY. However, we are not finding any hooks in the
          UHD software for this.<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;Suggestions?<br>
          &gt;&gt;&gt;&gt;<br>
          &gt;&gt;&gt;&gt;Thanks!<br>
          &gt;&gt;&gt;&gt;Jim<br>
&gt;&gt;&gt;&gt;_______________________________________________<br>
          &gt;&gt;&gt;Have you increased the ring buffers on your card?<b=
r>
          &gt;&gt;&gt;<br>
          &gt;&gt;&gt;<a
href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=
#Increasing_Ring_Buffers"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">https://kb.ettus.com/USRP_Hos=
t_Performance_Tuning_Tips_and_Tricks#Increasing_Ring_Buffers</a><br>
          &gt;&gt;&gt;<br>
          &gt;&gt;&gt;Also, adjust the network buffers:<br>
          &gt;&gt;&gt;<br>
          &gt;&gt;&gt;<a
href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=
#Adjust_Network_Buffers"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">https://kb.ettus.com/USRP_Hos=
t_Performance_Tuning_Tips_and_Tricks#Adjust_Network_Buffers</a><br>
          &gt;&gt;&gt;<br>
          &gt;&gt;&gt;Have you tried a direct connection--without the
          switch?=C3=83=E2=80=9A =C3=83=E2=80=9A =C3=83=E2=80=9A=C2=A0 Ju=
st to eliminate it.=C3=83=E2=80=9A=C2=A0 Before you say "oh,
          it's not the switch",<br>
          &gt;&gt;&gt;=C3=83=E2=80=9A=C2=A0 many "high performance" 10G s=
witches have a
          less-than-ideal switching fabric.<br>
          &gt;&gt;&gt;<br>
          &gt;&gt;&gt;_______________________________________________
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a>
          &lt;/x-flowed&gt;<br>
          &gt;&gt;_______________________________________________<br>
          &gt;&gt;USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          &gt;&gt;To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
          &gt;_______________________________________________ USRP-users
          mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.com</a=
>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a>
          &lt;/x-flowed&gt;<br>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------cXNVSMSxszx7HcYbpLPNJOeR--

--===============6270412040143442645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6270412040143442645==--
