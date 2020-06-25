Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E7F20A004
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jun 2020 15:33:48 +0200 (CEST)
Received: from [::1] (port=46784 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1joS0e-0004oh-Sf; Thu, 25 Jun 2020 09:33:44 -0400
Received: from mail-ot1-f44.google.com ([209.85.210.44]:39701)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1joS0a-0004k7-He
 for usrp-users@lists.ettus.com; Thu, 25 Jun 2020 09:33:40 -0400
Received: by mail-ot1-f44.google.com with SMTP id 18so5238260otv.6
 for <usrp-users@lists.ettus.com>; Thu, 25 Jun 2020 06:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OQcbgkTMK8Y6GF/dUjiPxm/trh7U6y3Lhc6qa9DfqGk=;
 b=HlQoUG4w0PPnSgkP2zJW/A6kp2ikg/AtmdtLs9Q78z6xRFo2VJpw9iBd8I01+g4mJ0
 ZJWQlPPLm5om+C5SlACWNh/cdw5zYH3IRJ04gCmTTqkiiElUcVx+CKqEayMmWWyPsm/a
 KkS7BCS3A/DSMbDlZ+FZgeeG8ujG+hRpElyW8Xnci7I2JH8vhmqQsDsszJvIL5v7wa15
 CDfluIyE4j2nLca+3DWe5y5Y5PLSGoLZ/SNYNasF7ZuCgbQJAv8n34kaKlyucPQ0t6dU
 IsnjI85uxmtCpCbotWoJUfP/b1IU5iMxqczuuPWK51eMOwAqDqzYVWszSSqkpER6BgWk
 2AwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OQcbgkTMK8Y6GF/dUjiPxm/trh7U6y3Lhc6qa9DfqGk=;
 b=e2RsBoYry8IA7eW571A5Usal7lPUO5mmwdYr4C9p5jEr8P7oP/+GcQCCh+6xBuDCK5
 vVb5TOP7TUmJYnn/kRoY56MXfhHRLpCZ76IzCGvxX2qDy6YOJ1BMtvxdObvOvFKb9WQy
 mCtx6QCrMQ7t/aMkuiXeljRe7oAU28JkrnV9X7UmTvkRJmCf5JjBJCxLMsokXlfY09Sa
 ekQ7rlckhkdi6SFLqKU34f7TipoUNFlI8Bdx5nwueyXqeF258ReHhy3AnoMdikRUKsA/
 yKEXfSt9fyTjcSeYUneytpRjJUr7u8itc4JSuhotrwDsY3IlsK83faEfMdFoRDkWEUDc
 O83w==
X-Gm-Message-State: AOAM533SEJwDMIpUuiOlIaVu1Dh3iEpNSn6F13ld9zEhCrLIpdfPFp0+
 7bhCIGIiKZ4d4MDzB9rfKpGkLY7j1/KRCU/5UMaM5g==
X-Google-Smtp-Source: ABdhPJzbhGpzKDtJbrE4h9ONpU/MtOhacK20TEyNznovabJlVkIooVoMZuZL/Ns7kbV4X/GvzAm3oEAxG6frEjJlwPg=
X-Received: by 2002:a05:6830:3149:: with SMTP id
 c9mr26230192ots.302.1593091979577; 
 Thu, 25 Jun 2020 06:32:59 -0700 (PDT)
MIME-Version: 1.0
References: <CACjmV_nH=YZVbvU-Md4juBB6iazRxVuLFa+f8rC0Z4=_UumjKA@mail.gmail.com>
 <5EF39210.9030407@gmail.com>
In-Reply-To: <5EF39210.9030407@gmail.com>
Date: Thu, 25 Jun 2020 09:32:48 -0400
Message-ID: <CAB__hTRUU6U4Kvm0MYDqe3oBmBaTph4qUqg=5iH_NCHhMz3vMg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] TX Burst at 200Msps sample rate on two channel
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5108733502095559190=="
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

--===============5108733502095559190==
Content-Type: multipart/alternative; boundary="00000000000089cdff05a8e8a1c9"

--00000000000089cdff05a8e8a1c9
Content-Type: text/plain; charset="UTF-8"

Hi Damon,
The X310 cannot handle 200 MS/s on both channels simultaneously through the
DmaFIFO.  The bandwidth of this RAM cannot handle that much data
simultaneously entering & leaving.  It *may* be possible to achieve this
with a different FPGA image that has 2 FIFOs on the FPGA
(noc_block_axi_fifo_loopback) fabric but I don't know for certain. The
default N310 image uses these rather than the DmaFIFO to achieve 4x100MS/s.
Rob

On Wed, Jun 24, 2020 at 1:49 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 06/24/2020 01:46 PM, guowang qiu via USRP-users wrote:
> > Hi all,
> >
> > I am trying to set my USRP X310 to send out signals in burst mode at
> > 200Msps sample rate on two channels. My target is sending out bursts
> > of 100ms without underflow.
> > The OS is Ubuntu 18.04, UHD version v3.15.0.0, DPDK is used in the
> > test. The CPU is set to 4.2GHz.
> > The X310 is connected to the host by dual 10 Gigabit Ethernet.
> >
> > sudo /usr/local/lib/uhd/examples/tx_bursts
> >
> --args="type=x300,use_dpdk=1,addr=192.168.30.2,second_addr=192.168.40.2,send_frame_size=8000,num_send_frames=512"
>
> > --repeat --dilv --nsamps=20000000 --channels=0,1 --rate=200e6
> >
> > If nsamps is set to 100000, there is no U printed. But if nsamps is
> > large than 120000, the terminal prints a lot of U.
> > Question 1: the depth of DMA FIFO is 32MB by default, I guess there
> > should be 8M samples stored in the DMA FIFO, why it seems that it just
> > store 100K samples?
> > Question 2: is there anything I could do to achieve my goal?
> >
> > Best regards,
> > Damon
> >
> >
> I don't know about the performance question, but there's ZERO reason to
> run that example under 'sudo'.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000089cdff05a8e8a1c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Damon,<div>The X310 cannot handle 200 =
MS/s on both channels simultaneously through the DmaFIFO.=C2=A0 The bandwid=
th of this RAM cannot handle that much data simultaneously entering &amp; l=
eaving.=C2=A0 It *may* be possible to achieve this with a different FPGA im=
age that has 2 FIFOs on the FPGA (noc_block_axi_fifo_loopback) fabric but I=
 don&#39;t know for certain. The default N310 image uses these rather than =
the DmaFIFO to achieve 4x100MS/s.</div><div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 24, 2020=
 at 1:49 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 06/24/2020=
 01:46 PM, guowang qiu via USRP-users wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I am trying to set my USRP X310 to send out signals in burst mode at <=
br>
&gt; 200Msps sample rate on two channels. My target is sending out bursts <=
br>
&gt; of 100ms without underflow.<br>
&gt; The OS is Ubuntu 18.04, UHD version v3.15.0.0, DPDK is used in the <br=
>
&gt; test. The CPU is set to 4.2GHz.<br>
&gt; The X310 is connected to the host by dual 10 Gigabit Ethernet.<br>
&gt;<br>
&gt; sudo /usr/local/lib/uhd/examples/tx_bursts <br>
&gt; --args=3D&quot;type=3Dx300,use_dpdk=3D1,addr=3D192.168.30.2,second_add=
r=3D192.168.40.2,send_frame_size=3D8000,num_send_frames=3D512&quot; <br>
&gt; --repeat --dilv --nsamps=3D20000000 --channels=3D0,1 --rate=3D200e6<br=
>
&gt;<br>
&gt; If nsamps is set to 100000, there is no U printed. But if nsamps is <b=
r>
&gt; large than 120000, the terminal prints a lot of U.<br>
&gt; Question 1: the depth of DMA FIFO is 32MB by default, I guess there <b=
r>
&gt; should be 8M samples stored in the DMA FIFO, why it seems that it just=
 <br>
&gt; store 100K samples?<br>
&gt; Question 2: is there anything I could do to achieve my goal?<br>
&gt;<br>
&gt; Best regards,<br>
&gt; Damon<br>
&gt;<br>
&gt;<br>
I don&#39;t know about the performance question, but there&#39;s ZERO reaso=
n to <br>
run that example under &#39;sudo&#39;.<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000089cdff05a8e8a1c9--


--===============5108733502095559190==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5108733502095559190==--

