Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 544EC35901A
	for <lists+usrp-users@lfdr.de>; Fri,  9 Apr 2021 01:04:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 38474383E51
	for <lists+usrp-users@lfdr.de>; Thu,  8 Apr 2021 19:04:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="jvMAJLn4";
	dkim-atps=neutral
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	by mm2.emwd.com (Postfix) with ESMTPS id A2D69383E42
	for <usrp-users@lists.ettus.com>; Thu,  8 Apr 2021 19:03:38 -0400 (EDT)
Received: by mail-vs1-f53.google.com with SMTP id u29so1988541vsi.12
        for <usrp-users@lists.ettus.com>; Thu, 08 Apr 2021 16:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=JPqkguSsY3mbFTlZa0/T5f8eK8CDfvfnRJ4BsWaIjok=;
        b=jvMAJLn4rvIi4QKc3Tm9FqiuLAywEkwqFAGROEdimnUCEOntoM8y0SrNSw2QwTup1v
         Hl5cfgcQGrZi9Be4Tufz2ULfdWm2TXcoLk3KrByRS3ejgTz4NwlzkLfaQ+vdgjpLeXq2
         ySkpVAGd/xZxrnNWlhi6kI2ChQ5GX7BG3lv8NmVnCMBRQhp/qmT8H78mx/IAeXM8CArO
         GnO8UUiXG4ZW6dCyQo8Dx7/kzJBOnqapnqMYc565iY+rIsIOlg5imIilIdPOlOfzoBPd
         1JAma51pKKCCrm0AoG8qV3MfUjWv6+73yTHm9AAqyu3i1KpghHCH2AoBGtM/OssZYyH8
         PotQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=JPqkguSsY3mbFTlZa0/T5f8eK8CDfvfnRJ4BsWaIjok=;
        b=AQOn1SLkh2sIisnDgBflv94iOT5BrSd6UHzSTEr2WfRGwgBdLOeoC5X6baBj3nXMC2
         qQTmZgtKXNF1jGTAGf+4WpL+dKpjtCwaL4XsIXw8g8DEgFiweQUJhZlrAKA1t1gPrUOz
         xymeRceHAP5BNPlmvAYVvd4/QY3RTizpmnh0InCDO39JQNSjRC/w+IJSyXE4Q3cFDBnT
         43/3umwdXZTmKUBYu+LQoVMZxvVsOBgkKq9fabyDWpPX2F4hewW+tgMHajdabTLjiZdM
         tUS1J0j5ZYnqVGvxfzCvyrPocnfKLKYS7elB3M1ICyPnHETmho7h/tg/aCdcJ1Z/6UbT
         LPGg==
X-Gm-Message-State: AOAM533AqYgLpYTLf/O4qQQWfs4HzO9cgQzg0ao7oPLcTdZL5CVE7KLF
	iKHSc1CbF2ca7jN5TjoiBmQtxEj3niISCyFYh6tSARwgCPmm9g==
X-Google-Smtp-Source: ABdhPJyCKHr9xz3si6SQUjo2lxw7zAZ0k+xh3h3y6JuU/OdNSuPBE0ZNweyekMjzCGzjRFpIWWaWZ4W/ZedQFnC/fgY=
X-Received: by 2002:a67:ce18:: with SMTP id s24mr8914884vsl.7.1617923017993;
 Thu, 08 Apr 2021 16:03:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210406164020.jdcuvfofw6s2td4p@barbe> <CAB__hTTwPktvP2H=Fn7K-GwJ2QCtFiVEi+QD-ncOHPgqT5VvuA@mail.gmail.com>
 <20210408154854.hcie6wfzsmiivezi@barbe>
In-Reply-To: <20210408154854.hcie6wfzsmiivezi@barbe>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Thu, 8 Apr 2021 19:03:02 -0400
Message-ID: <CAL7q81tkSu=ipo3uWgdtA8iufA6rUEqrBV2md8M5fxQDRfwn-w@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>,
	usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: VWFEFO4PJCIBXEBGEECANNO3I4BSXJGS
X-Message-ID-Hash: VWFEFO4PJCIBXEBGEECANNO3I4BSXJGS
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD4 Replay block on E31x
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VWFEFO4PJCIBXEBGEECANNO3I4BSXJGS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0399482405676263517=="

--===============0399482405676263517==
Content-Type: multipart/alternative; boundary="000000000000c3022f05bf7e0edd"

--000000000000c3022f05bf7e0edd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Cedric,

It is possible to use the Replay block on E31x devices, but the supporting
code (Xilinx MIG instance and AXI interconnect) has not been added to the
E31x core code. You could manually add the MIG IP, axi interconnect, and
the replay block. Unfortunately, we don't have any documentation on how to
do this, but someone with moderate FPGA experience could do it using the
E320 as an example.

Jonathon

On Thu, Apr 8, 2021 at 11:49 AM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Rob,
>
> Thanks for your reply.
>
> On 06/04/21 18:53, Rob Kossler wrote:
> > On Tue, Apr 6, 2021 at 12:41 PM C=C3=A9dric Hannotier via USRP-users <
> > usrp-users@lists.ettus.com> wrote:
> > > I would like to build a FPGA image with a replay block for E312.
> > > However, there is no dram_clk on this device.
> > > How should I instantiate my replay in my .yml?
> >
> > Perhaps Ettus can answer definitively, but in past emails I have had wi=
th
> > Wade Fife, he has indicated that there is currently no support for the
> > Replay block on the E310 (& thus I assume E312) and that the DRAM itsel=
f
> is
> > not presently supported from RFNoC.
>
> From the "USRP=E2=84=A2 E312 Certificate of Volatility",
> there is a "DDR3L SDRAM - Micron" with 512 MB of memory dedicated for
> the "FPGA & User application memory".
> Furthermore, there are some commented lines with "ddr3" and "pl_dram"
> in "fpga/usrp3/top/e31x/e31x.v".
>
> My uneducated guess tells me it should be possible to use the replay
> block, somehow.
>
> The issue is while the E312 can go as far as 56 MHz of bandwidth,
> the ARM can only follow up to 10 MSps.
> I am trying to reach 20 MSps.
>
> Could we get an answer from Ettus regarding this issue?
>
> Kind regards
> --
>
> C=C3=A9dric Hannotier
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c3022f05bf7e0edd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Cedric,<div><br></div><div>It is possible to use the Re=
play block on E31x devices, but the supporting code (Xilinx MIG instance an=
d AXI interconnect) has not been added to the E31x core code. You could=C2=
=A0manually add the MIG IP, axi interconnect, and the replay block. Unfortu=
nately, we don&#39;t have any documentation on how to do this, but someone =
with moderate FPGA experience could do it using the E320 as an example.</di=
v><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 8, 2021 at 11:49 AM C=C3=A9=
dric Hannotier via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.=
com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Hi Rob,<br>
<br>
Thanks for your reply.<br>
<br>
On 06/04/21 18:53, Rob Kossler wrote:<br>
&gt; On Tue, Apr 6, 2021 at 12:41 PM C=C3=A9dric Hannotier via USRP-users &=
lt;<br>
&gt; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br>
&gt; &gt; I would like to build a FPGA image with a replay block for E312.<=
br>
&gt; &gt; However, there is no dram_clk on this device.<br>
&gt; &gt; How should I instantiate my replay in my .yml?<br>
&gt;<br>
&gt; Perhaps Ettus can answer definitively, but in past emails I have had w=
ith<br>
&gt; Wade Fife, he has indicated that there is currently no support for the=
<br>
&gt; Replay block on the E310 (&amp; thus I assume E312) and that the DRAM =
itself is<br>
&gt; not presently supported from RFNoC.<br>
<br>
From the &quot;USRP=E2=84=A2 E312 Certificate of Volatility&quot;,<br>
there is a &quot;DDR3L SDRAM - Micron&quot; with 512 MB of memory dedicated=
 for<br>
the &quot;FPGA &amp; User application memory&quot;.<br>
Furthermore, there are some commented lines with &quot;ddr3&quot; and &quot=
;pl_dram&quot;<br>
in &quot;fpga/usrp3/top/e31x/e31x.v&quot;.<br>
<br>
My uneducated guess tells me it should be possible to use the replay<br>
block, somehow.<br>
<br>
The issue is while the E312 can go as far as 56 MHz of bandwidth,<br>
the ARM can only follow up to 10 MSps.<br>
I am trying to reach 20 MSps.<br>
<br>
Could we get an answer from Ettus regarding this issue?<br>
<br>
Kind regards<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c3022f05bf7e0edd--

--===============0399482405676263517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0399482405676263517==--
