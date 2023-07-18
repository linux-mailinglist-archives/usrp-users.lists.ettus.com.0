Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6987B75862F
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jul 2023 22:41:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D6ACA384C51
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jul 2023 16:41:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689712882; bh=WrsTAIc4l3pR8phd+vN+bFxRnwQpa4F4OfGqyzF49BM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XRN5KczXJNRG49ORSSj+1wtArpK03AK3yJcpt2AQv/4soeYTfYSs5IJmTetICCttR
	 lDgaYmWYuHCisPhby/AJaEyJCOupcYgt2vbD7ssLdEuFbHwlaDswO5locmH1abVPRQ
	 qZdGVVjpEKg127bHsiQtiN1I6qxvB65TPrDCzCn03PhD6IEX5slWo/rVbAwOxV/zC7
	 xqi6M6p6E9NWUu/ylHp3J3lL0DjUiRKd4+jSBspWUNEGnsvf71cHVIIQQEkFlFFaSa
	 smxd4cMswB4rm4SYT7+mqxYH2CzUL4QIqoqIbMv5dSCioY/V8UZVE1f8nta8wXq+sV
	 zDhjkQbpNiRoQ==
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 4FEFF384BE3
	for <usrp-users@lists.ettus.com>; Tue, 18 Jul 2023 16:40:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="27xBmoRQ";
	dkim-atps=neutral
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-9939fbb7191so23786466b.0
        for <usrp-users@lists.ettus.com>; Tue, 18 Jul 2023 13:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1689712845; x=1692304845;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VWBgpjWLWhwFNYNkLiTxlax+LdSR8R5GfcDqj28nzRo=;
        b=27xBmoRQgvzVrFcYnc6yQMMd1j7sXthrcJmtDyvsmT7Fbl9tN9qqj6AVA0BjwM2wIo
         GriWfXXPxUl9SL4pIqbFI5RHi5IucFNkf6XFbIcX08QwV/9I8IT82HfHoYDPvRZhjtnD
         uts9TV1hCMX2wkyX118qdj+7vnhxxKaH7a1M4gaTO4BIRuo/AYwZZyJlKpYtQihO+xt7
         0EFsm02Z6cooT8/cw3BwcPTu7kOWJo4rSg5v8pLrJ9/nvjZFt7UWo/9PvwIfYAm0sPl1
         Lwm2ckxd+goLwOBOoshTyEHnYLivO51Sag5OYQ7PcecpJLappcAu0kG7EeimW8IWhVj5
         WaWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689712845; x=1692304845;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VWBgpjWLWhwFNYNkLiTxlax+LdSR8R5GfcDqj28nzRo=;
        b=hZNZ+wN9zXBcizyJHHulydU2kpi4vBEuST9qDdfzwbX1f/UzTDeb03b5wH1Nh2YGfs
         fsmH6KR3rPHJr6oc3r16ociKb6ZFDV/Pl9T+t/TpwIsoRI8MQ7c5nc8X7CQMB3g4wCe1
         1R3o8+W/47eZ9julCAD0wiGKnqq4CWdGQF4iZV/2Wr+27bO+JnLyx9VmYNRSVQYK7LDJ
         Z0ZAfqbBj0VAGfiS/kwcqmxh+IFlAlK+26vl0xrS24ttNe/R3X/SqPyv8jir1/GGcD4K
         +C0rN9sel1YnXLRfk18+ULDzyCr4qV3z7Ti5JIEa7ZwjJoJJeHPDSHaMJE5G6sDm6AV6
         zsUQ==
X-Gm-Message-State: ABy/qLZEI2hOD2MKKWkBU+OCmKi2VncAiHmYVOLroJMuG3ctPR3T6HoS
	2P6WsxC6nXvT79D3zdD0Hh2lhttcRIFGigBiVptllGWj
X-Google-Smtp-Source: APBJJlEjR4ZzIBNC2jCXmHqUfvShlWi04Vby+IlbYlWv9yh3+1hZ/eAaLxprPLixSHCtX+QPwT16ytVoh/ZNtSw/7wA=
X-Received: by 2002:a17:907:1b1d:b0:96f:9cea:a34d with SMTP id
 mp29-20020a1709071b1d00b0096f9ceaa34dmr215410ejc.21.1689712844741; Tue, 18
 Jul 2023 13:40:44 -0700 (PDT)
MIME-Version: 1.0
References: <b61dcc76-06d4-aef9-5b83-b051a10e396c@gsi.de> <CAFche=hJyyjXf-vuO-=G0OXTtDuC3A4k4+htPy5aoAjuu5nw8A@mail.gmail.com>
 <GV2P191MB2357602A0F7D34CCBBCAFD7AE630A@GV2P191MB2357.EURP191.PROD.OUTLOOK.COM>
In-Reply-To: <GV2P191MB2357602A0F7D34CCBBCAFD7AE630A@GV2P191MB2357.EURP191.PROD.OUTLOOK.COM>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 18 Jul 2023 14:40:28 -0600
Message-ID: <CAFche=hSXd7-uOFfHrGUHOB37_Cq2QAMMHexm-YHYP0H5GsOhA@mail.gmail.com>
To: Jernej Kokalj <jernej.kokalj@cosylab.com>
Message-ID-Hash: HXD7WTYWSDGPLSEGOMYK5I4Z667RGP5T
X-Message-ID-Hash: HXD7WTYWSDGPLSEGOMYK5I4Z667RGP5T
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Philipp Niedermayer <p.niedermayer@gsi.de>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, =?UTF-8?Q?Bla=C5=BE_Kelbl?= <blaz.kelbl@cosylab.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Custom RFNoC block: data throughput bottleneck
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HXD7WTYWSDGPLSEGOMYK5I4Z667RGP5T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5765521861190004818=="

--===============5765521861190004818==
Content-Type: multipart/alternative; boundary="000000000000e234950600c8ed9f"

--000000000000e234950600c8ed9f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jernej,

I took a look at the code you shared. One thing I noticed is that you pass
the data through your block, but not the sideband info. I'm assuming your
block has some delay to it, which means the sideband information will not
be correctly aligned in time with the outgoing packets. It's not obvious to
me why this would cause the behavior you're seeing, so maybe that's not the
issue. Nevertheless, I recommend fixing that. Since you're using
SIDE_BAND_AT_END, you need to make sure that information is correct when
TLAST is asserted.

If that's not the issue, then I assume the issue is in your
PidFloatCoreStandard module, since I think you said that it works OK when
you bypass it. You might take a look at the simulation and make sure you
exercise the flow control (TREADY, TVALID). You could also consider putting
an ILA on that interface and see what's going on there. You want to make
sure the packets going into the NOC shell look correct (and also out of the
RFNoC block, although the packets will  be a little harder to understand).

Thanks,

Wade

On Mon, Jul 10, 2023 at 1:28=E2=80=AFAM Jernej Kokalj <jernej.kokalj@cosyla=
b.com>
wrote:

> Hi Wade,
>
> thank you for support on this. Let me explain a bit the custom block for
> you to better understand how we generate the AXI-Stream packets.
>
> The rfnoc_block_feedback_controller (
> https://git.gsi.de/p.niedermayer/exciter/-/blob/feedback_rfnoc/rfnoc-beam=
_exciter/fpga/rfnoc_block_feedback_controller/rfnoc_block_feedback_controll=
er.v
> ):
>
>    - receives 200 (defualt value, can be configured) input datas (we do
>    not currently know how many data samples are in a packet)
>    - the module performs signal processing and generates ONE data packet
>    stream with "tLast" asserted on the last "tValid" data - so 200 output
>    datas with "tLast" on the 200th data output
>    - ttimestamp, thas_time, tlength, teov, teob are wired directly from
>    m_in to s_out inside the rfnoc_block_feedback_controller.v file
>
> There is also simulation of the block using the RFNoC template and the
> block functional models - there the packets seem to be generated normally
> that way and we see no issue. (
> https://git.gsi.de/p.niedermayer/exciter/-/blob/feedback_rfnoc/rfnoc-beam=
_exciter/fpga/rfnoc_block_feedback_controller/rfnoc_block_feedback_controll=
er_tb.sv
> )
>
> We have read the specification stating that when SIDEBAND_AT_END is True
> as in our case, then the package size is defined by "tlast" and "tlenght"
> is ignored (we can generate tLast after 200 valid datas irrespective on h=
ow
> many packets were on the input).
>
> Would it be possible for you to run the simulation and check where the
> problem with AXI-Stream packets is? Or If you already see the problem,
> support us on understanding the AXI-Stream packet generation.
>
> Best regards,
> Jernej Kokalj
>
> The blocks' location (
> https://git.gsi.de/p.niedermayer/exciter/-/tree/feedback_rfnoc/rfnoc-beam=
_exciter/fpga
> ):
>
>    - sources and simulation are inside the
>    folder rfnoc_block_feedback_controller
>    - the rfnoc_block_feedback_controller uses also Xilinx IPs (generated
>    with Vivado 2021.1), which are located in the ip/ folder
>
>
>
> ------------------------------
> *From:* Wade Fife <wade.fife@ettus.com>
> *Sent:* Wednesday, July 5, 2023 16:21
> *To:* Philipp Niedermayer <p.niedermayer@gsi.de>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>; Jernej
> Kokalj <jernej.kokalj@cosylab.com>; Bla=C5=BE Kelbl <blaz.kelbl@cosylab.c=
om>
> *Subject:* Re: [USRP-users] Custom RFNoC block: data throughput bottlenec=
k
>
> You don't often get email from wade.fife@ettus.com. Learn why this is
> important <https://aka.ms/LearnAboutSenderIdentification>
> Caution: This email originated from outside of Cosylab.
>
> I suspect your logic isn't processing packets correctly. For example,
> maybe the sequence number is wrong on the output packets, or some other
> header information is incorrect. Or maybe your AXI-Stream handshake logic
> is wrong, causing you to miss samples. Or maybe TLAST isn't being asserte=
d
> on the correct sample. Something like that. It's hard to say. But the `D`
> could mean simply that the packets going back to your host computer are
> incorrectly constructed.
>
> Wade
>
>
>
> On Wed, Jul 5, 2023 at 12:16=E2=80=AFAM Philipp Niedermayer <p.niedermaye=
r@gsi.de>
> wrote:
>
> Dear all,
>
> we are working on a custom OOT RFNoC Block implementation [1] on a USRP
> X310 and are facing data throughput bottlenecks.
>
> The DSP is controlled via GNU Radio / UHD like this:
> Signal Source -> RFNoC TX Streamer -> custom OOT block -> RFNoC RX
> Streamer -> QT GUI Time Sink
>
> When running the flow graph we get a lot of "DDDD" printed to the console=
,
> i.e. package drop due to buffer overflow. Adding a GNU Radio "Probe rate"
> block shows that the sampling rate before the TX Streamer is 200kSps as
> desired. However, behind the RX Streamer, the sampling rate is only 64 Sp=
s
> (!).
>
> When bypassing our custom VHDL implementation in the OOT Block (i.e.
> assigning all s_out_axis_t* to respective m_in_axis_t*) the flow graph
> works as expected, so the RFNoC part alone works just fine.
>
> The VHDL implementation requires some 100 clock cycles for a sample to
> propagate. But since we use the 200MHz clock, achieving sampling rates of
> 200kSps should not be an issue. The custom OOT block also has an option f=
or
> interpolation (i.e. increasing sampling rate), but the behaviour is the
> same even for interpolation=3D1.
>
> Do you have some hints on how to improve performance? We have already
> tried to
> - Increase the payload FIFO depth from 32 to 128
> - Try both, the context-payload and the data AXI-Stream interface
> - Assert tlast on every sample to reduce packages size
>
> Some things we have considered but are not sure about:
> - MTU size
> - Package size
>
> Thanks for taking the time to share your ideas
> Philipp, Jernej, Bla=C5=BE
>
>
> [1]
> https://git.gsi.de/p.niedermayer/exciter/-/blob/f02ee94ad3358fff313fc14a1=
a8d8494ad68d8ab/rfnoc-beam_exciter/fpga/rfnoc_block_feedback_controller/rfn=
oc_block_feedback_controller.v#L419
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--000000000000e234950600c8ed9f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jernej,</div><div><br></div><div>I took a look at =
the code you shared. One thing I noticed is that you pass the data through =
your block, but not the sideband info. I&#39;m assuming your block has some=
 delay to it, which means the sideband information will not be correctly al=
igned in time with the outgoing packets. It&#39;s not obvious to me why thi=
s would cause the behavior you&#39;re seeing, so maybe that&#39;s not the i=
ssue. Nevertheless, I recommend fixing that. Since you&#39;re using SIDE_BA=
ND_AT_END, you need to make sure that information is correct when TLAST is =
asserted.</div><div><br></div><div>I<span style=3D"font-family:arial,sans-s=
erif">f that&#39;s not the issue, then I assume the issue is in your PidFlo=
atCoreStandard module, since I think you said that it works OK when you byp=
ass it. You might take a look at the simulation and make sure you exercise =
the flow control (TREADY, TVALID). You could also consider putting an ILA o=
n that interface and see what&#39;s going on there. You want to make sure t=
he packets going into the NOC shell look correct (and also out of the RFNoC=
 block, although the packets will=C2=A0 be a little harder to understand). =
<br></span></div><div><span style=3D"font-family:arial,sans-serif"><code><b=
r></code></span></div><div><code style=3D"font-family:arial,sans-serif">Tha=
nks,</code></div><div><span style=3D"font-family:arial,sans-serif"><code><b=
r></code></span></div><div><span style=3D"font-family:arial,sans-serif"><co=
de>Wade<br></code></span></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Mon, Jul 10, 2023 at 1:28=E2=80=AFAM Jern=
ej Kokalj &lt;<a href=3D"mailto:jernej.kokalj@cosylab.com">jernej.kokalj@co=
sylab.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div class=3D"msg105066224749942768">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi Wade,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
thank you for support on this. Let me explain a bit the custom block for yo=
u to better understand how we generate the AXI-Stream packets.=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
The=C2=A0rfnoc_block_feedback_controller (<a href=3D"https://git.gsi.de/p.n=
iedermayer/exciter/-/blob/feedback_rfnoc/rfnoc-beam_exciter/fpga/rfnoc_bloc=
k_feedback_controller/rfnoc_block_feedback_controller.v" id=3D"m_1050662247=
49942768LPlnk475604" target=3D"_blank">https://git.gsi.de/p.niedermayer/exc=
iter/-/blob/feedback_rfnoc/rfnoc-beam_exciter/fpga/rfnoc_block_feedback_con=
troller/rfnoc_block_feedback_controller.v</a>):</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<ul>
<li style=3D"list-style-type:&quot;- &quot;"><span>receives 200 (defualt va=
lue, can be configured) input datas (we do not currently know how many data=
 samples are in a packet)</span></li><li style=3D"list-style-type:&quot;- &=
quot;">the module performs signal processing and generates ONE data packet =
stream with &quot;tLast&quot; asserted on the last &quot;tValid&quot; data =
- so 200 output datas with &quot;tLast&quot; on the 200<sup>th</sup>=C2=A0d=
ata output<br>
</li><li style=3D"list-style-type:&quot;- &quot;">ttimestamp, thas_time, tl=
ength, teov, teob are wired directly from m_in to s_out inside the=C2=A0rfn=
oc_block_feedback_controller.v file<br>
</li></ul>
<div>There is also simulation of the block using the RFNoC template and the=
 block functional models - there the packets seem to be generated normally =
that way and we see no issue. (<a href=3D"https://git.gsi.de/p.niedermayer/=
exciter/-/blob/feedback_rfnoc/rfnoc-beam_exciter/fpga/rfnoc_block_feedback_=
controller/rfnoc_block_feedback_controller_tb.sv" id=3D"m_10506622474994276=
8LPlnk493577" target=3D"_blank">https://git.gsi.de/p.niedermayer/exciter/-/=
blob/feedback_rfnoc/rfnoc-beam_exciter/fpga/rfnoc_block_feedback_controller=
/rfnoc_block_feedback_controller_tb.sv</a>)</div>
<div><br>
</div>
<div>We have read=C2=A0the specification stating that when SIDEBAND_AT_END =
is True as in our case, then the package size is defined by &quot;tlast&quo=
t; and &quot;tlenght&quot; is ignored (we can generate tLast after 200 vali=
d datas irrespective
 on how many packets were on the input).</div>
<div><br>
</div>
<div>Would it be possible for you to run the simulation and check where the=
 problem with AXI-Stream packets is? Or If you already see the problem, sup=
port us on understanding the AXI-Stream packet generation.</div>
<div><br>
</div>
<div>Best regards,<br>
</div>
<div>Jernej Kokalj</div>
<div><br>
</div>
<div>The blocks&#39; location (<a href=3D"https://git.gsi.de/p.niedermayer/=
exciter/-/tree/feedback_rfnoc/rfnoc-beam_exciter/fpga" id=3D"m_105066224749=
942768LPNoLPOWALinkPreview" target=3D"_blank">https://git.gsi.de/p.niederma=
yer/exciter/-/tree/feedback_rfnoc/rfnoc-beam_exciter/fpga</a>):</div>
<div>
<ul>
<li style=3D"list-style-type:&quot;- &quot;"><span style=3D"display:inline;=
background-color:rgb(255,255,255)">sources and simulation are
</span>inside the folder=C2=A0rfnoc_block_feedback_controller</li><li style=
=3D"list-style-type:&quot;- &quot;">the=C2=A0rfnoc_block_feedback_controlle=
r uses also Xilinx IPs (generated with Vivado 2021.1), which are located in=
 the ip/ folder</li></ul>
</div>
<div></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
</div>
<div id=3D"m_105066224749942768appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_105066224749942768divRplyFwdMsg" dir=3D"ltr"><font style=3D"fo=
nt-size:11pt;color:rgb(0,0,0)" face=3D"Calibri, sans-serif"><b>From:</b> Wa=
de Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.f=
ife@ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, July 5, 2023 16:21<br>
<b>To:</b> Philipp Niedermayer &lt;<a href=3D"mailto:p.niedermayer@gsi.de" =
target=3D"_blank">p.niedermayer@gsi.de</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;; Jernej Kokalj &=
lt;<a href=3D"mailto:jernej.kokalj@cosylab.com" target=3D"_blank">jernej.ko=
kalj@cosylab.com</a>&gt;; Bla=C5=BE Kelbl &lt;<a href=3D"mailto:blaz.kelbl@=
cosylab.com" target=3D"_blank">blaz.kelbl@cosylab.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Custom RFNoC block: data throughput bottle=
neck</font>
<div>=C2=A0</div>
</div>
<div>
<table style=3D"border:0px none;display:table;width:100%;table-layout:fixed=
;float:none" width=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0=
" align=3D"left">
<tbody style=3D"display:block">
<tr>
<td cellpadding=3D"7px 2px 7px 2px" style=3D"padding:7px 2px;background-col=
or:rgb(166,166,166)" width=3D"1px" valign=3D"middle">
</td>
<td cellpadding=3D"7px 5px 7px 15px" style=3D"width:100%;padding:7px 5px 7p=
x 15px;font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&q=
uot;,Tahoma,Arial,sans-serif;font-size:12px;font-weight:normal;text-align:l=
eft;color:rgb(33,33,33);background-color:rgb(234,234,234)" width=3D"100%" v=
align=3D"middle">
<div>You don&#39;t often get email from <a href=3D"mailto:wade.fife@ettus.c=
om" target=3D"_blank">wade.fife@ettus.com</a>. <a href=3D"https://aka.ms/Le=
arnAboutSenderIdentification" target=3D"_blank">
Learn why this is important</a></div>
</td>
<td cellpadding=3D"7px 5px 7px 5px" style=3D"width:75px;padding:7px 5px;fon=
t-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahom=
a,Arial,sans-serif;font-size:12px;font-weight:normal;text-align:left;color:=
rgb(33,33,33);background-color:rgb(234,234,234)" width=3D"75px" valign=3D"m=
iddle" align=3D"left">
</td>
</tr>
</tbody>
</table>
<div>
<table width=3D"100%" cellspacing=3D"0" cellpadding=3D"0" border=3D"0" alig=
n=3D"left">
<tbody>
<tr>
<td style=3D"background:rgb(255,185,0);padding:5pt 2pt"></td>
<td cellpadding=3D"7px 6px 7px 15px" style=3D"background:rgb(255,248,229);p=
adding:5pt 4pt 5pt 12pt" width=3D"100%">
<div style=3D"color:rgb(34,34,34)"><span style=3D"font-weight:bold;color:rg=
b(34,34,34)">Caution:</span> This email originated from outside of Cosylab.
</div>
</td>
</tr>
</tbody>
</table>
<br>
<div>
<div dir=3D"ltr">I suspect your logic isn&#39;t processing packets correctl=
y. For example, maybe the sequence number is wrong on the output packets, o=
r some other header information is incorrect. Or maybe your AXI-Stream hand=
shake logic is wrong, causing you to miss
 samples. Or maybe TLAST isn&#39;t being asserted on the correct sample. So=
mething like that. It&#39;s hard to say. But the `D` could mean simply that=
 the packets going back to your host computer are incorrectly constructed.<=
br>
<div><br>
</div>
<div>Wade<br>
</div>
<div><br>
</div>
<div><br>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Wed, Jul 5, 2023 at 12:16=E2=80=AFAM Philipp Niedermaye=
r &lt;<a href=3D"mailto:p.niedermayer@gsi.de" target=3D"_blank">p.niedermay=
er@gsi.de</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div style=3D"padding-bottom:1px">
<p>Dear all,</p>
<p>we are working on a custom OOT RFNoC Block implementation [1] on a USRP =
X310 and are facing data throughput bottlenecks.</p>
<p>The DSP is controlled via GNU Radio / UHD like this:<br>
Signal Source -&gt; RFNoC TX Streamer -&gt; custom OOT block -&gt; RFNoC RX=
 Streamer -&gt; QT GUI Time Sink</p>
<p>When running the flow graph we get a lot of &quot;DDDD&quot; printed to =
the console, i.e. package drop due to buffer overflow. Adding a GNU Radio &=
quot;Probe rate&quot; block shows that the sampling rate before the TX Stre=
amer is 200kSps as desired. However, behind the RX Streamer,
 the sampling rate is only 64 Sps (!).<br>
</p>
<p>When bypassing our custom VHDL implementation in the OOT Block (i.e. ass=
igning all s_out_axis_t* to respective m_in_axis_t*) the flow graph works a=
s expected, so the RFNoC part alone works just fine.</p>
<p>The VHDL implementation requires some 100 clock cycles for a sample to p=
ropagate. But since we use the 200MHz clock, achieving sampling rates of 20=
0kSps should not be an issue. The custom OOT block also has an option for i=
nterpolation (i.e. increasing sampling
 rate), but the behaviour is the same even for interpolation=3D1.<br>
</p>
<p>Do you have some hints on how to improve performance? We have already tr=
ied to<br>
- Increase the payload FIFO depth from 32 to 128<br>
- Try both, the context-payload and the data AXI-Stream interface<br>
- Assert tlast on every sample to reduce packages size</p>
<p>Some things we have considered but are not sure about:<br>
- MTU size<br>
- Package size<br>
</p>
<p>Thanks for taking the time to share your ideas<br>
Philipp, Jernej, Bla=C5=BE<br>
</p>
<p><br>
</p>
<p>[1] <a href=3D"https://git.gsi.de/p.niedermayer/exciter/-/blob/f02ee94ad=
3358fff313fc14a1a8d8494ad68d8ab/rfnoc-beam_exciter/fpga/rfnoc_block_feedbac=
k_controller/rfnoc_block_feedback_controller.v#L419" target=3D"_blank">
https://git.gsi.de/p.niedermayer/exciter/-/blob/f02ee94ad3358fff313fc14a1a8=
d8494ad68d8ab/rfnoc-beam_exciter/fpga/rfnoc_block_feedback_controller/rfnoc=
_block_feedback_controller.v#L419</a></p>
<p><br>
</p>
<u></u><u></u></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</div>

</div></blockquote></div>

--000000000000e234950600c8ed9f--

--===============5765521861190004818==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5765521861190004818==--
