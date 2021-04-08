Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE773358592
	for <lists+usrp-users@lfdr.de>; Thu,  8 Apr 2021 16:03:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 415E9383FE6
	for <lists+usrp-users@lfdr.de>; Thu,  8 Apr 2021 10:03:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Jn15h+3B";
	dkim-atps=neutral
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 7D6F0383A73
	for <usrp-users@lists.ettus.com>; Thu,  8 Apr 2021 10:02:52 -0400 (EDT)
Received: by mail-ot1-f50.google.com with SMTP id s11-20020a056830124bb029021bb3524ebeso2428547otp.0
        for <usrp-users@lists.ettus.com>; Thu, 08 Apr 2021 07:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lnnC1t8FBALEva0nbaZHtYDz+vXuE4NQqB/VquY9DO8=;
        b=Jn15h+3BgeHghI7oO64ENi5wa9gvKkdynKvNUtMJ+DRdwAQhgkzvdj3gGphQme+8V+
         tAhTtrxzQr3UlZJaIKW4t+4U+igB84DQpPcsV8r+oCZA1VYfsxHuooqGzLOtY5sOx2YG
         Ei4KdM6pOIBfvuyKMWfdFl27EPfupry2UkiAUqXgHdLW9vohV7/WNR4pNw2vyeqUtizy
         ukp6/E7N51polGRhU0dvMTGwgYzwRyWTgqBwqpltYgmHAr0jhH73NycqK4mj17DP9KAU
         YoK4ZY3Abhy+lnP+dQ47ZewgYjxC4AoXCa6eIDnq3IgGhMp7gR8WaPx1sEHSCdp+oqfI
         XIAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lnnC1t8FBALEva0nbaZHtYDz+vXuE4NQqB/VquY9DO8=;
        b=eqesQkBVi5R52O/b4El0ft/UAo6QfpaaDtxdfMULftEhA23VpUfkk1UyENtX1fjjg5
         sjNl+Vq1G7migo0bZFU/gLCvS/knnY6i3qlvlPyqikMRLcKsaXDQtBSiSnHLi8yUNIl6
         adBM+kN7Zo4MUoMpqUly+XEFsT1OpvDVbMnRiRPKEhlp0hXqMnIVDnT36tvDNoLHe7Fz
         i9qE2DALGFE9gyCmPvxdC412A6FygkJljgiARyQKODBKHod+qUe7gQtayZEO6T9Mu5HE
         /ZUpTSjT0vXgZV70KD2kw3qC0lP8fOvgUxOyK0zfXhoR8g1/lZjn4b25jqGjDmF1yqzi
         qbPw==
X-Gm-Message-State: AOAM533pvXVvPYK2xD5EWlVeRbpW+gvsp/HG97JtXZ6TJ8Bk5nO9Lj91
	gDh5VAgHjFAkhFEjn3gtnL+4Zj1Ywr6lkLI3/n+6dQ==
X-Google-Smtp-Source: ABdhPJzBshK0AtviM2PtLLteBTPJPShmbHLaoJShyEW47M0Ee1RfH5ae/G8XlhBc7WmMxiLTmKoOFFrszMyxszyocno=
X-Received: by 2002:a05:6830:161a:: with SMTP id g26mr7759357otr.302.1617890569676;
 Thu, 08 Apr 2021 07:02:49 -0700 (PDT)
MIME-Version: 1.0
References: <42456a74-0a88-a74a-5e21-459680557d46@gmail.com> <c4ea86fee2e34c2fa6b81010725c1d8a@campus.tu-berlin.de>
In-Reply-To: <c4ea86fee2e34c2fa6b81010725c1d8a@campus.tu-berlin.de>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 8 Apr 2021 10:02:37 -0400
Message-ID: <CAB__hTRuA5KP2iDVZskBk3QWtb5fzFPWBzeS+GZmRPv+kCsM7g@mail.gmail.com>
To: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
Message-ID-Hash: SORCKHVE5QC3X65HFOUVUCFHCZDDQ7UL
X-Message-ID-Hash: SORCKHVE5QC3X65HFOUVUCFHCZDDQ7UL
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed samples overflow
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SORCKHVE5QC3X65HFOUVUCFHCZDDQ7UL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2787453055109111984=="

--===============2787453055109111984==
Content-Type: multipart/alternative; boundary="000000000000b128bc05bf7680c3"

--000000000000b128bc05bf7680c3
Content-Type: text/plain; charset="UTF-8"

Hi Vladica,
Although the N321 has 1GB RAM, it is not used by default in a receive
channel.  The RFNoC block rfnoc_block_axi_ram_fifo is the block that uses
this external RAM so you would need this block in your FPGA binary image in
order to use it. I don't think that this block is included in the default
image which means you would need to build a new image with this block
included.  Further, I have never tried this block in a receive channel so
while it seems it would solve your issue, I am not certain.

Using the 1Gbe connection, your max data rate (aggregate across all
channels) is about  25 MS/s for sustained streaming.  You could use a
faster rate for a very short burst so long as your FPGA buffer is big
enough to store all samples.  But, without the axi_ram_fifo block, the size
of such buffers are quite limited as you have seen.  If you have capability
to build a new image, you may be able increase the size of the relevant SEP
buffers to handle your 100k sample requirement.

Regarding triggering, I don't think this capability exists but you could
add a custom block to do this.  See here
<https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0> for the list
of blocks that Ettus provides. In particular, look at the logpwr block
which could be useful in detecting a threshold. But, you would then need to
implement the logic to discard samples prior to the trigger and then
forward the samples after the trigger.
Rob

On Thu, Apr 8, 2021 at 8:50 AM Chang, Kaixin <k.chang@campus.tu-berlin.de>
wrote:

> Hi Vladica, I think the overflow means that the host pc cannot process the
> data flow fast enough or you might need to set the parameter timeout of
> recv(buff_ptrs, num_rx_samps, md, timeout)
> a bit longer?
>
>
> Sincerely
>
>
> Kasim
> ------------------------------
> *From:* Vladica Sark <vladicasark@gmail.com>
> *Sent:* 08 April 2021 14:46:08
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Timed samples overflow
>
> Hello folks,
>
>
> I would like to receive a relatively short burst of timed samples (eg.
> 100k) on a N321 and get them over 1 Gbps Ethernet on the PC. The problem
> is that I get an overflow condition every time I try to receive more
> than 10k samples. According to the data for the N321, it has 1 or 2 GB
> memory, enough for 100k samples, so this number of samples can be stored
> in the RAM and than sent to the PC. Unfortunately, this is not
> happening. Is there a workaround for this issue?
>
> I use rx_timed_samples for this. With 10 Gbps Ethernet everything is OK.
>
>
> Also, I want to ask if it is possible to trigger the sample acquisition
> on a given input signal level, i.e. threshold?
>
>
> Best regards,
>
> Vladica
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b128bc05bf7680c3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Vladica,<div>Although the N321 has 1GB=
 RAM, it is not used by default in a receive channel.=C2=A0 The RFNoC block=
 rfnoc_block_axi_ram_fifo is the block that uses this external RAM so you w=
ould need this block in your FPGA binary image in order to use it. I don&#3=
9;t think that this block is included in the default image which means you =
would need to build a new image with this block included.=C2=A0 Further, I =
have never tried this block in a receive channel so while it seems it would=
 solve your issue, I am not certain.</div><div><br></div><div>Using the 1Gb=
e connection, your max data rate (aggregate across all channels) is about=
=C2=A0 25 MS/s for sustained streaming.=C2=A0 You could use a faster rate f=
or a very short burst so long as your FPGA buffer is big enough to store al=
l samples.=C2=A0 But, without the axi_ram_fifo block, the size of such buff=
ers are quite limited as you have seen.=C2=A0 If you have capability to bui=
ld a new image, you may be able increase the size of the relevant SEP buffe=
rs to handle your 100k sample requirement.</div><div><br></div><div>Regardi=
ng triggering, I don&#39;t think this capability exists but you could add a=
 custom block to do this.=C2=A0 See <a href=3D"https://kb.ettus.com/Getting=
_Started_with_RFNoC_in_UHD_4.0">here</a> for the list of blocks that Ettus =
provides. In particular, look at the logpwr=C2=A0block which could be usefu=
l in detecting a threshold. But, you would then need to implement the logic=
 to discard samples prior to the trigger and then forward the samples after=
 the trigger.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 8, 2021 at 8:50 AM Chang, Kaix=
in &lt;<a href=3D"mailto:k.chang@campus.tu-berlin.de">k.chang@campus.tu-ber=
lin.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">





<div>


<div dir=3D"ltr">
<div id=3D"gmail-m_9079292201290931205x_divtagdefaultwrapper" dir=3D"ltr" s=
tyle=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-=
serif">
<p>Hi Vladica, I think the overflow means that the host pc cannot process t=
he data flow fast enough or you might need to set the parameter timeout of<=
/p>
<div style=3D"color:rgb(212,212,212);background-color:rgb(30,30,30);font-fa=
mily:&quot;Droid Sans Mono&quot;,monospace,monospace,&quot;Droid Sans Fallb=
ack&quot;;font-weight:normal;font-size:14px;line-height:19px;white-space:pr=
e-wrap">
<div><span style=3D"color:rgb(220,220,170)">recv</span><span style=3D"color=
:rgb(212,212,212)">(</span><span style=3D"color:rgb(156,220,254)">buff_ptrs=
</span><span style=3D"color:rgb(212,212,212)">,
</span><span style=3D"color:rgb(156,220,254)">num_rx_samps</span><span styl=
e=3D"color:rgb(212,212,212)">,
</span><span style=3D"color:rgb(156,220,254)">md</span><span style=3D"color=
:rgb(212,212,212)">, </span>
<span style=3D"color:rgb(156,220,254)">timeout</span><span style=3D"color:r=
gb(212,212,212)">)</span></div>
</div>
a bit longer?
<p></p>
<p><br>
</p>
<p>Sincerely</p>
<p><br>
</p>
<p>Kasim<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_9079292201290931205x_divRplyFwdMsg" dir=3D"ltr"><font fa=
ce=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>Fr=
om:</b> Vladica Sark &lt;<a href=3D"mailto:vladicasark@gmail.com" target=3D=
"_blank">vladicasark@gmail.com</a>&gt;<br>
<b>Sent:</b> 08 April 2021 14:46:08<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] Timed samples overflow</font>
<div>=C2=A0</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div>Hello folks,<br>
<br>
<br>
I would like to receive a relatively short burst of timed samples (eg. <br>
100k) on a N321 and get them over 1 Gbps Ethernet on the PC. The problem <b=
r>
is that I get an overflow condition every time I try to receive more <br>
than 10k samples. According to the data for the N321, it has 1 or 2 GB <br>
memory, enough for 100k samples, so this number of samples can be stored <b=
r>
in the RAM and than sent to the PC. Unfortunately, this is not <br>
happening. Is there a workaround for this issue?<br>
<br>
I use rx_timed_samples for this. With 10 Gbps Ethernet everything is OK.<br=
>
<br>
<br>
Also, I want to ask if it is possible to trigger the sample acquisition <br=
>
on a given input signal level, i.e. threshold?<br>
<br>
<br>
Best regards,<br>
<br>
Vladica<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div>
</span></font>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000b128bc05bf7680c3--

--===============2787453055109111984==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2787453055109111984==--
