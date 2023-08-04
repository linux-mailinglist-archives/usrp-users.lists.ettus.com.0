Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 995C37702F9
	for <lists+usrp-users@lfdr.de>; Fri,  4 Aug 2023 16:28:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2666B384C03
	for <lists+usrp-users@lfdr.de>; Fri,  4 Aug 2023 10:28:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691159290; bh=nesMFdFqWiC525T17EUPOAEvxYmxC/RaSLLAPJCIHJU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=U0Tdx2ijfIJEbeKOWq+LqwE0VIc/wM1r21r3vOQKVtLvC0r8zDzO073wuHJGYjrme
	 +TWe6l6MDQ1ODqp7x5J8VCsSYhsTMO7KXMRIXDVMRkAz/GLtMfzhIsg/G/snqFsdHw
	 SemQfeBgNFbVwFGaeKPF7nBfh3XRZC0jAGgLDsaBMvwA6tx63HO1HJBYoYsLVdLEur
	 d5kZ8mlxKbduTIXimEmbZhwwQJlCVtnCz4HdZrQPx9BX4yqmfXKmkZw7BtPc41mF5w
	 Lw/Tni8Pn/PTBpPFH9wUyYmpChWqWlu7UPrG0qI0hdeOPDapoInJ/R3UMAvI7vRbWL
	 nZW2jH+nminWw==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 7F9C338456F
	for <usrp-users@lists.ettus.com>; Fri,  4 Aug 2023 10:27:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XHZUJOtT";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-522bc9556f5so2893167a12.0
        for <usrp-users@lists.ettus.com>; Fri, 04 Aug 2023 07:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691159252; x=1691764052;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7QBDu673zGvsWkOKkwQnIFIamlV1s6Uso39uEpJE8Tc=;
        b=XHZUJOtTapUGSBeVm6hxuNROtFvjAqPzln/hnWeErG0v9/kpOAHjJ5f4s77ZDQfwz6
         pr/49uQIGGfW9r6tvKP5Sh0+GbzipBdxuEaYieiHeexso1a4ypBHiz51r8i2MkbJ6cQe
         GnpiAEPc6JOCrHc2yQQ/mZ97XOHTyBGuJarLZUqE/ATsMUWG8KVL8zNhaBGOvGHbePd6
         SzzDaMZh75CJhZWy9UvQwAAWdkmMTcg5KbIVtLQdYihgbrKfnOoWhCVIEd46b0GyvNxf
         PCc8uRGYPPaqVpG+yPLXEt9ES/f6IjsgM9x0rXRyo1sGQszmoy3Vpw78xCHja09Hc46R
         ZQNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691159252; x=1691764052;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7QBDu673zGvsWkOKkwQnIFIamlV1s6Uso39uEpJE8Tc=;
        b=dSCl2afLcTmUEQa1v32tj0u3Q4gY60bKZ1wG9hQr881rXNdhjVVNvNcv81dwtySBJu
         W4lg+WGEe72QBL7jBYNgZF7DKy4dBm5+Bo6MvIrh8TnqXRjX7tgHij5TRjN3fUaoXWCb
         RvC4AaBwt3+T8bSw9nV76NkDRkDAdOZ1OWL+KGcvYXgNknCtxfKrFCZbeGuFDxxGRQc4
         KuxA9iYXYLhjzh/yKYj+c40NmzRzDpsAC8+BMP48vbckt8iwlL2GnCRyP06v2EnBfIDC
         oeTB3i1d85wiHoC/G/Uq+BsL2OJq7LIiYposJ2T72HZMD/XqrbnI+jWacpOnscV0iebO
         uAxQ==
X-Gm-Message-State: AOJu0YzFlUajgeS7v33bZE90xWSw8LgIfjJlU6Xpi1SPrqpoPYlsG05Y
	oaDX1m645rOsKgfUtD08nVpKvh4WTP7BAiJY/liy60qM
X-Google-Smtp-Source: AGHT+IHOBHAOy7mxWBcHUm9+dPeM5HUpnnHInbjEuDsUZXOPgqSTXhTiOKLQ9LgQxnVTHDadDpFGOockE4KW1NaLDnQ=
X-Received: by 2002:a05:6402:28a:b0:522:455d:6f6f with SMTP id
 l10-20020a056402028a00b00522455d6f6fmr1828580edv.34.1691159252021; Fri, 04
 Aug 2023 07:27:32 -0700 (PDT)
MIME-Version: 1.0
References: <tvI3kQ93WrU3mbpxrcoV8o8uSpkKuYLxfg3x1uY@lists.ettus.com>
In-Reply-To: <tvI3kQ93WrU3mbpxrcoV8o8uSpkKuYLxfg3x1uY@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 4 Aug 2023 10:27:21 -0400
Message-ID: <CAEXYVK7iTSsAGjnMsnKZ91hAmKejq8f_mFEc2tNC5dLxPt0i+A@mail.gmail.com>
To: patrice.pajusco@imt-atlantique.fr
Message-ID-Hash: YSLLOAY4S3H2C3HMLYOINSLMQZGUF634
X-Message-ID-Hash: YSLLOAY4S3H2C3HMLYOINSLMQZGUF634
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to have 10MHz on REF OUT with a master clock of 184.32 MHz
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YSLLOAY4S3H2C3HMLYOINSLMQZGUF634/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4104963099036250550=="

--===============4104963099036250550==
Content-Type: multipart/alternative; boundary="00000000000079b440060219b264"

--00000000000079b440060219b264
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 4, 2023 at 3:52=E2=80=AFAM <patrice.pajusco@imt-atlantique.fr> =
wrote:

> Dear all,
>
> I plan to use 2 USPRs to analyze LTE signal. One will use a GPSDO to have
> a good clock and time reference. To have synchronization between them, th=
e
> second one will be set on external synchronization (ref out -> ref in, fo=
r
> 10 MHz and PPS). A Master clock of 184 is recommended for LTE. According =
to
> previous answers of this post, this configuration is impossible. If the
> second USRP can be locked on 9.96 MHz, the received frequency will be
> wrong. In practice (We have just tried), the synchronization fails =E2=80=
=9CError:
> RuntimeError: Reference Clock PLL failed to lock to external source=E2=80=
=9D. Any
> idea of a backup plan ?
>

If you're just doing analysis on a commodity computer, then just make sure
your subcarrier spacing is set to 15 kHz with an appropriate sized FFT.
FFTW can do arbitrary sized FFTs, so I'd set everything to 200 Msps and get
down to a reasonable level in the FPGA using the DDC.  Then on the host,
I'd resample to whatever an integer multiple of that sample rate was that
gave me a good FFT size.

For example, 200 Msps -> 50 Msps (FPGA DDC) -> 3/5 Resampling on host -> 30
Msps -> FFT @ 2000 -> 15 kHz subcarriers.

If you actually need 30.72 Msps or 61.44 Msps, then resample either in the
FPGA (RFNoC block) or on the host.

If you want to get into the PLL on the device, then you can see if you can
program the reference input of the LMK04816 to accept a clock that isn't 10
MHz and is something else.

Lots of options, but they all require some work on your part.

Brian

--00000000000079b440060219b264
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Aug 4, 2023 at 3:52=E2=80=AFAM &l=
t;<a href=3D"mailto:patrice.pajusco@imt-atlantique.fr">patrice.pajusco@imt-=
atlantique.fr</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><p>Dear all,</p><p>I plan to use 2 =
USPRs to analyze LTE signal. One will use a GPSDO to have a good clock and =
time reference. To have synchronization between them, the second one will b=
e set on external synchronization (ref out -&gt; ref in, for 10 MHz and PPS=
). A Master clock of 184 is recommended for LTE. According to previous answ=
ers of this post, this configuration is impossible. If the second USRP can =
be locked on 9.96 MHz, the received frequency will be wrong. In practice (W=
e have just tried), the synchronization fails =E2=80=9CError: RuntimeError:=
 Reference Clock PLL failed to lock to external source=E2=80=9D. Any idea o=
f a backup plan ?</p></blockquote><div><br></div><div>If you&#39;re just do=
ing analysis on a commodity computer, then just make sure your subcarrier s=
pacing is set to 15 kHz with an appropriate sized FFT.=C2=A0 FFTW can do ar=
bitrary sized FFTs, so I&#39;d set everything to 200 Msps and get down to a=
 reasonable level in the FPGA using the DDC.=C2=A0 Then on the host, I&#39;=
d resample to whatever an integer multiple of that sample rate was that gav=
e me a good FFT size.</div><div><br></div><div>For example, 200 Msps -&gt; =
50 Msps (FPGA DDC) -&gt; 3/5 Resampling on host -&gt; 30 Msps -&gt; FFT=C2=
=A0@ 2000 -&gt; 15 kHz subcarriers.</div><div><br></div><div>If you actuall=
y need 30.72 Msps or 61.44 Msps, then resample either in the FPGA (RFNoC bl=
ock) or on the host.</div><div><br></div><div>If you want to get into the P=
LL on the device, then you can see if you can program the reference input o=
f the LMK04816 to accept a clock that isn&#39;t 10 MHz and is something els=
e.</div><div><br></div><div>Lots of options, but they all require some work=
 on your part.</div><div><br></div><div>Brian</div></div></div>

--00000000000079b440060219b264--

--===============4104963099036250550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4104963099036250550==--
