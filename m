Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 901F7284CA0
	for <lists+usrp-users@lfdr.de>; Tue,  6 Oct 2020 15:41:10 +0200 (CEST)
Received: from [::1] (port=51288 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kPnDH-000761-Tx; Tue, 06 Oct 2020 09:41:07 -0400
Received: from mail-oo1-f46.google.com ([209.85.161.46]:39705)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kPnDD-0006zM-Vk
 for usrp-users@lists.ettus.com; Tue, 06 Oct 2020 09:41:04 -0400
Received: by mail-oo1-f46.google.com with SMTP id c4so3197228oou.6
 for <usrp-users@lists.ettus.com>; Tue, 06 Oct 2020 06:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ozCIG/PozfXPEeBNdjgiZ5G1NPewbUuUTvEsoVWRT9M=;
 b=U9wCL7XLJw4gmEr79ZoK0K/E0Vz6PbRZxGa21wcIF7aZP7K/xyR8AoyHsLZcQleXVz
 7BeI2sT2wI+++BL5V4p/VainJqa3sYj9h6W5DmucCTz+LNibptzb78VAfQucTS3+d8aA
 0WEGf8Bo1FqUM1UYxDGlYhixtoyApq4NfDzJR4l3r1EEQXIDhmJH2RVQtcInusn/cDAT
 3Z930pYmEka4xRWJ4JhuBlFWU7QS3JkgdVowOgAYwxncCxVE075Lb2FsJhGDDUGkJgar
 1KwUpMwKC7oFBXT6Q0sVZWb/asuk7Fv+e6chZvCalFstJ44iPxPNz63rEXSRA65ECXte
 4ljQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ozCIG/PozfXPEeBNdjgiZ5G1NPewbUuUTvEsoVWRT9M=;
 b=LtLqmzSlJj7j1tRGWBMjT8ojlfUYdiGNa58B/1kyT5oFNpZRPDV7ueQG3Vh1e3Bs/T
 MunbeRni6peQu8ov2mg2YpkeqHajARI5LfFpHTFgAS72WA6C0L0VqnfnFDL7u4Yj/WTB
 45ZqjmFjJAWi5NO9UcEdXssdf4UpcFXe340unKhnMHKxLfaeL2YjLFwk4xxEqw2u+6kw
 uMUODZR4VNbnc8qD15kv4G5FzmtxZyJw8N26HZHCG6Ho70Aj20ncoZdUPZZI1rXE8K84
 LoSZ31wTL18mXcTh6LMV+GdAkjBeWobkqsCMpHHQpn8athBkMAMWrKmKnDKBvjHqTVCF
 tdEw==
X-Gm-Message-State: AOAM531S2RrDi4+HzB7ZdKkFaPBxpd8tZH5dOyZQ/v6ggo7xkY30IlUM
 ZI1ktDpdPxx+Eh95OTzFKKBUGWNewZSh+piw+D1JTQ==
X-Google-Smtp-Source: ABdhPJzuBIU0ueGuStEXu/H2EGYPvbo1k4rKZ0wbmNoGck6DkWaxwRclY01KMR1XRg5Fx+Qkhe0fxx8umrTAwW6tej8=
X-Received: by 2002:a05:6820:384:: with SMTP id
 r4mr3173772ooj.62.1601991622967; 
 Tue, 06 Oct 2020 06:40:22 -0700 (PDT)
MIME-Version: 1.0
References: <CADrptxWYb5Mf83FoQF05PhhH=-r=wU5VTF+v7brk3Pdom3cxGw@mail.gmail.com>
In-Reply-To: <CADrptxWYb5Mf83FoQF05PhhH=-r=wU5VTF+v7brk3Pdom3cxGw@mail.gmail.com>
Date: Tue, 6 Oct 2020 09:40:12 -0400
Message-ID: <CAB__hTQ1Kcw_+2r9FCoWK00zGOttMPPaNQg5=m0_s-LiMaUYcQ@mail.gmail.com>
To: Emil Bjelski <emil.bjelski@gmail.com>
Cc: USRP Users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNOC REPLAY streaming to two UBX
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
Content-Type: multipart/mixed; boundary="===============8068548734264159606=="
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

--===============8068548734264159606==
Content-Type: multipart/alternative; boundary="0000000000009f083f05b100bd98"

--0000000000009f083f05b100bd98
Content-Type: text/plain; charset="UTF-8"

Hi Emil,
With UHD 4.0, this works.  And, the latest FPGA images from Ettus include
the Replay block on the X310 (in the past, this was just for the N310) so
you don't even have to build your own image. And, the latest FPGA images
provide access to the full 1GB ram such that you could store arb waveforms
for 2 channels with memory depth of 125M samps for each channel.

I verified that I could play 4 channels at 125 MS/s from the UHD 4.0 Replay
block on the N310. I believe that I also verified 2 channels at 200 MS/s on
the X310, but I don't remember for certain.

Rob

On Tue, Oct 6, 2020 at 7:00 AM Emil Bjelski via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi All,
>
> I am investigating the option to stream samples from RFNOC_REPLAY block to
> two UBX-160 MHz cards with full speed (i.e. 200 Msps for each board).
> I would also like to support timing control for both of these two
> transmissions.
>
> I am planning to use new RFNOC architecture and UHD 4.0.
> However, before diving deeper I would like to hear from you if this is
> possible to be done in straightforward manner with the newest RFNOC
> developments.
>
> I see from the previous posts
> (
> http://ettus.80997.x6.nabble.com/USRP-users-transmitting-on-two-channels-with-replay-block-td13915.html
> ).
> That with older RFNOC design and UHD 3.xxx streaming from RFNOC was
> limited to a single UBX radio.
> Meaning that an FPGA image with 2 Replay blocks was needed in order to
> stream samples to two UBXs radios.
>
> What would be the easiest way to proceed with new UHD 4.0?
>
> Thanks in advance on the answers,
>
> Emil
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009f083f05b100bd98
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Emil,<div>With UHD 4.0, this works.=C2=A0 And, the late=
st FPGA images from Ettus include the Replay block on the X310 (in the past=
, this was just for the N310) so you don&#39;t even have to build your own =
image. And, the latest FPGA images provide access to the full 1GB ram such =
that you could store arb waveforms for 2 channels with memory depth of 125M=
 samps for each channel.=C2=A0=C2=A0</div><div><br></div><div>I verified th=
at I could play 4 channels at 125 MS/s from the UHD 4.0 Replay block on the=
 N310. I believe that I also verified 2 channels at 200 MS/s on the X310, b=
ut I don&#39;t remember for certain.</div><div><br></div><div>Rob</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
ue, Oct 6, 2020 at 7:00 AM Emil Bjelski via USRP-users &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=
 All,<div><br></div><div>I am investigating the option to stream samples fr=
om RFNOC_REPLAY block to two UBX-160 MHz cards with full speed (i.e. 200 Ms=
ps for each board).</div><div>I would also like to support timing control f=
or both of these two transmissions.=C2=A0</div><div><br></div><div>I am pla=
nning to use new RFNOC architecture=C2=A0and UHD 4.0.</div><div>However, be=
fore diving deeper I would like to hear from you if this is possible to be =
done in straightforward=C2=A0manner with the newest RFNOC developments.=C2=
=A0</div><div><br></div><div>I see from the previous posts=C2=A0</div><div>=
(<a href=3D"http://ettus.80997.x6.nabble.com/USRP-users-transmitting-on-two=
-channels-with-replay-block-td13915.html" target=3D"_blank">http://ettus.80=
997.x6.nabble.com/USRP-users-transmitting-on-two-channels-with-replay-block=
-td13915.html</a>).</div><div>That with older RFNOC design and UHD 3.xxx st=
reaming from RFNOC was limited to a single UBX radio.=C2=A0</div><div>Meani=
ng that an FPGA image with 2 Replay blocks was needed in order to stream sa=
mples to two UBXs radios.</div><div><br></div><div>What would be the easies=
t way to proceed with new UHD 4.0?</div><div><br></div><div>Thanks in advan=
ce on the answers,</div><div><br></div><div>Emil</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000009f083f05b100bd98--


--===============8068548734264159606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8068548734264159606==--

