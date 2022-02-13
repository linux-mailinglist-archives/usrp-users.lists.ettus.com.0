Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A8C4B39EB
	for <lists+usrp-users@lfdr.de>; Sun, 13 Feb 2022 08:10:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4C2C7385861
	for <lists+usrp-users@lfdr.de>; Sun, 13 Feb 2022 02:10:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bPg68V19";
	dkim-atps=neutral
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id F24C9385854
	for <usrp-users@lists.ettus.com>; Sun, 13 Feb 2022 02:09:39 -0500 (EST)
Received: by mail-yb1-f174.google.com with SMTP id j12so14990076ybh.8
        for <usrp-users@lists.ettus.com>; Sat, 12 Feb 2022 23:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=CJYdDrb/11I+2LkBF3+Kn+0fH8HUs0EEZvSgy7WUMi0=;
        b=bPg68V194HfHVOM/GxFlUO9RqalmOyK8UN9plC9s4j0oua4ajJS22OO4Da8MY8xSTz
         UIgyfl7LYMEqVgXvuMoIb04TLQSnyvQSBK+uXjPcv1wZg7xvvptOflrpzzkNYPhAAG0J
         OPO8HvrvAR1182bBdVNmp4/D3qcZTQqxCVmgiOuSKs2tfvRFNfwyxIXsfkexgOOtqCf+
         oAKVuwwZKWmh5L2GFVfp8ID9Mou1CDLd/Y9n9Dh/3goWKKSm2B0SZSBOrxOwMQ8rBGc1
         tkQFulDYBf8et5xytVdtZL22SyODHyEHtjl8OTP/dYxI5idczmD2otGAZYYD6SiYsiGn
         QXRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=CJYdDrb/11I+2LkBF3+Kn+0fH8HUs0EEZvSgy7WUMi0=;
        b=q9dz/oJ0o5BNhbUa65NrKPRTcrfZK2cyNsaHihsIxoyBNUOqBind6e66XNLAy0m7AY
         SuMW5rwfsYCM7OUCuwxCxes5lxjUvc5SAjOfQGalvcErxPR0vs1RFeIizO0TFL3bgkr6
         vER7vHXGdUS5bV5YajY4EkUu5xiA2D6+Hqc0QyoMYrfqRaWII4ol875KpftnZAVfJGen
         iPpewTgmHH/Fk6PiiZYGWJcJ5HVcfDQu69f7krdmsTm0u4k6tYa7jo/zgwWLa1ZxpWIu
         op9s4Rw5M2hu1jLOZXefDPwKCbRmrb/hO2Hz5fukTNwlvDqjRKLn27Mrh44o0l5jTIn9
         +IxA==
X-Gm-Message-State: AOAM531bO2azzoSEoYv4C5AkRA0AJ/B3bxCRzaw8toddh3VXvjzBqfok
	wHWM9EJUG3mlOnWLdl8P7LjE9wOMTf0QAlF6a2ZdDdDB8KFH9VFC
X-Google-Smtp-Source: ABdhPJxxr8gbmzbA81Kp9v6uz3qfhJZPPvqx/LVmhrPOsfhHnLg6kJ6gaYMDOWhyEoGxCZOrFH/3CiH2kKtJGDa4WfA=
X-Received: by 2002:a25:d09:: with SMTP id 9mr3960056ybn.368.1644736177963;
 Sat, 12 Feb 2022 23:09:37 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PtpMB7XgEuOY-uVUwXGbJ8xvaWCUgALA6DwLYh222aTCw@mail.gmail.com>
 <CAA=S3PvoG1-xFszybLnGTGjHMwtxyEWEj=YnnPV+UJSGF0CM9g@mail.gmail.com>
In-Reply-To: <CAA=S3PvoG1-xFszybLnGTGjHMwtxyEWEj=YnnPV+UJSGF0CM9g@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Sun, 13 Feb 2022 10:39:14 +0330
Message-ID: <CAA=S3Pt6WLqvCA=-OZ1wWRMi6gwEOx=DYPauCKFCfTtO-ov4pQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: HSQKJRGXQQIXKHWOEKSZQGVDOVBHEF4Z
X-Message-ID-Hash: HSQKJRGXQQIXKHWOEKSZQGVDOVBHEF4Z
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error in building USRP FPGA bitstream module 'rfnoc_block_fft' not found
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HSQKJRGXQQIXKHWOEKSZQGVDOVBHEF4Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6562758246795047446=="

--===============6562758246795047446==
Content-Type: multipart/alternative; boundary="000000000000a3058f05d7e0fb48"

--000000000000a3058f05d7e0fb48
Content-Type: text/plain; charset="UTF-8"

Finally, I edited the RFNOC image core when I used the default  RFNOC image
core x300_rfnoc_image_core.yml, and run below command,
I could successfully open UHD project in GUI vivado. Thanks very much
make X300_HG GUI=1

On Thu, Feb 3, 2022 at 12:13 PM sp h <stackprogramer@gmail.com> wrote:

> I reformed my previous post, I used this command, so when I want to build
> with GUI=1 option I was faced with some errors
> make X300_HG GUI=1
> but when I want to make without GUI=1 option I have not any eros... how
> can solve this problem?
>
> On Mon, Jan 31, 2022 at 2:40 PM sp h <stackprogramer@gmail.com> wrote:
>
>> when I want to build an FPGA source for x300 (In Ubuntu 20.04, Gnuradio
>> 3.8.1, uhd-4.1.0.5) I used the below command:
>>
>> source setupenv.sh  --vivado-path=/home/sp/xilinx/Vivado
>> make X300_HG
>>
>> But I have been faced with these errors... can any idea for solving this
>> problem?
>>
>> [00:00:23] Starting Synthesis Command
>> ERROR: [Synth 8-439] module 'rfnoc_block_fft' not found
>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_rfnoc_image_core.v:1354]
>> ERROR: [Synth 8-6156] failed synthesizing module 'rfnoc_image_core'
>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_rfnoc_image_core.v:24]
>> ERROR: [Synth 8-6156] failed synthesizing module 'bus_int'
>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/bus_int.v:9]
>> ERROR: [Synth 8-6156] failed synthesizing module 'x300_core'
>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_core.v:9]
>> ERROR: [Synth 8-6156] failed synthesizing module 'x300'
>> [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300.v:20]
>> ERROR: [Common 17-69] Command failed: Synthesis failed - please see the
>> console or run log file for details
>> [00:03:31] Current task: Synthesis +++ Current Phase: Starting
>> [00:03:31] Current task: Synthesis +++ Current Phase: Finished
>> [00:03:31] Process terminated. Status: Failure
>>
>> ========================================================
>> Warnings:           357
>> Critical Warnings:  1
>> Errors:             6
>>
>> make[1]: *** [Makefile.x300.inc:127: bin] Error 1
>> make[1]: Leaving directory
>> '/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300'
>> make: *** [Makefile:90: X300_HG] Error 2
>>
>>

--000000000000a3058f05d7e0fb48
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Finally, I edited the RFNOC image core when I used the def=
ault=C2=A0 RFNOC image core=C2=A0x300_rfnoc_image_core.yml, and run below=
=C2=A0command,<div>I could successfully open UHD project in GUI vivado. Tha=
nks very much<br><div>make X300_HG=C2=A0<span class=3D"gmail-il">GUI</span>=
=3D1<br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu, Feb 3, 2022 at 12:13 PM sp h &lt;<a href=3D"mai=
lto:stackprogramer@gmail.com">stackprogramer@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I re=
formed my previous post, I used this command, so when I want to build with =
GUI=3D1 option I was faced with some errors=C2=A0<div><div><div>make X300_H=
G GUI=3D1</div></div></div><div>but when I want to make without GUI=3D1 opt=
ion I have not any eros... how can solve this problem?</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 31,=
 2022 at 2:40 PM sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com" targe=
t=3D"_blank">stackprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">when I want to build =
an FPGA source for x300 (In Ubuntu 20.04, Gnuradio 3.8.1, uhd-4.1.0.5) I us=
ed the below command:<div><br><div>source setupenv.sh =C2=A0--vivado-path=
=3D/home/sp/xilinx/Vivado<br></div><div>make X300_HG<br></div></div><div><b=
r></div><div>But I have been faced with these errors... can any idea for so=
lving=C2=A0this problem?</div><div><br></div><div>[00:00:23] Starting Synth=
esis Command<br>ERROR: [Synth 8-439] module &#39;rfnoc_block_fft&#39; not f=
ound [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_rfnoc_image_c=
ore.v:1354]<br>ERROR: [Synth 8-6156] failed synthesizing module &#39;rfnoc_=
image_core&#39; [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_rf=
noc_image_core.v:24]<br>ERROR: [Synth 8-6156] failed synthesizing module &#=
39;bus_int&#39; [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/bus_int=
.v:9]<br>ERROR: [Synth 8-6156] failed synthesizing module &#39;x300_core&#3=
9; [/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300/x300_core.v:9]<br>ER=
ROR: [Synth 8-6156] failed synthesizing module &#39;x300&#39; [/home/sp/Doc=
uments/uhd-4.1.0.5/fpga/usrp3/top/x300/x300.v:20]<br>ERROR: [Common 17-69] =
Command failed: Synthesis failed - please see the console or run log file f=
or details<br>[00:03:31] Current task: Synthesis +++ Current Phase: Startin=
g<br>[00:03:31] Current task: Synthesis +++ Current Phase: Finished<br>[00:=
03:31] Process terminated. Status: Failure<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Wa=
rnings: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 357<br>Critical Warnings: =C2=A0=
1<br>Errors: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 6<br><br>make[1]: **=
* [Makefile.x300.inc:127: bin] Error 1<br>make[1]: Leaving directory &#39;/=
home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/top/x300&#39;<br>make: *** [Makefi=
le:90: X300_HG] Error 2<br></div><div><br></div></div>
</blockquote></div>
</blockquote></div>

--000000000000a3058f05d7e0fb48--

--===============6562758246795047446==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6562758246795047446==--
