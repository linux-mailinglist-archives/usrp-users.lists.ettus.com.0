Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D881B00A4
	for <lists+usrp-users@lfdr.de>; Wed, 11 Sep 2019 17:55:47 +0200 (CEST)
Received: from [::1] (port=60898 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i84y9-00029d-SG; Wed, 11 Sep 2019 11:55:45 -0400
Received: from mail-oi1-f178.google.com ([209.85.167.178]:44945)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1i84y6-00022U-9Q
 for usrp-users@lists.ettus.com; Wed, 11 Sep 2019 11:55:42 -0400
Received: by mail-oi1-f178.google.com with SMTP id w6so14511676oie.11
 for <usrp-users@lists.ettus.com>; Wed, 11 Sep 2019 08:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BSDqUYT34VkHHQO4xOa35LcKWhoJ+Zb7eJ58lRRBpSY=;
 b=fe6ALIfeJB5NSVG1WjEkT6nga437PrlsAzAtYGy/tTzCIBnmxf/WAG6flsGsAE0YOs
 OL+b6LiiJd7FzCKNpVQY6Cm3XdEi9MVKvPm5L36eqX/cCvN0Szy/VHMeOnMAk0gg5h9o
 EjsZPRsqS5GXmxfF/wMWDTpYiVO9yfA2TPSqIoy7ym+e7w0GUER4vlQfhr2ojnqno+5j
 pRanDj9FLqZ5ik8+e1/h+5UWc4v5+ocT4WacLUvNOPJD+8ZBuP9HpwKb8FljMHnslDny
 zg48AGBeWFNnVlP3Ps9xyy0gUUL2Oo3VqAeXnmCSbkhU14gy8BPzvVoSLffrCmDDo64z
 QbQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BSDqUYT34VkHHQO4xOa35LcKWhoJ+Zb7eJ58lRRBpSY=;
 b=UdqAR8EmP5k3CS/DCTgJ6q1pMQJW2Ph3IPOcL0pCN9AXDQw/lxj9Ed1kfSL7I5oWsD
 kfGMmWpx2JWolP3gQ4f78FxgUGy8uzN9vkOkAU+jGtBFFUsq2nXR5Ij6cAOy9aayL2PX
 oiNGMTuwGG/PKB+FnMYsYM+uKj98aOuv7To+6e38LJZ/QehtdyGh1nP6beaeF/1zSu3e
 yKrG+VgglkABMNKG8rQbKA8CgbgcelPn44FP3cFqj9Wahdmh7vbUoX0uPFqoIVSC6jzC
 lJaP2I0ttC3/FGuGHnFqNfBVTGOm2H2VtnL+K4Qlrbhj1OvpcFWrLQI3ijmNqEvYdxAz
 pdaA==
X-Gm-Message-State: APjAAAXW+zhV9wRB/rzq0KNsJNQlrW8B5663vc3o0Xsrh7WIWN2OImAk
 BLYaEAdoBRXC5FFR28GLqcTBZwMWM0miCokeNO/Capnl
X-Google-Smtp-Source: APXvYqzKNqYIDUNzTp9j8A/t0v4JngStIrslW02hgwH/+QnFla1Mn6WRErbqKb2u62Or7WUHGS+pHfRQ8RbEuiiD3RU=
X-Received: by 2002:a05:6808:8e3:: with SMTP id
 d3mr4529673oic.153.1568217301335; 
 Wed, 11 Sep 2019 08:55:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTSxpErvsfskWaZMGuSkXCmXOP+nH7KVARXNXzgcZcz_Yg@mail.gmail.com>
 <CAL263iwUChY77FaRFsTg2VSZM2dGxZ7eOHphc-VVfJJyPqrn+g@mail.gmail.com>
In-Reply-To: <CAL263iwUChY77FaRFsTg2VSZM2dGxZ7eOHphc-VVfJJyPqrn+g@mail.gmail.com>
Date: Wed, 11 Sep 2019 11:54:50 -0400
Message-ID: <CAB__hTQf1553NT1G63rfCZzwv4ErAa+6AOqY5Eira83qB_RkFQ@mail.gmail.com>
To: Nate Temple <nate.temple@ettus.com>
Subject: Re: [USRP-users] Error running 1024 pt FFT block on N310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4430385222950032957=="
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

--===============4430385222950032957==
Content-Type: multipart/alternative; boundary="0000000000002d762c0592490b0e"

--0000000000002d762c0592490b0e
Content-Type: text/plain; charset="UTF-8"

Thanks Nate,
But I want to clarify a bit.  For the N3xx and X310 (I don't know about the
E3xx), the problem is not the FFT size, but simply the packet size on the
xbar is limited to a certain size and given that the FFT noc block
presently ties the packet size to the output FFT size, this effectively
limits the FFT size.  Is this correct?

If so, then I will mention that it is an easy change in the FFT noc block
to set RESIZE_OUTPUT_PACKET=1 in the axi_wrapper in order to decouple the
output packet size from the FFT size and instead couple it to the input
packet size.

Rob

On Wed, Sep 11, 2019 at 11:49 AM Nate Temple <nate.temple@ettus.com> wrote:

> Hi Rob,
>
> The N3xx (and E3xx) only support having an FFT size up to 512 due to the
> page size. It'd be possible to modify the blocks to break up the FFT over
> several packets but it is not currently implemented. The X310 as is
> supports up to a 1024 point FFT.
>
> Regards,
> Nate Temple
>
> On Mon, Sep 9, 2019 at 12:35 PM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> I am having trouble running the FFT block of size 1024 on an N310.  I am
>> using the "rfnoc_rx_to_file" example program (UHD v3.14.1.0) to run it.  It
>> works with size 256 or 512.  Additionally, I am able to run with 1024 if I
>> switch to an X310 (same PC). Please let me know if you have any ideas...
>> Rob
>>
>> *Here is the command that fails:*
>>
>> rfnoc_rx_to_file --args="type=n3xx" --nsamps=65536 --block-id=FFT_0
>> --block-args="spp=1024" --rate=125e6 --freq=2400e6 --radio-args="spp=1024"
>>
>> *The following is the output with error message:*
>>
>> Using radio 0, channel 0
>> Setting RX Rate: 125.000000 Msps...
>> Actual RX Rate: 125.000000 Msps...
>>
>> Setting RX Freq: 2400.000000 MHz...
>> Actual RX Freq: 2400.000000 MHz...
>>
>> Connecting 0/Radio_0 ==> 0/FFT_0
>> [WARNING] [RFNOC] Assuming max packet size for 0/Radio_0
>> Samples per packet: 1024
>> Using streamer args: block_id=0/FFT_0,spp=1024
>> Issuing stream cmd
>> [ERROR] [RX FLOW CTRL] Error unpacking packet: ValueError: Bad CHDR or
>> packet fragment
>>
>> [ERROR] [STREAMER] The receive packet handler caught a value exception.
>> ValueError: Bad CHDR or packet fragment
>> Error: Receiver error: ERROR_CODE_BAD_PACKET
>>
>> *Note that the following works fine with an X310*
>>
>> rfnoc_rx_to_file --args="type=x300" --nsamps=65536 --block-id=FFT_0
>> --block-args="spp=1024" --rate=100e6 --freq=2400e6
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000002d762c0592490b0e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Nate,<div>But I want to clarify a bit.=C2=A0 For th=
e N3xx and X310 (I don&#39;t know about the E3xx), the problem is not the F=
FT size, but simply the packet size on the xbar is limited to a certain siz=
e and given that the FFT noc block presently ties the packet size to the ou=
tput FFT size, this effectively limits the FFT size.=C2=A0 Is this correct?=
</div><div><br></div><div>If so, then I will mention that it is an easy cha=
nge in the FFT noc block to set RESIZE_OUTPUT_PACKET=3D1 in the axi_wrapper=
 in order to decouple the output packet size from the FFT size and instead =
couple it to the input packet size.</div><div><br></div><div>Rob</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On We=
d, Sep 11, 2019 at 11:49 AM Nate Temple &lt;<a href=3D"mailto:nate.temple@e=
ttus.com">nate.temple@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_defau=
lt" style=3D"font-family:arial,helvetica,sans-serif">Hi Rob,<br><br>The N3x=
x (and E3xx) only support having an FFT size up to 512 due to the page size=
. It&#39;d be possible to modify the blocks to break up the FFT over severa=
l packets but it is not currently implemented. The X310 as is supports up t=
o a 1024 point FFT.<br><br>Regards,<br>Nate Temple</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 9, 2019=
 at 12:35 PM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
>Hi,<br><div>I am having trouble running the FFT block of size 1024 on an N=
310.=C2=A0 I am using the &quot;rfnoc_rx_to_file&quot; example program (UHD=
 v3.14.1.0) to run it.=C2=A0 It works with size 256 or 512.=C2=A0 Additiona=
lly, I am able to run with 1024 if I switch to an X310 (same PC). Please le=
t me know if you have any ideas...</div><div>Rob</div><div><br></div><div><=
b>Here is the command that fails:</b></div><div><br></div><div><font face=
=3D"monospace">rfnoc_rx_to_file --args=3D&quot;type=3Dn3xx&quot; --nsamps=
=3D65536 --block-id=3DFFT_0 --block-args=3D&quot;spp=3D1024&quot; --rate=3D=
125e6 --freq=3D2400e6 --radio-args=3D&quot;spp=3D1024&quot;</font><br></div=
><div><br></div><div><b>The following is the output with error message:</b>=
</div><div><br></div><div><font face=3D"monospace">Using radio 0, channel 0=
<br>Setting RX Rate: 125.000000 Msps...<br>Actual RX Rate: 125.000000 Msps.=
..<br><br>Setting RX Freq: 2400.000000 MHz...<br>Actual RX Freq: 2400.00000=
0 MHz...<br><br>Connecting 0/Radio_0 =3D=3D&gt; 0/FFT_0<br>[WARNING] [RFNOC=
] Assuming max packet size for 0/Radio_0<br>Samples per packet: 1024<br>Usi=
ng streamer args: block_id=3D0/FFT_0,spp=3D1024<br>Issuing stream cmd<br>[E=
RROR] [RX FLOW CTRL] Error unpacking packet: ValueError: Bad CHDR or packet=
 fragment<br><br>[ERROR] [STREAMER] The receive packet handler caught a val=
ue exception.<br>ValueError: Bad CHDR or packet fragment<br>Error: Receiver=
 error: ERROR_CODE_BAD_PACKET</font><br></div><div><br></div><div><b>Note t=
hat the following works fine with an X310</b></div><div><br></div><div><fon=
t face=3D"monospace">rfnoc_rx_to_file --args=3D&quot;type=3Dx300&quot; --ns=
amps=3D65536 --block-id=3DFFT_0 --block-args=3D&quot;spp=3D1024&quot; --rat=
e=3D100e6 --freq=3D2400e6</font><br></div><div><font face=3D"monospace"><br=
></font></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000002d762c0592490b0e--


--===============4430385222950032957==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4430385222950032957==--

