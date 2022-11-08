Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C3EDD621C18
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 19:40:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1745383AFE
	for <lists+usrp-users@lfdr.de>; Tue,  8 Nov 2022 13:40:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667932848; bh=6JLnlytmVMT+KwNCbkactHjUXI7jRV/y9ufFtmcW2lg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=VnsXI7hKbYOYyClCC4VEwHOHVNIs6X2qZeGGIZ4PryJrdDxz3rbgOMZqocpJm7Ait
	 +Jls+5B4hcc17iWbIZ66N5gLlTlpLEJS5lviEEqirgcqwNfJZ8RaCSt2Oul3XD6t4e
	 pklyidSEhNywMnYXIzZIgMi7pBD++XI+vIeWYemFDpdsT1kAOQ4EAIyfHvtUrhEByS
	 qMoqp/szfyrLEcjvOi/pxM671Hx3HneDvFAgcyX1OXIUohkCPnJQXDJTIk0aoI7nbR
	 EZVUsIUnGCu1ccmME/d32JW0t4obiOuUnkKyDAG0SXaOnoYFcqBL1mmVaNSOlWSDxM
	 vAZAAAJI9rp8Q==
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 91835384035
	for <usrp-users@lists.ettus.com>; Tue,  8 Nov 2022 13:39:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aahXbODo";
	dkim-atps=neutral
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-13c569e5ff5so17215510fac.6
        for <usrp-users@lists.ettus.com>; Tue, 08 Nov 2022 10:39:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aGHxtei1oFoLqOtLbDEIFHOwV+N4ANRGnShB6U7z/nY=;
        b=aahXbODoep/aOmc2VBgx4ZSDs9umLGksdsiVwhiUAzIhQVG01v7P4LvtS9j8mmpqW0
         YtWy/CYJoFBbhea97yFYVmZjeymbWNvIg1d/OgHpfKQQPDs3pnKg3kfV9BHl5DX7MaZ2
         IbuwzY1arT7X/sVXPLMIpbWUd05i1Qth8Kv49sbz6m8fyZFvgB7Npgl1dHt9JUs7zlkw
         vmMLhsw50oQpy4xNnhKYxpftLhRnT4dglyv6w9oOhLIJXxjYenJP66QcQ8Rqx42AaKwH
         7I2WUraLNs4B9hCYGGMasTV/qyKUVesQSWQbhp08V+CsC+sWc41jpUIW0zwGh0eDl/kc
         vyBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aGHxtei1oFoLqOtLbDEIFHOwV+N4ANRGnShB6U7z/nY=;
        b=PO9x7oZv2rFo+Flz1m+SeEJFB/g9GkmQIAjIhkF2VH/DUBOfnPBHKNmMCSbsPHW/RZ
         i2tLvV56T0uPhviGr+K9/kP6gAPZ035gE5FLWv50m4ta4a5IMjuRqwOBjgGHmFFodScL
         fH80iw5rd+JYY/9FztaqM8OmjkVVM2mftAm94P/yaqnKI2ED3ICkBrdOQfsun0h9MXCH
         LAImc9YZyXojOgXmqp8fVzfb5zhi5824oJ95DDfbUSxJoC5HwTzggvgXqkDH3RzLfUpH
         rmZChBDjawV/E5vXxOvFV2EpAlHY0ZOyeLfn49373oah7zm1+Qhz9uabqMgTaoIygdDw
         ek/Q==
X-Gm-Message-State: ACrzQf2R78aA5uHu6AmxIsTHFNTIM8T4i41zMQXV1+f46oPlUqNd3xYG
	7Ovu8o0PueaPCB2qhzfY3GftEMXV01H46exchC9zIsAH
X-Google-Smtp-Source: AMsMyM6LfOWZy6f93JuP18dv0MfTices92tkWb2l8QiE+eAMB9gvoLAsbOnKP18YzeoQfP1o2AEPMxadZucm4QsKCdo=
X-Received: by 2002:a05:6870:819e:b0:13b:c03f:57ac with SMTP id
 k30-20020a056870819e00b0013bc03f57acmr33362599oae.19.1667932769661; Tue, 08
 Nov 2022 10:39:29 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3Ps9k5kMVWoh4QTvkJ4+BhDnKoXMBxP0cuQFoj3XdLNZGQ@mail.gmail.com>
 <c1675c20-fbad-cb18-f817-df7bf69f217f@ettus.com>
In-Reply-To: <c1675c20-fbad-cb18-f817-df7bf69f217f@ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 8 Nov 2022 13:39:18 -0500
Message-ID: <CAEXYVK7k+PMBczx6X6eWpD8biCJVucHURjq4DhKaNYWdJPqoow@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Message-ID-Hash: ENFRZ427FVZMBRIBBFEU2H76I34OQ3MQ
X-Message-ID-Hash: ENFRZ427FVZMBRIBBFEU2H76I34OQ3MQ
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can I define a global reg variable in Verilog between RFNOC blocks?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ENFRZ427FVZMBRIBBFEU2H76I34OQ3MQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4275726076405536361=="

--===============4275726076405536361==
Content-Type: multipart/alternative; boundary="0000000000003eb87805ecf9dc01"

--0000000000003eb87805ecf9dc01
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 7, 2022 at 6:29 PM Marcus M=C3=BCller <marcus.mueller@ettus.com=
>
wrote:

> Hi sp,
>
> That sounds like a bad idea. How are you planning to synchronize access t=
o
> that register?
>
> Generally, in almost *any* context, avoid global state. That makes things
> complicated and
> error prone; this is true for python as much as it is for C++, as much as
> it is for
> digital hardware design (in verilog or any other way); it's even true for
> design of
> mechanical machine factory floors (if you make each processing step as
> independent from
> the other as possible, you increase reliability).
>

As a point of order, though, reducing redundancy is also an admirable goal.

I think the idea of sharing registers between multiple RFNoC blocks is not
a bad idea.  It's the idea of a single configuration space with fanouts to
multiple consumers.  In C++, imagine it as a singleton of configuration
parameters to be referenced during execution.

As a practical example, imagine you have a TDMA system which needs timings
defined by which the TX and RX both adhere.  Or a modulation/coding scheme
which is shared between RX and TX.  These are independent blocks with
common configuration items.  A suggestion to duplicate registers would not
be seen as appropriate - there is a singular configuration space with
fanout to multiple blocks.

From an FPGA perspective, it is not unheard of that a registerfile may be
common amongst numerous individual blocks which make up a system.  The
suggestion earlier, I believe, was to have a custom input to the block
which is the shared configuration space.

Now, speaking in terms of RFNoC, I imagine this as an RFNoC block which is
the configuration space, and has no flows in or out but only exists in the
register space.  It has outputs which fanout but no other inputs.

Is there a document which describes how to build this type of system with
RFNoC?  Custom output/input port automatically instantiated with the
system?  Or does it need to be a custom instantiation after the rest of it
has been templated?

Thanks,
Brian

--0000000000003eb87805ecf9dc01
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Nov 7, 2022 at 6:29 PM Marcus M=
=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com">marcus.mueller@e=
ttus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">Hi sp,<br>
<br>
That sounds like a bad idea. How are you planning to synchronize access to =
that register?<br>
<br>
Generally, in almost *any* context, avoid global state. That makes things c=
omplicated and <br>
error prone; this is true for python as much as it is for C++, as much as i=
t is for <br>
digital hardware design (in verilog or any other way); it&#39;s even true f=
or design of <br>
mechanical machine factory floors (if you make each processing step as inde=
pendent from <br>
the other as possible, you increase reliability).<br></blockquote><div><br>=
</div><div>As a point of order, though, reducing redundancy is also an admi=
rable goal.</div><div><br></div><div>I think the idea of sharing registers =
between multiple RFNoC blocks is not a bad idea.=C2=A0 It&#39;s the idea of=
 a single configuration space with fanouts to multiple consumers.=C2=A0 In =
C++, imagine it as a singleton of configuration parameters to be referenced=
 during execution.</div><div><br></div><div>As a practical example, imagine=
 you have a TDMA system which needs timings defined by which the TX and RX =
both adhere.=C2=A0 Or a modulation/coding scheme which is shared between RX=
 and TX.=C2=A0 These are independent blocks with common configuration items=
.=C2=A0 A suggestion to duplicate registers would not be seen as appropriat=
e - there is a singular configuration space with fanout to multiple blocks.=
</div><div><br></div><div>From an FPGA perspective, it is not unheard of th=
at a registerfile may be common amongst numerous individual blocks which ma=
ke up a system.=C2=A0 The suggestion earlier, I believe, was to have a cust=
om input to the block which is the shared configuration space.</div><div><b=
r></div><div>Now, speaking in terms of RFNoC, I imagine this as an RFNoC bl=
ock which is the configuration space, and has no flows in or out but only e=
xists in the register space.=C2=A0 It has outputs which fanout but no other=
 inputs.</div><div><br></div><div>Is there a document which describes how t=
o build this type of system with RFNoC?=C2=A0 Custom output/input port auto=
matically instantiated with the system?=C2=A0 Or does it need to be a custo=
m instantiation after the rest of it has been templated?</div><div><br></di=
v><div>Thanks,</div><div>Brian</div></div></div>

--0000000000003eb87805ecf9dc01--

--===============4275726076405536361==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4275726076405536361==--
