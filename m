Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6643F5594
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 03:47:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A4B97383BAD
	for <lists+usrp-users@lfdr.de>; Mon, 23 Aug 2021 21:47:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="OQkfQ+lQ";
	dkim-atps=neutral
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	by mm2.emwd.com (Postfix) with ESMTPS id CC0B0383C3A
	for <usrp-users@lists.ettus.com>; Mon, 23 Aug 2021 21:47:03 -0400 (EDT)
Received: by mail-oo1-f50.google.com with SMTP id y16-20020a4ad6500000b0290258a7ff4058so6015755oos.10
        for <usrp-users@lists.ettus.com>; Mon, 23 Aug 2021 18:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TkIXkaXM/qM/RnAYHs2EzCDdq96KCDRzYLkFDicZ2zg=;
        b=OQkfQ+lQ2h814ffvhK5OKfPom77/VldBvSvGPTVfFsfmHhZ6RGVXrbu2kdwbxHfv8l
         vUdYUT2249U/Yl6tWgF1RNnaGFbjT5HA3z4dC7mcgBnDdj8NAKBtv4xpkyf46QYSp8jE
         rmAELGbgzSjov9SbPqgE1iUFUsnP5EARt3Uix3GzkO9U9W1mgLMmNA2Ni3lExM2OIxRC
         8Cvqz6jOEUVFdXGG1l4h8c4O9tvKxhqXNpsP64gLETj97NCe5GXwXIQczPeHv59CtLaa
         FuNtmhmwMpHBwI2fGkvW1yRdW1i0zSfyFQgnKNfXkkG7K3ptGuAP9mJu/YEWAsoz/vdZ
         lBTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TkIXkaXM/qM/RnAYHs2EzCDdq96KCDRzYLkFDicZ2zg=;
        b=IEE/+lA1r/bGcty19tCIo1gPpZttjnGd4k84gsHgujHYAxRacVREwNC+tn2PBk7m1P
         pdkh7rhWx8zSrkq4kghFFLUITGwnURH/1okehQ1eGLovytZFtDgSSxfYB93/KebEm41M
         2qqQwWCIW5HQB5iaL72jHKm0NLJxcZnlGckePtFXiA5ZPzmcF0xv6aod1IdlMfuJeyGx
         nKn2Rhm5Ii8wUjo0i107peZKZJNZgm4t+Fq0wD/nyVFT5E4XU1HuCOffEkyPJX+TdV7Z
         11w98XzRqSMCswE9JZwyTUSxeSNoGUkHU5NyTG8sMd3j72Q/28U88bZP9yH61EZn+GoI
         MB8w==
X-Gm-Message-State: AOAM533tplyW9N9zVXIUDtqb2SDnPT4KZP4qbI/BWWd1FX1wH5a8nHJT
	r6UQwhBeAg2GRbjJQiYEZmBlNRgST4m7Qbu0uknLrO+zKgc=
X-Google-Smtp-Source: ABdhPJwuKgLqBjF6+bGe8XfBaMrZv+DS70uw8Tr+T+mTQhJvnc2YfNJIicxOiOtuRO4bv37xaOBtPKn3/D/G1SWvA3Q=
X-Received: by 2002:a4a:d752:: with SMTP id h18mr28218854oot.13.1629769622834;
 Mon, 23 Aug 2021 18:47:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAKHaR3kE1Td0vH7QM9xDExms7N_drXXf__V6OUk-a5BWbyGTmQ@mail.gmail.com>
 <CAB__hTTAyMrGR3bsCK94OcUS4uOZBcpoa7W6R6bGsEi9doXw6Q@mail.gmail.com> <CAKHaR3=sbWZVMMZA1qE1eGBW4Rdy0ZW0hmNEhTj6W1moKxX1vg@mail.gmail.com>
In-Reply-To: <CAKHaR3=sbWZVMMZA1qE1eGBW4Rdy0ZW0hmNEhTj6W1moKxX1vg@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 23 Aug 2021 21:46:51 -0400
Message-ID: <CAB__hTRBbKF==A8zUiLpzDLrDqQbA-Josws-6yETubJQxwx+8A@mail.gmail.com>
To: Dario Pennisi <dario@iptronix.com>
Message-ID-Hash: 6JLQO552Q4RGHX6CWY63FOZTWTOC2ZFF
X-Message-ID-Hash: 6JLQO552Q4RGHX6CWY63FOZTWTOC2ZFF
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: input only rfnoc blocks with UHD 4.1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6JLQO552Q4RGHX6CWY63FOZTWTOC2ZFF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3370266516692446697=="

--===============3370266516692446697==
Content-Type: multipart/alternative; boundary="0000000000006f8ee205ca444f0d"

--0000000000006f8ee205ca444f0d
Content-Type: text/plain; charset="UTF-8"

Hi Dario,
In the UHD manual, issue_stream_cmd() can be called from the UHD radio
controller as well as several other controllers including an rx_streamer.
The typical way to start streaming from UHD is to call this command on the
rx_streamer controller, which in turn propagates this command to the DDC
controller and ultimately to the Radio controller.  I suppose that this
architecture allows each block in the graph to get prepared for the stream
that is about to start.  In the end, it is the Radio that starts that
stream.  In your case with only Radios and your block, it seems you could
call the Radio_Ctrl->issue_stream_cmd() to start the streaming. I believe
that this will indeed invoke a register write as you are thinking.
Rob

On Mon, Aug 23, 2021 at 2:02 PM Dario Pennisi <dario@iptronix.com> wrote:

> Hi Rob,
> As I was mentioning we're trying to get rid of the streamers so ideally
> I'd only have two radios connected to my block which has no outputs. The
> graph would appear to be entirely in the FPGA  and nothing except register
> reads and writes would enter or exit FPGA.
> As far as I understand there is no start streaming command on the radios
> and I don't think I have them on my block.
> I was tempted to directly write radio stream registers but it's a very
> dirty solution...
>
> Thanks,
>
> Dario
>
> Il Lun 23 Ago 2021, 15:48 Rob Kossler <rkossler@nd.edu> ha scritto:
>
>> Hi Dario,
>> How do you start the streaming? Using issue_stream_cmd()? If so, is this
>> called on the streamer object or on the DDC or radio? The reason I ask is
>> that if you call it on the streamer, I'm wondering if your issue is related
>> to command propagation.  That is, the command is not propagating through
>> your block.  If this is the case, try calling issue_stream_cmd() on the DDC
>> block which will then propagate it to the Radio block (or call directly on
>> the Radio if there is no DDC).
>> Rob
>>
>> On Fri, Aug 20, 2021 at 1:26 PM Dario Pennisi <dario@iptronix.com> wrote:
>>
>>> Hi,
>>> i'm trying to optimize FPGA consumption and on N310/UHD4.1.0.1 i am
>>> testing a block that needs only 2 inputs and no outputs. since i don't need
>>> to stream any data in/out of the FPGA i declared a single streamer with
>>> control only and declared no connection between it and any block in the yml
>>> and this way i can see i can read and write registers.
>>> the issue arises when i try to stream data to the block: if i have no
>>> outputs declared, inputs will not receive anything. if i have 1 output
>>> connected to a streamer, connected to a null sink, i can receive from the
>>> first input, if i have 2 outputs connected to two streamers connected to
>>> null sinks i can receive on both inputs.
>>> is there any way i can get rid of those useless outputs and remove at
>>> least 1 endpoint?
>>> if i declare i need a single endpoint with no data why does it complain
>>> if i don't declare buff_size in the yml?
>>> my rfnoc block uses a noc shell that outputs axi stream payload which i
>>> adapted for programmable number of inputs and outputs.
>>> It seems to me the issue is not on the FPGA side as the backend block
>>> seems to properly report information and o don't see any connection in NOC
>>> shell between input and outputs other than in there...
>>>
>>> Thanks,
>>>
>>> Dario
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--0000000000006f8ee205ca444f0d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Dario,<div>In the UHD manual, issue_stream_cmd() can be=
 called from the UHD radio controller as well as several other controllers =
including an rx_streamer. The typical way to start streaming from UHD is to=
 call this command on the rx_streamer controller, which in turn propagates =
this command to the DDC controller and ultimately to the Radio controller.=
=C2=A0 I suppose that this architecture allows each block in the graph to g=
et prepared for the stream that is about to start.=C2=A0 In the end, it is =
the Radio that starts that stream.=C2=A0 In your case with only Radios and =
your block, it seems you could call the Radio_Ctrl-&gt;issue_stream_cmd() t=
o start the streaming. I believe that this will indeed invoke a register wr=
ite as you are thinking.</div><div>Rob</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 23, 2021 at 2:02 PM=
 Dario Pennisi &lt;<a href=3D"mailto:dario@iptronix.com">dario@iptronix.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"auto">Hi Rob,<div dir=3D"auto">As I was mentioning we&#39;re tr=
ying to get rid of the streamers so ideally I&#39;d only have two radios co=
nnected to my block which has no outputs. The graph would appear to be enti=
rely in the FPGA=C2=A0 and nothing except register reads and writes would e=
nter or exit FPGA.=C2=A0</div><div dir=3D"auto">As far as I understand ther=
e is no start streaming command on the radios and I don&#39;t think I have =
them on my block.</div><div dir=3D"auto">I was tempted to directly write ra=
dio stream registers but it&#39;s a very dirty solution...</div><div dir=3D=
"auto"><br></div><div dir=3D"auto">Thanks,</div><div dir=3D"auto"><br></div=
><div dir=3D"auto">Dario</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Il Lun 23 Ago 2021, 15:48 Rob Kossler &lt;<a =
href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; h=
a scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div dir=3D"ltr">Hi Dario,<div>How do you start the streaming? =
Using issue_stream_cmd()? If so, is this called on the streamer object or o=
n the DDC or radio? The reason I ask is that if you call it on the streamer=
, I&#39;m wondering if your issue is related to command propagation.=C2=A0 =
That=C2=A0is, the command is not propagating through your block.=C2=A0 If t=
his is the case, try calling issue_stream_cmd() on the DDC block which=C2=
=A0will then propagate=C2=A0it to the Radio block (or call directly on the =
Radio if there is no DDC).</div><div>Rob</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 20, 2021 at 1:26 =
PM Dario Pennisi &lt;<a href=3D"mailto:dario@iptronix.com" rel=3D"noreferre=
r" target=3D"_blank">dario@iptronix.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><div dir=3D"ltr">H=
i,<div>i&#39;m trying to optimize FPGA consumption and on N310/UHD4.1.0.1 i=
 am testing a block that needs only 2 inputs and no outputs. since i don&#3=
9;t need to stream any data in/out of the FPGA i declared a single streamer=
 with control only and declared no connection between it and any block in t=
he yml and this way i can see i can read and write registers.</div><div>the=
 issue arises when i try to stream data to the block: if i have no outputs =
declared, inputs will not receive=C2=A0anything. if i have 1 output connect=
ed to a streamer, connected to a null sink, i can receive from the first in=
put, if i have 2 outputs connected to two streamers connected to null sinks=
 i can receive on both inputs.</div><div>is there any way i can get rid of =
those useless outputs and remove at least 1 endpoint?</div><div>if i declar=
e i need a single endpoint with no data why does it complain if i don&#39;t=
 declare buff_size in the yml?</div><div>my rfnoc block uses a noc shell th=
at outputs axi stream payload which i adapted for programmable number of in=
puts and outputs.</div><div dir=3D"auto">It seems to me the issue is not on=
 the FPGA side as the backend block seems to properly report information an=
d o don&#39;t see any connection in NOC shell between input and outputs oth=
er than in there...</div><div dir=3D"auto"><br></div><div dir=3D"auto">Than=
ks,</div><div dir=3D"auto"><br></div><div dir=3D"auto">Dario</div></div></d=
iv>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--0000000000006f8ee205ca444f0d--

--===============3370266516692446697==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3370266516692446697==--
