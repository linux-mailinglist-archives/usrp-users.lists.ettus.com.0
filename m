Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE403498A3
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 18:52:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B46038410B
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 13:52:13 -0400 (EDT)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 6E00F383DFF
	for <usrp-users@lists.ettus.com>; Thu, 25 Mar 2021 13:51:21 -0400 (EDT)
Received: by mail-vs1-f50.google.com with SMTP id h25so1354289vso.2
        for <usrp-users@lists.ettus.com>; Thu, 25 Mar 2021 10:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BtmwfsS+I4XMVxW9t6Wd6cRo8LkRyYrWfbv3jfbT1hs=;
        b=niEwNRbRs2Hsiu+i518YbIuv3GSvtoFEr/FGjRtqsd9rme4soFVV50YaIJkaI3XgNl
         XVdlDVU0uGiJOUbR/8upGz7i/620IuM/hJFy3XchtzBp6jNMTzF6UtMezS8HgXZ87PB7
         Q+sqKFaM/F6gOtY+GfNaGf0qJ032zUe7jgZLtDvU0gAUtFTTe8ncCkLuBP5wkBkghYtA
         rG2BZXCqtDl6GiyW23mJdsWSyu8qsZpbKypUz92JlFijqshVbMHukGSRyyrMmbd4EyTs
         7uvcXOOV2F3b2AmRuFhTVs+LupaJ76QrKX0RGMd9z4b9iPfyT8Wf8W4309DtBm7PgzXH
         hQug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BtmwfsS+I4XMVxW9t6Wd6cRo8LkRyYrWfbv3jfbT1hs=;
        b=ZzzuXW4ZOC4b91hnXDlFctQJg0cw9u5x7fiU+VPj4y6v0rtw4xxGEytDJS1SRQIXNL
         k4BkSMZl1JtQ4uBjSL/bok6ojB2uL4LId72UfNfV1KiBGJAZoZeZLke8A+1WjS5NtdcJ
         r/cog2b3DUjguVRNXb5wWGeY2fz9n943rCdR653ybg41+5b1McsBxLnabC+YPU1dLMgB
         m4xpx0shKlsM7+HSgjaRu6SVWS3sRCNoEosGrKnAOT/sWLQ3iLxaqMVzc63zLRbb5uJj
         mdf18dDq+qSi8jbL2Lxr+Z11PlR44ZMxmK8SGy/V7tYJkYuC4ooooQBeoE+Zssd1NTPY
         AbTg==
X-Gm-Message-State: AOAM531hL3WJlrhCJ/7On+A9H2qC/ShXFyINtf/s0TI/G1XA4r/tlenV
	OmPWQXwA8ievhtUYGvHp82kmtdUkS+rzmO0kd98fxjBL
X-Google-Smtp-Source: ABdhPJytK/vvQqR2v9yyU7Ixv3mz3YyQmcaopVIlvue5sDoTW0m4Zq002kxRv41Yg5bmHwhbqtMhRVSWBHFYTvtUGDQ=
X-Received: by 2002:a67:6810:: with SMTP id d16mr3151760vsc.18.1616694680884;
 Thu, 25 Mar 2021 10:51:20 -0700 (PDT)
MIME-Version: 1.0
References: <fe2b7993932540aaaa122abdcb5e5265@gtri.gatech.edu>
In-Reply-To: <fe2b7993932540aaaa122abdcb5e5265@gtri.gatech.edu>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Thu, 25 Mar 2021 13:50:45 -0400
Message-ID: <CAL7q81t9V9zFqyzvHCMNz5AVSx-Q__ajJaDNnoy8-0O5O6=FqA@mail.gmail.com>
To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Message-ID-Hash: BXYBBRLP4IBY2FPX3MPNUHJ6LTHV2QNJ
X-Message-ID-Hash: BXYBBRLP4IBY2FPX3MPNUHJ6LTHV2QNJ
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC dma_FIFO freezes
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BXYBBRLP4IBY2FPX3MPNUHJ6LTHV2QNJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4547392744822979342=="

--===============4547392744822979342==
Content-Type: multipart/alternative; boundary="0000000000002a38a305be6010d8"

--0000000000002a38a305be6010d8
Content-Type: text/plain; charset="UTF-8"

Hi Jeff,

In RFNoC 3 / UHD 3.15, when doing host -> RFNoC -> host flowgraphs, you
need to always have at least two RFNoC blocks. This is a limitation due to
the way RFNoC 3 is integrated with GNU Radio. That issue was fixed in RFNoC
4 by introducing the tx / rx_streamer blocks.

Jonathon

On Thu, Mar 25, 2021 at 1:39 PM Hodges, Jeff via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I am using the standard X310 HG image running  a simple flow graph with
> one dma_FIFO as follows, and the flowgraph freezes after approximately
> 800,000 samples:
>
>
> signal_source --> throttle --> dma_fifo --> timesink
>
>
> However, if I put an RFNOC block in, it works:
>
>
> signal_source --> throttle --> dma_fifo --> RFNOC_Block --> timesink
>
>
> Does the dma_fifo require a succeeding RFNOC block, or otherwise, why is
> it not working?
>
>
> Using UHD-3.15.LTS
>
>
> Could it be related to this error:
> https://github.com/EttusResearch/uhd/issues/203
>
>
> Thanks,
>
>
> Jeff
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002a38a305be6010d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jeff,<div><br></div><div>In RFNoC 3 / UHD 3.15, when do=
ing host -&gt; RFNoC -&gt; host flowgraphs, you need to always have at leas=
t two RFNoC blocks. This is a limitation due to the way RFNoC 3 is integrat=
ed with=C2=A0GNU Radio. That issue was fixed in RFNoC 4 by introducing the =
tx / rx_streamer blocks.</div><div><br></div><div>Jonathon</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar=
 25, 2021 at 1:39 PM Hodges, Jeff via USRP-users &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_1911964894968942616divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"=
ltr">
<p>I am using the standard X310 HG image running=C2=A0 <span>a simple flow =
graph with one dma_FIFO as follows, and the flowgraph freezes after approxi=
mately 800,000 samples:</span></p>
<p><span><br>
</span></p>
<p><span>signal_source --&gt; throttle --&gt; dma_fifo --&gt; timesink<br>
</span></p>
<p><span><br>
</span></p>
<p><span>However, if I put an RFNOC block in, it works:</span></p>
<p><span></span></p>
<p><span><br>
</span></p>
<span>signal_source --&gt; throttle --&gt; dma_fifo --&gt; RFNOC_Block --&g=
t; timesink</span><br>

<p></p>
<p><span><br>
</span></p>
<p>Does the dma_fifo require a succeeding RFNOC block, or otherwise, why is=
 it not working?</p>
<p><br>
</p>
<p><span>Using UHD-3.15.LTS</span></p>
<p><span><br>
</span></p>
<p><span>Could it be related to this error: <a href=3D"https://github.com/E=
ttusResearch/uhd/issues/203" id=3D"gmail-m_1911964894968942616LPlnk498330" =
target=3D"_blank">
https://github.com/EttusResearch/uhd/issues/203</a></span><br>
</p>
<p><br>
</p>
<p>Thanks,<br>
</p>
<p><br>
Jeff<br>
</p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002a38a305be6010d8--

--===============4547392744822979342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4547392744822979342==--
