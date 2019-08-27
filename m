Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8969D9DC5A
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2019 06:16:14 +0200 (CEST)
Received: from [::1] (port=44352 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i2Stw-0001Ou-J9; Tue, 27 Aug 2019 00:16:12 -0400
Received: from mail-lj1-f173.google.com ([209.85.208.173]:37763)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1i2Sts-0001ID-Du
 for usrp-users@lists.ettus.com; Tue, 27 Aug 2019 00:16:08 -0400
Received: by mail-lj1-f173.google.com with SMTP id t14so17125829lji.4
 for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2019 21:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U46yz7AJddj9zKLK2Us758odiqwwAo+UsjbEJWpVHTs=;
 b=PvIkvRRldWPF0GMPQJyz8R4rGGXC6fxr3IybKJyG6ZanZk1nCUqzfc8IrA721PxyIQ
 NLxEVL5H5LiHTGmsMhkFQGzccOOXIjMoqCdE222y46h6WcmhMsRfSWQpdHnmegXeTYW7
 MB2I6WQFnZvwBnwZPrJKMogtXnEChUIM4vu3QFKJD8lp2TprWwD8DHLGK8HyjLorlmky
 fyVT2ky0buzaYa2rjZrDjhUpRABcAUYFX7nHnDxayAy1cNkk6BLmlwkI2T+1cGzr87vb
 oJAEOT6TijHoQkB9Yvf1GyQxwOJICRr/Ma6H0JS6lEFWJg3XiFkmBi5vzWfASGMQwDQa
 VVZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U46yz7AJddj9zKLK2Us758odiqwwAo+UsjbEJWpVHTs=;
 b=qPmEajj/KfxT+CWJ0es/t+r8CTeB3jD9ZhjHi7dINch7FBuEwLeGc8RAPYaKLPfnLL
 ohbi9ZeW91kWyTv6iKiGP5q/4j75mMv/7yZzCfxsYbn4NgjcCE4QjqyrgDM2X+OkuRZ5
 x5YfascNqxAi5eU7L6fMFg1Tp8iKHGTtfl3Bh07p6FvgG8YmqAtxcYJpkN6RF1TZ1bEN
 5Ct9Um8pcsBT4eJ96oT9XM8DWuezY3lwSvAoyPTEg+CNQDx1hKsr36phyWjck6DRDw+I
 Z6Kr9CyLe0bZsxM75D4TR1Qep3Lx3oxfrMLSVjt9W2yY3x5a8yQQiMsVmUoDPWtdry3U
 7yfQ==
X-Gm-Message-State: APjAAAV/ILMnjYJDrGE8CAjxeqduEFaDhwIjWk+I58lKnOg/bjgoz7W+
 FktAqBw5n/XUGTxKIGckNTCFduWiJqXfOMJNjUJOrquT
X-Google-Smtp-Source: APXvYqwDppSTOV0gJtdt9TvMMPD93l8qCEy+A5V1DZMbRjM8CW9Ez/IGKYPfynI3LprOzNhMa08U1DO62d0mae07e4Q=
X-Received: by 2002:a2e:5dc6:: with SMTP id v67mr12467025lje.240.1566879327062; 
 Mon, 26 Aug 2019 21:15:27 -0700 (PDT)
MIME-Version: 1.0
References: <CABsifTm54UOtwEfSp8nEzTTw2518qHqSBj7fbZsB-fvvbNxGkA@mail.gmail.com>
In-Reply-To: <CABsifTm54UOtwEfSp8nEzTTw2518qHqSBj7fbZsB-fvvbNxGkA@mail.gmail.com>
Date: Tue, 27 Aug 2019 13:14:51 +0900
Message-ID: <CAL7q81vDWQziDHbg8FoyE0frY63HnRV=04qUejq3-uS6RUTieA@mail.gmail.com>
To: Timothy Kurp <timothy.kurp@gmail.com>
Subject: Re: [USRP-users] RFNoc Testbench / EOB
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3534323953161182605=="
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

--===============3534323953161182605==
Content-Type: multipart/alternative; boundary="000000000000b221740591118595"

--000000000000b221740591118595
Content-Type: text/plain; charset="UTF-8"

Hi Tim,

Look at noc_block_fft_tb.v for an example on how to operate on a 32-bit
sample by sample basis. Unfortunately, if you want to do sizes smaller than
32-bit, you'll need to write your own version of send()/recv() or
push_word()/pull_word() from sim_rfnoc_lib.svh.

Jonathon

On Tue, Aug 27, 2019 at 1:05 PM Timothy Kurp via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hey Users!
>
> I think this may be a possible deficiency in the test bench architecture,
> or perhaps I just don't know how to instrument it properly. I have a custom
> block that performs a 2:1 rate change roughly, performing compression of
> the 16 bit I/Q from the radio down to a 16 bit word that is compressed, I
> won't describe how. There is a corner case if EOB occurs when there is an
> odd number of samples received from the radio. I have handled this by using
> simple mode = 0, manipulating cvita header manually and throwing tlast to
> make packets, with success. The noc block works, but I am struggling with
> how to exercise the corner case in the testbench.
>
> From what I have seen, the testbench only allows for EOB to be manipulated
> on sample counts that are a multiple of 2 (send() operates on 64 bits, or 2
> samples of 16 bit I/Q). We have looked at the source and there doesn't seem
> to be an easy way to throw EOB/TLAST on odd samples.We also think it is not
> guaranteed that this will never happen from the radio. Thoughts?
>
> Tim
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b221740591118595
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Tim,<div><br></div><div>Look at noc_block_fft_tb.v for =
an example on how to operate on a 32-bit sample by sample basis. Unfortunat=
ely, if you want to do sizes smaller than 32-bit, you&#39;ll need to write =
your own version of send()/recv() or push_word()/pull_word() from sim_rfnoc=
_lib.svh.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 27, 2019 at 1:=
05 PM Timothy Kurp via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hey U=
sers!<div><br></div><div>I think this may be a possible deficiency in the t=
est bench architecture, or perhaps I just don&#39;t know how to instrument =
it properly. I have a custom block that performs a 2:1 rate change roughly,=
 performing compression of the 16 bit I/Q from the radio down to a 16 bit w=
ord that is compressed, I won&#39;t describe how. There is a corner case if=
 EOB occurs when there is an odd number of samples received from the radio.=
 I have handled this by using simple mode =3D 0, manipulating cvita header =
manually and throwing tlast to make packets, with success. The noc block wo=
rks, but I am struggling with how to exercise the corner case in the testbe=
nch.</div><div><br></div><div>From what I have seen, the testbench only all=
ows for EOB to be manipulated on sample counts that are a multiple of 2 (se=
nd() operates on 64 bits, or 2 samples of 16 bit I/Q). We have looked at th=
e source and there doesn&#39;t seem to be an easy way to throw EOB/TLAST on=
 odd samples.We also think it is not guaranteed that this will never happen=
 from the radio. Thoughts?</div><div><br></div><div>Tim</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000b221740591118595--


--===============3534323953161182605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3534323953161182605==--

