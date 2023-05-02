Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A910F6F4909
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 19:17:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA51438472E
	for <lists+usrp-users@lfdr.de>; Tue,  2 May 2023 13:17:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683047873; bh=Z55QVqwKuU9nr4hwXG5Ggh9q4q37elLf4jDoFNYE1c8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=a1ljpOZpnqA+24VyfSsXneai+rwHs8GWbv/4fbWNromyPXWFh/Q8ci+GsU3HgxFbg
	 LOcAcY+mzfeOEtnS5ZydOn3N9HkBhWunfZdU6I/5unAgIDjFHs+XRE9+vlcfzATpiG
	 8978BvNviQOPPRa023FVXsZYBEApzf16VugPSPiGX8t3SGJxniU6UEjwaswMayvHud
	 YgjGeN+dls8V++73Gm6XzzCBvp0yYB53URj+CZog9bZaVhTixiQ7nG59AlZGMkwdSF
	 4vGlihVUWC+oms2/nJFmXLo/3YZeODYxba+/HW+ZV/9Ad/ZhyCAqAOHGVS1R359OxN
	 EIXPCjJB/0ySA==
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 9D6C9383F87
	for <usrp-users@lists.ettus.com>; Tue,  2 May 2023 13:17:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WvraCegV";
	dkim-atps=neutral
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-50bd37ca954so7503279a12.0
        for <usrp-users@lists.ettus.com>; Tue, 02 May 2023 10:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683047851; x=1685639851;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pKLdcL0c6EgMnyj5BsvG7u5OB/iQ2LBeoootNIEseec=;
        b=WvraCegVm1Q6yv4j1bZ7DIbsKUsnC6NQi3+eK/b0PgEyA5jF6oUIIK4hQP28x4wIpH
         UWbizHcfxXzVP1W7S/7h632eoZfBO02n0YoLvRfTJaQCocJy82du5oKSPt9lDO+UzzDV
         jZz3WyfDOXh0l7oWEIZG9//CYs1ZUEbBBaGGJ0JQ8BGqbTrzOQekEq6xhXTvGRe/QKKP
         UcBNj1Sg68dHI+gVG1P2eym3PsAZRQRFILviBmWTrU6tYaUMJDtqPsy5am51mTW4mWnP
         sSuj6c6cjbaTyxSDDxXktYpnihMSC+beOm6Lc0z+VqOpIFzArk62wBJRAxSONZ/lwjed
         JKxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683047851; x=1685639851;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pKLdcL0c6EgMnyj5BsvG7u5OB/iQ2LBeoootNIEseec=;
        b=VcEQJDTg+whSmSKMRM79r/2J7G9jq/WIdyYZgFj4xKHTfYITjCV0A6oOTnSO4vZJkT
         Q1MhLa4s+dtO5Klsme++jWMcfJw9WP8P5VD6iWT8KmrnT3m0kHn+6DxOJHHgSuXdCUCk
         bKCcF9ddLVzeOX+TTdM1Qd0OEsTxYYrtDl179L0bRNKihipvcI/AS1DnYu/5Gd1qhdXD
         yr4A+ANdWEssEXhY1UDLvVpg2l8VeRMF76mrguFwlFn7SSQu8IWO6Rb1/PI46G1IDoo8
         dCatoz3anv4SZWlubNYB5sEHzgxWLTRbpMZeZW+PBPVZbdCUxTunjieDXh3au+tzAkk6
         ot8Q==
X-Gm-Message-State: AC+VfDx0VzDL50Kjfw1JjNZgyfnS0O+yDDok+i1ijC7wX8J7Z1rCGXo0
	o7mWnQ8fXw7cpQCK1iH+truQX4gE7Q17j/0FTBbelK5P
X-Google-Smtp-Source: ACHHUZ5biYVE/qlFBStip8hWNxfM7tgBQUzkQ1a1vcbFLb89v3RrsD9YPQJbizkQsCukER9c7Zz2tBtfcHb/PPIKsvk=
X-Received: by 2002:a17:906:6a17:b0:953:8bc2:69df with SMTP id
 qw23-20020a1709066a1700b009538bc269dfmr563961ejc.11.1683047850979; Tue, 02
 May 2023 10:17:30 -0700 (PDT)
MIME-Version: 1.0
References: <DVn4WUMSMIz4SQdzL47CArhLN16s0L2kJtQTmRUps@lists.ettus.com>
In-Reply-To: <DVn4WUMSMIz4SQdzL47CArhLN16s0L2kJtQTmRUps@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 2 May 2023 13:17:20 -0400
Message-ID: <CAEXYVK6yCOs27HODKvEV7PtXxsdEDXoYiCsBdGczsj5G5=GOPA@mail.gmail.com>
To: ri28856@mit.edu
Message-ID-Hash: M6JKBQQZUZVJKNLXDSKXA57KTCMDBWWW
X-Message-ID-Hash: M6JKBQQZUZVJKNLXDSKXA57KTCMDBWWW
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Tail of every transmit trimmed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M6JKBQQZUZVJKNLXDSKXA57KTCMDBWWW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9099702927574961518=="

--===============9099702927574961518==
Content-Type: multipart/alternative; boundary="0000000000004c589005fab91dbf"

--0000000000004c589005fab91dbf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 2, 2023 at 1:01=E2=80=AFPM <ri28856@mit.edu> wrote:

> Hello,
>
> I have a C++ application I developed using x310s running on RHEL9 and UHD
> 4.2 currently. I=E2=80=99ve noticed recently that the final ~25 samples o=
f every
> transmit are heavily distorted or nonexistent. I am able to replicate thi=
s
> behavior using a slightly modified version of tx_rx_loopback_to_file from
> the examples in the UHD repository.
>
> Here is my experimental setup. I have a USRP x310 looped back on itself
> from Channel A Tx/Rx to Channel A Rx2. I adjusted tx_rx_loopback to use
> complex int16s everywhere, and set the Rx to start running at 2s. I reque=
st
> enough samples to receive for 1.1s to ensure I am capturing my full
> transmit. I send a 1250 sample test sequence through using
> tx_streamer->send() with the metadata time_spec_t set to 3s (exactly 1s
> after I started my rx). The metadata also sets has_time_spec,
> start_of_burst and end_of_burst true. The test sequence is as follows:
> samples 0 to 49 (i =3D 2^13 - 1, q =3D 0j), samples 299 to 308 noiselike =
xcorr
> sequence, samples 1200 to 1249 (i =3D 0, q =3D 2^13 -1j). All other sampl=
es are
> (0, 0j). Running a cross correlation using the noiselike sequence, I=E2=
=80=99ve
> determined the system has a constant 58 sample group delay.
>
> Here is the undesirable behavior I am observing. All samples are delayed
> 58 clock ticks in time; this is acceptable. I observe a 50 sample wide
> spike in the real signal starting at sample 58 (expected). I observe my
> xcorr sequence as a 10 sample wide chunk of noise starting at sample 358
> (expected). My tail spike however is 26 samples short. I=E2=80=99ve attac=
hed a
> plot.
>
> I=E2=80=99ve experimented with shifting where the tail spike starts in th=
e
> sequence. If I put the tailspike 26 samples closer to the middle of the
> test sequence, and follow with 26 samples of (0, 0j) the sequence looks
> okay. In my good transmit plot, the full tail spike is visible from sampl=
e
> 1232 to 1282.
>

Are you using any interpolation or is it going directly to the TX DAC?

In my application I am scheduling short transmit bursts. Currently I just
> used a timed tx_streamer->send() with start_of_burst, end_of_burst, and
> has_time_spec true. If I receive a schedule request for a burst that is
> larger than a single transmit buffer, I instead set the first tx md to
> start_of_burst and has_time_spec_true, and the second tx mx to end_of_bur=
st
> true.
>

There may be issues in the FPGA when it comes to interpolating small
packets.  What are the sizes of your bursts that include the end_of_burst
flag?  From my understanding a while ago (things might have changed) - the
DUC interpolation will make the R (the interpolation factor) packets of
size N (the size of the last input buffer) which could result in lots of
tiny packets.  It doesn't necessarily sound like that is what is going on
here, but something to potentially be aware of in the future.


> Is there a standard recommendation for dealing with tail trimming? Do I
> just need to insert 26 0s to the end of every burst I want to send? I
> understand that this is in part an analog operation, but dropping 20+
> samples on every transmit feels like I=E2=80=99m leaving free SNR on the =
table.
>

Not adding 0's to the end of a burst which you intend to be interpolated is
problematic in general, since you won't be flushing the FIR filters of
their current state.  Remember there is no automatic zero stuffing to push
the last of the data through.

Brian

--0000000000004c589005fab91dbf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, May 2, 2023 at 1:01=E2=80=AFPM &l=
t;<a href=3D"mailto:ri28856@mit.edu">ri28856@mit.edu</a>&gt; wrote:<br></di=
v><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><p>Hello,</p><p>I have a C++ application I developed using x310s runnin=
g on RHEL9 and UHD 4.2 currently. I=E2=80=99ve noticed recently that the fi=
nal ~25 samples of every transmit are heavily distorted or nonexistent. I a=
m able to replicate this behavior using a slightly modified version of tx_r=
x_loopback_to_file from the examples in the UHD repository. </p><p>Here is =
my experimental setup. I have a USRP x310 looped back on itself from Channe=
l A Tx/Rx to Channel A Rx2. I adjusted tx_rx_loopback to use complex int16s=
 everywhere, and set the Rx to start running at 2s. I request enough sample=
s to receive for 1.1s to ensure I am capturing my full transmit. I send a 1=
250 sample test sequence through using tx_streamer-&gt;send() with the meta=
data time_spec_t set to 3s (exactly 1s after I started my rx). The metadata=
 also sets has_time_spec, start_of_burst and end_of_burst true. The test se=
quence is as follows: samples 0 to 49 (i =3D 2^13 - 1, q =3D 0j), samples 2=
99 to 308 noiselike xcorr sequence, samples 1200 to 1249 (i =3D 0, q =3D 2^=
13 -1j). All other samples are (0, 0j). Running a cross correlation using t=
he noiselike sequence, I=E2=80=99ve determined the system has a constant 58=
 sample group delay. </p><p>Here is the undesirable behavior I am observing=
. All samples are delayed 58 clock ticks in time; this is acceptable. I obs=
erve a 50 sample wide spike in the real signal starting at sample 58 (expec=
ted). I observe my xcorr sequence as a 10 sample wide chunk of noise starti=
ng at sample 358 (expected). My tail spike however is 26 samples short. I=
=E2=80=99ve attached a plot. </p><p>I=E2=80=99ve experimented with shifting=
 where the tail spike starts in the sequence. If I put the tailspike 26 sam=
ples closer to the middle of the test sequence, and follow with 26 samples =
of (0, 0j) the sequence looks okay. In my good transmit plot, the full tail=
 spike is visible from sample 1232 to 1282.</p></blockquote><div>=C2=A0</di=
v><div>Are you using any interpolation or is it going directly to the TX DA=
C?</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p=
> </p><p>In my application I am scheduling short transmit bursts. Currently=
 I just used a timed tx_streamer-&gt;send() with start_of_burst, end_of_bur=
st, and has_time_spec true. If I receive a schedule request for a burst tha=
t is larger than a single transmit buffer, I instead set the first tx md to=
 start_of_burst and has_time_spec_true, and the second tx mx to end_of_burs=
t true.</p></blockquote><div><br></div><div>There may be issues in the FPGA=
 when it comes to interpolating small packets.=C2=A0 What are the sizes of =
your bursts that include the end_of_burst flag?=C2=A0 From my understanding=
 a while ago (things might have changed) - the DUC interpolation will make =
the R (the interpolation factor) packets of size N (the size of the last in=
put buffer) which could result in lots of tiny packets.=C2=A0 It doesn&#39;=
t necessarily sound like that is what is going on here, but something to po=
tentially be aware of in the future.</div><div>=C2=A0</div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><p> </p><p>Is there a standard recommenda=
tion for dealing with tail trimming? Do I just need to insert 26 0s to the =
end of every burst I want to send? I understand that this is in part an ana=
log operation, but dropping 20+ samples on  every transmit feels like I=E2=
=80=99m leaving free SNR on the table.</p></blockquote><div><br></div><div>=
Not adding 0&#39;s to the end of a burst which you intend to be interpolate=
d is problematic in general, since you won&#39;t be flushing the FIR filter=
s of their current state.=C2=A0 Remember there is no automatic zero stuffin=
g to push the last of the data through.</div><div><br></div><div>Brian</div=
></div></div>

--0000000000004c589005fab91dbf--

--===============9099702927574961518==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9099702927574961518==--
