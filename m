Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDBCB2B3C5
	for <lists+usrp-users@lfdr.de>; Mon, 18 Aug 2025 23:55:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3EEA3386106
	for <lists+usrp-users@lfdr.de>; Mon, 18 Aug 2025 17:55:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755554126; bh=FdDGXfgiKu87o1jpjH1O8qFIWkSN1Uuy0aCskrrkl2I=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mpxiVaWw05sS8PBzPnmwIkJd0tvlVjEwQys2LY4Wi6QGK0dh0LbcnKlR+vAIoZW8T
	 aES1DB5P6FlCMx+/z5uzzaj9kjKOJklVtAUQWqKWYAkwjftpTRkvnqo5sZ5+6I1VPt
	 T1LN6eN6VZrQig68ILoYGByR7ZYaIv8JlZ8CD3LtWT5ePs/15ZwEDgyvp6lebH3zyK
	 muudpPoTeRikS3ze96Bger9zv+egY1z2GWJF8U4wMZiBlFXV3kIFoyBHVbPBNdrVkT
	 VVTQm7wHrb4XMwEpJzS6+GlbtIjPBZxewJKDKlH7yaqFQFB0UxR/8oL9GecOD6lCh6
	 NK/21JO6ama7A==
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	by mm2.emwd.com (Postfix) with ESMTPS id E040838616A
	for <usrp-users@lists.ettus.com>; Mon, 18 Aug 2025 17:54:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aphxwOnu";
	dkim-atps=neutral
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-333f9160c2dso35714841fa.2
        for <usrp-users@lists.ettus.com>; Mon, 18 Aug 2025 14:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755554080; x=1756158880; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sOq4dB+nOkHBxp1wiG5lePZW/2tvaSzcVR0eH/7aD6s=;
        b=aphxwOnuhUSyXI9qcElFujdlfeBlIJtztmnl1y1kngK50EHmUExWyfwXk/SUYOpozw
         ye2Ro0U3Y8501RGB+NeUo9hOcgYLwBOglXBVylEEX3ijaayPDoikjNUigHFKvTHiUEEA
         gcjS+m/honlt0MlIB/CpdWZ0H+GnH33gmCa3s4qR7TNM30oqDCLkmp3b7kIzPIWIgjbO
         0dM8UB+3Jbbp6CqE++ui3AW8+ZWNI/fsNIOCaSobOps4nPCh70rfFz/PsJgsIVx7BG2a
         rhypZbRqHhTTbTCG+J5H2jfRl4Y1jHm8bAlQuOPEnPmbN9acxV2dqJ63nzIaFkVChHHt
         92QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755554080; x=1756158880;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sOq4dB+nOkHBxp1wiG5lePZW/2tvaSzcVR0eH/7aD6s=;
        b=galShE69AxOA00Z8CJFICA/5bTgVppI5IvrwjCZ27Ori0VubfrOz4s9Z4BKdzBXA6A
         S8jfLrgDm7Lzg4oICHlye+IUiGE5K6oDOJVjxU3fi0RHnJUhNdBIy63TyxYB6TEK97Po
         9VAg9SLZiKn9IYRWwudeZkohGYdN6OTa4a5pzxVTZOhpyEd6YSWrrGhI8ACaGsjN5/oY
         TPF20s0wBXOKTyJ0TknMuKW0KvKw5e6elQTyGiYZ3oCg8ifzW9nzzKgGzU1qexzdQafM
         TK7bccnXXMWnvu1SO4o0JAIh7weXQDIOgJJQF+1jSzPkTeEL0ovWhtEdWjVhB7qVlpBE
         d9Fw==
X-Gm-Message-State: AOJu0Yw4n1GQNs6tPTpWulYfv7v5J9IMMjHrqCuRGhrsiAWc8qDnqcrN
	0Os7uD6zltKDcB3XVSiW58MCbtZU/Ev8cxmxXuMQiSbb2y7gSIZCoCGGCs/mnYnq/SsBXrxGN+W
	J9wvoCp8Ghbwtaf5GgegwKWEzLze5EPjt066B
X-Gm-Gg: ASbGncuuj6NeUwyuoiCQL8UEuW8kPzwcpzSzd9Ke8Rk5N8c+pxAOKfCU77lJbXyEVL5
	7wxM1vXXQFavDeeye0VxaHOKVeHQx7tVcFHtX0X2xNvPVl7lDfdo62jzJtauj+/2yKiQ58U0e2T
	rhRqgYhv99uN0WloRRnoEBvLDQ4t8oZV3KfBcjbF23HbxKbCzn4pgWoZO5JA3jLrN0cUFfszgge
	aq9rXUySBisy8MnhoSt
X-Google-Smtp-Source: AGHT+IHcWw5OGWIEyRApWQo+REdN2MLs/nn9mojFiMOU2D+IinkHbbqyvHNSlfKWu254ZpEKRCB5TDRvlAM2YrioAQU=
X-Received: by 2002:a05:651c:b0e:b0:32a:8146:5061 with SMTP id
 38308e7fff4ca-335304f721dmr521971fa.15.1755554079684; Mon, 18 Aug 2025
 14:54:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAB-=5jb7Qgr28JyT6wteTkNaZxWB+6TKTwWEfdvFAYrAABYW7w@mail.gmail.com>
 <CAFOi1A7kb3W2yswkWcRz+RdTAs1bF9sT3xsrxet4tg7PZ5jKiA@mail.gmail.com>
In-Reply-To: <CAFOi1A7kb3W2yswkWcRz+RdTAs1bF9sT3xsrxet4tg7PZ5jKiA@mail.gmail.com>
From: Jons <jonsdeburn@gmail.com>
Date: Mon, 18 Aug 2025 23:54:28 +0200
X-Gm-Features: Ac12FXzLXAE9HdpIyhuQ8h1RDJBEDCxgEXfujqWnYAUvGqZqJBoVl-70Vj0Y9Ek
Message-ID: <CAB-=5jYQmxMO3YHmxsnMCJM9RkRxOk9Bd9djbgjdXUbTnwt=oQ@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: ZENOSEFPKCBSDV7QMBPEFPP2KNYN6FKT
X-Message-ID-Hash: ZENOSEFPKCBSDV7QMBPEFPP2KNYN6FKT
X-MailFrom: jonsdeburn@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding a Clock IP to RFNoC Block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZENOSEFPKCBSDV7QMBPEFPP2KNYN6FKT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4769542316319049277=="

--===============4769542316319049277==
Content-Type: multipart/alternative; boundary="0000000000004dbc02063caac93a"

--0000000000004dbc02063caac93a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin,
Thank you for your reply. Sorry for the delayed update. So I tried a few
combinations to see what works-
- Derived clocks from ce_clk (266Mhz), implementation failed in the routing
step. I introduced clocking wizard IP inside the noc_shell module to derive
the 2 clocks I wanted. There were timing violations for the higher clock
that connected to my block.
- Derived clocks from rfnoc_chdr_clk (200Mhz). Same as the previous one.
One thing I noticed was there were some high fanout logics, so I thought
maybe I will generate clocks similar to ce_clk from the clk200.

So finally with changes in x4xx.sv, x4xx_core.v and x410_bsp.yml files I
was able to get 2 new clocks and connected it to my block. With this I was
able to generate the bitfile, but I have not tested it yet. I also noticed
that the fanouts decreased drastically with this change. I am currently
writing the controller code for the blocks so that I can connect it in GNU
Radio.
Thanks for the help! I was able to understand the configuration file a bit
better with the example you shared.

-J


On Mon, 28 Jul 2025 at 15:53, Martin Braun <martin.braun@ettus.com> wrote:

> Hey Jons,
>
> if you're generating and using a custom clock within your RFNoC block,
> then there is nothing from RFNoC that you need. Unless you're exporting
> your clock, you don't need to declare it anywhere.
>
> However, you *do* need to follow all the Vivado/Digital design guidelines
> for adding clocks (i.e., stuff that is unrelated to RFNoC specifically). =
If
> you need to inject custom constraints, you can do that from your block
> YAML. Just add .xdc files in the same directory where your HDL is, and
> refer to them in the YAML like we do here:
> https://github.com/EttusResearch/rfnoc-oot-blocks/blob/main/rfnoc/blocks/=
aurora.yml
>
> --M
>
> On Sun, Jul 27, 2025 at 7:28=E2=80=AFPM Jons <jonsdeburn@gmail.com> wrote=
:
>
>> Hi all,
>> I am trying to add a custom RFNoC block and my block runs on different
>> clocks(not the default ones). So I followed the instructions from the FA=
Q
>> page in RFNoC wiki of deriving clocks from the available clocks -
>> https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#How_do_I_add_a_clo=
ck_with_a_different_frequency.3F
>> But when I add the parameters in block YAML, it added new ports to my
>> *rfnoc_block_myblock* module, which is not what I expected. My intention
>> was to derive 2 clocks from the rfnoc_chdr_clk  and use it inside my blo=
ck.
>> For this I added the clock IP module (instantiated) in the
>> noc_shell_myblock, because this is where the CDC FIFOs are there. So, wi=
th
>> this method the generated clock just stays inside my block and won't be
>> available outside to it. Maybe the steps described in the FAQ might not =
be
>> the right way to go about with my requirement? I am not sure.
>>
>> Also, I tried not adding the YAML parameters of the clocks for my block.
>> This worked to the point where the implementation of the entire design
>> failed with WNS of -0.8ns on the new derived clock I added. I also got a
>> few Critical warnings for the clocks I added, not sure if it is related
>> somehow or if I can ignore it -
>>
>>
>>
>> *TIMING-4#1 Critical WarningInvalid primary clock redefinition on a cloc=
k
>> tree  Invalid clock redefinition on a clock tree. The primary clock
>> x4xx_core_i/rfnoc_image_core_i/b_myblock_3/noc_shell_myblock_i/clk_wiz_c=
hdr_200_125_inst/inst/clk_in_chdr
>> is defined downstream of clock clk200 and overrides its insertion delay
>> and/or waveform definition. *
>>
>> I followed this thread (
>> https://www.mail-archive.com/usrp-users%40lists.ettus.com/msg14663.html)
>> to add IPs of my clock module that I generated with with Vivado IP catal=
og
>> and copied the *.xci, .v* and other generated files into the
>> path/to/module/rfnoc/fpga/myblock/ip/ and changed the Makefile and block
>> YAML definitions like the example given in the example Gain block.
>>
>> I checked the timing summary report and I found that the violation
>> happens in the derived clock that connects to one of my blocks. I was ab=
le
>> to build the IP by itself when I was testing it for viability.
>>
>> Any tips or leads in adding custom derived clocks to the design would be
>> super helpful and thank you all for maintaining such a nice community!!
>> -J
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004dbc02063caac93a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Martin,</div><div>Thank you for y=
our reply. Sorry for the delayed update. So I tried a few combinations to s=
ee what works- <br></div><div>-
 Derived clocks from ce_clk (266Mhz), implementation failed in the=20
routing step. I introduced clocking wizard IP inside the noc_shell=20
module to derive the 2 clocks I wanted. There were timing violations for
 the higher clock that connected to my block. <br></div><div>- Derived=20
clocks from rfnoc_chdr_clk (200Mhz). Same as the previous one. One thing
 I noticed was there were some high fanout logics, so I thought maybe I=20
will generate clocks similar to ce_clk from the clk200.<br><br></div><div>S=
o finally with changes in <a href=3D"http://x4xx.sv" target=3D"_blank">x4xx=
.sv</a>,
 x4xx_core.v and x410_bsp.yml files I was able to get 2 new clocks and=20
connected it to my block. With this I was able to generate the bitfile,=20
but I have not tested it yet. I also noticed that the fanouts decreased=20
drastically with this change. I am currently writing the controller code
 for the blocks so that I can connect it in GNU Radio.<br></div><div>Thanks=
 for the help! I was able to understand the configuration file a bit better=
 with the example you shared.</div><div><br></div><div>-J</div></div><br></=
div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Mon, 28 Jul 2025 at 15:53, Martin Braun &lt;<a href=
=3D"mailto:martin.braun@ettus.com">martin.braun@ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div>Hey Jons,</div><div><br></div><div>if you&#39;re generating and using a=
 custom clock within your RFNoC block, then there is nothing from RFNoC tha=
t you need. Unless you&#39;re exporting your clock, you don&#39;t need to d=
eclare it anywhere.</div><div><br></div><div>However, you *do* need to foll=
ow all the Vivado/Digital design guidelines for adding clocks (i.e., stuff =
that is unrelated to RFNoC specifically). If you need to inject custom cons=
traints, you can do that from your block YAML. Just add .xdc files in the s=
ame directory where your HDL is, and refer to them in the YAML like we do h=
ere:=C2=A0<a href=3D"https://github.com/EttusResearch/rfnoc-oot-blocks/blob=
/main/rfnoc/blocks/aurora.yml" target=3D"_blank">https://github.com/EttusRe=
search/rfnoc-oot-blocks/blob/main/rfnoc/blocks/aurora.yml</a></div><div><br=
></div><div>--M</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sun, Jul 27, 2025 at 7:28=E2=80=AFPM Jons &lt;<a hr=
ef=3D"mailto:jonsdeburn@gmail.com" target=3D"_blank">jonsdeburn@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div>Hi all,</div><div>I am trying to add a custom RFNoC blo=
ck and my=20
block runs on different clocks(not the default ones). So I followed the=20
instructions from the FAQ page in RFNoC wiki of deriving clocks from the
 available clocks - <a href=3D"https://kb.ettus.com/RFNoC_Frequently_Asked_=
Questions#How_do_I_add_a_clock_with_a_different_frequency.3F" target=3D"_bl=
ank">https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#How_do_I_add_a_c=
lock_with_a_different_frequency.3F</a> But when I add the parameters in blo=
ck YAML, it added new ports to my <b>rfnoc_block_myblock</b>
 module, which is not what I expected. My intention was to derive 2=20
clocks from the rfnoc_chdr_clk=C2=A0 and use it inside my block. For this I=
=20
added the clock IP module (instantiated) in the noc_shell_myblock,=20
because this is where the CDC FIFOs are there. So, with this method the=20
generated clock just stays inside my block and won&#39;t be available=20
outside to it. Maybe the steps described in the FAQ might not be the=20
right way to go about with my requirement? I am not sure.</div><div><br></d=
iv><div>Also,
 I tried not adding the YAML parameters of the clocks for my block. This
 worked to the point where the implementation of the entire design=20
failed with WNS of -0.8ns on the new derived clock I added. I also got a
 few Critical warnings for the clocks I added, not sure if it is related
 somehow or if I can ignore it -</div><div><i>TIMING-4#1 Critical Warning<b=
r>Invalid primary clock redefinition on a clock tree =C2=A0<br>Invalid cloc=
k redefinition on a clock tree. The primary clock x4xx_core_i/rfnoc_image_c=
ore_i/b_myblock_3/noc_shell_myblock_i/clk_wiz_chdr_200_125_inst/inst/clk_in=
_chdr is defined downstream of clock clk200 and overrides its insertion del=
ay and/or waveform definition. <br></i></div><div><i><br></i></div><div>I f=
ollowed this thread (<a href=3D"https://www.mail-archive.com/usrp-users%40l=
ists.ettus.com/msg14663.html" target=3D"_blank">https://www.mail-archive.co=
m/usrp-users%40lists.ettus.com/msg14663.html</a>) to add IPs of my clock mo=
dule that I generated with with Vivado IP catalog and copied the <b>.xci, .=
v</b> and other generated files into the path/to/module/rfnoc/fpga/myblock/=
ip/ and changed the Makefile and block YAML definitions like the example gi=
ven in the example Gain block.</div><div><br></div><div>I checked the timin=
g summary report and I found that the violation happens in the derived cloc=
k that connects to one of my blocks. I was able to build the IP by itself w=
hen I was testing it for viability.<br><br></div><div>Any
 tips or leads in adding custom derived clocks to the design would be=20
super helpful and thank you all for maintaining such a nice community!!</di=
v><div>-J</div><font color=3D"#888888"></font><br></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000004dbc02063caac93a--

--===============4769542316319049277==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4769542316319049277==--
