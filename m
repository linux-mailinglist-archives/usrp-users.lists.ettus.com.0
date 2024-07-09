Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A38A92BB58
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jul 2024 15:33:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6BFCF3859AA
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jul 2024 09:33:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1720532037; bh=m9uKci5dgK4O4EHREjqJBl3tfxmsj01gJKQwBpFl/3M=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=j1dWot4Y30M7wmYXtSUlef7jf6mtb8wcIOoe0uZC4SpO4Bo8Ecv4EqNMEPNB8kIJ3
	 74lHLsMh7zsNq1r6acuo4MdKQGQ5N6wlSKandR5z5k2kLRuhhg+U4WhWOMkLwICPeb
	 Zou3aXUaVXhcnQ0UwkRCTn7MVR1LunuGBH0GO/NyKyp+vTloLjRomaRFESpzHsWeIn
	 EvVWqF66JGNRr8AoZiNiwNhT/Dk9rA4BWc1ngcVrq/6wVjmghKrzXPMZ7xsqEOytmJ
	 +/K+mNU2UZucUkOURTq/ZxI4OvzoCJpq9xXtROcZ8kmzP/sYydV1FitW+x/7SeCh12
	 4BFeLE8FWKogA==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 317F1384B27
	for <usrp-users@lists.ettus.com>; Tue,  9 Jul 2024 09:33:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="pfJzr4aO";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a77c4309fc8so557255266b.3
        for <usrp-users@lists.ettus.com>; Tue, 09 Jul 2024 06:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1720531979; x=1721136779; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QzQzBn+xG/FA1lNAbD0jrPvaBEAz2eFNYxewSM6cx4g=;
        b=pfJzr4aOWm5p1N0YOFb5JXEBGWaOkWNY2TTStEwnwFq2t1qH3HCLL2aXbangDNBs4s
         7pJWDUTXL5gpJtehPBmzOC6OCH627Yy3x3JLnimBRIjpMKHMik4+eDDgCCbfrfDm7MYa
         J9pH86Ea6fXOml/74wbBgRFyJXUk9BoyzmLb3oOU2VZ5WijafWUSZkw8A4cDyHOYLomX
         2fFI9yQY+jXGY5y5/CO1eQiQ46LLhK+OLuOwePw6CIoafZ7EMauNoLER0Qy/JZkxrk8d
         oN3fNNrPZ1qsiG6MnG6aljbv6MCHlwDk4VOXdGgAgUOJ5h+h0+YZPx5VBgGi4Zc26w7T
         a+ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720531979; x=1721136779;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QzQzBn+xG/FA1lNAbD0jrPvaBEAz2eFNYxewSM6cx4g=;
        b=ZSdXDqNtq4uTni5mxDY5hpC4O/37i6LKOy6zte2WbqiNivXHfs4gcgQRQgNYhWUkEh
         +zCq+xSjBLx7UR6h1LsdhsuxogT4GjCY/RlrQ9mUzkGlk/Gbv3L7pH69z3wq2xOiwVf3
         cnVDwtPaWq5bXmHyx+H84WuPEIEw69EbW+9/UBbG7OGl2z92TT/RHLOsqLp9kBDCtdby
         E2xIkEHllJxAvwc4N/P3cz8h9/Jr5LU3vhFhV5pnflmCvqBrHAG97HbNW7hnFW+0B7o9
         Iiq/rfLH9rRYCPhFzJQphPEI1Q3Ai5MLc9cJ+reqpwgNi/uxhXyne1pN0K/tJzTNuBJk
         CPLA==
X-Gm-Message-State: AOJu0Yw0DauUuk+lGuQCCBwWOP/sm+BkjjsTNclDCOKWuRqkW4Xh+aKI
	e5bYZZPJcnz1Ep0XEQ9p/ML6K78n2jpQDaB6Iy+umCfDw45qG+TmNqmFhYB9dKPZxieaA/z5+8p
	NiTvZPvhCWHStun5PB62OMKy0tEq5dmFvXih5FKKKguHIOVCHf6tjFZzh
X-Google-Smtp-Source: AGHT+IHQ3apYHjmVy6BCza1b9kTUEYIstf9GTlCZlMHcvsuxqIQVSxkF89Ew0vX6wyUWB9zozCpb/OOJsIUAr3FE6ek=
X-Received: by 2002:a17:907:2dab:b0:a77:d481:d69f with SMTP id
 a640c23a62f3a-a780b89e7cemr191026466b.70.1720531978804; Tue, 09 Jul 2024
 06:32:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAOkUcStADVm4oQMBjYHf34hjBGaToPiJudURAC1ngjOFbiYVRQ@mail.gmail.com>
In-Reply-To: <CAOkUcStADVm4oQMBjYHf34hjBGaToPiJudURAC1ngjOFbiYVRQ@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 9 Jul 2024 15:32:47 +0200
Message-ID: <CAFOi1A66C6=T5bvsOq4V_ATem9Y_L-qhGOz+NXQRTXaM2X-7RQ@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: GEBMRHLVH5FLKADIARFSGQJKB7DB65PS
X-Message-ID-Hash: GEBMRHLVH5FLKADIARFSGQJKB7DB65PS
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building custom NOC block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GEBMRHLVH5FLKADIARFSGQJKB7DB65PS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6201409391673963432=="

--===============6201409391673963432==
Content-Type: multipart/alternative; boundary="0000000000006bfd46061cd091a9"

--0000000000006bfd46061cd091a9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi marino,

can you please share some details about how you installed UHD, and what
kind of system you have? If you run python3 -c "from uhd.imgbuilder import
grc", does that work? Is grc.py in
/usr/local/lib/python3/dist-packages/uhd/imgbuilder/ ?

We've done most of the testing on Ubuntu, but we also didn't change the way
things get installed. Maybe there are some residual files from the 4.0
installation?

--M

On Tue, Jul 9, 2024 at 12:47=E2=80=AFPM cyberphox <cyberphox@gmail.com> wro=
te:

> Hi All,
>
> I have recently taken the plunge and updated from UHD 4.0 to UHD 4.7 and
> have encountered an error when trying to build the FPGA with a custom NOC
> block. This is what I get right after issuing the build command:
>
> Traceback (most recent call last):
>   File "/usr/local/bin/rfnoc_image_builder", line 58, in <module>
>     from uhd.imgbuilder import grc
> ImportError: cannot import name 'grc' from 'uhd.imgbuilder'
> (/usr/local/lib/python3/dist-packages/uhd/imgbuilder/__init__.py)
>
> Thanks
> marino
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006bfd46061cd091a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi marino,</div><div><br></div><div>can you please sh=
are some details about how you installed UHD, and what kind of system you h=
ave? If you run python3 -c &quot;from uhd.imgbuilder import grc&quot;, does=
 that work? Is grc.py in /usr/local/lib/python3/dist-packages/uhd/imgbuilde=
r/ ?</div><div><br></div><div>We&#39;ve done most of the testing on Ubuntu,=
 but we also didn&#39;t change the way things get installed. Maybe there ar=
e some residual files from the 4.0 installation?</div><div><br></div><div>-=
-M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Tue, Jul 9, 2024 at 12:47=E2=80=AFPM cyberphox &lt;<a href=
=3D"mailto:cyberphox@gmail.com">cyberphox@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi=
 All,</div><div><br></div><div>I have recently taken the plunge and updated=
 from UHD 4.0 to UHD 4.7 and have encountered=C2=A0an error when trying to =
build the FPGA with a custom NOC block. This is what I get right after issu=
ing the build command:</div><div><br></div>Traceback (most recent call last=
):<br>=C2=A0 File &quot;/usr/local/bin/rfnoc_image_builder&quot;, line 58, =
in &lt;module&gt;<br>=C2=A0 =C2=A0 from uhd.imgbuilder import grc<br>Import=
Error: cannot import name &#39;grc&#39; from &#39;uhd.imgbuilder&#39; (/usr=
/local/lib/python3/dist-packages/uhd/imgbuilder/__init__.py)<br><div><br></=
div><div>Thanks</div><div>marino</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006bfd46061cd091a9--

--===============6201409391673963432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6201409391673963432==--
