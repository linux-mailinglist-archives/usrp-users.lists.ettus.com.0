Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 896C4B10724
	for <lists+usrp-users@lfdr.de>; Thu, 24 Jul 2025 11:58:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4AA8A3858E6
	for <lists+usrp-users@lfdr.de>; Thu, 24 Jul 2025 05:58:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753351123; bh=eZhvOR7VShy4oVshBZabjz4hPotylCll/gvkuKr9n9Y=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=BSPsTG6UN/RkR0ENyvgB12tzq6RjzNWFLca03OwwVmesNB4uagdALbKDovNaQ/d/A
	 2lh9zAm0l8acmAmH7FxIc940SVIZ7Vf7eWLiObaLf0/fYw3k3xorDBsLrvPpfWyHKz
	 7cyKQDJwg85ZIGOByIkFsBIPAKMSoBO1ERZII88gNW0RjacE9yT3iIde5hN5vXsw9W
	 DuqrL7UmzYnTc7C5d6Fr7kLAcBO0/fRMEN77OVhSc0GUwnt9NHgABnGmOCtQqBubTB
	 HE+RPf7Zfkk5/Fh+H4b6vjA5Hnwae8ieSSqEzCGysJH5keOchetqnyEjEx/FwqmxBB
	 SXytfC2Kg/+rg==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id B0A483855C8
	for <usrp-users@lists.ettus.com>; Thu, 24 Jul 2025 05:57:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="Zq/ooSS+";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-6077dea37easo1516722a12.3
        for <usrp-users@lists.ettus.com>; Thu, 24 Jul 2025 02:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1753351068; x=1753955868; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZZBomNpCJL5+4r4CyS8Y0JMM0n2u+bXFOzxpPMYLRtA=;
        b=Zq/ooSS+wSfobqMruaRgiSGQruH+SmASZOh6vyfGAp/RP7idrnN32NC/s86eNIlrjY
         A/6t6SFxdRCd/OpdAmrcGvjSMXjNEGwXpydZ4n24DLZLVpNKXBX3iqaNe0bfwlxl067p
         14Uq7Cg14PY6DcTv4IM6vcc9gimTrTLyt1K/WhgQ6t37QtvfFs2BINtarp4Vqzk0g6uj
         ihSb3yDqt0oQLqtA/IV1HPA9VLoXF5u2g8mMPCeKoXWgNI+N/p3HYGRtolGEeiCZ4cY5
         godPrL54tetuNPVCbiHEsuqq8Ng5IRWhSpVpUY7pqvdByLfArSwGUKc2ZT7QdKND0jjI
         34hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753351068; x=1753955868;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZZBomNpCJL5+4r4CyS8Y0JMM0n2u+bXFOzxpPMYLRtA=;
        b=GEyL9bHFjy+lDrBP3W7n0Rwyoph/COJyNgtF2nibiBBUDTYzyd5CTOnj+J57JJh4eR
         BUOGYchfTa3g0y0cmM0xQlKtw+ovErcX4Ltnff/3aVQpbnKzSsmPYTjSUUvH6+R9XTyf
         +KaRl/kvlG6fGHbuQ7ByYbYn0CDC0uV/ttHH8cppZmKzzBEwln8wfGERtt8lYriNECsF
         hrKhIMWrtKJOS5D/UxFHfIG6VPpEzp3brqOni+RxBhV7f2sqiZ0t7M1YLDu/RhECyZMN
         cD2HGPVFWuFvBqbet04/3kmjt4w0ocAB91k0keXJCcal9oVkodZBEV1FSV61cR2+3Vda
         X4mQ==
X-Gm-Message-State: AOJu0YxBYMYXCE++JZuBVOCuoVUvQU8U7wTh/FDjUhVAp5h3mPj8aTs1
	J5HN4A6gYC33JV8lJRMSb19bPKy3BE+xRARKDajNICAMIIiC1DiUblmvKtZQQGtiXYteRxnZzNE
	1cbZhoSb+oGXYdnhgw9U1ypDqmWXcTDoSVQ4CYV0QQItqQk4ky2qUT5k=
X-Gm-Gg: ASbGncsbV7CT/XUx94utMdbxbx28DD8sFoaVTexDBx5aQK5ePxI+KZyclyWFHWE3nrV
	KPuhEVeRQ+hMMuhZtfYjGLdSisuTlYnU7eXgyojmaOQ4EBwEbG2nP87bhnTVCPB58mhWwLzODly
	SJ7xfVYBw/G+ZzAk9qB+7kGFQId21a34wR4xIhyUxKtVVh8Z4kVKt52GGN7p+3FFIDkd0sJxfVx
	5cZc7iX40MOO7i9rv7/DW5dGEqJXVd+sQ8Rtc5Jyjm3IG6biQ==
X-Google-Smtp-Source: AGHT+IHI+i+Rt8WpFGOOvN/MxJGjChJGv/ahDvanDkSsWE+Ied8f0vOsbUu36ZNAUSKCUB2Li1QSIjyzAQQ/GLNPLwc=
X-Received: by 2002:a17:906:fe41:b0:ae3:a717:e90c with SMTP id
 a640c23a62f3a-af2f6f581e8mr666546966b.23.1753351068169; Thu, 24 Jul 2025
 02:57:48 -0700 (PDT)
MIME-Version: 1.0
References: <3JSjwAKJn0iIQ7e6LC065e1DOIEjmVGgnUQqG94qg@lists.ettus.com>
In-Reply-To: <3JSjwAKJn0iIQ7e6LC065e1DOIEjmVGgnUQqG94qg@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 24 Jul 2025 11:57:37 +0200
X-Gm-Features: Ac12FXxgflzSVEr5CNro8NF7TVX9r6zC3zin-LT5eCYRdgtrLR1SfMPQENte6SY
Message-ID: <CAFOi1A6-3w_eEP15WV8jEhxsz9q8or06QZG5BxEaC5FGzP6=Wg@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: NQ2I2RFBICEBBEHSWOPY72RG53YSLZXW
X-Message-ID-Hash: NQ2I2RFBICEBBEHSWOPY72RG53YSLZXW
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Power calibration USRP B210 UHD Python API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NQ2I2RFBICEBBEHSWOPY72RG53YSLZXW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2605406855990861956=="

--===============2605406855990861956==
Content-Type: multipart/alternative; boundary="00000000000095ce87063aa9db2c"

--00000000000095ce87063aa9db2c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Dennis,

we recently had an issue here (by another Belgian USRP user, nonetheless!)
where the files were not being loaded, and it was due to the environment
variable XDG_DATA_HOME being set.

To check, there's two things you can do:

- Call uhd.get_cal_data_path(). If it matches the path you expect, then UHD
will look for cal files in here.
- Call has_tx_power_reference() on your multi_usrp object. It will return
true if cal data was loaded.

If you like, you can go low-level and query
uhd.usrp.cal.database.read_cal_data() and see if it loads the right data...
but that's pretty advanced, and I'll let you read the manual for that if
you want to do that.

--M

On Wed, Jul 23, 2025 at 7:43=E2=80=AFPM <dennis.joosens@uantwerpen.be> wrot=
e:

> Hi,
>
> I am working on power calibration of the USRP B210 SDR specifically on th=
e
> RX side.
>
> The power calibration worked, I managed to generate four .cal files:
>
> b2xx_pwr_rx_tx+rx_316E278#A.cal
>
> b2xx_pwr_rx_tx+rx_316E278#B.cal
>
> b2xx_pwr_rx_rx2_316E278#A.cal
>
> b2xx_pwr_rx_rx2_316E278#B.cal
>
> and I can find them in the default directory ~/.local/share/uhd/cal
>
> Now I am trying to load these .cal files using the UHD Python API. I can
> check if these files exist and read their contents.
>
> But I am wondering, can I assume that the UHD loads the .cal files when a
> USRP stream is opened by default from this default folder? I can not seem
> to find any function or output from API functions that can give me a
> definite answer on that or even gives the possibility to check this.
>
> If this is not the case. How is this handled by default? This seems a big
> mystery in the documentation.
>
> Thanks,
>
> Dennis
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000095ce87063aa9db2c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Dennis,</div><div><br></div><div>we recently had =
an issue here (by another Belgian USRP user, nonetheless!) where the files =
were not being loaded, and it was due to the environment variable XDG_DATA_=
HOME being set.</div><div><br></div><div>To check, there&#39;s two things y=
ou can do:</div><div><br></div><div>- Call uhd.get_cal_data_path(). If it m=
atches the path you expect, then UHD will look for cal files in here.</div>=
<div>- Call has_tx_power_reference() on your multi_usrp object. It will ret=
urn true if cal data was loaded.</div><div><br></div><div>If you like, you =
can go low-level and query uhd.usrp.cal.database.read_cal_data() and see if=
 it loads the right data... but that&#39;s pretty advanced, and I&#39;ll le=
t you read the manual for that if you want to do that.</div><div><br></div>=
<div>--M</div></div><br><div class=3D"gmail_quote gmail_quote_container"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 23, 2025 at 7:43=E2=80=AFPM=
 &lt;<a href=3D"mailto:dennis.joosens@uantwerpen.be">dennis.joosens@uantwer=
pen.be</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><p>Hi,</p><p>I am working on power calibration of the USRP B210 SDR s=
pecifically on the RX side.</p><p> </p><p>The power calibration worked, I m=
anaged to generate four .cal files:</p><p>b2xx_pwr_rx_tx+rx_316E278#A.cal</=
p><p>b2xx_pwr_rx_tx+rx_316E278#B.cal</p><p>b2xx_pwr_rx_rx2_316E278#A.cal  <=
/p><p>b2xx_pwr_rx_rx2_316E278#B.cal  </p><p>and I can find them in the defa=
ult directory ~/.local/share/uhd/cal</p><p>Now I am trying to load these .c=
al files using the UHD Python API. I can check if these files exist and rea=
d their contents.</p><p>But I am wondering, can I assume that the UHD loads=
 the .cal files when a USRP stream is opened by default from this default f=
older? I can not seem to find any function or output from API functions tha=
t can give me a definite answer on that or even gives the possibility to ch=
eck this.</p><p>If this is not the case. How is this handled by default? Th=
is seems a big mystery in the documentation.</p><p>Thanks,</p><p>Dennis</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000095ce87063aa9db2c--

--===============2605406855990861956==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2605406855990861956==--
