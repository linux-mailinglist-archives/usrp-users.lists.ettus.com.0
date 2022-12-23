Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C84655487
	for <lists+usrp-users@lfdr.de>; Fri, 23 Dec 2022 21:39:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2475B380CC7
	for <lists+usrp-users@lfdr.de>; Fri, 23 Dec 2022 15:39:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671827985; bh=xxjqsPrrFuvO7n+OewHKq9unPgQMrt+sP3l/7VSUje8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=HQPisV4SMBhJNJZSBVdKPdb4Peeiu8ZXeXSKDTwtF9dqSrhDINHe4tx6zhdKjfUEw
	 HjqLWSxTfavVt3PTp4pL9RzVBZ4xA/ksiHSWSi8wImUrBnOcfrTb4GXs+M6tvHzYUy
	 i6qxVvPK7yWfNWdRWv0tRHoDaKBR6r1ozI/wCvqYo+OaGoSIyFHRYFr6CmeLazNbMp
	 /uDzNEsAL6T2hFvvPvNZp1AR8lVlDHGVZET9S0cOxtD8ZRvB7Jrn55Yesuoe0Ro/pF
	 vnnLSpkIH75rwTpmgWXhUS6AzauQFoNe01DguK/7EsfhQP87+F2qkmXq+Ac3k5tKiS
	 iURS9BZB767Hg==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 7AFD73808F0
	for <usrp-users@lists.ettus.com>; Fri, 23 Dec 2022 15:39:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="M7j7RxaG";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id qk9so14236440ejc.3
        for <usrp-users@lists.ettus.com>; Fri, 23 Dec 2022 12:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JNKrqBSy5JzJ9C9Xt2uty9tXIF2f4dByNLnTfBalGMs=;
        b=M7j7RxaGjtLncZ27TZVN5qk3hu6Pt3Ww6z55mC1WKQIQLpzUIcdWJtdpXD/GErC75C
         u/aX6jgtOBYvS7ZUnPqidmk6fjSoIvTwM1DrMMOfnO+3p7vRHiopvHLeqjUMTu1NvGUI
         stqlffRuQwEgaB+ItJagKF9E+RPy5G2WbMuO0QJfl5ymjk1Eox8tbnhCs2IO0vhm9Ht6
         rNgeRH6JCCix+f4oUdz+Rmx7WFstOeTENEjwnb7mqGSAaKAo1p0KWf5QbBG1Jri2QVUO
         JqPmopNmnNnYjZKRmnXzK8PNJmJr7x49FncdLS14V4w30if+qs5O3ShSDkv5UeiIpioS
         GH6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JNKrqBSy5JzJ9C9Xt2uty9tXIF2f4dByNLnTfBalGMs=;
        b=eR6Fk2ievt+iMOXb/rPN3SjW5SuswltSW58ZtXQLsOwnj+KfBwkUrIqWeIJagchVnn
         dVODa2btemxYTLIUPzHzW9sQWyhXrXj8iy8FvEt8mUgmhXHHcj7swGfDFQtH/BPD9/9+
         3Xv3x+l8dseVSAN+YSw4hzW9jFEwnNFkuqpAGTXwStp7DHr+ewMNrnSjo+bCv/MOyWoH
         zNfSR6Q564tPtXMQacoOkT3IfgDBCJ6S6bT/I86blsNuO5NVjtU0FpL/d6ECFV1pkEY+
         cDtZnAWpd1L/5LPwr5+a2sVFw5f7ac5aTImbtjSEGVUS6ESprtEVfVwzgIkBeyYR8Rxu
         gXdw==
X-Gm-Message-State: AFqh2krWZI/nP8xcDbzOvBVBjq67/uCdC+ZGLBX044v5EUvVl7r9xJI2
	xdzspdcaKqCvC5W6ltMFv18BknWi1XL8TGouIspn0vqjtPhpvW7VVu4=
X-Google-Smtp-Source: AMrXdXu6m9cuh0pX4waX9AruvoWhgMd2KCqj00+cbQ/dgFn7/nnf869mMxE2R5TgGSjQGQcHbYjIjnHNM5qbkK7dtJc=
X-Received: by 2002:a17:907:2b11:b0:7c0:eeae:242d with SMTP id
 gc17-20020a1709072b1100b007c0eeae242dmr790084ejc.672.1671827977242; Fri, 23
 Dec 2022 12:39:37 -0800 (PST)
MIME-Version: 1.0
References: <CAOcHjo+sQE-tDoW-1neDyk8_VsJM3iBvyQvm2penhKiub8+mOg@mail.gmail.com>
 <38ea043c-b655-a79d-12fa-3c5de0b8a544@gmail.com>
In-Reply-To: <38ea043c-b655-a79d-12fa-3c5de0b8a544@gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 23 Dec 2022 14:39:20 -0600
Message-ID: <CAFche=haWJ8TFmoEyJCOAB2Mb-Fc5gZt-wp8HQ2MaYo6SKf6Yw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: E5DS7LS4Y4W7TG22IFSTB46A6LDNKQWR
X-Message-ID-Hash: E5DS7LS4Y4W7TG22IFSTB46A6LDNKQWR
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: The design did not satisfy timing constraints.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E5DS7LS4Y4W7TG22IFSTB46A6LDNKQWR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6339758176911396099=="

--===============6339758176911396099==
Content-Type: multipart/alternative; boundary="000000000000b59e9e05f084c8ad"

--000000000000b59e9e05f084c8ad
Content-Type: text/plain; charset="UTF-8"

Here's a quick explanation. FPGAs have clocks that control the transfer of
data between its internal registers. The Xilinx Vivado tool does a timing
check during build to make sure that the paths from each driving register
to each receiving register is not too long for the specified clock period.
When it says "The design did not satisfy timing constraints" it means it
couldn't arrange the logic on the chip to meet one or more of the clock
requirements. There are several reasons this might happen:

- You added new logic to the design with too much logic between registers.
In this case, you should modify your code to make meeting timing easier.
- You added new logic, but made a mistake where it's trying to use the
wrong clock or reset for something, which makes it impossible to meet
timing. In this case you would need to correct your logic design.
- The design has become too crowded, making it difficult for the tools to
meet the timing requirements. In this case you might need to remove
something to make more room.
- Bad luck. The tools use some randomness to find solutions to really hard
problems, and sometimes it just doesn't find a good solution even when one
is possible. In this case you can just make a minor change to the design
and build again to see if it does better the second time. If you don't
change anything, it will typically give you identical results each time.

The FPGA tools produce a timing report that says exactly which path failed
to meet timing. Sometimes that can point you in the right direction. But
sometimes the path that failed only failed because of another path that's
even more difficult. Take a look at
build-X310_HG/post_route_timing_summary.rpt and search for "(VIOLATED)" to
find the path(s) that failed.

Wade


On Thu, Dec 22, 2022 at 7:18 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 22/12/2022 20:11, AERMAN TUERXUN. wrote:
> > Hi,
> >
> > I am building a custom RFNoC block on USRP X310.
> > When I was trying to build bitstream, after almost two hours
> > processing, it gave me the error as below.
> >
> > Do you have any idea what timing constraints are?
> > Is that because the custom IP is too large for FPGA?
> > Thank you!
> I'm not an FPGA person, per se, but in general failure to meet timing
> means that the layout engine cannot
>    find a layout in which all the signals that are supposed to arrived
> "together" do so within the appropriate
>    timing windows.  It is the case, in my previous experience with FPGA
> designs, that the larger the design,
>    the harder it is for the layout engine to find a layout that
> satisfies timing for all the timing-critical pieces
>    of the design.
>
> Others on this list have vastly more experience than me and can amplify
> on this.  The general question of
>    "what are timing constraints" is MUCH more of a general "designing
> with FPGAs" question than a UHD
>    question or even an RFNoC question, per se.  But there may be aspects
> of the RFNoC universe that make
>    this a more frequent problem in adding custom bits and pieces to the
> standard design.
>
>
> >
> > It started after
> > [01:58:36] Executing Tcl: write_bitstream -force
> > /home/xxxxx/uhd/fpga/usrp3/top/x300/build-X310_HG/x300.bit
> > [01:58:36] Starting Write Bitstream Command
> > ... (omit same CRITICAL WARNING)
> > CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
> > u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a
> > clock period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
> >
> u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/input_[7].iserdes_dq_.idelay_dq.idelaye2
>
> > has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
> > REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
> > CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL
> > u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a
> > clock period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2
> >
> u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/input_[8].iserdes_dq_.idelay_dq.idelaye2
>
> > has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL
> > REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property.
> > ERROR: [Builder 0-0] The design did not satisfy timing constraints.
> > (Implementation outputs were still generated)
> > ERROR: [Common 17-39] 'send_msg_id' failed due to earlier errors.
> > [02:00:08] Current task: Write Bitstream +++ Current Phase: Starting
> > [02:00:08] Current task: Write Bitstream +++ Current Phase: Finished
> > [02:00:08] Process terminated. Status: Failure
> >
> > ========================================================
> > Warnings:           1121
> > Critical Warnings:  113
> > Errors:             2
> >
> > make[5]: *** [Makefile.x300.inc:127: bin] Error 1
> > make[4]: *** [Makefile:85: X310_HG] Error 2
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b59e9e05f084c8ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div></div><div>Here&#39;s a quick explanation. FPGAs have=
 clocks that control the transfer of data between its internal registers. T=
he Xilinx Vivado tool does a timing check during build to make sure that th=
e paths from each driving register to each receiving register is not too lo=
ng for the specified clock period. When it says &quot;The design did not sa=
tisfy timing constraints&quot; it means it couldn&#39;t arrange the logic o=
n the chip to meet one or more of the clock requirements. There are several=
 reasons this might happen:</div><div><br></div><div>- You added new logic =
to the design with too much logic between registers. In this case, you shou=
ld modify your code to make meeting timing easier.<br></div><div>- You adde=
d new logic, but made a mistake where it&#39;s trying to use the wrong cloc=
k or reset for something, which makes it impossible to meet timing. In this=
 case you would need to correct your logic design.<br></div><div>- The desi=
gn has become too crowded, making it difficult for the tools to meet the ti=
ming requirements. In this case you might need to remove something to make =
more room.<br></div><div>- Bad luck. The tools use some randomness to find =
solutions to really hard problems, and sometimes it just doesn&#39;t find a=
 good solution even when one is possible. In this case you can just make a =
minor change to the design and build again to see if it does better the sec=
ond time. If you don&#39;t change anything, it will typically give you iden=
tical results each time.<br></div><div><br></div><div>The FPGA tools produc=
e a timing report that says exactly which path failed to meet timing. Somet=
imes that can point you in the right direction. But sometimes the path that=
 failed only failed because of another path that&#39;s even more difficult.=
 Take a look at build-X310_HG/post_route_timing_summary.rpt and search for =
&quot;(VIOLATED)&quot; to find the path(s) that failed.<br></div><div><br><=
/div><div>Wade<br></div><div><br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 22, 2022 at 7:18 PM Marc=
us D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">On 22/12/2022 20:11, AERMAN TUERXUN. wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I am building a custom RFNoC block on USRP X310.<br>
&gt; When I was trying to build bitstream, after almost two hours <br>
&gt; processing, it gave me the error as below.<br>
&gt;<br>
&gt; Do you have any idea what timing constraints are?<br>
&gt; Is that because the custom IP is too large for FPGA?<br>
&gt; Thank you!<br>
I&#39;m not an FPGA person, per se, but in general failure to meet timing <=
br>
means that the layout engine cannot<br>
=C2=A0=C2=A0 find a layout in which all the signals that are supposed to ar=
rived <br>
&quot;together&quot; do so within the appropriate<br>
=C2=A0=C2=A0 timing windows.=C2=A0 It is the case, in my previous experienc=
e with FPGA <br>
designs, that the larger the design,<br>
=C2=A0=C2=A0 the harder it is for the layout engine to find a layout that <=
br>
satisfies timing for all the timing-critical pieces<br>
=C2=A0=C2=A0 of the design.<br>
<br>
Others on this list have vastly more experience than me and can amplify <br=
>
on this.=C2=A0 The general question of<br>
=C2=A0=C2=A0 &quot;what are timing constraints&quot; is MUCH more of a gene=
ral &quot;designing <br>
with FPGAs&quot; question than a UHD<br>
=C2=A0=C2=A0 question or even an RFNoC question, per se.=C2=A0 But there ma=
y be aspects <br>
of the RFNoC universe that make<br>
=C2=A0=C2=A0 this a more frequent problem in adding custom bits and pieces =
to the <br>
standard design.<br>
<br>
<br>
&gt;<br>
&gt; It started after<br>
&gt; [01:58:36] Executing Tcl: write_bitstream -force <br>
&gt; /home/xxxxx/uhd/fpga/usrp3/top/x300/build-X310_HG/x300.bit<br>
&gt; [01:58:36] Starting Write Bitstream Command<br>
&gt; ... (omit same CRITICAL WARNING)<br>
&gt; CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL <br>
&gt; u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a <b=
r>
&gt; clock period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2 <br>
&gt; u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top=
0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_b=
yte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/input_[7].iserdes_dq_.idelay_d=
q.idelaye2 <br>
&gt; has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL =
<br>
&gt; REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property=
.<br>
&gt; CRITICAL WARNING: [Timing 38-469] The REFCLK pin of IDELAYCTRL <br>
&gt; u_ddr3_32bit/u_ddr3_32bit_mig/u_iodelay_ctrl/u_idelayctrl_200 has a <b=
r>
&gt; clock period of 4.998 ns (frequency 200.080 Mhz) but IDELAYE2 <br>
&gt; u_ddr3_32bit/u_ddr3_32bit_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top=
0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_b=
yte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/input_[8].iserdes_dq_.idelay_d=
q.idelaye2 <br>
&gt; has REFCLK_FREQUENCY of 200.000 Mhz (period 5.000 ns). The IDELAYCTRL =
<br>
&gt; REFCLK pin frequency must match the IDELAYE2 REFCLK_FREQUENCY property=
.<br>
&gt; ERROR: [Builder 0-0] The design did not satisfy timing constraints. <b=
r>
&gt; (Implementation outputs were still generated)<br>
&gt; ERROR: [Common 17-39] &#39;send_msg_id&#39; failed due to earlier erro=
rs.<br>
&gt; [02:00:08] Current task: Write Bitstream +++ Current Phase: Starting<b=
r>
&gt; [02:00:08] Current task: Write Bitstream +++ Current Phase: Finished<b=
r>
&gt; [02:00:08] Process terminated. Status: Failure<br>
&gt;<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; Warnings: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1121<br>
&gt; Critical Warnings: =C2=A0113<br>
&gt; Errors: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2<br>
&gt;<br>
&gt; make[5]: *** [Makefile.x300.inc:127: bin] Error 1<br>
&gt; make[4]: *** [Makefile:85: X310_HG] Error 2<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b59e9e05f084c8ad--

--===============6339758176911396099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6339758176911396099==--
