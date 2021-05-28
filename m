Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E212C393BB3
	for <lists+usrp-users@lfdr.de>; Fri, 28 May 2021 04:54:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B1B87383FDA
	for <lists+usrp-users@lfdr.de>; Thu, 27 May 2021 22:54:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="eBIp8ihC";
	dkim-atps=neutral
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 7890A383F4C
	for <usrp-users@lists.ettus.com>; Thu, 27 May 2021 22:53:26 -0400 (EDT)
Received: by mail-ot1-f48.google.com with SMTP id h24-20020a9d64180000b029036edcf8f9a6so2220428otl.3
        for <usrp-users@lists.ettus.com>; Thu, 27 May 2021 19:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NsjeHACCt0q4eVUYXVgbHRZAGkuKWraLrxjl6K5ECs8=;
        b=eBIp8ihCe7hMeGS998uyod2Q0cAJSqhbsztIWmnNaxRkimNebmLUUJMCIymiuyonXH
         YWs5y6c96nM7dY7BEOqWs40fEL45t3p8W9I6DMys/amxoGxxsPVlDhCKIZfGSykb48CL
         KzU/DOzyih5yWDxvvWr3LS4FsP7G+CAg9awt0oYWDyqtAh3XD0CLe0GHXYRBI1gWoAQU
         EZYEIeNRh7sDvd6caVXEgW1OdJCYalBsAcaSmug0ExbhvTtWLE7+gqF0mnY7q5M0F57X
         NG7GTS0Oe9SWPkK3/uTicDwi+Vdt1mJc15M+tbTy0ot1/F/9IqUHmyb1g7/WovN6EMhL
         3uSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NsjeHACCt0q4eVUYXVgbHRZAGkuKWraLrxjl6K5ECs8=;
        b=mPQPRT1nwjkKgDbbXTiXXVTz51CX52qt6HrSzTbY3jyjttnQzw/Z3l5xm0n9CKWv9y
         6yNisj6Y2uO7IE4RXhOl+0bdkKvjH/HylnNN+1vrrxwMl10nfSpceWBe86w3f0PSAayR
         Eh5NyplYcJctF5J3b+D5aCr7raroU7zd8bh19u1C7DhIFOV0aBjgzFiQZePsfq3i5xsq
         Mrkf2/WZVzrrBYPaCfO3ipMaHXN7pz/INAkuiKOc+pKbjnCQ7NlPOhlw1CaA81lWedIf
         Ag15qoHRtbls1c0joAZbTjZBlla6GcXA0xpqN2po+5a7RStbPdgNYOzOJk3cdFvYZK8t
         tujA==
X-Gm-Message-State: AOAM531mKTks4G9cCvD6Na+Mi3RbJzZMAKy1u+Zhkl/UroNxrfTLdzc7
	qLmGzHxBpoEZalWKy8QOfNCjqrK6qkc2YQlAgBgWYGqG
X-Google-Smtp-Source: ABdhPJxZ2sl3qs/FLGPEOCBMVX8KDZmjWPUEh8e9rcQJSoeAB3fTffLo/8CqEFuEuOhMsqyQNZ589/osjPeDI99Zc34=
X-Received: by 2002:a9d:6117:: with SMTP id i23mr5195207otj.28.1622170405712;
 Thu, 27 May 2021 19:53:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTTVy4-s-eb8n2nOg_=qVzFNt4r8w2hYfGZNYPcCudbP9w@mail.gmail.com>
In-Reply-To: <CAB__hTTVy4-s-eb8n2nOg_=qVzFNt4r8w2hYfGZNYPcCudbP9w@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 27 May 2021 21:53:10 -0500
Message-ID: <CAFche=gpU9mUMtf-=rdTPq1wY0XK2+hQ07DcFkRR4chzQ9FUAQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: AY2A6X2U3A3QFMYWPDY65UTENGO63FBI
X-Message-ID-Hash: AY2A6X2U3A3QFMYWPDY65UTENGO63FBI
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC block and SEP buffer sizes
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AY2A6X2U3A3QFMYWPDY65UTENGO63FBI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3276335112992528723=="

--===============3276335112992528723==
Content-Type: multipart/alternative; boundary="000000000000cc49f505c35afa9d"

--000000000000cc49f505c35afa9d
Content-Type: text/plain; charset="UTF-8"

Rob,

The "buff_size" parameter controls the "INGRESS_BUFF_SIZE" Verilog
parameter used in the stream endpoint. It has a significant effect on
streaming performance in the TX direction (host to USRP). A practical lower
limit is two MTU-sized packets, and the rfnoc_image_builder will coerce it
to at least that value. If the port is not actually used for steaming RF
data, you can set buff_size to 0 and it will use a very small FIFO
(32-deep). You generally want big buffers for the TX data paths that stream
RF data at high rates and the default images set these about as large as is
practical for the FPGA size.

The "payload_fifo_depth" parameter sets the "PAYLOAD_FIFO_SIZE" Verilog
parameter used in the NoC Shell in both the TX and RX directions. I don't
think there's really a lower limit on this one and I agree that it makes
sense to make this 2 for most blocks. How big this one should be is block
dependent. For example, the Replay block can use this as a buffer that can
help to hide some of the latency of the DRAM. The Radio can benefit because
it serves as a buffer that can guard against underflow/overflow. But most
other blocks can set it to a really small value, like 2, which basically
means no FIFO.

The context/info FIFO depths don't need to be very big, and they should
already be small by default. I believe they're usually set to 32-deep.
These FIFOs essentially buffer the header information for packets being
sent/received. You would only make these bigger if you needed to have
several packets in flight simultaneously in a single block (for example, if
you had big payload FIFOs and a small packet size such that multiple
packets were buffered in the FIFO at the same time). There's not really
much benefit to making them smaller than 32 since FIFOs that size are
implemented using SRL, which is very efficient. So I don't recommend
decreasing this value.

Wade

On Thu, May 27, 2021 at 9:55 AM Rob Kossler <rkossler@nd.edu> wrote:

> I am having some trouble building a custom RFNoC 4 FPGA design and so I am
> looking to reduce the footprint. One easy thing to try is to reduce various
> buffer sizes such as the ingress buffer size on the streaming endpoint or
> the incoming RFNoC block fifo depths.  But, I am wondering if there are
> practical lower limits for how small these should be set to. Any comments
> on the questions below (or other insights or rules-of-thumb) would be
> greatly appreciated. Thanks.
> Rob
>
>    - *Stream endpoint ingress buffer size*: "buff_size" parameter for
>    endpoint in core yml
>       - Is there a practical lower limit?  For example, should it be at
>       least MTU size? Does anything bad happen if I set it as low as 256?
>       - Are large sizes needed only for SEPs that will accept steaming
>       from host? For example if a DDC was connected to its own SEP would there be
>       any need for a large buff_size on that SEP given that the incoming data
>       would likely be coming from another FPGA block (i.e., the Radio)?
>       - Are large sizes needed only for SEPs that require real-time flow
>       (e.g. paths that terminate at a Radio)? For example, even though a Replay
>       block accepts data from the host, it may not need real-time flow if you are
>       just pre-storing samples that will later be played out in real-time. For
>       this case, is there a practical lower limit for how small we should set
>       buff_size?
>       - Does the buffer size affect both directions? In other words,
>       are 2 buffers created: one for the incoming packets from the crossbar AND
>       one for the incoming packets from the static router?
>    - *RFNoC block payload_fifo_depth*:
>       - Is there a practical lower limit?
>       - What is the disadvantage to setting this to one?  My thinking is
>       that I don't generally insert a buffer between two AXIS components within
>       an RFNoC block so why do I want buffering between two AXIS components that
>       span between two RFNoC blocks?
>    - *RFNoC block <context|info>_fifo_depth*:
>       - Should this be sized based on the expected packet length and the
>       specified payload_fifo_depth?  For example, if I expect incoming packets of
>       1000 samples and set my payload_fifo_depth to 2000 so that I can buffer 2
>       packets, should I then set the context or info fifo_depth to be 2?
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000cc49f505c35afa9d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Rob,</div><div><br></div><div>The &quot;buff_size&quo=
t; parameter controls the &quot;INGRESS_BUFF_SIZE&quot; Verilog parameter u=
sed in the stream endpoint. It has a significant effect on streaming perfor=
mance in the TX direction (host to USRP). A practical lower limit is two MT=
U-sized packets, and the rfnoc_image_builder will coerce it to at least tha=
t value. If the port is not actually used for steaming RF data, you can set=
 buff_size to 0 and it will use a very small FIFO (32-deep). You generally =
want big buffers for the TX data paths that stream RF data at high rates an=
d the default images set these about as large as is practical for the FPGA =
size.</div><div><br></div><div>The &quot;payload_fifo_depth&quot; parameter=
 sets the &quot;<span class=3D"gmail-matchline">PAYLOAD_FIFO_SIZE</span>&qu=
ot; Verilog parameter=C2=A0used in the NoC Shell in both the TX and RX dire=
ctions.=20
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
 href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>I am =
having some trouble building a custom RFNoC 4 FPGA design and so I am looki=
ng to reduce the footprint. One easy thing to try is to reduce various buff=
er sizes such as the ingress buffer size on the streaming endpoint or the i=
ncoming RFNoC block fifo depths.=C2=A0 But, I am wondering if there are pra=
ctical lower limits for how small these should be set to. Any comments on t=
he questions below (or other insights or rules-of-thumb) would be greatly a=
ppreciated. Thanks.=C2=A0</div><div>Rob</div><ul><li><b>Stream endpoint ing=
ress buffer size</b>: &quot;buff_size&quot; parameter for endpoint in core =
yml</li><ul><li>Is there a practical lower limit?=C2=A0 For example, should=
 it be at least MTU size? Does anything bad happen if I set it as low as 25=
6?</li><li>Are large sizes needed only for SEPs that will accept steaming f=
rom host? For example if a DDC was connected to its own SEP would there be =
any need for a large buff_size on that SEP given that the incoming data wou=
ld likely be coming from another FPGA block (i.e., the Radio)?</li><li>Are =
large sizes needed only for SEPs that require real-time flow (e.g. paths th=
at terminate at a Radio)? For example, even though a Replay block accepts d=
ata from the host, it may not need real-time flow if you are just pre-stori=
ng samples that will later be played out in real-time. For this case, is th=
ere a practical lower limit for how small we should set buff_size?</li><li>=
Does the buffer size affect both directions? In other words, are=C2=A02 buf=
fers created: one for the incoming packets from the crossbar AND one for th=
e incoming packets from the static router?</li></ul><li><b>RFNoC block payl=
oad_fifo_depth</b>:=C2=A0</li><ul><li>Is there a practical lower limit?=C2=
=A0</li><li>What is the disadvantage to setting this to one?=C2=A0 My think=
ing is that I don&#39;t generally insert a buffer between two AXIS componen=
ts within an RFNoC block so why do I want buffering between two AXIS compon=
ents that span between two RFNoC blocks?</li></ul><li><b>RFNoC block &lt;co=
ntext|info&gt;_fifo_depth</b>:=C2=A0</li><ul><li>Should this be sized based=
 on the expected packet length and the specified payload_fifo_depth?=C2=A0 =
For example, if I expect incoming packets of 1000 samples and set my payloa=
d_fifo_depth to 2000 so that I can buffer 2 packets, should I then set the =
context or info fifo_depth to be 2?</li></ul></ul></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000cc49f505c35afa9d--

--===============3276335112992528723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3276335112992528723==--
