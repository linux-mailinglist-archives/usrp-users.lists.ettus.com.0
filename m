Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D854AA305
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 23:19:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B4473385FDF
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 17:19:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="LYqV9mdB";
	dkim-atps=neutral
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 819E63859B6
	for <usrp-users@lists.ettus.com>; Fri,  4 Feb 2022 17:18:40 -0500 (EST)
Received: by mail-yb1-f182.google.com with SMTP id e145so2640970yba.12
        for <usrp-users@lists.ettus.com>; Fri, 04 Feb 2022 14:18:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YbQnWGQI+bwhKq0TTs9+CjOCZ0JSVXcNreWk2hCeMLY=;
        b=LYqV9mdBgQ8P+Pskd8Buxa49L0Cfj0nAWNDLNhGJIcXUG3OK9lTP8PvITfSuZPy1zo
         bUPsLFmH/V6q/9irM3Ib0c4VZxijKORG1TxEPrJ5Oq4sXf4U3j6hT9pAKd74DCY4591p
         Excf/EbIPDoKbGKB/bboNhIAo5K/6qdIAeWIvfYYkpQ9nGy8Kub3dSLNNCgOl4h49dBY
         Tjg3yYyS/xNc+IWFQgpsrwIZthzwyzu/i88idNksqyJKFHV7Erx71PzRJlgGxDT0jVIL
         j9X4VLxrSt9ksN8duLkECAa6cMnOeBanosgox++LCT441XZ/Asg0umaTNrcW69SiSwlV
         4Veg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YbQnWGQI+bwhKq0TTs9+CjOCZ0JSVXcNreWk2hCeMLY=;
        b=dyYNm6gKRbGGI933XoJ4Q80+270cIqaGiRWPz5xiZ2s+DyDVJqNZLBbfU5awfuLosm
         tG8O2G3k9HbTd5qo85NVA5o3AXN23RygAuKWcP0haQKBeuZ5YsW3Yzv2kCP8IggRfi7G
         1rC9If7hE5rFBizpicNHqXT16Yyo/0/0+w8mIv5qk0lfwxZvT/1+uvYdvNwMHW6mz7dd
         JcD2odlD7WQutddqx4HPuAGqUGIemLz+caa/csmRObx2SBwXUHPVW9kJSk2UXoiBA5a9
         GQoaaLSa17DZpeWCN209tcbufmKYBCVZDK5kdAflOJgWYrtJafmoHMkCxXrwRMNiG1h9
         d+Gw==
X-Gm-Message-State: AOAM531TAicksmbSgt2902PoAuCiZ2Tkg+PPZthDnTKAvcixWYzvfANp
	2eiQZtc46FP9eqansOUibWH/VZ+mG7beTRH0Id34+snL
X-Google-Smtp-Source: ABdhPJw/JSHUNJIIXyqFLbL7lAE6/hpsFKYAB+zra01sQWyp/L7RRFG3mb1axvaU2Aqm+daj1bY1HDjFDQ2upuMChMs=
X-Received: by 2002:a81:bb4c:: with SMTP id a12mr1195369ywl.200.1644013119802;
 Fri, 04 Feb 2022 14:18:39 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PsErhg-2ScEfGRxKxjF7j1dO1bifVg8_bmY4vHUMipPHw@mail.gmail.com>
 <CAA=S3PtGaWu0pd2q4UV6v0ca9A=juysZQJOMS1hpbrLRBdLG2A@mail.gmail.com>
 <CAL7q81v_UDMMqWvtj=Tz6iC7hC7CUGbFxazwZnBsxhSV0U2fvg@mail.gmail.com> <CAA=S3PvnC7QuFMQwutBb1kCBX4D4spKC04_Zio_x4QRRB6Oz2Q@mail.gmail.com>
In-Reply-To: <CAA=S3PvnC7QuFMQwutBb1kCBX4D4spKC04_Zio_x4QRRB6Oz2Q@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 4 Feb 2022 16:18:24 -0600
Message-ID: <CAFche=iXbPGeA+ONgEc2aXStw-JdQA3Y4Rts_hPSEPavK5r5ew@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: JMJ2O2L55JCWFAM6PRCG2TUHSP7JKEMU
X-Message-ID-Hash: JMJ2O2L55JCWFAM6PRCG2TUHSP7JKEMU
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building FPGA [00:12:48] Process terminated. Status: Failure How much can I debug?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JMJ2O2L55JCWFAM6PRCG2TUHSP7JKEMU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8834322142365698803=="

--===============8834322142365698803==
Content-Type: multipart/alternative; boundary="00000000000003274d05d738a217"

--00000000000003274d05d738a217
Content-Type: text/plain; charset="UTF-8"

You mentioned the log file. Did you check build-X300_HG/build.log or just
the console? In addition to that, you could look at the other files
generated in the build-X300_HG directory. Sometimes they have information
that the console doesn't show.

If Vivado didn't output a useful error message, then I suggest reverting
and reviewing changes you've made to narrow down the cause.

You could also share your x300_with_fft.yml contents so others can check if
they see anything wrong.

Wade

On Fri, Feb 4, 2022 at 11:12 AM sp h <stackprogramer@gmail.com> wrote:

>  No, I built FPGA from Ubuntu 20.04, a physical PC not VM.
> Ram is enough 12G, In other cases, it can be built correctly.
> I think some connections and blocks in the RFNOC core image have errors...
>
> On Fri, Feb 4, 2022 at 5:44 PM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hi,
>>
>> Are you running your FPGA build in a VM or on a system with a limited
>> amount of RAM?
>>
>> Jonathon
>>
>> On Fri, Feb 4, 2022 at 8:44 AM sp h <stackprogramer@gmail.com> wrote:
>>
>>> Finally, I found that...
>>> In Vivado there is a limit for the number of warnings and errors which
>>> are displayed by the tool for a particular error or warning; the default
>>> value of this limit is 100.
>>>
>>>
>>> I concluded that:
>>> *The synthesis not completed might be unrelated.  This specific
>>> "warning" is one of the annoying "optimizations are warnings" cases.  This
>>> might come up if you have an incorrect clock/reset configuration,
>>> unconnected outputs, or constant inputs in some cases*
>>>
>>>
>>>
>>> https://forum.digilentinc.com/topic/4781-message-synth-8-3332-appears-100-times-and-further-instances-of-the-messages-will-be-disabled-use-the-tcl-command-set_msg_config-to-change-the-current-settings/
>>>
>>>
>>> https://support.xilinx.com/s/article/53034?language=en_US
>>>
>>> On Thu, Feb 3, 2022 at 1:29 PM sp h <stackprogramer@gmail.com> wrote:
>>>
>>>> When I want to build a new image configuration for USRP X300 I was
>>>> faced with  [00:12:48] Process terminated. Status: Failure
>>>> my new RFNOC core image YAML file, I attached here...
>>>> *And when I want to build I used these commands:*
>>>>
>>>> source setupenv.sh  --vivado-path=/home/sp/xilinx/Vivado
>>>> rfnoc_image_builder -y x300_with_fft.yml -t X300_HG
>>>> --fpga-dir=/home/sp/Documents/uhd-4.1.0.5/fpga
>>>> --vivado-path=/home/sp/xilinx/Vivado
>>>>
>>>> *Errors: I was faced with these errors...*
>>>>
>>>> [00:12:48] Current task: Synthesis +++ Current Phase: Finished
>>>> [00:12:48] Process terminated. Status: Failure
>>>>
>>>> ========================================================
>>>> Warnings:           715
>>>> Critical Warnings:  30
>>>> Errors:             0
>>>>
>>>> make[1]: *** [Makefile.x300.inc:127: bin] Error 1
>>>> make[1]: Leaving directory
>>>> '/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300'
>>>> make: *** [Makefile:90: X300_HG] Error 2
>>>>
>>>> *Build log file:*
>>>> I added the end part of the build log file here, I don't see any
>>>> errors...
>>>>
>>>> *my question is how can solve my problem? How much can I debug? as in
>>>> the build log file and terminal I can not see any errors?*
>>>> *thanks in advance*
>>>>
>>>> genblk1[73].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>> 'cic_interpolate:/genblk1[74].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>> 'cic_interpolate:/genblk1[75].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>> 'cic_interpolate:/genblk1[76].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>> 'cic_interpolate:/genblk1[77].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>> 'cic_interpolate:/genblk1[78].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>> 'cic_interpolate:/genblk1[79].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[65].axi_round' (axi_round__parameterized16) to
>>>> 'cic_interpolate:/genblk1[80].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[82].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[83].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[84].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[85].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[86].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[87].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[88].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[89].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[90].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[91].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[92].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[93].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[94].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[95].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[96].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[97].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[98].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[99].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[100].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[81].axi_round' (axi_round__parameterized17) to
>>>> 'cic_interpolate:/genblk1[101].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>> 'cic_interpolate:/genblk1[103].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>> 'cic_interpolate:/genblk1[104].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>> 'cic_interpolate:/genblk1[105].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>> 'cic_interpolate:/genblk1[106].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>> 'cic_interpolate:/genblk1[107].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>> 'cic_interpolate:/genblk1[108].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>> 'cic_interpolate:/genblk1[109].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>> 'cic_interpolate:/genblk1[110].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>> 'cic_interpolate:/genblk1[111].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>> 'cic_interpolate:/genblk1[112].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>> 'cic_interpolate:/genblk1[113].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>> 'cic_interpolate:/genblk1[114].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>> 'cic_interpolate:/genblk1[115].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>> 'cic_interpolate:/genblk1[116].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>> 'cic_interpolate:/genblk1[117].axi_round'
>>>> INFO: [Synth 8-223] decloning instance
>>>> 'cic_interpolate:/genblk1[102].axi_round' (axi_round__parameterized18) to
>>>> 'cic_interpolate:/genblk1[118].axi_round'
>>>> INFO: [Common 17-14] Message 'Synth 8-223' appears 100 times and
>>>> further instances of the messages will be disabled. Use the Tcl command
>>>> set_msg_config to change the current settings.
>>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000003274d05d738a217
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You mentioned the log file. Did you check build-X300_=
HG/build.log or just the console? In addition to that, you could look at th=
e other files generated in the build-X300_HG directory. Sometimes they have=
 information that the console doesn&#39;t show.<br></div><div><br></div><di=
v>If Vivado didn&#39;t output a useful error message, then I suggest revert=
ing and reviewing changes you&#39;ve made to narrow down the cause.</div><d=
iv><br></div><div>You could also share your=20
x300_with_fft.yml contents so others can check if they see anything wrong.

</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 4, 2022 at 11:12 AM sp =
h &lt;<a href=3D"mailto:stackprogramer@gmail.com">stackprogramer@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr">=C2=A0No, I built FPGA from Ubuntu 20.04, a physical=C2=A0P=
C not VM.<br><div>Ram is enough 12G, In other cases, it can be built correc=
tly.=C2=A0</div><div>I think some connections and blocks in the RFNOC core =
image have errors...</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Fri, Feb 4, 2022 at 5:44 PM Jonathon Pendlum &=
lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon=
.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>Are you running y=
our FPGA build in a VM or on a system with a limited amount of RAM?</div><d=
iv><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 4, 2022 at 8:44 AM sp h &lt;<a =
href=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stackprogramer@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr">Finally, I found that...<div><span style=3D"color:=
rgb(51,51,51);font-family:Roboto,sans-serif;font-size:12px">In Vivado=C2=A0=
there is a limit for the number of warnings and errors which are displayed =
by the tool for a particular error or warning; the default value of this li=
mit is 100.=C2=A0</span><br></div><div><span style=3D"color:rgb(51,51,51);f=
ont-family:Roboto,sans-serif;font-size:12px"><br></span></div><div><span st=
yle=3D"color:rgb(51,51,51);font-family:Roboto,sans-serif;font-size:12px"><b=
r></span></div><div><span style=3D"color:rgb(51,51,51);font-family:Roboto,s=
ans-serif;font-size:12px">I concluded that:</span></div><div><span style=3D=
"color:rgb(53,60,65);font-family:Inter,&quot;Helvetica Neue&quot;,Helvetica=
,Arial,sans-serif;font-size:14px"><b>The synthesis not completed might be u=
nrelated.=C2=A0 This specific &quot;warning&quot; is one of the annoying &q=
uot;optimizations are warnings&quot; cases.=C2=A0 This might come up if you=
 have an incorrect clock/reset configuration, unconnected outputs, or const=
ant inputs in some cases</b></span><span style=3D"color:rgb(51,51,51);font-=
family:Roboto,sans-serif;font-size:12px"><br></span></div><div><span style=
=3D"color:rgb(53,60,65);font-family:Inter,&quot;Helvetica Neue&quot;,Helvet=
ica,Arial,sans-serif;font-size:14px"><b><br></b></span></div><div><span sty=
le=3D"color:rgb(53,60,65);font-family:Inter,&quot;Helvetica Neue&quot;,Helv=
etica,Arial,sans-serif;font-size:14px"><b><br></b></span></div><div><a href=
=3D"https://forum.digilentinc.com/topic/4781-message-synth-8-3332-appears-1=
00-times-and-further-instances-of-the-messages-will-be-disabled-use-the-tcl=
-command-set_msg_config-to-change-the-current-settings/" target=3D"_blank">=
https://forum.digilentinc.com/topic/4781-message-synth-8-3332-appears-100-t=
imes-and-further-instances-of-the-messages-will-be-disabled-use-the-tcl-com=
mand-set_msg_config-to-change-the-current-settings/</a><span style=3D"color=
:rgb(53,60,65);font-family:Inter,&quot;Helvetica Neue&quot;,Helvetica,Arial=
,sans-serif;font-size:14px"><b><br></b></span></div><div><br></div><div><br=
></div><div><a href=3D"https://support.xilinx.com/s/article/53034?language=
=3Den_US" target=3D"_blank">https://support.xilinx.com/s/article/53034?lang=
uage=3Den_US</a><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Thu, Feb 3, 2022 at 1:29 PM sp h &lt;<a href=
=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stackprogramer@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><div>When I want to build a new image configuration fo=
r USRP X300 I was faced with=C2=A0=C2=A0[00:12:48] Process terminated. Stat=
us: Failure<br><div>my new RFNOC core image YAML file, I attached here...</=
div><div><b>And when I want to build I used these commands:</b></div><div><=
br></div><div>source setupenv.sh =C2=A0--vivado-path=3D/home/sp/xilinx/Viva=
do<br></div><div>rfnoc_image_builder -y x300_with_fft.yml -t X300_HG =C2=A0=
 --fpga-dir=3D/home/sp/Documents/uhd-4.1.0.5/fpga =C2=A0 --vivado-path=3D/h=
ome/sp/xilinx/Vivado =C2=A0<br><br></div><div><b>Errors: I was=C2=A0faced w=
ith these errors...</b></div><div><br></div><div>[00:12:48] Current task: S=
ynthesis +++ Current Phase: Finished<br>[00:12:48] Process terminated. Stat=
us: Failure<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Warnings: =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 715<br>Critical Warnings: =C2=A030<br>Errors: =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 0<br><br>make[1]: *** [Makefile.x300.inc:127: b=
in] Error 1<br>make[1]: Leaving directory &#39;/home/sp/Documents/uhd-4.1.0=
.5/fpga/usrp3/top/x300&#39;<br>make: *** [Makefile:90: X300_HG] Error 2<br>=
</div><div><br></div><div><b>Build log file:</b></div><div>I added the end =
part of the build log file here, I don&#39;t see any errors...</div><div><b=
r></div><div><b>my question is how can solve my problem? How much=C2=A0can =
I debug? as in the build log file and terminal I can not see any errors?</b=
></div><div><b>thanks in advance</b></div></div><div><br></div><div>genblk1=
[73].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_inte=
rpolate:/genblk1[65].axi_round&#39; (axi_round__parameterized16) to &#39;ci=
c_interpolate:/genblk1[74].axi_round&#39;<br>INFO: [Synth 8-223] decloning =
instance &#39;cic_interpolate:/genblk1[65].axi_round&#39; (axi_round__param=
eterized16) to &#39;cic_interpolate:/genblk1[75].axi_round&#39;<br>INFO: [S=
ynth 8-223] decloning instance &#39;cic_interpolate:/genblk1[65].axi_round&=
#39; (axi_round__parameterized16) to &#39;cic_interpolate:/genblk1[76].axi_=
round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/=
genblk1[65].axi_round&#39; (axi_round__parameterized16) to &#39;cic_interpo=
late:/genblk1[77].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance =
&#39;cic_interpolate:/genblk1[65].axi_round&#39; (axi_round__parameterized1=
6) to &#39;cic_interpolate:/genblk1[78].axi_round&#39;<br>INFO: [Synth 8-22=
3] decloning instance &#39;cic_interpolate:/genblk1[65].axi_round&#39; (axi=
_round__parameterized16) to &#39;cic_interpolate:/genblk1[79].axi_round&#39=
;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[6=
5].axi_round&#39; (axi_round__parameterized16) to &#39;cic_interpolate:/gen=
blk1[80].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_=
interpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#3=
9;cic_interpolate:/genblk1[82].axi_round&#39;<br>INFO: [Synth 8-223] declon=
ing instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__p=
arameterized17) to &#39;cic_interpolate:/genblk1[83].axi_round&#39;<br>INFO=
: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_ro=
und&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[84].=
axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpola=
te:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_int=
erpolate:/genblk1[85].axi_round&#39;<br>INFO: [Synth 8-223] decloning insta=
nce &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameteri=
zed17) to &#39;cic_interpolate:/genblk1[86].axi_round&#39;<br>INFO: [Synth =
8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; =
(axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[87].axi_round=
&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genbl=
k1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_interpolate:=
/genblk1[88].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;=
cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to=
 &#39;cic_interpolate:/genblk1[89].axi_round&#39;<br>INFO: [Synth 8-223] de=
cloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_roun=
d__parameterized17) to &#39;cic_interpolate:/genblk1[90].axi_round&#39;<br>=
INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].ax=
i_round&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[=
91].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_inter=
polate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic=
_interpolate:/genblk1[92].axi_round&#39;<br>INFO: [Synth 8-223] decloning i=
nstance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__parame=
terized17) to &#39;cic_interpolate:/genblk1[93].axi_round&#39;<br>INFO: [Sy=
nth 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#=
39; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[94].axi_r=
ound&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/g=
enblk1[81].axi_round&#39; (axi_round__parameterized17) to &#39;cic_interpol=
ate:/genblk1[95].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &=
#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized17=
) to &#39;cic_interpolate:/genblk1[96].axi_round&#39;<br>INFO: [Synth 8-223=
] decloning instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_=
round__parameterized17) to &#39;cic_interpolate:/genblk1[97].axi_round&#39;=
<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[81=
].axi_round&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/genb=
lk1[98].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_i=
nterpolate:/genblk1[81].axi_round&#39; (axi_round__parameterized17) to &#39=
;cic_interpolate:/genblk1[99].axi_round&#39;<br>INFO: [Synth 8-223] decloni=
ng instance &#39;cic_interpolate:/genblk1[81].axi_round&#39; (axi_round__pa=
rameterized17) to &#39;cic_interpolate:/genblk1[100].axi_round&#39;<br>INFO=
: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[81].axi_ro=
und&#39; (axi_round__parameterized17) to &#39;cic_interpolate:/genblk1[101]=
.axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpol=
ate:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to &#39;cic_i=
nterpolate:/genblk1[103].axi_round&#39;<br>INFO: [Synth 8-223] decloning in=
stance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round__parame=
terized18) to &#39;cic_interpolate:/genblk1[104].axi_round&#39;<br>INFO: [S=
ynth 8-223] decloning instance &#39;cic_interpolate:/genblk1[102].axi_round=
&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/genblk1[105].ax=
i_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate=
:/genblk1[102].axi_round&#39; (axi_round__parameterized18) to &#39;cic_inte=
rpolate:/genblk1[106].axi_round&#39;<br>INFO: [Synth 8-223] decloning insta=
nce &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round__parameter=
ized18) to &#39;cic_interpolate:/genblk1[107].axi_round&#39;<br>INFO: [Synt=
h 8-223] decloning instance &#39;cic_interpolate:/genblk1[102].axi_round&#3=
9; (axi_round__parameterized18) to &#39;cic_interpolate:/genblk1[108].axi_r=
ound&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/g=
enblk1[102].axi_round&#39; (axi_round__parameterized18) to &#39;cic_interpo=
late:/genblk1[109].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance=
 &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round__parameterize=
d18) to &#39;cic_interpolate:/genblk1[110].axi_round&#39;<br>INFO: [Synth 8=
-223] decloning instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; =
(axi_round__parameterized18) to &#39;cic_interpolate:/genblk1[111].axi_roun=
d&#39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genb=
lk1[102].axi_round&#39; (axi_round__parameterized18) to &#39;cic_interpolat=
e:/genblk1[112].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#=
39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_round__parameterized18=
) to &#39;cic_interpolate:/genblk1[113].axi_round&#39;<br>INFO: [Synth 8-22=
3] decloning instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (ax=
i_round__parameterized18) to &#39;cic_interpolate:/genblk1[114].axi_round&#=
39;<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1=
[102].axi_round&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/=
genblk1[115].axi_round&#39;<br>INFO: [Synth 8-223] decloning instance &#39;=
cic_interpolate:/genblk1[102].axi_round&#39; (axi_round__parameterized18) t=
o &#39;cic_interpolate:/genblk1[116].axi_round&#39;<br>INFO: [Synth 8-223] =
decloning instance &#39;cic_interpolate:/genblk1[102].axi_round&#39; (axi_r=
ound__parameterized18) to &#39;cic_interpolate:/genblk1[117].axi_round&#39;=
<br>INFO: [Synth 8-223] decloning instance &#39;cic_interpolate:/genblk1[10=
2].axi_round&#39; (axi_round__parameterized18) to &#39;cic_interpolate:/gen=
blk1[118].axi_round&#39;<br>INFO: [Common 17-14] Message &#39;Synth 8-223&#=
39; appears 100 times and further instances of the messages will be disable=
d. Use the Tcl command set_msg_config to change the current settings.<br></=
div></div>
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

--00000000000003274d05d738a217--

--===============8834322142365698803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8834322142365698803==--
