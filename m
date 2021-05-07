Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10985376730
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 16:45:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 298C138423B
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 10:45:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="d7fYkXWj";
	dkim-atps=neutral
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 785513841D4
	for <usrp-users@lists.ettus.com>; Fri,  7 May 2021 10:44:53 -0400 (EDT)
Received: by mail-oi1-f178.google.com with SMTP id b25so3676924oic.0
        for <usrp-users@lists.ettus.com>; Fri, 07 May 2021 07:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7CaKVeJaTd2cGxQjseWrXPFdoPHilbkW39CbrSI3JOo=;
        b=d7fYkXWjjn6N8qoLZDU/s7UA7l89KzkItDPYiUHXgI3mE7x9y4s9tStImtd5mIhfhF
         4ZYTtDdMx5Yp+HsrcywDlaVKG9SQc3YRU7SSYOv7gyQQiTpuhxsVxRwaXRdWPnRma5yr
         ejjcDpLL84QxdMAkMUKaJchs7ROEeKsssUfq0qx8xRFEcpAT31WliHpYBAkavSZZymhH
         z3HJElnenmgWHPcUjk4k0OA1a9j7vztlwRGsqFzwaykztVly0K29TKOatEi3apgStZ10
         PYlMR2+jmVFWl3SIC3jEWczaTQX5CUf73PRPdFMjfdc/8xVl2Okkf0pILUQEd3EnPdxH
         4Y1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7CaKVeJaTd2cGxQjseWrXPFdoPHilbkW39CbrSI3JOo=;
        b=K1KbuZeLESQw0E75Fqo2Z6YkZyvnU3hf2MxO7QPSNEOZXcfw93ojjemGyXPhXkEvXz
         Ezcr6Bora/A7eJJavoYMGrcblMgxngVxCaDYIY6u8eWeF5gpdYu/5ri4TQeA8XCo++xz
         80IvQBjjvOEwS7OJXhCkBOankerf1XTNJ5nN01r6IKbQ08B5LQ1QkfttjbIVoa5/fFMs
         fxjHZrlE7vMHU5UgukQ7Kn9HxKGdszszIGRYV3CL5BsKmFf583/e4ABTGPkoOX9Oi4EQ
         bb28y4y2gAXO1iXClw1sBn0jP9VHBMj8MQuhqF5yWSVIE31Lph/a+11A13zLgU1yWbNM
         i0Iw==
X-Gm-Message-State: AOAM530szg8UQ4k8QDYOFDaA7/j7x58vWyPeq9QjZW0BgrezfK9nadqH
	nCnlLs5NM0UzD+pa9e9CRZBvtq0rgkF/R3NMQoxO6uem6Zk=
X-Google-Smtp-Source: ABdhPJxE9RRm8sby7rc0XYx1zWAqDk7Hi7ZYEyMazZgqlctxBW9Po5wJWP5ApX2XRtrJGpLPimmIqTjo0awQi/MMLTI=
X-Received: by 2002:aca:e142:: with SMTP id y63mr7416032oig.33.1620398692538;
 Fri, 07 May 2021 07:44:52 -0700 (PDT)
MIME-Version: 1.0
References: <d97b3054-6673-0e3f-6348-bce35a18157e@olifantasia.com>
In-Reply-To: <d97b3054-6673-0e3f-6348-bce35a18157e@olifantasia.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 7 May 2021 10:44:41 -0400
Message-ID: <CAB__hTR9ck3nYJpv2_a-U+8PYQtuEuDcKfQLFdBy2s3P+8Fo7w@mail.gmail.com>
To: Martin <usrp-users-list@olifantasia.com>
Message-ID-Hash: 47YJGLUQ5APILMJ5KKHVY2MVLUPTXC45
X-Message-ID-Hash: 47YJGLUQ5APILMJ5KKHVY2MVLUPTXC45
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 / E320 high bandwith / high datarate two channel RX capture
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/47YJGLUQ5APILMJ5KKHVY2MVLUPTXC45/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8734405790179321173=="

--===============8734405790179321173==
Content-Type: multipart/alternative; boundary="00000000000076ecca05c1be7814"

--00000000000076ecca05c1be7814
Content-Type: text/plain; charset="UTF-8"

Hi Martin,
I am concerned that these devices, E3xx, cannot handle 2 channels at 56
MS/s (or 61MS/s).  My understanding (but I am not 100% sure) is that these
devices can handle 1 channel at those rates, but that the max rate for 2
channels is 30.72 MS/s.
Rob

On Fri, May 7, 2021 at 9:41 AM Martin <usrp-users-list@olifantasia.com>
wrote:

> Hi,
>
> Do you have experience with high bandwidth capture on E310 or E320?
>
> We want to use an E310 or E320 for 56 MSPS (or 61.44 MSPS) dual channel
> RX captures.
> We want to capture into a circular buffer and after a certain signal
> signal level is observed set a time to stop capturing after 0.3 seconds.
> So we only use the last 0.3 second of captured data.
>
> We are thinking of using a E320. This has a high speed SFP+ 10 gbit port.
> Can it stream 2 channel 56 MSPS data to a host-PC continuously to a
> host-PC? Or is the ARM processor a bottleneck, like on the E310, which
> seems to be limited to max 16MSPS due to the limited arm processor speed.
> And can it stream that fast with its default FPGA firmware image, so
> there would be no need for RFNoc work and expensive Vivado license.
>
> And if we do need the Xilinx vivado license. Which version do we need?
>
> Alternatively we could try to use the E310 which has a smaller FPGA that
> is supported by the free webpack of vivado.
> Because it does not have a 10 gbit ethernet we would have to capture to
> memory.
> I have read that the E310 arm processing is not able to keep up with
> more then 16 MSPS captures. So just streaming to the ARM memory in the
> E310 would not work.
> But if we could someway capture to the 512 MB DDR ram on the FPGA side
> (use it as a circular buffer) and afterwards slowly move it to the arm
> and from there to the host-PC then that would be fine.
>
> Alternatively I heard that high datarate (56 MSPS) capture on E310 is
> possible in some way using RFNoc. Is that true? How would that work.
>
> It would help me a lot if you give me some hints or tell me about your
> experience of high bandwidth capturing on E3XX devices.. Even if you do
> not know all the answers.
>
> With best regards,
>
> Martin Dudok van Heel
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000076ecca05c1be7814
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Martin,</div><div>I am concerned that these device=
s, E3xx, cannot handle 2 channels at 56 MS/s (or 61MS/s).=C2=A0 My understa=
nding (but I am not 100% sure) is that these devices can handle 1 channel a=
t those rates, but that the max rate for 2 channels is 30.72 MS/s.</div><di=
v>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Fri, May 7, 2021 at 9:41 AM Martin &lt;<a href=3D"mailto:usrp-users=
-list@olifantasia.com">usrp-users-list@olifantasia.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
Do you have experience with high bandwidth capture on E310 or E320?<br>
<br>
We want to use an E310 or E320 for 56 MSPS (or 61.44 MSPS) dual channel <br=
>
RX captures.<br>
We want to capture into a circular buffer and after a certain signal <br>
signal level is observed set a time to stop capturing after 0.3 seconds. <b=
r>
So we only use the last 0.3 second of captured data.<br>
<br>
We are thinking of using a E320. This has a high speed SFP+ 10 gbit port.<b=
r>
Can it stream 2 channel 56 MSPS data to a host-PC continuously to a <br>
host-PC? Or is the ARM processor a bottleneck, like on the E310, which <br>
seems to be limited to max 16MSPS due to the limited arm processor speed.<b=
r>
And can it stream that fast with its default FPGA firmware image, so <br>
there would be no need for RFNoc work and expensive Vivado license.<br>
<br>
And if we do need the Xilinx vivado license. Which version do we need?<br>
<br>
Alternatively we could try to use the E310 which has a smaller FPGA that <b=
r>
is supported by the free webpack of vivado.<br>
Because it does not have a 10 gbit ethernet we would have to capture to <br=
>
memory.<br>
I have read that the E310 arm processing is not able to keep up with <br>
more then 16 MSPS captures. So just streaming to the ARM memory in the <br>
E310 would not work.<br>
But if we could someway capture to the 512 MB DDR ram on the FPGA side <br>
(use it as a circular buffer) and afterwards slowly move it to the arm <br>
and from there to the host-PC then that would be fine.<br>
<br>
Alternatively I heard that high datarate (56 MSPS) capture on E310 is <br>
possible in some way using RFNoc. Is that true? How would that work.<br>
<br>
It would help me a lot if you give me some hints or tell me about your <br>
experience of high bandwidth capturing on E3XX devices.. Even if you do <br=
>
not know all the answers.<br>
<br>
With best regards,<br>
<br>
Martin Dudok van Heel<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000076ecca05c1be7814--

--===============8734405790179321173==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8734405790179321173==--
