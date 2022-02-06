Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFEC4AAD8E
	for <lists+usrp-users@lfdr.de>; Sun,  6 Feb 2022 03:46:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 01010386449
	for <lists+usrp-users@lfdr.de>; Sat,  5 Feb 2022 21:46:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="5U5IP5NY";
	dkim-atps=neutral
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 39FF0385D0E
	for <usrp-users@lists.ettus.com>; Sat,  5 Feb 2022 21:45:24 -0500 (EST)
Received: by mail-yb1-f173.google.com with SMTP id 192so4196011ybd.10
        for <usrp-users@lists.ettus.com>; Sat, 05 Feb 2022 18:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uxhcBZnycFjwiTXtwgctkI5o0YWG+/avbx/uA3ojuSk=;
        b=5U5IP5NYD8+wQAGln9/5wQLOFDa81/PKMfK9NGiuDY0AXUGO6/fdNANa20tKWnsxCx
         m9DBIZ++1pD9pFPReDZrr3pbCEKV5xNbCdiwbJyMRv3yHGNI9HCRVVzCxTgzE4XT87NF
         DzhyUyhxm2tySzL6QMqe28fWwaGMdsat2ZtfMT5xrdCu9fQ5XAwRB1WjjRYQsd46gRQy
         azCmPB3eLEH16gPNHhv/779hsofwxxJIycpYrTiKHcAw5bCTDHH3SFE4PA3Jv+lErVXX
         SSEAZP/p7eK5kEW/qc0Ow+Eaahxmi2Mvel1o9uTFI6mFINJntyKbbRwxuB6N7jt5lQXw
         tu2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uxhcBZnycFjwiTXtwgctkI5o0YWG+/avbx/uA3ojuSk=;
        b=e+JY2tkEVGFXRbuIE1ijsOf4t6Z9rWFUPMm+s835ii12fHYOG21OZHGsrKpJ80BSsE
         ioXJ51qBrsUP583gfp8BWVXHVx064pBg3FeJ5GS0qXLS6uwubt5r5DnkJyYWWIvIA97t
         Yfr6MT5PaB6bAv9822NGCYgse0cCjxFZihpXiR1IbH7WY6YYWKI54lSSWAnQvqCu/2hV
         oOpN0zp4yF7Vh/SKIwXYGbflZhMYPxwz1m1JLncGS3ISmvDpVzfqHbbSWZqpvVGi+l0C
         x8pYqHhSH9o87ZU10s/HTPltD3EdJcBxhXh6nssKzxW9Ex3IrsZzfW+8iJieNC3mJs4j
         GwgQ==
X-Gm-Message-State: AOAM531vISfxfBzdGcyyiKm33J++SikefsJ9/Z52TPsu1Ik4WpAl/fow
	QGSnwLA8eWXsttfw9bChTgKu+9NGFAK+DM1XVk5lPWibpayOFql0
X-Google-Smtp-Source: ABdhPJxEhhyr5NS1/nlEPSKcpw9fmapGH9efGvFOkTpb5OmLLKGuEOL7ahFtw55UIFY3Vu5bRmHoarl8jMV0AJ+jKPA=
X-Received: by 2002:a25:d94e:: with SMTP id q75mr3588978ybg.766.1644115523521;
 Sat, 05 Feb 2022 18:45:23 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PsErhg-2ScEfGRxKxjF7j1dO1bifVg8_bmY4vHUMipPHw@mail.gmail.com>
 <CAA=S3PtGaWu0pd2q4UV6v0ca9A=juysZQJOMS1hpbrLRBdLG2A@mail.gmail.com>
 <CAL7q81v_UDMMqWvtj=Tz6iC7hC7CUGbFxazwZnBsxhSV0U2fvg@mail.gmail.com>
 <CAA=S3PvnC7QuFMQwutBb1kCBX4D4spKC04_Zio_x4QRRB6Oz2Q@mail.gmail.com>
 <CAFche=iXbPGeA+ONgEc2aXStw-JdQA3Y4Rts_hPSEPavK5r5ew@mail.gmail.com> <CAA=S3PvX6afDxXXM5gOwpVbH5HOGLVoW+1K4WQEBzeJRHHcb_w@mail.gmail.com>
In-Reply-To: <CAA=S3PvX6afDxXXM5gOwpVbH5HOGLVoW+1K4WQEBzeJRHHcb_w@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sat, 5 Feb 2022 20:45:08 -0600
Message-ID: <CAFche=i7i99i2K4D64T-f9J2eyMdV8a0QqBVMLkc_LT+utDazA@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: 7UIYRJ47WWLL7XKJ4SGPMYZFWIIGYA5P
X-Message-ID-Hash: 7UIYRJ47WWLL7XKJ4SGPMYZFWIIGYA5P
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building FPGA [00:12:48] Process terminated. Status: Failure How much can I debug?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7UIYRJ47WWLL7XKJ4SGPMYZFWIIGYA5P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0225507227122239923=="

--===============0225507227122239923==
Content-Type: multipart/alternative; boundary="000000000000bfe10205d7507927"

--000000000000bfe10205d7507927
Content-Type: text/plain; charset="UTF-8"

Oh, sorry I missed that file. It looks like the YAML file has 3 clocks
connected to the FFT block's ce_clk port.

  - { srcblk: _device_, srcport: ce,         dstblk: fft0, dstport: ce }
  - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: fft0, dstport: ce }
  - { srcblk: _device_, srcport: radio,      dstblk: fft0, dstport: ce }

I suggest just connecting the device's CE clock and removing the other two
connections. That's probably confusing Vivado and causing it to error.

Wade



On Fri, Feb 4, 2022 at 11:36 PM sp h <stackprogramer@gmail.com> wrote:

> Hi, thanks for your attention in the first message I attached the YAML
> RFNOC image core...( x300_with_fft.yml )
>
>
> On Sat, Feb 5, 2022 at 1:48 AM Wade Fife <wade.fife@ettus.com> wrote:
>
>> You mentioned the log file. Did you check build-X300_HG/build.log or just
>> the console? In addition to that, you could look at the other files
>> generated in the build-X300_HG directory. Sometimes they have information
>> that the console doesn't show.
>>
>> If Vivado didn't output a useful error message, then I suggest reverting
>> and reviewing changes you've made to narrow down the cause.
>>
>> You could also share your x300_with_fft.yml contents so others can check
>> if they see anything wrong.
>>
>> Wade
>>
>> On Fri, Feb 4, 2022 at 11:12 AM sp h <stackprogramer@gmail.com> wrote:
>>
>>>  No, I built FPGA from Ubuntu 20.04, a physical PC not VM.
>>> Ram is enough 12G, In other cases, it can be built correctly.
>>> I think some connections and blocks in the RFNOC core image have
>>> errors...
>>>
>>> On Fri, Feb 4, 2022 at 5:44 PM Jonathon Pendlum <
>>> jonathon.pendlum@ettus.com> wrote:
>>>
>>>> Hi,
>>>>
>>>> Are you running your FPGA build in a VM or on a system with a limited
>>>> amount of RAM?
>>>>
>>>> Jonathon
>>>>
>>>> On Fri, Feb 4, 2022 at 8:44 AM sp h <stackprogramer@gmail.com> wrote:
>>>>
>>>>> Finally, I found that...
>>>>> In Vivado there is a limit for the number of warnings and errors which
>>>>> are displayed by the tool for a particular error or warning; the default
>>>>> value of this limit is 100.
>>>>>
>>>>>
>>>>> I concluded that:
>>>>> *The synthesis not completed might be unrelated.  This specific
>>>>> "warning" is one of the annoying "optimizations are warnings" cases.  This
>>>>> might come up if you have an incorrect clock/reset configuration,
>>>>> unconnected outputs, or constant inputs in some cases*
>>>>>
>>>>>
>>>>>
>>>>> https://forum.digilentinc.com/topic/4781-message-synth-8-3332-appears-100-times-and-further-instances-of-the-messages-will-be-disabled-use-the-tcl-command-set_msg_config-to-change-the-current-settings/
>>>>>
>>>>>
>>>>> https://support.xilinx.com/s/article/53034?language=en_US
>>>>>
>>>>> On Thu, Feb 3, 2022 at 1:29 PM sp h <stackprogramer@gmail.com> wrote:
>>>>>
>>>>>> When I want to build a new image configuration for USRP X300 I was
>>>>>> faced with  [00:12:48] Process terminated. Status: Failure
>>>>>> my new RFNOC core image YAML file, I attached here...
>>>>>> *And when I want to build I used these commands:*
>>>>>>
>>>>>> source setupenv.sh  --vivado-path=/home/sp/xilinx/Vivado
>>>>>> rfnoc_image_builder -y x300_with_fft.yml -t X300_HG
>>>>>> --fpga-dir=/home/sp/Documents/uhd-4.1.0.5/fpga
>>>>>> --vivado-path=/home/sp/xilinx/Vivado
>>>>>>
>>>>>> *Errors: I was faced with these errors...*
>>>>>>
>>>>>> [00:12:48] Current task: Synthesis +++ Current Phase: Finished
>>>>>> [00:12:48] Process terminated. Status: Failure
>>>>>>
>>>>>> ========================================================
>>>>>> Warnings:           715
>>>>>> Critical Warnings:  30
>>>>>> Errors:             0
>>>>>>
>>>>>> make[1]: *** [Makefile.x300.inc:127: bin] Error 1
>>>>>> make[1]: Leaving directory
>>>>>> '/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300'
>>>>>> make: *** [Makefile:90: X300_HG] Error 2
>>>>>>
>>>>>> *Build log file:*
>>>>>> I added the end part of the build log file here, I don't see any
>>>>>> errors...
>>>>>>
>>>>>> *my question is how can solve my problem? How much can I debug? as in
>>>>>> the build log file and terminal I can not see any errors?*
>>>>>> *thanks in advance*
>>>>>>
>>>>>> genblk1[73].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>>>> 'cic_interpolate:/genblk1[74].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>>>> 'cic_interpolate:/genblk1[75].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>>>> 'cic_interpolate:/genblk1[76].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>>>> 'cic_interpolate:/genblk1[77].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>>>> 'cic_interpolate:/genblk1[78].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>>>> 'cic_interpolate:/genblk1[79].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>>>> 'cic_interpolate:/genblk1[80].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[82].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[83].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[84].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[85].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[86].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[87].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[88].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[89].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[90].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[91].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[92].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[93].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[94].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[95].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[96].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[97].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[98].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[99].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[100].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>>> 'cic_interpolate:/genblk1[101].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>>> 'cic_interpolate:/genblk1[103].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>>> 'cic_interpolate:/genblk1[104].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>>> 'cic_interpolate:/genblk1[105].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>>> 'cic_interpolate:/genblk1[106].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>>> 'cic_interpolate:/genblk1[107].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>>> 'cic_interpolate:/genblk1[108].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>>> 'cic_interpolate:/genblk1[109].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>>> 'cic_interpolate:/genblk1[110].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>>> 'cic_interpolate:/genblk1[111].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>>> 'cic_interpolate:/genblk1[112].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>>> 'cic_interpolate:/genblk1[113].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>>> 'cic_interpolate:/genblk1[114].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>>> 'cic_interpolate:/genblk1[115].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>>> 'cic_interpolate:/genblk1[116].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>>> 'cic_interpolate:/genblk1[117].axi_round'
>>>>>> INFO: [Synth 8-223] decloning instance
>>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>>> 'cic_interpolate:/genblk1[118].axi_round'
>>>>>> INFO: [Common 17-14] Message 'Synth 8-223' appears 100 times and
>>>>>> further instances of the messages will be disabled. Use the Tcl command
>>>>>> set_msg_config to change the current settings.
>>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--000000000000bfe10205d7507927
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Oh, sorry I missed that file. It looks like the YAML =
file has 3 clocks connected to the FFT block&#39;s ce_clk port.</div><div><=
br></div><div>=C2=A0 - { srcblk: _device_, srcport: ce, =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 dstblk: fft0, dstport: ce }<br>=C2=A0 - { srcblk: _device_, srcp=
ort: rfnoc_chdr, dstblk: fft0, dstport: ce }<br>=C2=A0 - { srcblk: _device_=
, srcport: radio, =C2=A0 =C2=A0 =C2=A0dstblk: fft0, dstport: ce }</div><div=
><br></div><div>I suggest just connecting the device&#39;s CE clock and rem=
oving the other two connections. That&#39;s probably confusing Vivado and c=
ausing it to error.</div><div><br></div><div>Wade<br></div><div><br></div><=
div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Feb 4, 2022 at 11:36 PM sp h &lt;<a href=3D"mailto:=
stackprogramer@gmail.com">stackprogramer@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi, than=
ks for your attention in the first message I attached the YAML RFNOC image =
core...(=C2=A0x300_with_fft.yml=C2=A0)<div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Feb 5, 2022 =
at 1:48 AM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_=
blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div>You mentioned the log file.=
 Did you check build-X300_HG/build.log or just the console? In addition to =
that, you could look at the other files generated in the build-X300_HG dire=
ctory. Sometimes they have information that the console doesn&#39;t show.<b=
r></div><div><br></div><div>If Vivado didn&#39;t output a useful error mess=
age, then I suggest reverting and reviewing changes you&#39;ve made to narr=
ow down the cause.</div><div><br></div><div>You could also share your=20
x300_with_fft.yml contents so others can check if they see anything wrong.

</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 4, 2022 at 11:12 AM sp =
h &lt;<a href=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stackpr=
ogramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr">=C2=A0No, I built FPGA from Ubuntu 20.04,=
 a physical=C2=A0PC not VM.<br><div>Ram is enough 12G, In other cases, it c=
an be built correctly.=C2=A0</div><div>I think some connections and blocks =
in the RFNOC core image have errors...</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 4, 2022 at 5:44 PM =
Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=
=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><d=
iv>Are you running your FPGA build in a VM or on a system with a limited am=
ount of RAM?</div><div><br></div><div>Jonathon</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 4, 2022 at =
8:44 AM sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com" target=3D"_bla=
nk">stackprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">Finally, I found that...<div><=
span style=3D"color:rgb(51,51,51);font-family:Roboto,sans-serif;font-size:1=
2px">In Vivado=C2=A0there is a limit for the number of warnings and errors =
which are displayed by the tool for a particular error or warning; the defa=
ult value of this limit is 100.=C2=A0</span><br></div><div><span style=3D"c=
olor:rgb(51,51,51);font-family:Roboto,sans-serif;font-size:12px"><br></span=
></div><div><span style=3D"color:rgb(51,51,51);font-family:Roboto,sans-seri=
f;font-size:12px"><br></span></div><div><span style=3D"color:rgb(51,51,51);=
font-family:Roboto,sans-serif;font-size:12px">I concluded that:</span></div=
><div><span style=3D"color:rgb(53,60,65);font-family:Inter,&quot;Helvetica =
Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px"><b>The synthesis not =
completed might be unrelated.=C2=A0 This specific &quot;warning&quot; is on=
e of the annoying &quot;optimizations are warnings&quot; cases.=C2=A0 This =
might come up if you have an incorrect clock/reset configuration, unconnect=
ed outputs, or constant inputs in some cases</b></span><span style=3D"color=
:rgb(51,51,51);font-family:Roboto,sans-serif;font-size:12px"><br></span></d=
iv><div><span style=3D"color:rgb(53,60,65);font-family:Inter,&quot;Helvetic=
a Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px"><b><br></b></span><=
/div><div><span style=3D"color:rgb(53,60,65);font-family:Inter,&quot;Helvet=
ica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px"><b><br></b></span=
></div><div><a href=3D"https://forum.digilentinc.com/topic/4781-message-syn=
th-8-3332-appears-100-times-and-further-instances-of-the-messages-will-be-d=
isabled-use-the-tcl-command-set_msg_config-to-change-the-current-settings/"=
 target=3D"_blank">https://forum.digilentinc.com/topic/4781-message-synth-8=
-3332-appears-100-times-and-further-instances-of-the-messages-will-be-disab=
led-use-the-tcl-command-set_msg_config-to-change-the-current-settings/</a><=
span style=3D"color:rgb(53,60,65);font-family:Inter,&quot;Helvetica Neue&qu=
ot;,Helvetica,Arial,sans-serif;font-size:14px"><b><br></b></span></div><div=
><br></div><div><br></div><div><a href=3D"https://support.xilinx.com/s/arti=
cle/53034?language=3Den_US" target=3D"_blank">https://support.xilinx.com/s/=
article/53034?language=3Den_US</a><br></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 3, 2022 at 1:29 PM =
sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stac=
kprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div>When I want to build a new image =
configuration for USRP X300 I was faced with=C2=A0=C2=A0[00:12:48] Process =
terminated. Status: Failure<br><div>my new RFNOC core image YAML file, I at=
tached here...</div><div><b>And when I want to build I used these commands:=
</b></div><div><br></div><div>source setupenv.sh =C2=A0--vivado-path=3D/hom=
e/sp/xilinx/Vivado<br></div><div>rfnoc_image_builder -y x300_with_fft.yml -=
t X300_HG =C2=A0 --fpga-dir=3D/home/sp/Documents/uhd-4.1.0.5/fpga =C2=A0 --=
vivado-path=3D/home/sp/xilinx/Vivado =C2=A0<br><br></div><div><b>Errors: I =
was=C2=A0faced with these errors...</b></div><div><br></div><div>[00:12:48]=
 Current task: Synthesis +++ Current Phase: Finished<br>[00:12:48] Process =
terminated. Status: Failure<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Warnings: =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 715<br>Critical Warnings: =C2=A030<br>Errors: =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0<br><br>make[1]: *** [Makefile.x=
300.inc:127: bin] Error 1<br>make[1]: Leaving directory &#39;/home/sp/Docum=
ents/uhd-4.1.0.5/fpga/usrp3/top/x300&#39;<br>make: *** [Makefile:90: X300_H=
G] Error 2<br></div><div><br></div><div><b>Build log file:</b></div><div>I =
added the end part of the build log file here, I don&#39;t see any errors..=
.</div><div><br></div><div><b>my question is how can solve my problem? How =
much=C2=A0can I debug? as in the build log file and terminal I can not see =
any errors?</b></div><div><b>thanks in advance</b></div></div><div><br></di=
v><div>genblk1[73].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance=
 &#39;cic_interpolate:/genblk1[65].axi_round&#39; (axi_round__parameterized=
16) to &#39;cic_interpolate:/genblk1[74].axi_round&#39;<br>INFO: [Synth 8-2=
23] decloning instance &#39;cic_interpolate:/genblk1[65].axi_round&#39; (ax=
i_round__parameterized16) to &#39;cic_interpolate:/genblk1[75].axi_round&#3=
9;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[=
65].axi_round&#39; (axi_round__parameterized16) to &#39;cic_interpolate:/ge=
nblk1[76].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic=
_interpolate:/genblk1[65].axi_round&#39; (axi_round__parameterized16) to &#=
39;cic_interpolate:/genblk1[77].axi_round&#39;<br>INFO: [Synth 8-223] declo=
ning instance &#39;cic_interpolate:/genblk1[65].axi_round&#39; (axi_round__=
parameterized16) to &#39;cic_interpolate:/genblk1[78].axi_round&#39;<br>INF=
O: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[65].axi_r=
ound&#39; (axi_round__parameterized16) to &#39;cic_interpolate:/genblk1[79]=
.axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpol=
ate:/genblk1[65].axi_round&#39; (axi_round__parameterized16) to &#39;cic_in=
terpolate:/genblk1[80].axi_round&#39;<br>INFO: [Synth 8-223] decloning inst=
ance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameter=
ized17) to &#39;cic_interpolate:/genblk1[82].axi_round&#39;<br>INFO: [Synth=
 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39;=
 (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[83].axi_roun=
d&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genb=
lk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_interpolate=
:/genblk1[84].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39=
;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) t=
o &#39;cic_interpolate:/genblk1[85].axi_round&#39;<br>INFO: [Synth 8-223] d=
ecloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_rou=
nd__parameterized17) to &#39;cic_interpolate:/genblk1[86].axi_round&#39;<br=
>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].a=
xi_round&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1=
[87].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_inte=
rpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;ci=
c_interpolate:/genblk1[88].axi_round&#39;<br>INFO: [Synth 8-223] decloning =
instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__param=
eterized17) to &#39;cic_interpolate:/genblk1[89].axi_round&#39;<br>INFO: [S=
ynth 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&=
#39; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[90].axi_=
round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/=
genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_interpo=
late:/genblk1[91].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance =
&#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized1=
7) to &#39;cic_interpolate:/genblk1[92].axi_round&#39;<br>INFO: [Synth 8-22=
3] decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi=
_round__parameterized17) to &#39;cic_interpolate:/genblk1[93].axi_round&#39=
;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[8=
1].axi_round&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/gen=
blk1[94].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_=
interpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#3=
9;cic_interpolate:/genblk1[95].axi_round&#39;<br>INFO: [Synth 8-223] declon=
ing instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__p=
arameterized17) to &#39;cic_interpolate:/genblk1[96].axi_round&#39;<br>INFO=
: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_ro=
und&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[97].=
axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpola=
te:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_int=
erpolate:/genblk1[98].axi_round&#39;<br>INFO: [Synth 8-223] decloning insta=
nce &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameteri=
zed17) to &#39;cic_interpolate:/genblk1[99].axi_round&#39;<br>INFO: [Synth =
8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; =
(axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[100].axi_roun=
d&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genb=
lk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_interpolate=
:/genblk1[101].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#3=
9;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round__parameterized18)=
 to &#39;cic_interpolate:/genblk1[103].axi_round&#39;<br>INFO: [Synth 8-223=
] decloning instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi=
_round__parameterized18) to &#39;cic_interpolate:/genblk1[104].axi_round&#3=
9;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[=
102].axi_round&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/g=
enblk1[105].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;c=
ic_interpolate:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to=
 &#39;cic_interpolate:/genblk1[106].axi_round&#39;<br>INFO: [Synth 8-223] d=
ecloning instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_ro=
und__parameterized18) to &#39;cic_interpolate:/genblk1[107].axi_round&#39;<=
br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[102=
].axi_round&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/genb=
lk1[108].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_=
interpolate:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to &#=
39;cic_interpolate:/genblk1[109].axi_round&#39;<br>INFO: [Synth 8-223] decl=
oning instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round=
__parameterized18) to &#39;cic_interpolate:/genblk1[110].axi_round&#39;<br>=
INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[102].a=
xi_round&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/genblk1=
[111].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_int=
erpolate:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to &#39;=
cic_interpolate:/genblk1[112].axi_round&#39;<br>INFO: [Synth 8-223] decloni=
ng instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round__p=
arameterized18) to &#39;cic_interpolate:/genblk1[113].axi_round&#39;<br>INF=
O: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[102].axi_=
round&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/genblk1[11=
4].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interp=
olate:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to &#39;cic=
_interpolate:/genblk1[115].axi_round&#39;<br>INFO: [Synth 8-223] decloning =
instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round__para=
meterized18) to &#39;cic_interpolate:/genblk1[116].axi_round&#39;<br>INFO: =
[Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[102].axi_rou=
nd&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/genblk1[117].=
axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpola=
te:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to &#39;cic_in=
terpolate:/genblk1[118].axi_round&#39;<br>INFO: [Common 17-14] Message &#39=
;Synth 8-223&#39; appears 100 times and further instances of the messages w=
ill be disabled. Use the Tcl command set_msg_config to change the current s=
ettings.<br></div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000bfe10205d7507927--

--===============0225507227122239923==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0225507227122239923==--
