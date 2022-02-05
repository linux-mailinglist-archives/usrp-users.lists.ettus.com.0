Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1954AA6E9
	for <lists+usrp-users@lfdr.de>; Sat,  5 Feb 2022 06:37:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8530B385FF9
	for <lists+usrp-users@lfdr.de>; Sat,  5 Feb 2022 00:37:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gz0NE4Uk";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 8936D3858C4
	for <usrp-users@lists.ettus.com>; Sat,  5 Feb 2022 00:36:36 -0500 (EST)
Received: by mail-yb1-f179.google.com with SMTP id p5so24608677ybd.13
        for <usrp-users@lists.ettus.com>; Fri, 04 Feb 2022 21:36:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TIV+z5ivV1dIFAqB1vzZfWLarD2YrvO729kP8kj1Jl4=;
        b=gz0NE4UkBshp/e59nqqid0trYGRvwd4UA+0kN4vq7MbO/chLqNboO0YFQk9Qa5g2Zq
         FZT0pDE7015spsNVRr9+S7Bsm0T5iFt8E6bx5+H5y3aCK0Fn50LXS1uN85YSfs3Qu8OJ
         7CT4FP2r+Nyk6XmyPPy/hg5EWMMMxx445QJeTgjgbclqB1K6s9uyYXWaLE3kq2IVfpP9
         bA1GKwnJqWGuZieeZvlCSEfs0I7gRRE0uVaytvD1p3TyvYJmLPJYSxdvVf7O342lTRBc
         G/ntajcQuMms2PmoBpfrgxLSGQ1odQDg3xisNDO2dOAg6c0szSKJLCZ59RDelKJHxhou
         yXGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TIV+z5ivV1dIFAqB1vzZfWLarD2YrvO729kP8kj1Jl4=;
        b=m8SMCm4oOX3WqhRBi4FW/NShenhqA+vRdnLGQjtO5yPP8xLHnFSwdZhqEt62zZZJTf
         ftMP4nng2ZviA4tY4dDQf0jB6b9tOvYYfMELmEYoaBVsc5V3LvsXnWKEfgYXauCZ3zae
         XHUEs6lYkSy6RPulR8jlozJEGHi/bIbSHbhx06r+dhdc2dSlXYwPWxwBOAbMiynOqzLX
         kk2NUohAEULgdCUwyxU+6+zcd9gjsEcaiCKVJWkUAwRjCYw03wqXznEt9e3xrobsCBq8
         TL8Sfe2fvWukzQLK0YFMBz15TfhfM2AuIE4EQ3sENZ7H4EfwhcSJFAepqG4CVxOF1uMS
         /Jhw==
X-Gm-Message-State: AOAM532iwReRjlw0lrv1TBVzJeefdg9V7c4NhRsnyVI/Z+ijojVy+nTA
	ohSF6aQnAB0eUJ2Hvqz/CvKpnR3lQer2s5ZJNQqFFIcxLaAG0vbw
X-Google-Smtp-Source: ABdhPJyy9DCPqCn9+T892EooGme6MAIin34wnwHrHJ+g58HS8JcLxgWWZ4QaZRFsFkt6bPVLdMI+RcGLHgC49Gsa+2s=
X-Received: by 2002:a25:db94:: with SMTP id g142mr2389409ybf.368.1644039395389;
 Fri, 04 Feb 2022 21:36:35 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PsErhg-2ScEfGRxKxjF7j1dO1bifVg8_bmY4vHUMipPHw@mail.gmail.com>
 <CAA=S3PtGaWu0pd2q4UV6v0ca9A=juysZQJOMS1hpbrLRBdLG2A@mail.gmail.com>
 <CAL7q81v_UDMMqWvtj=Tz6iC7hC7CUGbFxazwZnBsxhSV0U2fvg@mail.gmail.com>
 <CAA=S3PvnC7QuFMQwutBb1kCBX4D4spKC04_Zio_x4QRRB6Oz2Q@mail.gmail.com> <CAFche=iXbPGeA+ONgEc2aXStw-JdQA3Y4Rts_hPSEPavK5r5ew@mail.gmail.com>
In-Reply-To: <CAFche=iXbPGeA+ONgEc2aXStw-JdQA3Y4Rts_hPSEPavK5r5ew@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Sat, 5 Feb 2022 09:06:17 +0330
Message-ID: <CAA=S3PvX6afDxXXM5gOwpVbH5HOGLVoW+1K4WQEBzeJRHHcb_w@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: LJTRUT6EVLI6LAPXGJJTO6QAD2J3XLJY
X-Message-ID-Hash: LJTRUT6EVLI6LAPXGJJTO6QAD2J3XLJY
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building FPGA [00:12:48] Process terminated. Status: Failure How much can I debug?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LJTRUT6EVLI6LAPXGJJTO6QAD2J3XLJY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4897858281968215559=="

--===============4897858281968215559==
Content-Type: multipart/alternative; boundary="00000000000028b62105d73ec0f9"

--00000000000028b62105d73ec0f9
Content-Type: text/plain; charset="UTF-8"

Hi, thanks for your attention in the first message I attached the YAML
RFNOC image core...( x300_with_fft.yml )


On Sat, Feb 5, 2022 at 1:48 AM Wade Fife <wade.fife@ettus.com> wrote:

> You mentioned the log file. Did you check build-X300_HG/build.log or just
> the console? In addition to that, you could look at the other files
> generated in the build-X300_HG directory. Sometimes they have information
> that the console doesn't show.
>
> If Vivado didn't output a useful error message, then I suggest reverting
> and reviewing changes you've made to narrow down the cause.
>
> You could also share your x300_with_fft.yml contents so others can check
> if they see anything wrong.
>
> Wade
>
> On Fri, Feb 4, 2022 at 11:12 AM sp h <stackprogramer@gmail.com> wrote:
>
>>  No, I built FPGA from Ubuntu 20.04, a physical PC not VM.
>> Ram is enough 12G, In other cases, it can be built correctly.
>> I think some connections and blocks in the RFNOC core image have errors...
>>
>> On Fri, Feb 4, 2022 at 5:44 PM Jonathon Pendlum <
>> jonathon.pendlum@ettus.com> wrote:
>>
>>> Hi,
>>>
>>> Are you running your FPGA build in a VM or on a system with a limited
>>> amount of RAM?
>>>
>>> Jonathon
>>>
>>> On Fri, Feb 4, 2022 at 8:44 AM sp h <stackprogramer@gmail.com> wrote:
>>>
>>>> Finally, I found that...
>>>> In Vivado there is a limit for the number of warnings and errors which
>>>> are displayed by the tool for a particular error or warning; the default
>>>> value of this limit is 100.
>>>>
>>>>
>>>> I concluded that:
>>>> *The synthesis not completed might be unrelated.  This specific
>>>> "warning" is one of the annoying "optimizations are warnings" cases.  This
>>>> might come up if you have an incorrect clock/reset configuration,
>>>> unconnected outputs, or constant inputs in some cases*
>>>>
>>>>
>>>>
>>>> https://forum.digilentinc.com/topic/4781-message-synth-8-3332-appears-100-times-and-further-instances-of-the-messages-will-be-disabled-use-the-tcl-command-set_msg_config-to-change-the-current-settings/
>>>>
>>>>
>>>> https://support.xilinx.com/s/article/53034?language=en_US
>>>>
>>>> On Thu, Feb 3, 2022 at 1:29 PM sp h <stackprogramer@gmail.com> wrote:
>>>>
>>>>> When I want to build a new image configuration for USRP X300 I was
>>>>> faced with  [00:12:48] Process terminated. Status: Failure
>>>>> my new RFNOC core image YAML file, I attached here...
>>>>> *And when I want to build I used these commands:*
>>>>>
>>>>> source setupenv.sh  --vivado-path=/home/sp/xilinx/Vivado
>>>>> rfnoc_image_builder -y x300_with_fft.yml -t X300_HG
>>>>> --fpga-dir=/home/sp/Documents/uhd-4.1.0.5/fpga
>>>>> --vivado-path=/home/sp/xilinx/Vivado
>>>>>
>>>>> *Errors: I was faced with these errors...*
>>>>>
>>>>> [00:12:48] Current task: Synthesis +++ Current Phase: Finished
>>>>> [00:12:48] Process terminated. Status: Failure
>>>>>
>>>>> ========================================================
>>>>> Warnings:           715
>>>>> Critical Warnings:  30
>>>>> Errors:             0
>>>>>
>>>>> make[1]: *** [Makefile.x300.inc:127: bin] Error 1
>>>>> make[1]: Leaving directory
>>>>> '/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300'
>>>>> make: *** [Makefile:90: X300_HG] Error 2
>>>>>
>>>>> *Build log file:*
>>>>> I added the end part of the build log file here, I don't see any
>>>>> errors...
>>>>>
>>>>> *my question is how can solve my problem? How much can I debug? as in
>>>>> the build log file and terminal I can not see any errors?*
>>>>> *thanks in advance*
>>>>>
>>>>> genblk1[73].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>>> 'cic_interpolate:/genblk1[74].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>>> 'cic_interpolate:/genblk1[75].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>>> 'cic_interpolate:/genblk1[76].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>>> 'cic_interpolate:/genblk1[77].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>>> 'cic_interpolate:/genblk1[78].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>>> 'cic_interpolate:/genblk1[79].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>>> 'cic_interpolate:/genblk1[80].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[82].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[83].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[84].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[85].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[86].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[87].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[88].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[89].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[90].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[91].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[92].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[93].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[94].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[95].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[96].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[97].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[98].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[99].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[100].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>>> 'cic_interpolate:/genblk1[101].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>> 'cic_interpolate:/genblk1[103].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>> 'cic_interpolate:/genblk1[104].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>> 'cic_interpolate:/genblk1[105].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>> 'cic_interpolate:/genblk1[106].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>> 'cic_interpolate:/genblk1[107].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>> 'cic_interpolate:/genblk1[108].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>> 'cic_interpolate:/genblk1[109].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>> 'cic_interpolate:/genblk1[110].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>> 'cic_interpolate:/genblk1[111].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>> 'cic_interpolate:/genblk1[112].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>> 'cic_interpolate:/genblk1[113].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>> 'cic_interpolate:/genblk1[114].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>> 'cic_interpolate:/genblk1[115].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>> 'cic_interpolate:/genblk1[116].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>> 'cic_interpolate:/genblk1[117].axi_round'
>>>>> INFO: [Synth 8-223] decloning instance
>>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>>> 'cic_interpolate:/genblk1[118].axi_round'
>>>>> INFO: [Common 17-14] Message 'Synth 8-223' appears 100 times and
>>>>> further instances of the messages will be disabled. Use the Tcl command
>>>>> set_msg_config to change the current settings.
>>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000028b62105d73ec0f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, thanks for your attention in the first message I attac=
hed the YAML RFNOC image core...(=C2=A0x300_with_fft.yml=C2=A0)<div><br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Sat, Feb 5, 2022 at 1:48 AM Wade Fife &lt;<a href=3D"mailto:wade.fife=
@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>You mentioned the lo=
g file. Did you check build-X300_HG/build.log or just the console? In addit=
ion to that, you could look at the other files generated in the build-X300_=
HG directory. Sometimes they have information that the console doesn&#39;t =
show.<br></div><div><br></div><div>If Vivado didn&#39;t output a useful err=
or message, then I suggest reverting and reviewing changes you&#39;ve made =
to narrow down the cause.</div><div><br></div><div>You could also share you=
r=20
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

--00000000000028b62105d73ec0f9--

--===============4897858281968215559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4897858281968215559==--
