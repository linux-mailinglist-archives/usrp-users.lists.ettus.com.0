Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FA0BAE07B
	for <lists+usrp-users@lfdr.de>; Tue, 30 Sep 2025 18:19:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07B77385850
	for <lists+usrp-users@lfdr.de>; Tue, 30 Sep 2025 12:19:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1759249166; bh=5pCLl3XPjgEC9b3piXqnsWlL1MY4PWEL6ad1r15colE=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=RQfqRl4L4FxZ2mgW0Bz//SozHNu8+PAEYXBZjT2rEVVSNdh0huGmEJMRqa5h86UxA
	 WedzqK6U5it1IMzYm3CmOkMIeMGV49KmBIdKNgZj+GZ8+figj85s3g8JMbxctPBJ7H
	 Q50wzBZrdms9caxyv7zXCQ10AYNsyn13vBsd9bklKZQizg5+CUJUDBTJlI5jHBE20K
	 xkekuACI5LzSRP9QT16WMuCsq7i0bBI5JiVomGfQu+DZoLO0qCFxE9Gu1X30tDg2xf
	 o1lSVPEih6hzqHzpDUS3EgVmmBZ7JU+xN4egojB9jJ3WkzT64oADGYJUQfqztkfKDm
	 bJr7JVncsu7DA==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id BC71138676E
	for <usrp-users@lists.ettus.com>; Tue, 30 Sep 2025 12:16:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="GgSNOTaW";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-62fbc90e6f6so11065465a12.3
        for <usrp-users@lists.ettus.com>; Tue, 30 Sep 2025 09:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1759249009; x=1759853809; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=enAI5cFxFEWgEc691QuXRiIE0dyiOZenrhNnYyb9UFY=;
        b=GgSNOTaWJLbEWsTSdZYiYpYbti0QN0LYieQcCT7geWvZkikV0q8Xp9bKUoJVST2ccs
         LPx+WpGuiIJZxYf6kRm1Rsa/lIGmmpm7PmpCT0q7MsxGpcbLlRh2IY9cosUFld1kHsMd
         Ez9IOCw7C66uHKIcc4Qtjgmi5SQPlkRlepAeHROZ0NBU9kAZk9Nlgn5ut3h4SMeHEQ+n
         ddu4Ok/so/ZRvomk5OznmrD8kOtFoIxVaoEhUhJVUz1MukNOlPSHNF46+60Qef/F0isL
         yJtkXBGchrKkUjP/slcbNwah9V1o1xasnUS4eg9Q6K8yasCgi8O3tiRBfA5JfbAdYROm
         NdVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759249009; x=1759853809;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=enAI5cFxFEWgEc691QuXRiIE0dyiOZenrhNnYyb9UFY=;
        b=S3p8EWdZ8aEbLFBNnfeNDAJ1ib6+R/iL0Uel6mUUEaFl0kGCAsDDo++mY41B6tn7Z8
         TcIGebmf0uZrQ2myV0KDSLSH3bqp2yK5ZqDZkOhRDFqtrQJ3Z/rMKwlKv7huSd+73xq6
         drTsZWi9fCS23e+tAcfmZ2M6awQO+u7E8eAUBZtzfzsaGFgr25xwvX4mS31Y0kaWpThj
         rtTO6qvmp6vEhBDdN1hJNo2CDI+zE+A7lrJ/nBmm3CYsC2qmOcRwF0AlTdG4scMr0cKc
         ru3Ce7e8Xqitf2YeSVp8g3mKJaAwBcYfH9T8kTtDx/8y9OfmFXa7fDj2z9G8gTo/lfYf
         Qd3w==
X-Gm-Message-State: AOJu0YzxU52xOgTgeXLNmoc3b/zMiroJL2MBwV4AoCYVTY9uvrpMYG/8
	mVx9JxKgSLriRzAxoAGLlIIDG2BYe9Odf4l7q+RNOyeeoHGaM+jbu343Rz+opisryn5Thv/760c
	sPQOBQMuL5CODah/K+qE5pvlm/hAYv3eN7W0fKscMnBwB6j1G4ujt6kmrJw==
X-Gm-Gg: ASbGncstg6YiqVUtCj6c7dSMyPtZE5ZTqna8ZONRnHwEq9+RB4GSP+hiq1HkZNdgnWD
	A9TWDx+PV80YxOMWZuQHEKzsJ7Ek8yU1RUJg5Y6vC1uw47s+seW4l2mkBkhBcd4NNgsb61XULaj
	yMumHc0tYqGUcohzC74lkTj3CvZ4Q/AzS0S/LZQkJLJtcAWaQn0lgwUrP0bH9ldRn5kK4TeqW9F
	XqwgUr6wGDPcM+0+wDgpo3d/r5Cq9902zW26WJFmnMQuj/hAHo8gm6Z4zqMp+4=
X-Google-Smtp-Source: AGHT+IFqUOTRkTsNFZJ6vtg6Ss3TYf+xs5A9uf58fjnciPtbME1zTmLtT4Hu25QHk8iWl7mRIC3D6c7GiGkP0dMGbAU=
X-Received: by 2002:a05:6402:510b:b0:62e:cc65:8ff5 with SMTP id
 4fb4d7f45d1cf-63678c4333amr499078a12.2.1759249009087; Tue, 30 Sep 2025
 09:16:49 -0700 (PDT)
MIME-Version: 1.0
References: <899f5b67-809c-494b-a4d2-1b7be3a3b1e3@destevez.net> <7d10cc6f-77bd-42c5-994c-4169bd9ebb19@baseband.digital>
In-Reply-To: <7d10cc6f-77bd-42c5-994c-4169bd9ebb19@baseband.digital>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 30 Sep 2025 18:16:37 +0200
X-Gm-Features: AS18NWBX2J_ZLFORg0K5YsSL_G6MfGf91o6uL4uQyt8M0tRsGyyfr4KYa5cBRxs
Message-ID: <CAFOi1A4ggE5Oj0tedr_oRDct6jwEXHUoZ6K9sLwj0Xb1kPmsSA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: YAKZ5G7X3X7LX5XHTLHKNDFN7STQY2IU
X-Message-ID-Hash: YAKZ5G7X3X7LX5XHTLHKNDFN7STQY2IU
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Half duplex with USRP B2xx and GNU Radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YAKZ5G7X3X7LX5XHTLHKNDFN7STQY2IU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4400449541740572411=="

--===============4400449541740572411==
Content-Type: multipart/alternative; boundary="00000000000042282a0640071441"

--00000000000042282a0640071441
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

To be explicit: UHD has no built-in feature for this problem. I think one
of the solutions suggested here (incl. yours) is the best solution.

--M

On Tue, Sep 30, 2025 at 4:12=E2=80=AFPM Marcus M=C3=BCller
<mueller_usrp_users@baseband.digital> wrote:

> Hi Daniel,
>
> is a software solution impossible? You get the RX timestamps, and you
> could feed the TX
> burst stream into both the USRP Sink and a block emitting messages
> describing but the
> start timestamp TX burst. Messages can feed into a small queue that
> controls a state
> machine e.g. in your carrier sense algorithm (and deafens it).
>
> Best,
> Marcus
>
> On 9/29/25 12:15 PM, Daniel Est=C3=A9vez wrote:
> > Hello,
> >
> > I am implementing a half-duplex modem with GNU Radio and a USRP B2xx
> that uses CSMA to
> > control medium access. I have a GNU Radio flowgraph with a USRP Source
> and USRP Sink
> > blocks both set to use the TX/RX antenna. The USRP Sink block uses burs=
t
> transmission.
> > When a burst is sent, the B2xx automatically switches the receive to th=
e
> RX2 port.
> >
> > The issue is that there is enough leakage through the RX2 port that the
> system is able
> > to receive its own transmit packets with good SNR. This is a problem fo=
r
> the CSMA system
> > because it makes the system detect that the channel is busy while it is
> transmitting its
> > own packet. Due to the latency between the RX and TX streams in GNU
> Radio, this prevents
> > the modem from transmitting back-to-back packets (which is allowed and
> expected by this
> > CSMA scheme), because when the second packet is about to be sent, the
> modem receiver is
> > still seeing the end of the previous packet and determines that the
> channel is still busy.
> >
> > To solve this issue, I would like the USRP Source to receive either
> zeros, no samples at
> > all, or something that at least does not have so much leakage of its ow=
n
> TX signal.
> >
> > Is it possible to do this either by appropriate configuration in GNU
> Radio or UHD?
> >
> > I've been studying the sources of UHD and GNU Radio to see how this
> could be done. The
> > only thing I have found is that this would be possible with a small
> change to the FPGA
> > image. For instance, this line
> >
> >
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/radio_200=
/radio_legacy.v#L446
> >
> >
> > could be modified to replace the RX samples by zeros whenever run_rx is
> asserted.
> >
> > However I would prefer not to build a modified FPGA image for this
> system, so I was
> > wondering if other solutions exist.
> >
> > Best,
> > Daniel.
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000042282a0640071441
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>To be explicit: UHD has no built-in feature for this =
problem. I think one of the solutions suggested here (incl. yours) is the b=
est=C2=A0solution.</div><div><br></div><div>--M</div></div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">On Tue, Sep 30, 2025 at 4:12=E2=80=AFPM Marcus M=C3=BCller &lt;mueller_us=
rp_users@baseband.digital&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">Hi Daniel,<br>
<br>
is a software solution impossible? You get the RX timestamps, and you could=
 feed the TX <br>
burst stream into both the USRP Sink and a block emitting messages describi=
ng but the <br>
start timestamp TX burst. Messages can feed into a small queue that control=
s a state <br>
machine e.g. in your carrier sense algorithm (and deafens it).<br>
<br>
Best,<br>
Marcus<br>
<br>
On 9/29/25 12:15 PM, Daniel Est=C3=A9vez wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I am implementing a half-duplex modem with GNU Radio and a USRP B2xx t=
hat uses CSMA to <br>
&gt; control medium access. I have a GNU Radio flowgraph with a USRP Source=
 and USRP Sink <br>
&gt; blocks both set to use the TX/RX antenna. The USRP Sink block uses bur=
st transmission. <br>
&gt; When a burst is sent, the B2xx automatically switches the receive to t=
he RX2 port.<br>
&gt;<br>
&gt; The issue is that there is enough leakage through the RX2 port that th=
e system is able <br>
&gt; to receive its own transmit packets with good SNR. This is a problem f=
or the CSMA system <br>
&gt; because it makes the system detect that the channel is busy while it i=
s transmitting its <br>
&gt; own packet. Due to the latency between the RX and TX streams in GNU Ra=
dio, this prevents <br>
&gt; the modem from transmitting back-to-back packets (which is allowed and=
 expected by this <br>
&gt; CSMA scheme), because when the second packet is about to be sent, the =
modem receiver is <br>
&gt; still seeing the end of the previous packet and determines that the ch=
annel is still busy.<br>
&gt;<br>
&gt; To solve this issue, I would like the USRP Source to receive either ze=
ros, no samples at <br>
&gt; all, or something that at least does not have so much leakage of its o=
wn TX signal.<br>
&gt;<br>
&gt; Is it possible to do this either by appropriate configuration in GNU R=
adio or UHD?<br>
&gt;<br>
&gt; I&#39;ve been studying the sources of UHD and GNU Radio to see how thi=
s could be done. The <br>
&gt; only thing I have found is that this would be possible with a small ch=
ange to the FPGA <br>
&gt; image. For instance, this line<br>
&gt;<br>
&gt; <a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3=
/lib/radio_200/radio_legacy.v#L446" rel=3D"noreferrer" target=3D"_blank">ht=
tps://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/radio_200/rad=
io_legacy.v#L446</a> <br>
&gt;<br>
&gt;<br>
&gt; could be modified to replace the RX samples by zeros whenever run_rx i=
s asserted.<br>
&gt;<br>
&gt; However I would prefer not to build a modified FPGA image for this sys=
tem, so I was <br>
&gt; wondering if other solutions exist.<br>
&gt;<br>
&gt; Best,<br>
&gt; Daniel.<br>
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

--00000000000042282a0640071441--

--===============4400449541740572411==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4400449541740572411==--
