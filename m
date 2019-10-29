Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A810E7E78
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2019 03:13:45 +0100 (CET)
Received: from [::1] (port=45028 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iPH0q-00071E-L5; Mon, 28 Oct 2019 22:13:36 -0400
Received: from mail-lj1-f178.google.com ([209.85.208.178]:41284)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1iPH0n-0006xS-7R
 for usrp-users@lists.ettus.com; Mon, 28 Oct 2019 22:13:33 -0400
Received: by mail-lj1-f178.google.com with SMTP id m9so3817620ljh.8
 for <usrp-users@lists.ettus.com>; Mon, 28 Oct 2019 19:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GlfqdWd/0oava2jWhvDLgJMhvM5wNhnYT6Hdfw2mB7k=;
 b=pnVGR/5PkbrrAcTq8NYlQX6AnhhK6j0Jc9FMVEHX03QjJqgAdZKJkEaoDH7Y1O69ok
 axHRfPDyxJtvt+gy7oy80wLCBrCSh36RmQNBAxcHIf9q/avZWf7HTqHTk6l1M3F4UCM4
 jfp02D8rvsI6vyNdaCSgyFfVZfBLlCnjpQZajVeXpC2dIaQd+479HCnIzBt+UaX0f4lb
 qHAW416zKf1nVPRlzwjjHljTagl6QutZD++kWzogaTbVOrdKE0gIxzQqZkQE+IKLf1me
 Ue2NsF0MbflUdux8fnYrfodk9U7pR+D+6qZSAkcx7q4N2yvplC7t6YapzyZ9RkTgCXCb
 PuZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GlfqdWd/0oava2jWhvDLgJMhvM5wNhnYT6Hdfw2mB7k=;
 b=XkSDcysxbb9HtZRHTeXIlQImtFXWMfpPYDW8f7UFuh6ijPCNlJZ8XFLz4VaXDdZ2ps
 UuNjNuXGe6nsbYzj+qGw0Ui+nQO37sLSlYhPBv8b71PQ4t0Q2I2ZhfmEgRuNjGiq2GOm
 2CvdIvyvj2ev0RBGasEuDdhonybEJzvrC5e7Jjr09JRBZ0mMhajGJJRbwT+xk2k3/F7G
 opS/VBPqznBP03onJEaii+nkhRC8LCfUhyfD1fbHZBFrGeYz9KGJn134lhVOa82oH79U
 Ph4ZNagQre+/Gdl7KHFmDtu70JfUNnrruIN0q3WCvRgbwkMrrnRkXtIq4Qtg6C5VNu3V
 z+Pw==
X-Gm-Message-State: APjAAAUNPyEQZA6jeME18T4OvPvCM5CofjO21+0WomILh8lVuAchZbzN
 8+FHF2NQJH83HYY7vcRPz3OEBC9VyxjOk95ldr1yhrUM
X-Google-Smtp-Source: APXvYqwLU1WFl5uSRV32M98VSjznQwUoKFjBUoHE+4Gsou+aWKDgnp/64GoT8b7fmeypWrT6OrU57tCAU01zxmB2iXo=
X-Received: by 2002:a2e:3a09:: with SMTP id h9mr512781lja.33.1572315171918;
 Mon, 28 Oct 2019 19:12:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAMHwfuhyeNxaMvFh0zQ=PrCTb7RVOhyKVhE5KQ8evkERikKYtQ@mail.gmail.com>
 <CAC8T01kvgOVCmAXf3iAka8YNhKCFMf9G3-nc0sHSKwTtyD74Dw@mail.gmail.com>
In-Reply-To: <CAC8T01kvgOVCmAXf3iAka8YNhKCFMf9G3-nc0sHSKwTtyD74Dw@mail.gmail.com>
Date: Tue, 29 Oct 2019 11:12:15 +0900
Message-ID: <CAL7q81t0mWdEgu5D6Vq9kG5d5D_8mhO1M5L8MTmu9Xk5dcX2qA@mail.gmail.com>
To: ishai alouche <ishai.alouche@gmail.com>
Subject: Re: [USRP-users] Fwd: Failing to Instantiate Blocks ("No Binding
 Entity")
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "shachar J. brown" <shachar.brown@gmail.com>,
 usrp-users <usrp-users@lists.ettus.com>, usrp-users-request@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============7801315451881431259=="
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

--===============7801315451881431259==
Content-Type: multipart/alternative; boundary="0000000000004c265f05960327d2"

--0000000000004c265f05960327d2
Content-Type: text/plain; charset="UTF-8"

Hi,

Did you include your generic_counter VHDL source file in Makefile.inc in
the fpga-src directory?

Jonathon

On Mon, Oct 7, 2019 at 3:46 PM ishai alouche via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi everyone,
>
> In my architecture I instantiated an FM_block.vhd, and in the FM_block I
> instantiated a generic_counter.vhd block.
>
> The problem:
>
> when I run the simulation I see that the FM_block is fine, but the
> generic_counter is unreferenced, and i get the following warning:
>
>
>
> *Starting static elaborationWARNING: [VRFC 10-122] generic_counter remains
> a black-box since it has no binding entity
> [/home/user/rfnoc_01/rfnoc-modules/rfnoc/fpga-src/FM_block.vhd:38]WARNING:
> [VRFC 10-122] generic_counter remains a black-box since it has no binding
> entity [/home/user/rfnoc_01/rfnoc-modules/rfnoc/fpga-src/FM_block.vhd:50]*
>
> I have also opened the project in Vivado and noticed the same thing: The
> file is unreferenced.
>
> Furthermore, I add the path of the two files (FM_block and
> generic_counter) to all of the Make files I could find, but to no avail.
>
> Please help!
>
> Thank in advance,
> Ish
>
> P.S. Further information:
>
> The syntax used to instantiate the FM_block is as follows (verilog):
>
>
>
> *  FM_block #(.COUNTER_WIDTH(22))  FM_block_i (.clk(ce_clk),
>  .rst(ce_rst), .en (s_axis_data_tready), .min_BW(min_BW),
>       .max_BW(max_BW), .BW_change_rate(BW_change_rate), .FM_out(data_out));*
>
> And the syntax used to instantiate the generic_counter is as follows
> (vhdl):
>
>
>
>
>
>
>
>
>
>
>
> *counter_change_rate : generic_counter  generic map(COUNTER_WIDTH =>
> COUNTER_WIDTH)  port map( clk        => clk,          rst          => rst,
>         en          => en,          min_val      => (others => '0'),
>   max_val      => BW_change_rate,          new_output    =>
> change_freq_en,          count_out  => open        );*
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000004c265f05960327d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Did you include your generic_counte=
r VHDL source file in Makefile.inc in the fpga-src directory?</div><div><br=
></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Mon, Oct 7, 2019 at 3:46 PM ishai alouche via =
USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lis=
ts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">Hi=
 everyone,<div><br></div><div>In my architecture I instantiated an FM_block=
.vhd, and in the FM_block I instantiated a generic_counter.vhd block.</div>=
<div><br></div><div><div><div>The problem:</div><div><br></div><div>when I =
run the simulation I see that the FM_block is fine, but the generic_counter=
 is unreferenced, and i get the following warning:</div><b><div><b><br></b>=
</div>Starting static elaboration<br>WARNING: [VRFC 10-122] generic_counter=
 remains a black-box since it has no binding entity [/home/user/rfnoc_01/rf=
noc-modules/rfnoc/fpga-src/FM_block.vhd:38]<br>WARNING: [VRFC 10-122] gener=
ic_counter remains a black-box since it has no binding entity [/home/user/r=
fnoc_01/rfnoc-modules/rfnoc/fpga-src/FM_block.vhd:50]</b></div><div><b><br>=
</b></div><div>I have also opened the project in Vivado and noticed the sam=
e thing: The file is unreferenced.</div><div><br></div><div>Furthermore, I =
add the path of the two files (FM_block and generic_counter) to all of the =
Make files I could find, but to no avail.</div><div><br></div><div>Please h=
elp!<div><br></div><div>Thank in advance,</div><div>Ish</div></div></div><d=
iv><br></div><div>P.S. Further information:</div><div><br></div><div><div>T=
he syntax used to instantiate the FM_block is as follows (verilog):</div><b=
><div><b><br></b></div>=C2=A0 FM_block #(.COUNTER_WIDTH(22))<br>=C2=A0 FM_b=
lock_i (.clk(ce_clk), =C2=A0 =C2=A0.rst(ce_rst), .en (s_axis_data_tready), =
.min_BW(min_BW), =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 .max_BW(max_BW), .BW_change_rate(BW_change_rat=
e), .FM_out(data_out));</b><div>=C2=A0<div><div>And the syntax used to inst=
antiate the generic_counter is as follows (vhdl):</div><div><b><br></b></di=
v><div><b>counter_change_rate : generic_counter<br>=C2=A0 generic map(COUNT=
ER_WIDTH =3D&gt; COUNTER_WIDTH)<br>=C2=A0 port map( clk =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=3D&gt; clk,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rst =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D&gt; rst,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
en =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D&gt; en,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 min_val =C2=A0 =C2=A0 =C2=A0=3D&gt; (others =3D&gt; &#39;0&#3=
9;),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 max_val =C2=A0 =C2=A0 =C2=A0=3D&=
gt; BW_change_rate,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 new_output =C2=A0=
 =C2=A0=3D&gt; change_freq_en,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 count_=
out =C2=A0=3D&gt; open<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 );<br></b></div><b></=
b></div><div><div></div></div></div></div></div>
</div><br clear=3D"all"><div><br></div><br></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000004c265f05960327d2--


--===============7801315451881431259==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7801315451881431259==--

