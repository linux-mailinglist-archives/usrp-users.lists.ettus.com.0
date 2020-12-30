Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DED2E79D5
	for <lists+usrp-users@lfdr.de>; Wed, 30 Dec 2020 14:55:02 +0100 (CET)
Received: from [::1] (port=35582 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kubwI-00021C-VH; Wed, 30 Dec 2020 08:54:58 -0500
Received: from mail-oi1-f175.google.com ([209.85.167.175]:41145)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jarroyo@gradiant.org>)
 id 1kubwF-0001xo-MN
 for usrp-users@lists.ettus.com; Wed, 30 Dec 2020 08:54:55 -0500
Received: by mail-oi1-f175.google.com with SMTP id 15so18722611oix.8
 for <usrp-users@lists.ettus.com>; Wed, 30 Dec 2020 05:54:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gradiant-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ai1lGqwfn7P1Y/+5a1rK/jcanv3UCLNZNlgXL0EXtrE=;
 b=vYTlHsQWMiPtqWB4OKGbakfZ3F/MFM2IZFxCvBsuBUixuuI2Mxi3mafGMnq56ds/N+
 nmM1u3DZtaYuPANlVryFZLXNB8oj9+J9ghkSGWZS13pBbL0pBvdaOWmJGcrmO0q+tQWy
 NE73SnF3PPYE+/6oJWCvoKVRUnDmjqTEg7fuJ8dqbUZxLCmRLOFMWf6Xuwd0GFPEr42V
 R59Yr3ojBBmOvMt1Dd9B40eFzNWGS+uCI3J10d00H+v+y5p1CFEUt659bb1i/cSfkPOm
 DGRrQd5q9fwm0WfeXwo7nraMejwGZPSKQDbzBhWZrZPE92j6VF4M4idlpM5XmtdVJBd7
 zyDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ai1lGqwfn7P1Y/+5a1rK/jcanv3UCLNZNlgXL0EXtrE=;
 b=Ch+N7AZJ+2XwmrVwRTdZ6zV+rQ5g9tZRaz7i7aUrIpSVYDjJKsHJ1KnDi2JGy3qIHy
 ruX+TfLS1QYMAbnLQ7ejleHjBN2GCjDnAD9zwGi0OSalrrePuI0WYKAtMowFWGiwpliG
 IABE5IsJ22/VunATOjkJDqmaxE09ikFTBxFV88owmkPBahJZ5KEUnLy0tVqYB/vUXoYo
 ZURWvMgxaBA1eumMQf13DJrhdWjUhfBx7LDD4N1pSkt86BCBr8UVnDx+bL3c4zqv2p9X
 gBONhKd1Sa3oi30lCcwrSoehxSdDdTemh9+fndzJv9cqKqHk0hSf9PL/zE1lmHvMPbfb
 PU2Q==
X-Gm-Message-State: AOAM532md0jg77agd0aP3Pc+7IsFwdKerIzEqwTzeIQs/ehjICAOyb8R
 kcaTS5pVTItWRTbzLYvfbMS5kZG5Ej54DDlMgPuy7g==
X-Google-Smtp-Source: ABdhPJxWl7lFdPJv1r8LyniTn/2AaaxR+rSLNJ20iuGHG7jQ19vEYRB0pjQZKxn/XW31dDmgoXHicITU05GaZXJ3kUA=
X-Received: by 2002:aca:4989:: with SMTP id w131mr5180837oia.83.1609336454181; 
 Wed, 30 Dec 2020 05:54:14 -0800 (PST)
MIME-Version: 1.0
References: <CAOx6OK2N87J_kyjYyY3MHY7ymO7Cy0LkeHUsAeB4gzTa4RUA4w@mail.gmail.com>
 <CA+JMMq-kEjipOzh793JnvWk-ri+JtGfgN4PRPyPADCMRwD5xSg@mail.gmail.com>
 <CAOx6OK0dbsXCmrbrJ8uNEUk2P5GAgoPrT5wqRnKeN-ZU4t7qzQ@mail.gmail.com>
 <CADRnH20e6NCMXx+gyqbxW8te8-0dfqOQeeua-X3R8HWbOr_dEA@mail.gmail.com>
In-Reply-To: <CADRnH20e6NCMXx+gyqbxW8te8-0dfqOQeeua-X3R8HWbOr_dEA@mail.gmail.com>
Date: Wed, 30 Dec 2020 14:53:58 +0100
Message-ID: <CAOx6OK1YXO1EBGYk3O_Y=F_tkhOKre245iZhOvAZUq9Che1ZOw@mail.gmail.com>
To: EJ Kreinar <ejkreinar@gmail.com>, usrp-users@lists.ettus.com
Subject: Re: [USRP-users] DMA FIFO latency with X310
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
From: Jorge Arroyo Giganto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jorge Arroyo Giganto <jarroyo@gradiant.org>
Content-Type: multipart/mixed; boundary="===============8757822561202476703=="
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

--===============8757822561202476703==
Content-Type: multipart/alternative; boundary="000000000000ad0a4805b7aed781"

--000000000000ad0a4805b7aed781
Content-Type: text/plain; charset="UTF-8"

Hi EJ,

Yes, I tried replacing the DMA FIFO with a normal FIFO and the latency got
a bit worse and more irregular (I'm guessing that's due to not smoothing
that burstiness in the Ethernet interface with the DMA FIFO you mentioned).

I have just tried your graph suggestion (Host -> FFT -> FIFO -> Host) and
the latency looks about the same but in the FFT block instead. Also I had
to use packets with spp=256 in the tx streamer in order to match the spp
that the FFT block accepts or I would get an error when building the
streamer. Maybe making the FFT block somehow be able to accept bigger
packets would decrease the latency?

About the theoretical latency for a packet of 8192 bytes you mention,
shouldn't it be 8192*4 bytes assuming that each sample is a sc16 (2 bytes
for the real part and 2 bytes for the imaginary part of each sample)? Then
this latency I am experiencing would make more sense?

Thank you so much for your feedback, I will also keep in mind your comment
about the way I am using RFNoC.

Best regards,

Jorge

--000000000000ad0a4805b7aed781
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi EJ,</div><div><br></div><div>Yes,=
 I tried replacing the DMA FIFO with a normal FIFO and the latency got a bi=
t worse and more irregular (I&#39;m guessing that&#39;s due to not smoothin=
g that burstiness in the Ethernet interface with the DMA FIFO you mentioned=
).</div><div><br></div><div>I have just tried your graph suggestion (Host -=
&gt; FFT -&gt; FIFO -&gt; Host) and the latency looks about the same but in=
 the FFT block instead. Also I had to use packets with spp=3D256 in the tx =
streamer in order to match the spp that the FFT block accepts or I would ge=
t an error when building the streamer. Maybe making the FFT block somehow b=
e able to accept bigger packets would decrease the latency?</div><div><br><=
/div><div>About the theoretical latency for a packet of 8192 bytes you ment=
ion, shouldn&#39;t it be 8192*4 bytes assuming that each sample is a sc16 (=
2 bytes for the real part and 2 bytes for the imaginary part of each sample=
)? Then this latency I am experiencing would make more sense?</div><div><br=
></div><div>Thank you so much for your feedback, I will also keep in mind y=
our comment about the way I am using RFNoC.</div><div><br></div><div>Best r=
egards,</div><div><br></div><div>Jorge<br></div></div><br></div>

--000000000000ad0a4805b7aed781--


--===============8757822561202476703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8757822561202476703==--

