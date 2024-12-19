Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D71B39F79FD
	for <lists+usrp-users@lfdr.de>; Thu, 19 Dec 2024 12:01:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1AD6D3858F8
	for <lists+usrp-users@lfdr.de>; Thu, 19 Dec 2024 06:01:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734606079; bh=is0yGRfmYmLFz0ABqJbhDJaMrdgqNhBQFNGWVBs9BdY=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=rb7a6hX3jCZqoGfhOEl1rx7YFaOphhDidN7jZN/dcHYKWHHw3Nv8GYE2PrhniXVW5
	 elhP8TA5En7DrPN6kdFmbpYbcYUXRHD4gxttqUstLhSqFHTqpUnEBAxJmYy2Efqmj8
	 SvyrDiisAQZ2oopEfJJpxOrMQZrUW0GOXRE+KWFI7RL4SgR2zst/oZ6riipr0mCWZe
	 IrjY3woYPKnoDhgHsAVODSzH++HD8y/fnpePc43IbcqrPu6gaDLCm6wFVbEl7FgBrY
	 pIepB28N75VaZi6jAdGMDj515hBGclUBZBQDg9/0ZSNzlh6GKmX/ebwK39G5Yqbqjb
	 +dzxS0ma2EKeQ==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id F328638584B
	for <usrp-users@lists.ettus.com>; Thu, 19 Dec 2024 06:01:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="RUArmwlh";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5d3ecae02beso785329a12.0
        for <usrp-users@lists.ettus.com>; Thu, 19 Dec 2024 03:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1734606060; x=1735210860; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8qcYFnZL0hI/s/3qKEDvtQqb/a2HTOReMosDLNNVKZE=;
        b=RUArmwlh9LYGPyQeLGDS95zeJjAZ9nMLq+7JRK5ECsbiiJokvRXmcg5dTdP6Uhvi/b
         tmsbQhopWiZgVCQ8p/fdj2CWLxHNZCQyIFB0o3F2iyiy2kBKW+/XSiLzBef6uA17YP6T
         Vg/Xk4YLtOhwTPp4Vav4sTgFHM0NFaJdDlY6HuUoNKtP0jPPLIAAZeqRYq/5n4Qly57i
         8LOHZY/ryWoYCAnuc3v/SvGe5ngQk/vWv/wl82JsdwFZrNajPTR7WCb4GZmAoR6QTn2o
         DfnEC+v8k5WZ872WmUrZZcd/yCMba3vb0D0mW0wtk4HjhxdOVEMR7o0bP80Lcikrbgbb
         X8Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734606060; x=1735210860;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8qcYFnZL0hI/s/3qKEDvtQqb/a2HTOReMosDLNNVKZE=;
        b=jN55glRkvVjNNdeqK6ZB55iQMagcR1NF3D/NP/xkSQm3Jvv6ooonT3XvIZuY8Kg+0S
         eLcJaouFBVmA8jMFUHbenQPTTLbKO2FhbRMzgHbPEAlby6u3MSrc0s4zKzC6AnoB1J+0
         pN5bq+FEf2aeMMMw6sFGeFGyakarR7isBzro33z24+2sRfM19yjb5J5AINvnkfYm0h0b
         A0c3g9vgdGy+MrDznJqDQHi/SuA19ropvIernd90TyJlAK36vodX+dnYnbGsVRIjgNqn
         QKzeFfT8Vunqk3LHFvwTcw4ghHkfSYLs604Pjq+XmMo1plNUdFFr4Aqnr1z5QEC7iQ1Q
         DNWQ==
X-Gm-Message-State: AOJu0YyWQqYjX+2yA8b0f5tCRlRLQYkGpABLSdOryW/SX2uPhY2C4Oe/
	0/F+tGDEOAWDr2OR9j+1pBCH0Iqa+eg3K9F9IsWvOBhk0vfoNGgX08Y6k4ThBrNd9oZIkFIwlsn
	l7g5kMJ7nZrIQZLHta9t6RMmC8j0GUxZhi51g58o8ymdJWGetnR0=
X-Gm-Gg: ASbGncv9SCxlljIQrURWgkDd0fr37OTROws70X2Atv+B0F+k6x1p+rxnyd1GxLNaOOr
	WgrCTWsZs0IiBu6Pys8OVageGUSJZsQRkhddt
X-Google-Smtp-Source: AGHT+IFwn1xJ7Vwk8JCEmFAkge0XRi/H7X2iqR6xtUa5U16fyxjzRDHy9k7uFJBiP2geEut8xZTAmAteVQKSVv9IhZY=
X-Received: by 2002:a05:6402:40d4:b0:5d2:729f:995f with SMTP id
 4fb4d7f45d1cf-5d7ee410c39mr5332411a12.29.1734606060565; Thu, 19 Dec 2024
 03:01:00 -0800 (PST)
MIME-Version: 1.0
References: <FpiZFSFLeTmvTyAWZLWpENvZiMf2IQr6KGrBO2aBkzU@mm2.emwd.com>
In-Reply-To: <FpiZFSFLeTmvTyAWZLWpENvZiMf2IQr6KGrBO2aBkzU@mm2.emwd.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 19 Dec 2024 12:00:49 +0100
Message-ID: <CAFOi1A5hW=VJTTZPShcWLxucOMect=Tq2C059TF8==OPeZF-eg@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: OO5PYZEB2GQ7VGUEXGBWRUSO2KDDTWFA
X-Message-ID-Hash: OO5PYZEB2GQ7VGUEXGBWRUSO2KDDTWFA
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help Needed: Issues Implementing RFNoC Example with UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OO5PYZEB2GQ7VGUEXGBWRUSO2KDDTWFA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0333881275679505169=="

--===============0333881275679505169==
Content-Type: multipart/alternative; boundary="00000000000010d58d06299d72e0"

--00000000000010d58d06299d72e0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

we've been making a lot of improvements to the RFNoC tooling recently, so
if you can, I recommend you update as much as you can (if you can, go to
HEAD of master branch, if not, at least go the latest release). Note that
rfnoc-example is now called rfnoc-gain. We've been testing this build for
X310 and X410 quite a bit, so that should do the trick.

--M

On Thu, Dec 19, 2024 at 11:55=E2=80=AFAM <elkana443@gmail.com> wrote:

> Hello,
>
> I'm new to RFNoC and have been trying to implement the example described
> in "Getting Started with RFNoC in UHD 4.0." Unfortunately, all my attempt=
s
> have failed. Here's what I've done so far:
>
> $ cp -r <repo>/host/examples/rfnoc-example ~/
> $ mv ~/rfnoc-example ~/rfnoc-demo
> $ mkdir ~/rfnoc-demo/build
> $ cd ~/rfnoc-demo/build
> $ cmake -DUHD_FPGA_DIR=3D<repo>/fpga/ ../
> $ make
> $ make install
> $ make x310_rfnoc_image_core
>
> However, I encountered an error right at the beginning of the process,
> which seems to be related to the clocks. I've tried modifying gain.yml
> and x310_rfnoc_image_core.yml files, but nothing has worked.
>
> I am using UHD 4.6, and I couldn't find any updated documentation for thi=
s
> version. Here's a summary of the errors I face:
>
>    1.
>
>    *If I run the command without changing file parameters:*
>
>    ERROR: [Synth 8-448] named port connection 'gtrefclk' does not exist f=
or instance 'core_support_i' of module 'one_gig_eth_pcs_pma_support'
>    ERROR: [Synth 8-448] named port connection 'gtrefclk_bufg' does not ex=
ist for instance 'core_support_i' of module 'one_gig_eth_pcs_pma_support'
>    ERROR: [Synth 8-6156] failed synthesizing module 'one_gige_phy'
>    ERROR: [Synth 8-6156] failed synthesizing module 'x300_sfpp_io_core'
>    ERROR: [Synth 8-6156] failed synthesizing module 'x300'
>    ERROR: [Common 17-69] ...
>
>    2.
>
>    *If I change clk_domains and add:*
>
>    codesrcblk: _device_, srcport: ce, dstblk: gain0, dstport: ce
>
>    I get:
>
>    [ERR] 1 Unresolved clk domain(s)
>    [ERR] (_device_-> gain0-ce)
>    [ERR] Source or destination domain not found
>
>    3.
>
>    *If I change the clk_domains from ce to rfnoc_chdr:*
>
>    ERROR: [synth 8-1031] gain0_rfnoc_chdr_clk is not declared [../../x310=
_rfnoc_image_core.v:1216]
>    ERROR: [Common 17-69] Command failed ...
>
>
> I=E2=80=99ve also tried other configurations, but none seem to work.
> Interestingly, I can build images for RFNoC blocks (FFT, FIR, etc.), but
> not for out-of-tree (OOT) blocks.
>
> Any guidance or advice would be greatly appreciated.
>
> Thank you!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000010d58d06299d72e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>we&#39;ve been making a =
lot of improvements to the RFNoC tooling recently, so if you can, I recomme=
nd you update as much as you can (if you can, go to HEAD of master branch, =
if not, at least go the latest release). Note that rfnoc-example is now cal=
led rfnoc-gain. We&#39;ve been testing this build for X310 and X410 quite a=
 bit, so that should do the trick.</div><div><br></div><div>--M<br></div></=
div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu, Dec 19, 2024 at 11:55=E2=80=AFAM &lt;<a href=3D=
"mailto:elkana443@gmail.com">elkana443@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><p>Hello,</p><p>I&#39;m new=
 to RFNoC and have been trying to implement the example described in &quot;=
Getting Started with RFNoC in UHD 4.0.&quot; Unfortunately, all my attempts=
 have failed. Here&#39;s what I&#39;ve done so far:</p><pre><code>$ cp -r &=
lt;repo&gt;/host/examples/rfnoc-example ~/
$ mv ~/rfnoc-example ~/rfnoc-demo
$ mkdir ~/rfnoc-demo/build
$ cd ~/rfnoc-demo/build
$ cmake -DUHD_FPGA_DIR=3D&lt;repo&gt;/fpga/ ../
$ make
$ make install
$ make x310_rfnoc_image_core
<br></code></pre><p>However, I encountered an error right at the beginning =
of the process, which seems to be related to the clocks. I&#39;ve tried mod=
ifying <code>gain.yml</code> and <code>x310_rfnoc_image_core.yml</code> fil=
es, but nothing has worked.</p><p>I am using UHD 4.6, and I couldn&#39;t fi=
nd any updated documentation for this version. Here&#39;s a summary of the =
errors I face:</p><ol><li><p><strong>If I run the command without changing =
file parameters:</strong></p><pre><code>ERROR: [Synth 8-448] named port con=
nection &#39;gtrefclk&#39; does not exist for instance &#39;core_support_i&=
#39; of module &#39;one_gig_eth_pcs_pma_support&#39;
ERROR: [Synth 8-448] named port connection &#39;gtrefclk_bufg&#39; does not=
 exist for instance &#39;core_support_i&#39; of module &#39;one_gig_eth_pcs=
_pma_support&#39;
ERROR: [Synth 8-6156] failed synthesizing module &#39;one_gige_phy&#39;
ERROR: [Synth 8-6156] failed synthesizing module &#39;x300_sfpp_io_core&#39=
;
ERROR: [Synth 8-6156] failed synthesizing module &#39;x300&#39;
ERROR: [Common 17-69] ...
<br></code></pre></li><li><p><strong>If I change <code>clk_domains</code> a=
nd add:</strong></p><pre><code>codesrcblk: _device_, srcport: ce, dstblk: g=
ain0, dstport: ce
<br></code></pre><p>I get:</p><pre><code>[ERR] 1 Unresolved clk domain(s)
[ERR] (_device_-&gt; gain0-ce)
[ERR] Source or destination domain not found
<br></code></pre></li><li><p><strong>If I change the <code>clk_domains</cod=
e> from <code>ce</code> to <code>rfnoc_chdr</code>:</strong></p><pre><code>=
ERROR: [synth 8-1031] gain0_rfnoc_chdr_clk is not declared [../../x310_rfno=
c_image_core.v:1216]
ERROR: [Common 17-69] Command failed ...
<br></code></pre></li></ol><p>I=E2=80=99ve also tried other configurations,=
 but none seem to work. Interestingly, I can build images for RFNoC blocks =
(FFT, FIR, etc.), but not for out-of-tree (OOT) blocks.</p><p>Any guidance =
or advice would be greatly appreciated.</p><p>Thank you!</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000010d58d06299d72e0--

--===============0333881275679505169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0333881275679505169==--
