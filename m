Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 359B92E9FD5
	for <lists+usrp-users@lfdr.de>; Mon,  4 Jan 2021 23:10:36 +0100 (CET)
Received: from [::1] (port=41944 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kwY3c-0007BF-Ex; Mon, 04 Jan 2021 17:10:32 -0500
Received: from mail-oi1-f173.google.com ([209.85.167.173]:44247)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1kwY3Y-00074o-Fi
 for usrp-users@lists.ettus.com; Mon, 04 Jan 2021 17:10:28 -0500
Received: by mail-oi1-f173.google.com with SMTP id d189so33810343oig.11
 for <usrp-users@lists.ettus.com>; Mon, 04 Jan 2021 14:10:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HrOrKS04/vqs/4l9ZM9grT9hq/yUz12u2i8gmS26QgY=;
 b=uHKitLaUFrHdTsuremqwIz+rS15CLf1DqNx/M9u2sExcf4t89bH2gxDMbdi0yJgjAF
 kghq4oSGfghBgxv06lQw45OrdzJG/DH3Tx8KEBMQAWeEioj/MLdv0T4gffT/iqyZGb1I
 X2/EFangS1m5LrRuNrZq8vU4ER9OemioFAbnvAY83LOXF9+ojRLznDP2EcRUJ2MuvZ2i
 TqPZrsmSU28RfNieBJfp7gPWer+bKv8s/i/Xfpepk9AAcupTZFLJU+p2qjt5UGfdR422
 VWRZLic2xYgZ7HD7GY7FBLbSYMlE6Xc3yAm843jkvoVLMT1WWhCVqpEqfAkto8Nfgn7/
 wOdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HrOrKS04/vqs/4l9ZM9grT9hq/yUz12u2i8gmS26QgY=;
 b=l+76WPrE9237oB2s5xidYrLAqE/Mt3PfkOidQo+VQD+RQqFiOEJHpbKwUTl6AQi98o
 rriB7TjVeuXHtMIR1VwC9G+dK6G+gP8F8nIP//4zGJqayIQxtTsOlWhCry07gC7Z+mOl
 eBV/x/EN1oV/0Mez/D6Ez5BG0amj4ioRrXZZ6aMFQjmuUmK4rEJuXxDyuvDTlTcUI1VM
 RIjPF8hppvMZvju6w3t0+8tK7Wap5ZCH+/iik0L6CypuVghoGFUq7NVt7aQReZXLBirA
 xYxjPsTY36RIyal9ae4Ga01TKBEBxPCJ/U0fRoX1Vnk9tuwMhDAfAOyzxaAHruymKJbZ
 fzdQ==
X-Gm-Message-State: AOAM5317n4N9tULL4YwncXwiePyhz1IYRI0HG1XBk+m1mlv9XlXQHs7F
 zHbom2v//afhBjJzUFkYr3uZmTfJXcgzYQuwUCZI4HVwjcLj9qG7
X-Google-Smtp-Source: ABdhPJyVKnmQ841He7SU4ja9dCMopx7DMLxtwlnpKMZzD28371+ajRzIKdaFagIHzWdU65veQbbs+TRbSTlDaydSfUM=
X-Received: by 2002:aca:5786:: with SMTP id l128mr701564oib.145.1609798187573; 
 Mon, 04 Jan 2021 14:09:47 -0800 (PST)
MIME-Version: 1.0
References: <1A0C1E24-F805-4627-8830-F3F87525CFCD@ulb.be>
In-Reply-To: <1A0C1E24-F805-4627-8830-F3F87525CFCD@ulb.be>
Date: Mon, 4 Jan 2021 16:09:36 -0600
Message-ID: <CAFche=gs-7qDfLzUW5tds5ihgdLbV2_-vD6+=VaSsNBknBrh-w@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC Specification Questions
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="===============7627042010886996405=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============7627042010886996405==
Content-Type: multipart/alternative; boundary="00000000000021778205b81a59c0"

--00000000000021778205b81a59c0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi C=C3=A9dric,

I'll attempt to answer your questions. I'm more familiar with the
hardware/HDL side of things.

1. The default clock for rfnoc blocks is rfnoc_chdr_clk and this clock is
always present. You can use this clock for everything, unless you need a
different clock (e.g., a faster clock to increase DSP throughput). I
suggest not using different clocks unless you need to. I don't know why
keep_one_in_n uses ce_clk, but any block can use it if the writer of that
block wants to.

2. When using AXI-Stream Data the length is automatically calculated,
assuming SIDEBAND_AT_END is set to true (which is the default). If you drop
all samples, then you don't put anything into the NoC Shell, so no packet
would be generated.

3. I'm not familiar with how keep_one_in_n works, but the timestamp is just
a count of the samples. So if you wanted to generate a new timestamp, you
would just keep a count of the samples. The timestamp for a packet should
be the timestamp for the first sample of the packet.

4. The info_fifo_depth effectively controls how many packets can be
buffered in the NoC shell at a time. Normally there are only a couple of
packets buffered at a time, so it doesn't need to be very big. This FIFO is
often implemented using SRLs, so I often use 32, which is the maximum SRL
size.

5. Yes. In other words, NIPC sets the width of the tdata port. It's always
NIPC items wide.

6. I believe that sw_iface isn't implemented yet and I don't think this key
is currently required. I think C++ refers to the RFNoC C++ API and nocsript
refers to NoC-Script (a concept from UHD 3.x but not yet implemented in UDH
4).

7. This also isn't implemented yet, but I believe it's a way of identifying
the type of metadata.

8. Correct, the "registers" and "properties" sections aren't implemented
yet. These sections will allow the tools to generate hardware registers and
software properties automatically in the future, making new blocks easier
to create.

9. Parts of it are implemented. You can find rfnocmodtool in gr-ettus (see
the recent RFNoC 4 Workshop <https://youtu.be/M9ntwQie9vs?t=3D2315> video f=
or
a demo). The rfnoc_create_verilog tool (in UHD) does the hardware
generation part (generating the HDL and testbench templates; see the
Getting Started document you referred to for an example of using that tool
directly).

I hope this helps!

Thanks,

Wade

On Wed, Dec 23, 2020 at 12:37 AM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear all,
>
> I am reading the RFNoC Specification PDF (version 0.7),
> and I have several questions. Any help is appreciated.
>
>  1. In AXI-Stream Data (2.3.3.3), axis_data_clk is provided.
> However, some blocks use ce_clk instead. Why?
> In [1] it is stated:
> "Many other blocks require the ce (Compute Engine) clock,
> which is used for the block's internal DSP".
> However, I cannot see any "internal DSP" in rfnoc_keep_one_in_n.v.
> In which case should I prefer ce_clk?
>
>  2. In AXI-Stream Data (2.3.3.3), I have no control over CHDR header.
> What happens when the block drop samples (e.g. keep_one_in_n.v)?
> Is the NoC Shell updating header field automatically (eg. length field)?
>  2bis. What happends if I drop all samples of a packet?
>
>  3.In rfnoc_keep_one_in_n.v, it seems that it drops the timestamp if
> the sample to keep is not the first sample in the packet.
> Is the timestamp recomputed afterwards?
> If not, how could I compute the timestamp instead of dropping it?
>
>  4. In NoC Shell Generation Options (2.3.3.4),
> there are some fifo parameters (e.g. info_fifo_depth).
> What are their purposes?
> How should I choose a depth value?
>
>  5. In AXI-Stream Payload Context (2.3.3.2), it is stated:
> "NIPC: The number of items delivered per cycle.
> NIPC must 1 or a larger power of 2, such that ITEM_W * NIPC =3D CHDR_W."
> Does it also apply for AXI-Stream Data (2.3.3.3)?
> If not, what is the rule for that Data-Plane ?
>
> In Input Format (4.2), the following keys are not documented:
>  - sw_iface (nocscript, c++)
>  - mdata_sig (~, MD5 sum)
>
>  6. Is the nocscript meaning we have to rely on the UHD C++ RFNoC API to
> interact with blocks and the c++ meaning we implement a custom C++ API?
>
>  7. What is mdata_sig?
>
>  8. Keys "registers" and "properties" seem unused, should I use them?
>
>  9. In Figure 16 (4.2), I was unable to find how to use RFNoC ModTool
> with a YAML file. Is it not implemented yet?
>
> [1]
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Understanding_=
the_RFNoC_Image_YAML_File
>
> Kind regards
>
> C=C3=A9dric Hannotier
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000021778205b81a59c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi C=C3=A9dric,</div><div><br></div><div>I&#39;ll att=
empt to answer your questions. I&#39;m more familiar with the hardware/HDL =
side of things.<br>

</div><div><br></div><div>1. The default clock for rfnoc blocks is rfnoc_ch=
dr_clk and this clock is always present. You can use this clock for everyth=
ing, unless you need a different clock (e.g., a faster clock to increase DS=
P throughput). I suggest not using different clocks unless you need to. I d=
on&#39;t know why keep_one_in_n uses ce_clk, but any block can use it if th=
e writer of that block wants to.<br></div><div><br></div><div>2. When using=
 AXI-Stream Data the length is automatically calculated, assuming SIDEBAND_=
AT_END is set to true (which is the default). If you drop all samples, then=
 you don&#39;t put anything into the NoC Shell, so no packet would be gener=
ated.</div><div><br></div><div>3. I&#39;m not familiar with how keep_one_in=
_n works, but the timestamp is just a count of the samples. So if you wante=
d to generate a new timestamp, you would just keep a count of the samples. =
The timestamp for a packet should be the timestamp for the first sample of =
the packet.<br></div><div><br></div><div>4. The info_fifo_depth effectively=
 controls how many packets can be buffered in the NoC shell at a time. Norm=
ally there are only a couple of packets buffered at a time, so it doesn&#39=
;t need to be very big. This FIFO is often implemented using SRLs, so I oft=
en use 32, which is the maximum SRL size.<br></div><div><br></div><div>5. Y=
es. In other words, NIPC sets the width of the tdata port. It&#39;s always =
NIPC items wide.<br></div><div><br></div><div>6. I believe that sw_iface is=
n&#39;t implemented yet and I don&#39;t think this key is currently require=
d. I think C++ refers to the RFNoC C++ API and nocsript refers to NoC-Scrip=
t (a concept from UHD 3.x but not yet implemented in UDH 4).<br></div><div>=
<br></div><div>7. This also isn&#39;t implemented yet, but I believe it&#39=
;s a way of identifying the type of metadata.</div><div><br></div><div>8. C=
orrect, the &quot;registers&quot; and &quot;properties&quot; sections aren&=
#39;t implemented yet. These sections will allow the tools to generate hard=
ware registers and software properties automatically in the future, making =
new blocks easier to create.</div><div><br></div><div>9. Parts of it are im=
plemented. You can find rfnocmodtool in gr-ettus (see the recent <a href=3D=
"https://youtu.be/M9ntwQie9vs?t=3D2315">RFNoC 4 Workshop</a> video for a de=
mo). The rfnoc_create_verilog tool (in UHD) does the hardware generation pa=
rt (generating the HDL and testbench templates; see the Getting Started doc=
ument you referred to for an example of using that tool directly).</div><di=
v><br></div><div>I hope this helps!</div><div><br></div><div>Thanks,</div><=
div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 23, 2020 at 12:37 AM C=C3=A9dr=
ic Hannotier via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">Dear all,<br>
<br>
I am reading the RFNoC Specification PDF (version 0.7),<br>
and I have several questions. Any help is appreciated.<br>
<br>
=C2=A01. In AXI-Stream Data (2.3.3.3), axis_data_clk is provided.<br>
However, some blocks use ce_clk instead. Why?<br>
In [1] it is stated:<br>
&quot;Many other blocks require the ce (Compute Engine) clock,<br>
which is used for the block&#39;s internal DSP&quot;.<br>
However, I cannot see any &quot;internal DSP&quot; in rfnoc_keep_one_in_n.v=
.<br>
In which case should I prefer ce_clk?<br>
<br>
=C2=A02. In AXI-Stream Data (2.3.3.3), I have no control over CHDR header.<=
br>
What happens when the block drop samples (e.g. keep_one_in_n.v)?<br>
Is the NoC Shell updating header field automatically (eg. length field)?<br=
>
=C2=A02bis. What happends if I drop all samples of a packet?<br>
<br>
=C2=A03.In rfnoc_keep_one_in_n.v, it seems that it drops the timestamp if<b=
r>
the sample to keep is not the first sample in the packet.<br>
Is the timestamp recomputed afterwards?<br>
If not, how could I compute the timestamp instead of dropping it?<br>
<br>
=C2=A04. In NoC Shell Generation Options (2.3.3.4),<br>
there are some fifo parameters (e.g. info_fifo_depth).<br>
What are their purposes?<br>
How should I choose a depth value?<br>
<br>
=C2=A05. In AXI-Stream Payload Context (2.3.3.2), it is stated:<br>
&quot;NIPC: The number of items delivered per cycle.<br>
NIPC must 1 or a larger power of 2, such that ITEM_W * NIPC =3D CHDR_W.&quo=
t;<br>
Does it also apply for AXI-Stream Data (2.3.3.3)?<br>
If not, what is the rule for that Data-Plane ?<br>
<br>
In Input Format (4.2), the following keys are not documented:<br>
=C2=A0- sw_iface (nocscript, c++)<br>
=C2=A0- mdata_sig (~, MD5 sum)<br>
<br>
=C2=A06. Is the nocscript meaning we have to rely on the UHD C++ RFNoC API =
to<br>
interact with blocks and the c++ meaning we implement a custom C++ API?<br>
<br>
=C2=A07. What is mdata_sig?<br>
<br>
=C2=A08. Keys &quot;registers&quot; and &quot;properties&quot; seem unused,=
 should I use them?<br>
<br>
=C2=A09. In Figure 16 (4.2), I was unable to find how to use RFNoC ModTool<=
br>
with a YAML file. Is it not implemented yet?<br>
<br>
[1] <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#U=
nderstanding_the_RFNoC_Image_YAML_File" rel=3D"noreferrer" target=3D"_blank=
">https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Understanding_=
the_RFNoC_Image_YAML_File</a><br>
<br>
Kind regards<br>
<br>
C=C3=A9dric Hannotier<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000021778205b81a59c0--


--===============7627042010886996405==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7627042010886996405==--

