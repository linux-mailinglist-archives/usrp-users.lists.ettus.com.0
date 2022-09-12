Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FEC5B61C3
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 21:30:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DAC07381308
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 15:30:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663011026; bh=wZLq8KQA99ObubDi1jK/BGCbVDP4WhoNF4f3QX/Y/cc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=HpO02jcWdgb/pwnEkqsOybA942Oh+adGsmGB74b/StXgmEjaDVrPyibuZ85+kPpGE
	 Tegw+WXZPFUNuctUR8JIyyQ2ljgIk7WEUO/mOxzPrSP5UFwmHTuiOv66TpO0SGnY14
	 a+kzhTpI28wRbSOg7R5nD5cSd+e/a2C9dDaTzYlFOWThVO+XheYc0mCzu/9UpXDTJN
	 KdTJHYX+o4RU9fw227nbBzjvRNe1I8HwdhjJ0OSSOK8BtnpARBwLk1haPoVn19ctiP
	 N/F8svGSVo4od0vsVOjM1HKta2V/4vSx3FE9YPFhPdS/HUojtq3xxEImX+vT94OqLT
	 3o+x+WQkv2Qvg==
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	by mm2.emwd.com (Postfix) with ESMTPS id BEC32380ECD
	for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 15:29:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="TLet73wF";
	dkim-atps=neutral
Received: by mail-vs1-f43.google.com with SMTP id u189so10102215vsb.4
        for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 12:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=Q0pKEFL2me79xJ0LV2w1cbuuX2wub4HhRmDqcpsGrzs=;
        b=TLet73wFKhvIFnuCXSKk9nPp8xtIqWToI8+pPbF3JrgqP/UJNwAaVqvVXdadfIcy7A
         IS20TSOMDRwCuW9Czuttf4cma7CzIpgJ5i7l9qzUD4fJ6xMwLJSRa+LpOf278AaBJtcV
         HxR3hexAXeXwwIrCZ354vwtcCaLSYe6BVu8ywl2c4wNv6L0lzHt65/umH78M7jsrPN1o
         8NyTzMpufb8EU+kXQr7q7VbHdIbqJ8cKKIfb2NDv906yVFeCAfc+hHHjApJ4kJwzzI0f
         LkoZF2Wqw1bhXMLuXGksYoFeUNzfRDgTDgb0iIt/ru28CLWHjTHTsBi6LD/1SuMtv7bL
         Hn2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=Q0pKEFL2me79xJ0LV2w1cbuuX2wub4HhRmDqcpsGrzs=;
        b=EGISTuOngwj0VejecnJj9SI0xZZFJje8Q44INLYujACUY7TVDQZp0Vml1OwKotJrJA
         Duy4zIbvL7iP+TOp1S7KXKPetHS5FXhLNIqVZ6lhzIrI3gMovmWL5Js4BLI0uOC09VFq
         aU0JMsPd9JdlwIcoDAkRYJMgzPP0fzZ/Y2pekIsnCVOg1UjPFrR7LHgXVyaT3JD9yC8U
         eX8BkHJmpRiP1L6ld3hqmzmMuza3K0BLPzyBZcq+c6GAWsTQkf3DpvLDRdxaL9t84+oI
         hC/LNrMuh0QdqcQhu0QIoXCJ4Bu2rrpbJnp9A0g7qWKEKdSGaVa8dMcrE7Ho/SHOVTBw
         MxBA==
X-Gm-Message-State: ACgBeo2zs9PjkEIvtNeKvBJkhfpnaq1uwvtMIK3iOvnL9yNxelhSlbfV
	u+v0CWbcqcd1+Jj1vCgFAnlMQdMiBICyBKCIVbgpmu1o
X-Google-Smtp-Source: AA6agR46PyWHf5obRbndC/It6T+da+FJB7li7z4xv54emMSD/XK34D91MTCA4TgnRaBdP1VdKAHaFcjKpoPFa8X2SGc=
X-Received: by 2002:a05:6102:e93:b0:390:d839:9aa2 with SMTP id
 l19-20020a0561020e9300b00390d8399aa2mr10093029vst.65.1663010957146; Mon, 12
 Sep 2022 12:29:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
In-Reply-To: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Mon, 12 Sep 2022 15:28:41 -0400
Message-ID: <CAL7q81tqggKk4-MdGTsuQzGiLa2HThLdG99NQNynV863UAY4Gg@mail.gmail.com>
To: Kevin Williams <zs1kwa@gmail.com>
Message-ID-Hash: GAHERDD7DZ5VFINZ7KO6USCKT5E2QCHG
X-Message-ID-Hash: GAHERDD7DZ5VFINZ7KO6USCKT5E2QCHG
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GAHERDD7DZ5VFINZ7KO6USCKT5E2QCHG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4727590483367580911=="

--===============4727590483367580911==
Content-Type: multipart/alternative; boundary="0000000000005bd99605e87fe931"

--0000000000005bd99605e87fe931
Content-Type: text/plain; charset="UTF-8"

Hello Kevin,

What device are you using and what does your flowgraph look like? What
sample rate are you running at? If your block is running at the radio
sample rate (e.g. 200 MSPS on a X310), your block will need to process one
input sample every clock cycle on average.

Jonathon

On Mon, Sep 12, 2022 at 9:09 AM Kevin Williams <zs1kwa@gmail.com> wrote:

> Hi All,
>
> I've got an IP core that is causing an "ERROR_CODE_OVERFLOW" when used in
> an RFNoC project.
>
> The core responds correctly when simulated outside the RFNoC environment.
> (I can see correct output, the AXI streaming signalling, back-pressure when
> required, etc.)
>
> I'm not sure how to go about debugging this, and am not yet familiar
> enough with RFNoC to know what to ask.
>
> I have been thinking it was the core not being reset or clocked correctly,
> but this is how it gets instantiated:
>
>   multiddc multiddc_i (
>     //   - Using different clocks for the IP core and the AXI interface.
> The IPCore_Clk and AXILite_ACLK must be
>     //     synchronous and connected to the same clock source. The
> IPCore_RESETN and AXILite_ARESETN must be
>     //     connected to the same reset source. See Synchronization of
> Global Reset Signal to IP Core Clock Domain.
>     .IPCORE_CLK                (axis_data_clk),
>     .IPCORE_RESETN             (~axis_data_rst),
>
>     .AXI4_Lite_ACLK            (axis_data_clk),
>     .AXI4_Lite_ARESETN         (~axis_data_rst),
>
> The core YAML file describes the clock as:
>
> data:
>   fpga_iface: axis_chdr
>   clk_domain: ce
>
> In the project YAML file:
>
> clk_domains:
>     - { srcblk: _device_, srcport: radio, dstblk: radio0,    dstport:
> radio }
>     - { srcblk: _device_, srcport: ce,    dstblk: multiddc0, dstport: ce }
>
> Is there something that might be an obvious first place to check?
>
> Many thanks, Kevin
>
> --
> Kevin Williams
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005bd99605e87fe931
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Kevin,<div><br></div><div>What device are you using =
and what does your flowgraph look like? What sample rate are you running at=
? If your block is running at the radio sample rate (e.g. 200 MSPS on a X31=
0), your block will need to process one input sample every clock cycle on a=
verage.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 9:09=
 AM Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com">zs1kwa@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr">Hi All,<div><br></div><div>I&#39;ve got an IP core that is causin=
g an &quot;ERROR_CODE_OVERFLOW&quot; when used in an RFNoC project.</div><d=
iv><br></div><div>The core responds correctly when simulated outside the RF=
NoC environment. (I can see correct output, the AXI streaming signalling, b=
ack-pressure when required, etc.)</div><div><br></div><div>I&#39;m not sure=
 how to go about debugging this, and am not yet familiar enough with RFNoC =
to know what to ask.</div><div><br></div><div>I have been thinking it was t=
he core not being reset or clocked correctly, but this is how it gets insta=
ntiated:</div><div><br></div><div><div>=C2=A0 multiddc multiddc_i (</div><d=
iv>=C2=A0 =C2=A0 //=C2=A0 =C2=A0- Using different clocks for the IP core an=
d the AXI interface. The IPCore_Clk and AXILite_ACLK must be=C2=A0<br></div=
><div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =C2=A0synchronous and connected to the =
same clock source. The IPCore_RESETN and AXILite_ARESETN must be=C2=A0</div=
><div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =C2=A0connected to the same reset sourc=
e. See Synchronization of Global Reset Signal to IP Core Clock Domain.</div=
><div>=C2=A0 =C2=A0 .IPCORE_CLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (axis_data_clk),</div><div>=C2=A0 =C2=A0 .IPCORE_RESETN=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(~axis_data_rst),</div><div><br><=
/div><div>=C2=A0 =C2=A0 .AXI4_Lite_ACLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 (axis_data_clk),</div><div>=C2=A0 =C2=A0 .AXI4_Lite_ARESETN=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0(~axis_data_rst),</div></div><div><br></div><div=
>The core YAML file describes the clock as:</div><div><br></div><div><div>d=
ata:</div><div>=C2=A0 fpga_iface: axis_chdr</div><div>=C2=A0 clk_domain: ce=
</div></div><div><br></div><div>In the project YAML file:</div><div><br></d=
iv><div><div>clk_domains:</div><div>=C2=A0 =C2=A0 - { srcblk: _device_, src=
port: radio, dstblk: radio0,=C2=A0 =C2=A0 dstport: radio }</div><div>=C2=A0=
 =C2=A0 - { srcblk: _device_, srcport: ce,=C2=A0 =C2=A0 dstblk: multiddc0, =
dstport: ce }</div></div><div><br></div><div>Is there something that might =
be an obvious first place to check?</div><div><br></div><div>Many thanks, K=
evin<br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr">Kevin Williams=
</div></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005bd99605e87fe931--

--===============4727590483367580911==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4727590483367580911==--
