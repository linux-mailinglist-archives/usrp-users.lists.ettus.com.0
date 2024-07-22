Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D51BD939183
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 17:14:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E2453385565
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2024 11:14:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721661243; bh=O964CPs9kGuEon6r/pE3tRM4kd6jg+QonuvRD5wQ3Xs=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=RwhpvZudr+J93JFR30W/egvey2eR9GRCnk5LnibIb0x62f9Uz5Bs/tcKAMAHnXpIH
	 yByzIg8OgWS9LKdyJc417Jgs8Ujj7G81ss6WI4jig2DTnMk8OxxECxJpdvmbWJZ/3n
	 J90lfHiQWbXt63Y2u5cnRsXMrCddf9DnPnCOTqZFeg6t7cfdGgUcxB2tQuwPU4o1Fq
	 2fVoD8IjVFqiqd1VFr3xZcKxWQIUk26IuFikROT0/pcZIRigjMh88QYwuKReHoO6OZ
	 96A6KAQAM+Ga/m7fgxK9+uy2N9uOdV+/KYRLgxNH8f/hC6YPIxpyZwIdWBLQj7roFn
	 Dn6LCGfKxbRLA==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 0D078383B85
	for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2024 11:13:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="djvR4XAo";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5a1337cfbb5so4055862a12.3
        for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2024 08:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1721661212; x=1722266012; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vOV5oEeGqIMTj35lx3FH6oSO0x1WbLeXdiUn6kFl+Kw=;
        b=djvR4XAozYECB6D78d0+nY82F5cKJe7OV/PFSfBE9NUmklRAu9XNcwwknq46Cyll2w
         zUipwn6+X3CVuYwOpTMvVv2qN5iNiXFiKPTatHDyxetLYDGD2fT6CeulGmwIT6uWY86X
         AJ4r7DP4satMIgoIvBibCsosFClKc2xbkjkakv+x4MEt3zC7njy97T58z7q41kOAh2uN
         7LTU+/vRoTlnXr+7tGp69rJCSAC3Cy41V9cxisE1SyXbU1Tj8r5Xry276cUZjRGPOwv6
         YR7//f8yeFkV5dOcp3KmALSDxkrOVePuOO6v17huMUCIqFp0laNxVgPctwdjyFPjuSMJ
         TAcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721661212; x=1722266012;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vOV5oEeGqIMTj35lx3FH6oSO0x1WbLeXdiUn6kFl+Kw=;
        b=Cv9iLZzxDeKh0gfcE5vqCTAot8X7JY3hp9Gl35vOyLqTpuYk2DuEZSvS0IEBh1v4jo
         2mfn4r1UT5sqiwi8dhHeybY3UbB3W7GAFuqpCjMnRZpTweBjtO6hdEp6R+RODfMTScB1
         8pSsbAQqn8QuO+Oskh5Sl5Wr1lzBNyuboMwvXTJbKQBTUtwh54tx+sk8RkYlZ0DXIFtz
         66RZVjXdx5BpgirSoN1iSLo9M7ALCg0NeAd3MQhJSOoWzWusH8eRsFHGJ/MpGMCam1hU
         q6nNDEm//QkPdxKI+nq27/oXiqBuRME36qiVhbFUv6/mxMctixAKtvCx3vUkMgkXqOij
         5Ppw==
X-Gm-Message-State: AOJu0Yzs09W/fOf8rWETw+5L1Wbda3o8bhYuuQZ0lb7evkfqO33Ngdd7
	JSuTuiSfQmwElJQYY+PvklGVg1/WUldc5Xmei5E8fGtXZq6wdGEeesF19LcJYvMo2oTsDyHHYHf
	kRzLI4bL24mOQorOJjIESVrHofLPMOEFf5mQSzLDLhbIhWGk=
X-Google-Smtp-Source: AGHT+IGuNZS2kj8BMmbtsx8MqDydy5bXirleHVNuhd/ST9/XG3ziVPvhkiNGdfUN/4KW9MDiAY1P6N41oS8WUwPctqY=
X-Received: by 2002:a50:d555:0:b0:58e:e2a:1b58 with SMTP id
 4fb4d7f45d1cf-5a941d23d25mr151600a12.2.1721661211770; Mon, 22 Jul 2024
 08:13:31 -0700 (PDT)
MIME-Version: 1.0
References: <2si54p3O7ZEPgU3Sqb6ANlYM0MnrN9GMgBIVkjMx5eM@lists.ettus.com>
In-Reply-To: <2si54p3O7ZEPgU3Sqb6ANlYM0MnrN9GMgBIVkjMx5eM@lists.ettus.com>
Date: Mon, 22 Jul 2024 11:13:20 -0400
Message-ID: <CAB__hTQdEvf23e212-_7_izsk7PKkJACcAFPn6cFXmkOHqj7cA@mail.gmail.com>
To: cjohnson@serranosystems.com
Message-ID-Hash: EVXHPZQWYEPRVG32T3Q53FLQYKJ44RQW
X-Message-ID-Hash: EVXHPZQWYEPRVG32T3Q53FLQYKJ44RQW
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Buffers - 200Msps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EVXHPZQWYEPRVG32T3Q53FLQYKJ44RQW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1720672232689616994=="

--===============1720672232689616994==
Content-Type: multipart/alternative; boundary="000000000000f3b767061dd77caf"

--000000000000f3b767061dd77caf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
regarding FPGA Rx buffer, I am wondering if you can use the DRAM as a
buffer (e.g., host_tx =3D> dram =3D> duc =3D> radio_tx).  As far as I remem=
ber,
you can't use the DRAM as a FIFO if you are running 2 channels both at 200
MS/s. The DRAM FIFO bandwidth is insufficient.  But, if your data rate is
less or you only have 1 Tx channel, this may be an option.  I'm not
positive it will solve the underrun but the DRAM FIFO is 1GB deep. This
could be an alternative to using DPDK.
Rob

On Mon, Jul 22, 2024 at 9:31=E2=80=AFAM <cjohnson@serranosystems.com> wrote=
:

> Hi,
>
> Thanks for the answer in 2).
>
> What about 1) *FPGA Rx Buffer Size:*
>
>    -
>
>    What is the FPGA Rx buffer size on the X310?
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f3b767061dd77caf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<div>regarding FPGA Rx buffer, I am wo=
ndering if you can use the DRAM as a buffer (e.g., host_tx =3D&gt; dram =3D=
&gt; duc =3D&gt; radio_tx).=C2=A0 As far as I remember, you can&#39;t use t=
he DRAM as a FIFO if you are running 2 channels both at 200 MS/s. The DRAM =
FIFO bandwidth is insufficient.=C2=A0 But, if your data rate is less or you=
 only have 1 Tx channel, this may be an option.=C2=A0 I&#39;m not positive =
it will solve the underrun but the DRAM FIFO is 1GB deep. This could be an =
alternative to using DPDK.</div><div>Rob</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jul 22, 2024 at 9:31=
=E2=80=AFAM &lt;<a href=3D"mailto:cjohnson@serranosystems.com" target=3D"_b=
lank">cjohnson@serranosystems.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><p>Hi,</p><p>Thanks for the answer in 2).<=
/p><p>What about 1) <strong>FPGA Rx Buffer Size:</strong></p><ul><li><p>Wha=
t is the FPGA Rx buffer size on the X310?</p></li></ul>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div>

--000000000000f3b767061dd77caf--

--===============1720672232689616994==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1720672232689616994==--
