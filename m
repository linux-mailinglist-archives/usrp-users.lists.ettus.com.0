Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF318787103
	for <lists+usrp-users@lfdr.de>; Thu, 24 Aug 2023 16:03:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EF314384157
	for <lists+usrp-users@lfdr.de>; Thu, 24 Aug 2023 10:03:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692885830; bh=lWmbrIYjuX81ur/5ltAEI7v522LSBc5tXfChyAuorjA=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=iPt5uEoFdBo/f8k1vfOPy21SDp2VwGJTBX93yU5oWOkYGZ+7MbH9d2sJluydHtGKQ
	 foraZhxgO/AX5+WHeAY/MeLzqIInWcM5tDKBl6preymLnj5BYJypTSEP3z110PpX1N
	 SfHsHdtpKe1YanM02IptLC9hwwAStESGDybACFRqtmLpGJ99pq7gYt7xuMNR8Z6qyn
	 xIQWB6lH5tOFb9+FUc1zYMpYhWXEZ2jmf9v7QdasK4HzuuPOy3QR8FKJLa56GsdUwQ
	 BOx8T+fnE3bpZNRwsRUss6wo7hYlxBiw/gpMZPoxyaIYJVk6NFyYJhagW1/PYBiu04
	 SS0PWYAquSJAg==
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 2C1EF384554
	for <usrp-users@lists.ettus.com>; Thu, 24 Aug 2023 10:03:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ZnqZZRF5";
	dkim-atps=neutral
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-4ff9abf18f9so10475793e87.2
        for <usrp-users@lists.ettus.com>; Thu, 24 Aug 2023 07:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1692885798; x=1693490598;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wI8C7YesLpHzhJqhBIg9f+Uum+ck/ssDc/B/sU9GJuI=;
        b=ZnqZZRF5Lk3hzHU3AN+rgaj6LJ74BqCbyS78aR8mKj3hXyRLVxfhgetDeCQJNCYCkO
         UX6DNU/2zhNS8fPMbgdetw/U1mLR8UASVJbn/WhPFqQmKF800bWxz8+TTy/iIlct30jG
         cscmwt7+Jqt8yWbimUr/+NbBdg8omGEvCfjhBof9shgRaNlc26BM41WYufWmEYxWLR1H
         YRu++uKuV7Enl9aQNIC/euBLVOlOBdG2UeliUPTXiEU6HKbXeMGs/r1Pp+qVYqs9pKTE
         U21w+ws7YhZJhwsyXtlO5w8PuXng3VT2MHBye7ooBjh4WwkaDb0x8MNqhyPD2IUwHhVX
         w0fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692885798; x=1693490598;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wI8C7YesLpHzhJqhBIg9f+Uum+ck/ssDc/B/sU9GJuI=;
        b=bO6p0VG0wpAjNKyzuxILJ+AEkGi0VgFd+ZWVWoykWh/YJPmFzXIR92mbQOqGCQjZmD
         V6LmjUFArdwWJ2tvew7O5nfmyGEHIoBHGtBPlp25Ap4svC9NRekPoONnVL3ljMIZkDPS
         kSnfWSrh1Qre/fk69ByiXFa1VghqQ5hxZ/YAkkRf41AcEfnhKWSNu8T8qFHfdbs2gAUh
         G8K1f+NjqNYDse8IKMRsvC8pupoZ36tcQVg/OUcKg4kR9KgOchA8jA5p3KP4oQqixVcq
         QiUh22bTsVH/xd/rLLodUiIqBjyBpKHJt7PBF4L3UhFL+cFNkiNFzhX89CbXCcmygGBK
         1GoA==
X-Gm-Message-State: AOJu0YzdKWAoR8tIlJM81ScA0KMFXkhv2Pp4imZF0jWbcPBY8d+mYOff
	aF+yXqh9qVhyeu+hUpA5A9Yt/VOr/D5Uc4ex+B1Amw==
X-Google-Smtp-Source: AGHT+IH6BUKrPanolBYUWICmMM1/XBO+wpyPYJN8jKraoOkvfffPX+Nh0VLhp33SqcY5GqhrqMMuq+sO2vACWwDod/8=
X-Received: by 2002:a05:6512:108d:b0:4ff:9095:a817 with SMTP id
 j13-20020a056512108d00b004ff9095a817mr15250420lfg.57.1692885797514; Thu, 24
 Aug 2023 07:03:17 -0700 (PDT)
MIME-Version: 1.0
References: <wdwzw97mfsKNjlOcBAPJ46kt5loLifQ6uew2bmDCE@lists.ettus.com>
In-Reply-To: <wdwzw97mfsKNjlOcBAPJ46kt5loLifQ6uew2bmDCE@lists.ettus.com>
Date: Thu, 24 Aug 2023 10:03:05 -0400
Message-ID: <CAB__hTSq3Yr6TZrwy5xLLdRtfpvpx+hrpmOuYc4UvdnLtkszdQ@mail.gmail.com>
To: h57jafari@gmail.com
Message-ID-Hash: 532HHWLV7FEM24RX22IU347LT3EF5F2U
X-Message-ID-Hash: 532HHWLV7FEM24RX22IU347LT3EF5F2U
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: VCO can not operate for high sample rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/532HHWLV7FEM24RX22IU347LT3EF5F2U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0397179970839024352=="

--===============0397179970839024352==
Content-Type: multipart/alternative; boundary="0000000000009bc06d0603abb03b"

--0000000000009bc06d0603abb03b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think that you could implement this transmit waveform in a custom RFNoC
block such that you would never have any issue with underruns.  Although I
don't use gnuradio myself, I believe that you could control your block
easily from gnuradio.  And, although this requires some FPGA programming,
this would likely be a straightforward FPGA implementation.
Rob

On Wed, Aug 9, 2023 at 11:54=E2=80=AFPM <h57jafari@gmail.com> wrote:

> Hi,
>
> TX/RX benchmark works well even up to 245.76MHz of sample rate with my
> USRPX410 (on 10GbE link).
>
> While USRPX410 receiver channel handle high sample rates even far more
> than 100Msps (245.76MHz), I am not able to transmit high sample rate
> triangular FMCW waveform with USRPX410 in GNU Radio (by employing VCO to
> generate chirp signal). It seems VCO (and VCO complex) are not able to
> generate FMCW signal in high sample rate more than 50Msps, and It issue
> several underrun errors. Is there any solution to overcome it.
>
> Or without using VCO, what are the other solutions to transmit triangular
> FMCW waveform through GNU Radio and USRPX410? Thank you.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009bc06d0603abb03b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think that you could implement this transmit waveform in=
 a custom RFNoC block such that you would never have any issue with underru=
ns.=C2=A0 Although I don&#39;t use gnuradio myself, I believe that you coul=
d control your block easily from gnuradio.=C2=A0 And, although this require=
s some FPGA programming, this would likely be a straightforward FPGA implem=
entation.<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Wed, Aug 9, 2023 at 11:54=E2=80=AFPM &lt;<a href=
=3D"mailto:h57jafari@gmail.com">h57jafari@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi,</p><p>TX/RX bench=
mark works well even up to 245.76MHz of sample rate with my USRPX410 (on 10=
GbE link). </p><p>While USRPX410 receiver channel handle high sample rates =
even far more than 100Msps (245.76MHz), I am not able to transmit high samp=
le rate triangular FMCW waveform with USRPX410 in GNU Radio (by employing V=
CO to generate chirp signal). It seems VCO (and VCO complex) are not able t=
o generate FMCW signal in high sample rate more than 50Msps, and It issue s=
everal underrun errors. Is there any solution to overcome it.</p><p>Or with=
out using VCO, what are the other solutions to transmit triangular FMCW wav=
eform through GNU Radio and USRPX410? Thank you.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009bc06d0603abb03b--

--===============0397179970839024352==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0397179970839024352==--
