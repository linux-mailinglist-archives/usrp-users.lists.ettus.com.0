Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B74245B02
	for <lists+usrp-users@lfdr.de>; Mon, 17 Aug 2020 05:17:52 +0200 (CEST)
Received: from [::1] (port=49520 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k7Ved-0000fZ-M0; Sun, 16 Aug 2020 23:17:47 -0400
Received: from mail-ej1-f46.google.com ([209.85.218.46]:44192)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1k7VeZ-0000bs-QV
 for usrp-users@lists.ettus.com; Sun, 16 Aug 2020 23:17:43 -0400
Received: by mail-ej1-f46.google.com with SMTP id bo3so15986718ejb.11
 for <usrp-users@lists.ettus.com>; Sun, 16 Aug 2020 20:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OU/UGYZKaqIl+XMwIcWxrRUGFuZd9FIm1lQYEABrsiM=;
 b=UwzmiZVTQQvpV8i1fNr3VxSixXnoo9m2MRZWjXi4fHJWLHdt2hfdfpTgn9dfFxqTBe
 D8ncnaDv0Hkm1DeqqGF9hHx89juC182LGJBJkF1bkvkI1vfq/tFqkEo+N8T0Yp3A8KtK
 wtgiYwT9yfv9zuxfpICKHtxqwgzPuxdB/NpMEhN5WRHHSo2JjeClFeNUcqvMKCrNcY7M
 gPG28WszrgM2cUBk/cr/wBpEpjULLrhzYyRd92rVHPsiTWODRV51mpZLmieM/Ty5LRqE
 Gi3DRNssFDbppg5hYc85XJwlbLeC5IF85kxBSZFFJItQsZt3guIQw4YPDEkhYGgOeFaf
 s/iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OU/UGYZKaqIl+XMwIcWxrRUGFuZd9FIm1lQYEABrsiM=;
 b=U4U5ZBbqEHrFE0IoRHZfZ4mXLj8xQH240MCMx5GbF80sjS2eg0ZRrFmYy7pJHHi1n8
 OD9yPdhFZaNxj6/PvL26tnbaj82XuwVCTsHrmMeaUs9nvOnJnNtv4HbZMKkjN/zU5SQ6
 5rct4hp8kf9l4nd3v/KhqOqSzZrCmvLoHNyQ8rjbLD/q0FU7opm2WRHTDA7mEyLaNQvp
 Xf0vejdf33AjONo2zr0xJ6mJnS9sBgyjgwMs1PDhAc852U3tyC3lbEDv4MKWZv6MHHWY
 tfDTXB1CfWX5S/aq5er6JShqhw40vOR2A7OMrX6txFa/mNRQ/srRQHM4z3e+hEtDEomx
 7CGQ==
X-Gm-Message-State: AOAM5322ydjNwJqqtFJxxkhIbNgXUaXwQmDd0LOjg8d6kdZFhPJGyJ4U
 7m6o5KhHg7La5KkBFLwxyLz1n5EPRJi6XVenots=
X-Google-Smtp-Source: ABdhPJzjbIMk8rD3Kp+SSAwGZmHca/Ro/EAVf7IWkoTCa5V3JdqpLqspjOQqjwuy9U3gS3wnTkha9yJvmj9zRW1Kb3g=
X-Received: by 2002:a17:906:80c:: with SMTP id
 e12mr13448133ejd.128.1597634222711; 
 Sun, 16 Aug 2020 20:17:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAE_Rk55Bde-UiKK93hR-RGU5VpJGS7eoBB_2pe-bMw_Evd=1KQ@mail.gmail.com>
 <CAEXYVK6cxU9WufzXn10i5QQh3-QBSo9UDmDBkt5VpVg=++30Xg@mail.gmail.com>
 <CADRnH20GdrSjLT6numqLcPNhgsOPtx+hPBuq5cgjx4O7q=FBaA@mail.gmail.com>
 <CAE_Rk57MZ2yzMwhpBnroermOHc4pB459EwCUzsdre6r8H17SMA@mail.gmail.com>
 <CAE_Rk55oEsZn4eCVHrF0EYZokqrDss8wCDKf9Rt8=SXYJRcyzg@mail.gmail.com>
In-Reply-To: <CAE_Rk55oEsZn4eCVHrF0EYZokqrDss8wCDKf9Rt8=SXYJRcyzg@mail.gmail.com>
Date: Sun, 16 Aug 2020 23:16:51 -0400
Message-ID: <CAEXYVK5WvxbjFGTGSao86LmYrOGbQ0F-Ha0DmYOs0+2Yj0F5TQ@mail.gmail.com>
To: Daniel Ozer <danielozer22@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] =?utf-8?b?cmZub2MgcXVlc3Rpb25zOuKAj+KAjw==?=
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Content-Type: multipart/mixed; boundary="===============6514126320994255238=="
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

--===============6514126320994255238==
Content-Type: multipart/alternative; boundary="00000000000053664c05ad0a343d"

--00000000000053664c05ad0a343d
Content-Type: text/plain; charset="UTF-8"

On Sun, Aug 16, 2020 at 9:35 AM Daniel Ozer via USRP-users <
usrp-users@lists.ettus.com> wrote:

> first of all thanks for the great answers,
> still i have few questions:
>
> 1. Is the crossbar is capable to transfer data between 2 rfnoc blocks at
> maximum rate of the crossbar clock ?(bus_clk=187.5MHZ)
>
>
> "Yes.  Each port can handle 200MHz worth of bandwidth, but it cannot
> handle full bandwidth from both radios at the same time.  You'd need
> multiple crossbar ports for that."
> Why is the crossbar not capable of handling both radio blocks full
> bandwidth at the same time? if each radio block is a different instance it
> seems like it should work.
>

The crossbar is capable of doing it, but one single port on the crossbar
can't process all the bandwidth.  Figure it's 187.5 MHz at 64-bits wide (8
bytes).  That's a total of 1500 MBytes/sec that can be transferred.  A
single channel that consists of 200 MHz of bandwidth, with I and Q both
consisting of 16-bits - so 4 bytes total - is 800 MBytes/sec.  Add in
another channel, and the single ports bandwidth has been exceeded.

Does this make sense to you?


>
> 3. I have a chain :  rfnoc: signal source -> rfnoc: DUC (1M to 200M) ->
> rfnoc:radio_block.
> how is it possible that the connection between the duc and the radio block
> doesn't throw an error because the transfer rate is bigger than the clk
> speed of the crossbar ?
>
>
> "The bus widths are different between the two domains.  Most everything on
> ce_clk is 32-bit IQ samples, whereas the bus_clk domain is 64-bits wide."
> I tried to find inside the pre-made rfnoc block such as DUC where 2 IQ
> 32bit samples are coupled to 64bit bus and i didn't find . Are the samples
> supposed to be coupled before leaving the rfnoc block or it something that
> i should implement in my block?
>

It's handled in the axi_wrapper here:


https://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/axi_wrapper.v


>
>
>  "An easy way to decrease the latency, at the expense of more overhead, is
> to simply decrease the packet size. (There's some lower limits here... a
> packet size of like 4-10 would probably be troublesome, but I've heard
> 60ish is a reasonable number and should decrease latency down to 300
> nanoseconds or so assuming ce_clk 200 MHz)  "
> How can i decrease the size of the packet in the noc_shell?
>

SPP is a parameter you can pass into the host code and it should try to
limit the sizes of things.

You can also force it by instantiating a packet_resizer:


https://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/packet_resizer.v

... but I would really think about the requirement.  There's a header
associated with each packet, and the more headers you put on, the lower
efficiency you get.

Brian

--00000000000053664c05ad0a343d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sun, Aug 16, 2020 at 9:35 AM Daniel Oz=
er via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><div dir=3D=
"auto"></div><div dir=3D"ltr">first of all thanks for the great answers,</d=
iv><div dir=3D"ltr">still i have few questions:</div><div dir=3D"ltr"><div =
style=3D"color:rgb(80,0,80)"><blockquote style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl"><=
div style=3D"font-size:0.875rem;direction:rtl;margin:8px 0px 0px;padding:0p=
x"><div style=3D"font-stretch:normal;font-size:small;line-height:1.5"><div =
dir=3D"rtl"><div dir=3D"ltr"><div dir=3D"ltr">1. Is the crossbar is capable=
 to transfer data between 2 rfnoc blocks=C2=A0at maximum rate of the crossb=
ar clock ?(bus_clk=3D187.5MHZ)=C2=A0</div></div></div></div></div></div></b=
lockquote><div dir=3D"auto"><br></div><div>&quot;Yes.=C2=A0 Each port can h=
andle 200MHz worth of bandwidth, but it cannot handle full bandwidth from b=
oth radios at the same time.=C2=A0 You&#39;d need multiple crossbar ports f=
or that.&quot;</div></div><div>Why is the crossbar not capable of handling =
both radio blocks full bandwidth at the same time? if each radio block is a=
 different instance it seems like it should work.</div></div></div></blockq=
uote><div><br></div><div>The crossbar is capable of doing it, but one singl=
e port on the crossbar can&#39;t process all the bandwidth.=C2=A0 Figure it=
&#39;s 187.5 MHz at 64-bits wide (8 bytes).=C2=A0 That&#39;s a total of 150=
0 MBytes/sec that can be transferred.=C2=A0 A single channel that consists =
of 200 MHz of bandwidth, with I and Q both consisting of 16-bits - so 4 byt=
es total - is 800 MBytes/sec.=C2=A0 Add in another channel, and the single =
ports bandwidth has been exceeded.</div><div><br></div><div>Does this make =
sense to you?</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"auto"><div dir=3D"ltr"><div style=3D"color:rgb(80,0,=
80)"><div><br></div><div><blockquote style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl"><div =
style=3D"font-size:0.875rem;direction:rtl;margin:8px 0px 0px;padding:0px"><=
div style=3D"font-stretch:normal;font-size:small;line-height:1.5"><div dir=
=3D"rtl"><div dir=3D"ltr"><div dir=3D"ltr">3. I have a chain :=C2=A0 rfnoc:=
 signal source=C2=A0-&gt; rfnoc: DUC (1M to 200M) -&gt; rfnoc:radio_block.<=
/div><div dir=3D"ltr">how is it possible that the connection between the du=
c and the radio block doesn&#39;t=C2=A0throw an error because the transfer =
rate is bigger than the clk speed of the crossbar ?<br></div></div></div></=
div></div></div></blockquote><div dir=3D"auto"><br></div><div>&quot;The bus=
 widths are different between the two domains.=C2=A0 Most everything on ce_=
clk is 32-bit IQ samples, whereas the bus_clk domain is 64-bits wide.&quot;=
</div></div></div><div>I tried to find inside the pre-made rfnoc block such=
 as DUC where 2 IQ 32bit samples are coupled to 64bit bus and i didn&#39;t =
find . Are the samples supposed to be coupled before leaving the rfnoc bloc=
k or it something that i should implement in my block?</div></div></div></b=
lockquote><div><br></div><div>It&#39;s handled in the axi_wrapper here:</di=
v><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResear=
ch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/axi_wrapper.v">https://github.com=
/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/axi_wrapper.v</a></di=
v><div>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"auto"><div dir=3D"ltr"><div>=C2=A0</div><div><br></div><div><div =
style=3D"color:rgb(80,0,80)">=C2=A0&quot;An easy way to decrease the latenc=
y, at the expense of more overhead, is to simply decrease the packet size. =
(There&#39;s some lower limits here... a packet size of like 4-10 would pro=
bably be troublesome, but I&#39;ve heard 60ish is a reasonable number and s=
hould decrease latency down to 300 nanoseconds or so assuming ce_clk 200 MH=
z)=C2=A0 &quot;<br></div>How can i decrease the size of the packet in the n=
oc_shell?</div></div></div></blockquote><div><br></div><div>SPP is a parame=
ter you can pass into the host code and it should try to limit the sizes of=
 things.</div><div><br></div><div>You can also force it by instantiating a =
packet_resizer:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://git=
hub.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/packet_resizer=
.v">https://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc=
/packet_resizer.v</a></div><div><br></div><div>... but I would really think=
 about the requirement.=C2=A0 There&#39;s a header associated with each pac=
ket, and the more headers you put on, the lower efficiency you get.</div><d=
iv><br></div><div>Brian<br></div></div></div>

--00000000000053664c05ad0a343d--


--===============6514126320994255238==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6514126320994255238==--

