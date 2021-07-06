Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 180833BD743
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 14:57:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B886538423A
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 08:57:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="V3/OpcdO";
	dkim-atps=neutral
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 162D938420E
	for <usrp-users@lists.ettus.com>; Tue,  6 Jul 2021 08:55:29 -0400 (EDT)
Received: by mail-ot1-f41.google.com with SMTP id d21-20020a9d72d50000b02904604cda7e66so21432066otk.7
        for <usrp-users@lists.ettus.com>; Tue, 06 Jul 2021 05:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=u2lox6F/5/lZGr8ijA0s9POvF4MAi8GnfSW95k/8PrY=;
        b=V3/OpcdOgAsgG1WWHd6yMpEk+9t97PgsnCZK5G20yu2POP/R17v62b7Nr/X97yZhDR
         oPJerRz3T7FLuNrx490KFxaj0I1M7HbqFMkla6gSjVutU2YIreUif67QXRd9AGlktfcA
         ZMWmhigrmPqtBUESMU2fNnn1LwqnON4Qct8kdVK/3HtbmbM7G/+2sKalZKnQUHQhV5ur
         RfN06Z/f1PkzMuIlNdq/rLuoqMhZ1bP4qHJT4CvkWGX+aEbXPyFnZVks0yh6n+imcyTH
         8YTy/y6U6gs2qAZaOigNhsw0uMLIf2LMyAz3wCeeZYLvjPt4Ej1yMOdDlzFLGOcrz+Xx
         VbuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=u2lox6F/5/lZGr8ijA0s9POvF4MAi8GnfSW95k/8PrY=;
        b=MA+HfCQB/beDyK1L8Q1PmW/iupw+2al3DaYJ75tkq+Sj1kRQCUANH4ylYU015GgjMR
         6Jt6Xp6bbPMaDUfc/eTCyQbvi3p3HMi7gaW8u8r4WlEhNj7Qy9nhiidZbsr2FM4n0Vpx
         LnuWqaRo92aKaC/huynoB5aEe/UFmIkSk+hHVl/UBdZ/m3WZf4gzYujtWdya8K6s7OBs
         8mSZqQlRIbleJvpRjJSUYuaWJnRs3YDsbkA0h8k3pWJjWml3S465w21QnyOLN0ZaaAkV
         59ukROQ9dWUkLSAdtSKTH1bdYWPhNEf3axhrcGu8F9oHbna3a1NpR7TO/57eTEaXBw8r
         yqwA==
X-Gm-Message-State: AOAM530tpcWczwVHj6HtkdH1TQArnb+Juvbwc0uJXDD+yrFc+laKVmxI
	6ZG0etguqf4fRm0PM0UmV9eICZfTshAlHhT79c880zCW
X-Google-Smtp-Source: ABdhPJypSoo79CWcgyscK2rVKeD5Ty/ql4QAarIYkKd4psPuRROBUD6db3V2jCWt8JSwXnuqbhFTUALFueXLaBQi12o=
X-Received: by 2002:a9d:4804:: with SMTP id c4mr14604369otf.161.1625576129311;
 Tue, 06 Jul 2021 05:55:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAKHaR3kM-b7J03CfmH9enfbXJnE6cJEBhmQ+08y-xQXjA87-yw@mail.gmail.com>
In-Reply-To: <CAKHaR3kM-b7J03CfmH9enfbXJnE6cJEBhmQ+08y-xQXjA87-yw@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 6 Jul 2021 07:55:13 -0500
Message-ID: <CAFche=gq4xzqqaGWGOYFof4qaQCuTz=ScToJpeonOZuTFWA+=w@mail.gmail.com>
To: Dario Pennisi <dario@iptronix.com>
Message-ID-Hash: IVUJBZPBQO35ZPXIQVWRAD3NKYATFFND
X-Message-ID-Hash: IVUJBZPBQO35ZPXIQVWRAD3NKYATFFND
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC internal MTU on N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IVUJBZPBQO35ZPXIQVWRAD3NKYATFFND/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4808898433607750170=="

--===============4808898433607750170==
Content-Type: multipart/alternative; boundary="000000000000be489405c673ef35"

--000000000000be489405c673ef35
Content-Type: text/plain; charset="UTF-8"

Hi Dario,

The FPGA code has the max MTU hard-coded to 10, which matches your block,
so that's good. That's the hard limit on CHDR packet size. You also need
some headroom for header information, so the limit is less than 8192 bytes
of payload. Make sure the MTU for your Ethernet interface is set to
something larger than what you need (9000 is a common setting). I would
also try setting the streamer args spp, recv_frame_size, and
send_frame_size. The spp is in samples and should match the size your block
is configured to generate. The *_frame_size arguments are in bytes and need
to be bigger than the equivalent spp size. More information on setting
these args can be found here:

https://files.ettus.com/manual/page_configuration.html#config_stream_args_args

Thanks,

Wade

On Mon, Jul 5, 2021 at 8:40 PM Dario Pennisi <dario@iptronix.com> wrote:

> Hi,
> i wrote a custom block and i'm trying to output packets that are around
> the size of the MAX MTU directly from my block. since packets have to be
> handled by Zynq's ARM i understand the MTU i have to consider is the one
> for int0 which is 8000. my block's MTU is set to 10 which, considering a
> chdr width of 64 bits makes 8192 bytes if i'm not wrong. When i try to
> generate packets of more than 1500 bytes i start to get very bad errors
> such as:
>
> [ERROR] [STREAMER] The receive transport caught a value exception.
> ValueError: Bad CHDR header or invalid packet length.
> gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received error
> ERROR_CODE_BAD_PACKET (Code: 0xf)
>
> is there any hard limit on CHDR packet size? is there any setting anywhere
> in the code that limits the length of a packet?
> note that i set noc shell to automatically calculate packet lengths as i
> set SIDEBAND_AT_END to 1.
> thanks,
>
> Dario Pennisi
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000be489405c673ef35
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Dario,</div><div><br></div><div>The FPGA code has =
the max MTU hard-coded to 10, which matches your block, so that&#39;s good.=
 That&#39;s the hard limit on CHDR packet size. You also need some headroom=
 for header information, so the limit is less than 8192 bytes of payload. M=
ake sure the MTU for your Ethernet interface is set to something larger tha=
n what you need (9000 is a common setting). I would also try setting the st=
reamer args spp, recv_frame_size, and send_frame_size. The spp is in sample=
s and should match the size your block is configured to generate. The *_fra=
me_size arguments are in bytes and need to be bigger than the equivalent sp=
p size. More information on setting these args can be found here:</div><div=
><br></div><div><a href=3D"https://files.ettus.com/manual/page_configuratio=
n.html#config_stream_args_args">https://files.ettus.com/manual/page_configu=
ration.html#config_stream_args_args</a></div><div><br></div><div>Thanks,</d=
iv><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jul 5, 2021 at 8:40 PM Dario P=
ennisi &lt;<a href=3D"mailto:dario@iptronix.com">dario@iptronix.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi,<div>i wrote a custom block a=
nd i&#39;m trying to output packets that are around the size of the MAX MTU=
 directly from my block. since packets have to be handled by Zynq&#39;s ARM=
 i understand the MTU i have to consider is the one for int0 which is 8000.=
 my block&#39;s MTU is set to 10 which, considering a chdr width of 64 bits=
 makes 8192 bytes if i&#39;m not wrong. When i try to generate packets of m=
ore than 1500 bytes i start to get very bad errors such as:</div><div><div>=
<br></div><div>[ERROR] [STREAMER] The receive transport caught a value exce=
ption.</div><div>ValueError: Bad CHDR header or invalid packet length.</div=
><div>gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received err=
or ERROR_CODE_BAD_PACKET (Code: 0xf)</div></div><div><br></div><div>is ther=
e any hard limit on CHDR packet size? is there any setting anywhere in the =
code that limits the length of a packet?</div><div>note that i set noc shel=
l to automatically calculate packet lengths as i set SIDEBAND_AT_END to 1.<=
/div><div>thanks,</div><div><br clear=3D"all"><div><div dir=3D"ltr"><div di=
r=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;fo=
nt-size:13.3333px">Dario Pennisi</span><br style=3D"color:rgb(0,0,0);font-f=
amily:Calibri,sans-serif;font-size:13.3333px"><br></div></div></div></div><=
/div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000be489405c673ef35--

--===============4808898433607750170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4808898433607750170==--
