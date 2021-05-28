Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A626394357
	for <lists+usrp-users@lfdr.de>; Fri, 28 May 2021 15:20:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BAADB384498
	for <lists+usrp-users@lfdr.de>; Fri, 28 May 2021 09:20:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="g4gQDm+x";
	dkim-atps=neutral
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 959BD3843E6
	for <usrp-users@lists.ettus.com>; Fri, 28 May 2021 09:20:04 -0400 (EDT)
Received: by mail-ot1-f50.google.com with SMTP id 80-20020a9d08560000b0290333e9d2b247so3413840oty.7
        for <usrp-users@lists.ettus.com>; Fri, 28 May 2021 06:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SzLgp+yx9G8CDJEPw88tXUQ0NmMZ1KI5Z/84g3Jk+og=;
        b=g4gQDm+xlHa1etDLLlrrDV4ECN1B3Gkxm8A4NDpSG2B2QbQ5ENPwSp9UAI7nGNrpJl
         59VxG82Biu1P+5SredOUzUDbjfZy25P44aAxbsF8ItAW5RGuP+DQbd5ry7AcBkFyanoc
         BCna/A7pXNRecL52Q+nr/Nwk5h472FavG5cwjT3q+BH/e3iLbay3l4cBrNh0lIOBOWpR
         kTqu8Xt8OgXDhhyAAI/LYMYIJvN0vxROcvpztwxQn5pP3Tjx9qUNtDIl8Loitpz8yLwO
         pkz6IjwXHgyBJ5ANM6cBAYoywglCOXcWM5DRZ5dN1zDzJHLvF9NuicLH8A267Q5twBS+
         0+Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SzLgp+yx9G8CDJEPw88tXUQ0NmMZ1KI5Z/84g3Jk+og=;
        b=l1G1afWJTZuKI0MZ4AEFHImF1Mr0W/SP1jmXkz4kgCHrJvRWqyfmYtdpldrav2E7Qu
         t8r8GaHHDOn3/w/xmf1T23kTTqziuvt0oP6I31QTL9VoLf9QZuRdetF5+EUolC7VX03F
         Mh/aRY5u80Ke+uWMxx9IRHTx1egC/YSXsru+L+8pV5DGx+SPG2c3EvRhCFf9IY7heLhi
         UMeJPz3i9dSGTz9893pWb2oSC7FVUojrgXM38lcQANJwh1C2ZhC2xlebs7PSZyJb3PnM
         b2ABf1KP7iqzM0CBC3yapHCvJorEM77RuGm03T1B4NXsy09U21cj9q8Go7XR82/6t+gn
         dwOQ==
X-Gm-Message-State: AOAM532jUpVjXmiD1Mic3CQG2Fmx5kVVQz7aK0ew2isuaXs/eLlx6Kq1
	5KGlTQ80LLgT+Yv92v8AAy/Fn2VLf5WNVy6phtCjTQ==
X-Google-Smtp-Source: ABdhPJyPLSjbxCiQFSJOdEH4UNqw8JsGdIYpjRrm0+IqAXXwcVh5Jp+m31KLRMMq2UvPuLfAX2uuKGMuR5sMMHwFcIo=
X-Received: by 2002:a9d:3675:: with SMTP id w108mr6901759otb.58.1622208003529;
 Fri, 28 May 2021 06:20:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTTVy4-s-eb8n2nOg_=qVzFNt4r8w2hYfGZNYPcCudbP9w@mail.gmail.com>
 <CAFche=gpU9mUMtf-=rdTPq1wY0XK2+hQ07DcFkRR4chzQ9FUAQ@mail.gmail.com>
In-Reply-To: <CAFche=gpU9mUMtf-=rdTPq1wY0XK2+hQ07DcFkRR4chzQ9FUAQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 28 May 2021 08:19:52 -0500
Message-ID: <CAB__hTQwjr=5GdDoADXCqmZ2fGDDxcPUUMa3RxNHByRH2JnFdw@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: YCQEHFPFBZIFJ224DXAC5GRSUP3UHQYI
X-Message-ID-Hash: YCQEHFPFBZIFJ224DXAC5GRSUP3UHQYI
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC block and SEP buffer sizes
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YCQEHFPFBZIFJ224DXAC5GRSUP3UHQYI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1585652969663156942=="

--===============1585652969663156942==
Content-Type: multipart/alternative; boundary="000000000000cd9f7b05c363bbc3"

--000000000000cd9f7b05c363bbc3
Content-Type: text/plain; charset="UTF-8"

Thanks Wade!
Perhaps this information could be incorporated into the RFNoC specification.
Rob

On Thu, May 27, 2021 at 9:53 PM Wade Fife <wade.fife@ettus.com> wrote:

> Rob,
>
> The "buff_size" parameter controls the "INGRESS_BUFF_SIZE" Verilog
> parameter used in the stream endpoint. It has a significant effect on
> streaming performance in the TX direction (host to USRP). A practical lower
> limit is two MTU-sized packets, and the rfnoc_image_builder will coerce it
> to at least that value. If the port is not actually used for steaming RF
> data, you can set buff_size to 0 and it will use a very small FIFO
> (32-deep). You generally want big buffers for the TX data paths that stream
> RF data at high rates and the default images set these about as large as is
> practical for the FPGA size.
>
> The "payload_fifo_depth" parameter sets the "PAYLOAD_FIFO_SIZE" Verilog
> parameter used in the NoC Shell in both the TX and RX directions. I don't
> think there's really a lower limit on this one and I agree that it makes
> sense to make this 2 for most blocks. How big this one should be is block
> dependent. For example, the Replay block can use this as a buffer that can
> help to hide some of the latency of the DRAM. The Radio can benefit because
> it serves as a buffer that can guard against underflow/overflow. But most
> other blocks can set it to a really small value, like 2, which basically
> means no FIFO.
>
> The context/info FIFO depths don't need to be very big, and they should
> already be small by default. I believe they're usually set to 32-deep.
> These FIFOs essentially buffer the header information for packets being
> sent/received. You would only make these bigger if you needed to have
> several packets in flight simultaneously in a single block (for example, if
> you had big payload FIFOs and a small packet size such that multiple
> packets were buffered in the FIFO at the same time). There's not really
> much benefit to making them smaller than 32 since FIFOs that size are
> implemented using SRL, which is very efficient. So I don't recommend
> decreasing this value.
>
> Wade
>
> On Thu, May 27, 2021 at 9:55 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> I am having some trouble building a custom RFNoC 4 FPGA design and so I
>> am looking to reduce the footprint. One easy thing to try is to reduce
>> various buffer sizes such as the ingress buffer size on the streaming
>> endpoint or the incoming RFNoC block fifo depths.  But, I am wondering if
>> there are practical lower limits for how small these should be set to. Any
>> comments on the questions below (or other insights or rules-of-thumb) would
>> be greatly appreciated. Thanks.
>> Rob
>>
>>    - *Stream endpoint ingress buffer size*: "buff_size" parameter for
>>    endpoint in core yml
>>       - Is there a practical lower limit?  For example, should it be at
>>       least MTU size? Does anything bad happen if I set it as low as 256?
>>       - Are large sizes needed only for SEPs that will accept steaming
>>       from host? For example if a DDC was connected to its own SEP would there be
>>       any need for a large buff_size on that SEP given that the incoming data
>>       would likely be coming from another FPGA block (i.e., the Radio)?
>>       - Are large sizes needed only for SEPs that require real-time flow
>>       (e.g. paths that terminate at a Radio)? For example, even though a Replay
>>       block accepts data from the host, it may not need real-time flow if you are
>>       just pre-storing samples that will later be played out in real-time. For
>>       this case, is there a practical lower limit for how small we should set
>>       buff_size?
>>       - Does the buffer size affect both directions? In other words,
>>       are 2 buffers created: one for the incoming packets from the crossbar AND
>>       one for the incoming packets from the static router?
>>    - *RFNoC block payload_fifo_depth*:
>>       - Is there a practical lower limit?
>>       - What is the disadvantage to setting this to one?  My thinking is
>>       that I don't generally insert a buffer between two AXIS components within
>>       an RFNoC block so why do I want buffering between two AXIS components that
>>       span between two RFNoC blocks?
>>    - *RFNoC block <context|info>_fifo_depth*:
>>       - Should this be sized based on the expected packet length and the
>>       specified payload_fifo_depth?  For example, if I expect incoming packets of
>>       1000 samples and set my payload_fifo_depth to 2000 so that I can buffer 2
>>       packets, should I then set the context or info fifo_depth to be 2?
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000cd9f7b05c363bbc3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Wade!<div>Perhaps this information could be incorpo=
rated into the RFNoC specification.</div><div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 27, 2021=
 at 9:53 PM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Rob,</div><div><br></div><div>The &quot;bu=
ff_size&quot; parameter controls the &quot;INGRESS_BUFF_SIZE&quot; Verilog =
parameter used in the stream endpoint. It has a significant effect on strea=
ming performance in the TX direction (host to USRP). A practical lower limi=
t is two MTU-sized packets, and the rfnoc_image_builder will coerce it to a=
t least that value. If the port is not actually used for steaming RF data, =
you can set buff_size to 0 and it will use a very small FIFO (32-deep). You=
 generally want big buffers for the TX data paths that stream RF data at hi=
gh rates and the default images set these about as large as is practical fo=
r the FPGA size.</div><div><br></div><div>The &quot;payload_fifo_depth&quot=
; parameter sets the &quot;<span>PAYLOAD_FIFO_SIZE</span>&quot; Verilog par=
ameter=C2=A0used in the NoC Shell in both the TX and RX directions.=20
I don&#39;t think there&#39;s really a lower limit on this one and I agree =
that it makes sense to make this 2 for most blocks. How big this one should=
 be is block dependent. For example, the Replay block can use this as a buf=
fer that can help to hide some of the latency of the DRAM. The Radio can be=
nefit because it serves as a buffer that can guard against underflow/overfl=
ow. But most other blocks can set it to a really small value, like 2, which=
 basically means no FIFO. </div><div><br></div><div>The context/info FIFO d=
epths don&#39;t need to be very big, and they should already be small by de=
fault. I believe they&#39;re usually set to 32-deep. These FIFOs essentiall=
y buffer the header information for packets being sent/received. You would =
only make these bigger if you needed to have several packets in flight simu=
ltaneously in a single block (for example, if you had big payload FIFOs and=
 a small packet size such that multiple packets were buffered in the FIFO a=
t the same time). There&#39;s not really much benefit to making them smalle=
r than 32 since FIFOs that size are implemented using SRL, which is very ef=
ficient. So I don&#39;t recommend decreasing this value.<br></div><div><br>=
</div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, May 27, 2021 at 9:55 AM Rob Kossler &lt;<a=
 href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>I am having some trouble building a custom RFNoC 4 FPGA desig=
n and so I am looking to reduce the footprint. One easy thing to try is to =
reduce various buffer sizes such as the ingress buffer size on the streamin=
g endpoint or the incoming RFNoC block fifo depths.=C2=A0 But, I am wonderi=
ng if there are practical lower limits for how small these should be set to=
. Any comments on the questions below (or other insights or rules-of-thumb)=
 would be greatly appreciated. Thanks.=C2=A0</div><div>Rob</div><ul><li><b>=
Stream endpoint ingress buffer size</b>: &quot;buff_size&quot; parameter fo=
r endpoint in core yml</li><ul><li>Is there a practical lower limit?=C2=A0 =
For example, should it be at least MTU size? Does anything bad happen if I =
set it as low as 256?</li><li>Are large sizes needed only for SEPs that wil=
l accept steaming from host? For example if a DDC was connected to its own =
SEP would there be any need for a large buff_size on that SEP given that th=
e incoming data would likely be coming from another FPGA block (i.e., the R=
adio)?</li><li>Are large sizes needed only for SEPs that require real-time =
flow (e.g. paths that terminate at a Radio)? For example, even though a Rep=
lay block accepts data from the host, it may not need real-time flow if you=
 are just pre-storing samples that will later be played out in real-time. F=
or this case, is there a practical lower limit for how small we should set =
buff_size?</li><li>Does the buffer size affect both directions? In other wo=
rds, are=C2=A02 buffers created: one for the incoming packets from the cros=
sbar AND one for the incoming packets from the static router?</li></ul><li>=
<b>RFNoC block payload_fifo_depth</b>:=C2=A0</li><ul><li>Is there a practic=
al lower limit?=C2=A0</li><li>What is the disadvantage to setting this to o=
ne?=C2=A0 My thinking is that I don&#39;t generally insert a buffer between=
 two AXIS components within an RFNoC block so why do I want buffering betwe=
en two AXIS components that span between two RFNoC blocks?</li></ul><li><b>=
RFNoC block &lt;context|info&gt;_fifo_depth</b>:=C2=A0</li><ul><li>Should t=
his be sized based on the expected packet length and the specified payload_=
fifo_depth?=C2=A0 For example, if I expect incoming packets of 1000 samples=
 and set my payload_fifo_depth to 2000 so that I can buffer 2 packets, shou=
ld I then set the context or info fifo_depth to be 2?</li></ul></ul></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000cd9f7b05c363bbc3--

--===============1585652969663156942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1585652969663156942==--
