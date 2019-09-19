Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D488B7D45
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2019 16:55:25 +0200 (CEST)
Received: from [::1] (port=55736 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iAxq7-0008Cz-9w; Thu, 19 Sep 2019 10:55:23 -0400
Received: from mail-oi1-f175.google.com ([209.85.167.175]:38837)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bpadalino@gmail.com>) id 1iAxq3-0007wW-4F
 for usrp-users@lists.ettus.com; Thu, 19 Sep 2019 10:55:19 -0400
Received: by mail-oi1-f175.google.com with SMTP id m16so1475159oic.5
 for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2019 07:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=smXYOeBTTSBNzFT9SV2CDf/3mSoGGbDW6xt73lTJzLE=;
 b=Y6eUQh9PB5YyS/MvZezXYFqzV0/DIn3uCvv/9Yv+a7HdAdVUrJYFHuKCTQqPlKBtnT
 k8MZgSEwWh3yModJs82o5VmYYVtuYVpP/y8ZYUrZSSyZ9mEQoV3EJeUxYx3r3wdFnYsV
 sxX8O5CUV3FvV1OdyciwOKFVGBmQ40RrC7rgObIa5hvI33vJykL4oB/DEqhcjv1oUlVD
 uXGwCu0yBY5TArpyUrGQ1rb/UIi9aBB8JcAWejkFGXJvY5Xn7/Z2MAzXu3o9bJVM/sPV
 cLxkCKZX9pYlvB5wuDPYsz9P28P+58h91F7nGp5JaXxwwPWEkg6CLjc9vI69P90hcWUB
 rVgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=smXYOeBTTSBNzFT9SV2CDf/3mSoGGbDW6xt73lTJzLE=;
 b=r3uKPE5o8eEM0gdsW8yO11U063nR9szyGOQPu7TG4NlTzq623sQ3/ke6GDdCaa826P
 QBbYr0AsG+8+I7Ugl0kBLO7suLivgBUvPh3pNru5bSeeCdBv0oX8HgtS6PpYLZwYGrba
 UivONAEWLehe7HjZ0Lphmf8SthOR5YU5ForSKjD9UIFDX6oxnFBWI8X1nr6ljTOL3Rxm
 4R18uArIW1gDfKDdNkoZr2mnb13cV1UCZnqqSTFScJUH7MlLb82OmQ4y+UbXojiWLfvy
 qEpAY6KqBdrFJiUAGIsnR4uz3WGdjP7cKb+tN3+lCiL6f4Si3Us39aHQrygO/c944qrh
 bmNg==
X-Gm-Message-State: APjAAAUizQOJDHPkKeu/2dU4m0FcWX0KbAMWcvUOS34dDbntqbgJhNlk
 f2sgBU94Pv0/BSaGUwKix5NeKZoL9SY1KVSV1OE=
X-Google-Smtp-Source: APXvYqzaCj93rVh++Aj2zwcA5bRrBGX8nFJRK9K+3w1umaBKiZHg61/onRRXQZK8vWZXVvpmE7Q9/0K92m92ECR+xX4=
X-Received: by 2002:aca:4705:: with SMTP id u5mr2370092oia.161.1568904878182; 
 Thu, 19 Sep 2019 07:54:38 -0700 (PDT)
MIME-Version: 1.0
References: <20abea6ebc2be30dac4b14046002f932.squirrel@webmail.tu-dortmund.de>
In-Reply-To: <20abea6ebc2be30dac4b14046002f932.squirrel@webmail.tu-dortmund.de>
Date: Thu, 19 Sep 2019 10:54:26 -0400
Message-ID: <CAEXYVK4zeLHQ7MppY-Fg7bF4EsZxpeR6sY4h5YWQyuYid=4Fxg@mail.gmail.com>
To: felix.greiwe@tu-dortmund.de
Subject: Re: [USRP-users] RFNoC Crossbar and Block data rates
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: Usrp Liste <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5702603075224812903=="
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

--===============5702603075224812903==
Content-Type: multipart/alternative; boundary="000000000000f354a40592e92184"

--000000000000f354a40592e92184
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 19, 2019 at 9:39 AM Felix Greiwe via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello together,
>
> I have some questions concerning clock speeds and the corresponding data
> rates on a USRP x310 (FPGA). As far as I know, there are two different
> clock speeds on the FPGA, the ce_clk=200MHz, and the bus_clk - I did not
> find clock speed for this one.
>

The ce_clk is 214.286 MHz and is usually associated with a 32-bit AXI
interface.

The bus_clk is 187.5MHz and is usually associated with a 64-bit AXI
interface.

If you build an FPGA image, you can find these values in
post_route_timing_summary.rpt that Vivado spits out in your build directory.


>
> Is it true, that the ce_clk drives my rfnoc blocks and thus my in- and
> outgoing data rate of each single block (using sc16 samples) is 200MHz*32
> Bit/10^9 = 6,4 GBit/s?
>

It can, and usually does - but just slightly higher as noted above.


>
> I read, that all the RFNoC Blocks are connected to the crossbar which is
> driven by the bus_clk. First of all: Is this the case?
> If so, how is the crossbar able to handle the in and output data of each
> RFNoC Block at once? How many Bytes can it process with each clock?
>
> Take for example the flowgraph
>
> SignalGenerator ->RFNoC-Gain -> RFNoC-DMAFIFO-> RFNoC-DUC-> RFNoC-Radio
>
> which has already four RFNoC Blocks connected to the crossbar, which in my
> head are 25,6 GBit/s data on the crossbar at once which seems way to much
> to handle.
>
> I think I really miss a point here and would  be grateful for some
> explanation.
>

The crossbar doesn't block other ports and is more like a packet switch.
Since it's a linear flow, the crossbar doesn't have any issue handling each
individual path bandwidth.  Only when 2 packets have to go to the same
crossbar egress do things become more complicated.

I hope this makes sense.

Brian

--000000000000f354a40592e92184
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Sep 19, 2019 at 9:39 AM Felix Gre=
iwe via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">Hello together,<br>
<br>
I have some questions concerning clock speeds and the corresponding data<br=
>
rates on a USRP x310 (FPGA). As far as I know, there are two different<br>
clock speeds on the FPGA, the ce_clk=3D200MHz, and the bus_clk - I did not<=
br>
find clock speed for this one.<br></blockquote><div><br></div><div>The ce_c=
lk is 214.286 MHz and is usually associated with a 32-bit AXI interface.</d=
iv><div><br></div><div>The bus_clk is 187.5MHz and is usually associated wi=
th a 64-bit AXI interface.</div><div><br></div><div>If you build an FPGA im=
age, you can find these values in post_route_timing_summary.rpt that Vivado=
 spits out in your build directory.</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<br>
Is it true, that the ce_clk drives my rfnoc blocks and thus my in- and<br>
outgoing data rate of each single block (using sc16 samples) is 200MHz*32<b=
r>
Bit/10^9 =3D 6,4 GBit/s?<br></blockquote><div><br></div><div>It can, and us=
ually does - but just slightly higher as noted above.</div><div>=C2=A0</div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
I read, that all the RFNoC Blocks are connected to the crossbar which is<br=
>
driven by the bus_clk. First of all: Is this the case?<br>
If so, how is the crossbar able to handle the in and output data of each<br=
>
RFNoC Block at once? How many Bytes can it process with each clock?<br>
<br>
Take for example the flowgraph<br>
<br>
SignalGenerator -&gt;RFNoC-Gain -&gt; RFNoC-DMAFIFO-&gt; RFNoC-DUC-&gt; RFN=
oC-Radio<br>
<br>
which has already four RFNoC Blocks connected to the crossbar, which in my<=
br>
head are 25,6 GBit/s data on the crossbar at once which seems way to much<b=
r>
to handle.<br>
<br>
I think I really miss a point here and would=C2=A0 be grateful for some<br>
explanation.<br></blockquote><div><br></div><div>The crossbar doesn&#39;t b=
lock other ports and is more like a packet switch.=C2=A0 Since it&#39;s a l=
inear flow, the crossbar doesn&#39;t have any issue handling each individua=
l path bandwidth.=C2=A0 Only when 2 packets have to go to the same crossbar=
 egress do things become more complicated.</div><div><br></div><div>I hope =
this makes sense.</div><div><br></div><div>Brian</div></div></div>

--000000000000f354a40592e92184--


--===============5702603075224812903==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5702603075224812903==--

