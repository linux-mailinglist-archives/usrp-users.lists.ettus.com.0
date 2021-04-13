Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 477EF35E0B4
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 15:56:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 60657384256
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 09:56:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="NWVZ+qsT";
	dkim-atps=neutral
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 00353384290
	for <usrp-users@lists.ettus.com>; Tue, 13 Apr 2021 09:56:11 -0400 (EDT)
Received: by mail-ot1-f50.google.com with SMTP id i16-20020a9d68d00000b0290286edfdfe9eso5525152oto.3
        for <usrp-users@lists.ettus.com>; Tue, 13 Apr 2021 06:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FdxKnkvTAlTrgBG0+uR34QTRNYKhlAV96Y16NIx8aa4=;
        b=NWVZ+qsTVR6s/OSmfUu7ko40K9KhRGGTmcaxbvhgJhXDVeXjUYx0rsvtuzlor4sL/p
         YCrzOhW6DKNguaVGWZ6A0UoznikHKoeaJOiSa5stTSl7ZAi8iaTjBNhIyHjpkW1rz7kX
         4i7yY8LYj/CdgRjlGHvHcVDzuXM2Ye17cY4kowl2bnP4MlKerxoUOyvPvRH3ptbsp1EN
         NREMgxyffLzHh8LFUFdJqwdbJTHLqPAUTzINzDg9X2ELHaKcK6GcGECw3SztC09q9CjX
         5eschvo4oK+CIB13+0q+jcFR5zSkOGbagC/E876PS5n3zTGpKjEI5NdgW6/3tD7z4xPW
         KOUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FdxKnkvTAlTrgBG0+uR34QTRNYKhlAV96Y16NIx8aa4=;
        b=sXBXH9z4ogUmFRLM3Kx5W84fkToz98AEHNn09HUWxcXbJ7vRXRVy03IAgcGDZtEVZP
         LLX08bQNkjF9V5NemkhcJphsXIQMXajlzI8atUnVOLtDzNMfr4TsfPdeDrh8YyjfnhLX
         LDoBxROFRWpcjSAns4Qe/LWXOEBiE9B84ibCoL4Fi6sLzElnZUTeeqpAXNDDQ/UZchn8
         HWa4Yi5m8JWG0I68dupoHWvOMZKM8XezDGgYflvmPxge/SCQ6V1rjtSDSml0oJo2Abg6
         QLLy1njf6aPqqxfxHRw1dp1vCzD5AjdYTKU/CTk3ofrz0sxzixq79EqsOwgrjcdP0x5J
         BVbQ==
X-Gm-Message-State: AOAM533ixOvQZpzODfCYiQ1fYppOqfF/20sQzdJ9ZLb9upSlybcvTa9l
	4Hz0eYVikyBG/tclMJAxsMIu5FcTj/Dm5D2g6uHJGw==
X-Google-Smtp-Source: ABdhPJzSc8Pnh0CdoBdbz8ReIfqdFYIVP6TqCBqI6cMHNtAWz1iCp5jq8AAxk9cwKwBzntqLXGhtfkf+q7tlfPYuHzM=
X-Received: by 2002:a9d:470f:: with SMTP id a15mr12142332otf.302.1618322171086;
 Tue, 13 Apr 2021 06:56:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQ938e=-OtR1JBQF2MpaNZwZbBmpYp4ovt1EhxO7ev9Dw@mail.gmail.com>
 <CAL7q81vF6Sq65TfNH8z4mkRCpCx9GfCJPt9tcBHBAyxyxgg+3Q@mail.gmail.com>
In-Reply-To: <CAL7q81vF6Sq65TfNH8z4mkRCpCx9GfCJPt9tcBHBAyxyxgg+3Q@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 13 Apr 2021 09:56:01 -0400
Message-ID: <CAB__hTToiF=54Psmw5FW1CmRqv6bziAC8pTEH9BOLr-dboMS-A@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: ATXO72Q7E75G2AKXZ7E62N4F633X6IO6
X-Message-ID-Hash: ATXO72Q7E75G2AKXZ7E62N4F633X6IO6
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I/Q swapping situation with RFNoC block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ATXO72Q7E75G2AKXZ7E62N4F633X6IO6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2777340404307443324=="

--===============2777340404307443324==
Content-Type: multipart/alternative; boundary="0000000000002408ed05bfdafe75"

--0000000000002408ed05bfdafe75
Content-Type: text/plain; charset="UTF-8"

Hi Jonathon,
I am using register pokes (poke32). My block controller reads the I/Q taps
out of a file that is the identical format of an I/Q file that I would use
for streaming to or from the USRP (SC16 such as rx_samples_to_file or
tx_samples_from_file). If streaming using send() or recv() things work
fine.  If sending my taps via register pokes, they end up swapped I/Q. In
both cases, the software is casting a ptr from sc16 to either void or char
in order to send the data to the USRP.

Based on what I'm saying above, it seems that maybe the Intel Endian format
might be the issue.  For send() / recv(), Ettus takes care of the swap, but
for register pokes, I must do so?  Let me know your comments and if you
have any advice on the best way to implement this (perhaps my current
implementation where I manually swap I/Q in the block controller is best?).
Rob

On Fri, Apr 2, 2021 at 12:02 AM Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> Hey Rob,
>
> Are you doing register pokes to write to axi_setting_bus or are you using
> an input port? If using an input port, the I/Q format for SC16 versus
> complex short are backwards, which might be the cause of your software only
> issue.
>
> Jonathon
>
> On Thu, Apr 1, 2021 at 10:04 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi,
>> I developed a custom RFNoC block that implements an FIR filter
>> having complex taps (using 2 instances of Xilinx FIR IP with 2 inputs
>> each).  The taps are reloadable via an AXI bus.  After implementing a
>> successful testbench, I later discovered an issue when running with UHD and
>> the actual image.  The reloaded taps had I/Q swapped.  So, I changed my
>> block controller to perform this swap and now things work.
>>
>> I'm trying to understand if this makes sense or if I have fooled myself.
>> My implementation uses the legacy "axi_settings_reg" to load coefficients
>> on the IPs reload axi input.  The register width is 32 and I use the upper
>> 16 bits as the input to the "real" FIR instance and the lower 16 bits as
>> the input to the "imag" FIR instance.
>>
>> When I run the testbench, I get the expected results without needing to
>> swap real/imag.  When I run with UHD and the built FPGA image, I must swap
>> the real/imag parts in the block controller in order to get the correct
>> results.  I wondered why I did not have to do something similar when
>> streaming I/Q data to my block (or other blocks), but then figured that
>> maybe UHD takes care of such swapping automatically.  Is this true?  If so,
>> am I going about this the right way by swapping I/Q in the block
>> controller?  Why does the testbench work without swapping?
>> Rob
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000002408ed05bfdafe75
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jonathon,<div>I am using register pokes (poke32). My bl=
ock controller reads the I/Q taps out of a file that is the identical forma=
t of an I/Q file that I would use for streaming to or from the USRP (SC16 s=
uch as rx_samples_to_file or tx_samples_from_file). If streaming using send=
() or recv() things work fine.=C2=A0 If sending my taps via register pokes,=
 they end up swapped I/Q. In both cases, the software is casting a ptr from=
 sc16 to either void or char in order to send the data to the USRP.=C2=A0<d=
iv><br></div><div>Based on what I&#39;m saying above, it seems that maybe t=
he Intel Endian format might be the issue.=C2=A0 For send() / recv(), Ettus=
 takes care of the swap, but for register pokes, I must do so?=C2=A0 Let me=
 know your comments and if you have any advice on the best way to implement=
 this (perhaps my current implementation where I manually swap I/Q in the b=
lock controller is best?).</div></div><div>Rob</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 2, 2021 at =
12:02 AM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com"=
>jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr">Hey Rob,<div><br></div><div>Are=
 you doing register pokes to write to axi_setting_bus or are you using an i=
nput port? If using an input port, the I/Q format for SC16 versus complex s=
hort are backwards, which might be the cause of your software only issue.</=
div><div><br></div><div>Jonathon=C2=A0</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 1, 2021 at 10:04 AM=
 Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkoss=
ler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi,<br><div>I developed a custom RFNoC block th=
at implements an FIR filter having=C2=A0complex taps (using 2 instances of =
Xilinx FIR IP with 2 inputs each).=C2=A0 The taps are reloadable via=C2=A0a=
n AXI bus.=C2=A0 After implementing a successful testbench, I later discove=
red an issue when running with UHD and the actual image.=C2=A0 The reloaded=
 taps had I/Q swapped.=C2=A0 So, I changed my block controller to perform t=
his swap and now things work.</div><div><br></div><div>I&#39;m trying to un=
derstand if this makes sense or if I have fooled myself.=C2=A0 My implement=
ation uses the legacy &quot;axi_settings_reg&quot; to load coefficients on =
the IPs reload axi input.=C2=A0 The register width is 32 and I use the uppe=
r 16 bits as the input to the &quot;real&quot; FIR instance and the lower 1=
6 bits as the input to the &quot;imag&quot; FIR instance.=C2=A0=C2=A0</div>=
<div><br></div><div>When I run the testbench, I get the expected results wi=
thout needing to swap real/imag.=C2=A0 When I run with UHD and the built FP=
GA image, I must swap the real/imag parts in the block controller in order =
to get the correct results.=C2=A0 I wondered why I did not have to do somet=
hing similar when streaming I/Q data to my block (or other blocks), but the=
n figured that maybe UHD takes care of such swapping automatically.=C2=A0 I=
s this true?=C2=A0 If so, am I going about this the right way by swapping I=
/Q in the block controller?=C2=A0 Why does the testbench work without swapp=
ing?</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000002408ed05bfdafe75--

--===============2777340404307443324==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2777340404307443324==--
