Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA2EABFDB2
	for <lists+usrp-users@lfdr.de>; Wed, 21 May 2025 22:09:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 23553385597
	for <lists+usrp-users@lfdr.de>; Wed, 21 May 2025 16:09:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747858177; bh=SfY7CqwgTsPQV4gHQI8126O3tSGjPU/t9zRPNIwBqB0=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=lXUWkNnJGZwxo+38J7vLj80EPsKmZwmmCsE9OPyYmusnagKq3YMeBJCWTVaGr3WYx
	 49jgGtfQ5HnoXMaxaU7D1k9oBwThnqHt2T84vXH2lc0sTfitBi5WklvJbzy0fZghsL
	 M6yOoO3wPJRnUUYrDh1L0tMSBiXGv+jbjO4v0+MnUXLtBNSC+SJVcgKb91rA4yAWWw
	 yUT+YWZXndX6hJknoQmJ0PoLkmdIU1mAmdftky+Gp95xSXju7sXnsfR3GoCWSLwEsT
	 0zI5SGEWxts+s+b4gkdiIgHR0VLAu/mDOzcHFCuHooVEb/mRtxDATmoBoBvCEzfEuo
	 3BoZ78GfqgBaQ==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E842381466
	for <usrp-users@lists.ettus.com>; Wed, 21 May 2025 16:08:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="OQGDAq7y";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-601a5747638so7740178a12.3
        for <usrp-users@lists.ettus.com>; Wed, 21 May 2025 13:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1747858122; x=1748462922; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KPQK65yxRUSJcigpIMtlLdnFIsIueLkcfzHIO98jdNg=;
        b=OQGDAq7y09S4HjpCz1eNJjA3oZULr4W1rcpaB9+w/2K4qM1AtX+/GeFMniMgmMGHVs
         XYIKevY30MkwaoOe1o7dGqjl92eJphnbCO+qNukHJtN2pHPWsNSUtUGa1SfqLs/GoEdh
         CEkTSCqPoesdgN3220s6JAQy01Nwh1peZ+SfiuDcZSTGID3Cn8+NhS+cg8UQRfeuNl/u
         fglSlZ6MQTkq/NV7DBjdf5YcPR6oI6rbh0ph7JlhrdIVflqrA9VoU3YPtOkWKtrXiUnW
         1SBmi1wxIbCF8XC3R0bYC+HCbCv83PIQ7dVQezrDtH1BEwC0VhzyPJi2q+paa5AOkhJh
         vKuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747858122; x=1748462922;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KPQK65yxRUSJcigpIMtlLdnFIsIueLkcfzHIO98jdNg=;
        b=cL5yK+bibijr5/oN1kwzwNVb5Hi+q+ca4eX70imrUGqAYFt+nJO9x6Qsr8eqbJf7/7
         iIPcgBx2Ua5dOGUEF13nAa7BZHcT8fzUmMk8x2Y91Uaz3B39WKz/q6MA14W+Gi+AkSwI
         vj1mYa54EM50+ONooor6jLw/CJ3NPyTiqsyjXtLXyeKLkbHjHDNQRXtvknDk0R5yEN8f
         ami+9W71KYqcZoKojK06cdoZ8bAZrOzcfE7seVuqLe5zlfLTPd/qfWQCoUqAO1t6ASgu
         r8hEryYQIp8nnmSWCAEhCHydDjqL98zo/qkIlsPSUwosHC2whRRrlHd7z/UkcmFtC7yX
         KFxg==
X-Gm-Message-State: AOJu0YwNY4AgYJ8uhdOb8RgsNoTjc8ZlfcHpOLrXo+PR0o3IxtbxhC1T
	wotLJwdqxi64+ggkWXEkZlXn8w/3Jizm57wKlbpnSRpjQX8DT2OkkWzWFYXZADN3NuW1D1lByqt
	z+DCra7ZOtFVRzksuc3/yE2Wrryd7Zj+s+VZevwJ5lHZ/N0fnAlI=
X-Gm-Gg: ASbGnctW+yZip5WYy3hACMR74Ey912sJhXmJnrqgqWJ5YQea2o4N/0QlLyekGpqjF+0
	jS9cjni6ESGJC8q91QTWMJjCb7OIt98+YD8sWnLzB0PfJZoCbPZHntfvL8AVqnZ1ba++0cNwDAv
	j8uqqKnDwCBw7VJS8PSEj0j6Q+xIeYoBW1
X-Google-Smtp-Source: AGHT+IF4LD0zhSYjEJpogQyADfSICKyj+OkzhBBaf/tlZL6k7MLvGLqfYI8gvnJ8kbV18nGr8cCdfsNnvEuWLCk8F64=
X-Received: by 2002:a05:6402:3102:b0:601:3f5b:39ee with SMTP id
 4fb4d7f45d1cf-6013f5b3f2amr16984604a12.3.1747858122267; Wed, 21 May 2025
 13:08:42 -0700 (PDT)
MIME-Version: 1.0
References: <pWHBwjrZjDYkwBoTvUU0t8j8Fs9Tgy5BcdTMQaUXXFg@lists.ettus.com>
In-Reply-To: <pWHBwjrZjDYkwBoTvUU0t8j8Fs9Tgy5BcdTMQaUXXFg@lists.ettus.com>
Date: Wed, 21 May 2025 16:08:31 -0400
X-Gm-Features: AX0GCFu7uxwQTlNaitueca2kL3zRm4kGjlIYDOFDzczZpQK7b-2NUr3lHhs8V2U
Message-ID: <CAB__hTQ0xryfRQVHpSh+zAc5gEwwOR66ZguxigPmjqZEX1-GoQ@mail.gmail.com>
To: carmixdev@gmail.com
Message-ID-Hash: 4W4LAB2SV2UKTV4GM2BB2P2OSH4RRB5J
X-Message-ID-Hash: 4W4LAB2SV2UKTV4GM2BB2P2OSH4RRB5J
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Signal quality using RFNoC DUC blocks
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4W4LAB2SV2UKTV4GM2BB2P2OSH4RRB5J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============0782032769794144521=="

--===============0782032769794144521==
Content-Type: multipart/alternative; boundary="0000000000007ef8510635aaeef2"

--0000000000007ef8510635aaeef2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think that some of the convenience mechanisms that you might see in the
examples (such as passing a tune request through the streamer) are likely
only helpful in a "typical" graph. In your graph with 4 DUC ports connected
to 1 Radio port with AddSub blocks to add the 4 DUC ports together, it is
not a 1-to-1 relationship between DUC and Radio.

It seems to me that your step 3 below is not needed or helpful.  It seems
you could set the LO frequency via the Radio block.  But, this will be
quantized and not necessarily at the exact frequency you request. Thus, if
it is important to get the right frequency, you will need to use the return
value from the radio->set_tx_frequency function to determine your
quantization error.  Then, you can call duc->set_freq for your DUC ports
with a frequency argument that includes both your desired values of -10,
-5, 5, 10 MHz as well as the quantization error you determined setting the
LO.
Rob

On Wed, May 21, 2025 at 10:45=E2=80=AFAM <carmixdev@gmail.com> wrote:

> Yes Martin, for example I=E2=80=99m working on a X310+UBX160 with a multi=
channel
> DUC that has 4 inputs each one with a different frequency offset and then=
 i
> sum the outputs with the addsub rfnoc block(I generated the FPGA firmware
> accordingly).
>
> Actually I managed to have it work correctly but I had to discover by
> myself some oddities, the correct steps in my configuration are in order:
>
> 1-configure the graph according to my needs (radio_control, duc, streamer=
)
>
> 2-set the RF output frequency on the radio control
>
> 3-make the tune request through the streamer
>
> 4-set the desired frequency offset on the DUC (for example: -10e6, -5e6,
> 5e6, 10e6)
>
> The last step is the more critical, in order to get the exact offset I ha=
d
> first to get the starting frequency offset of the DUC (which is not zero
> after the tune request, but just on the first channel of the DUC!!!) and
> then to sum up that residual frequency offset (which actually counts few
> kHz) to the desired frequency offset.
>
> If I miss this step it won=E2=80=99t have the exact offset needed.
>
> It seems to me a bit clumsy, is there a cleaner way to do it?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007ef8510635aaeef2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I think that some of the convenience mech=
anisms that you might see in the examples (such as passing a tune request t=
hrough the streamer) are likely only helpful in a &quot;typical&quot; graph=
. In your graph with 4 DUC ports connected to 1 Radio port with AddSub bloc=
ks to add the 4 DUC ports together, it is not a 1-to-1 relationship between=
 DUC and Radio.=C2=A0=C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D"ltr=
">It seems to me that your step 3 below is not needed or helpful.=C2=A0 It =
seems you could set the LO frequency via the Radio block.=C2=A0 But, this w=
ill be quantized and not necessarily at the exact frequency you request. Th=
us, if it is important to get the right frequency, you will need to use the=
 return value from the radio-&gt;set_tx_frequency function to determine you=
r quantization error.=C2=A0 Then, you can call duc-&gt;set_freq for your DU=
C ports with a frequency argument that includes both your desired values of=
 -10, -5, 5, 10 MHz as well as the quantization error you determined settin=
g the LO.<div>Rob=C2=A0</div></div><br><div class=3D"gmail_quote gmail_quot=
e_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 21, 2025 at =
10:45=E2=80=AFAM &lt;<a href=3D"mailto:carmixdev@gmail.com">carmixdev@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><p>Yes Martin, for example I=E2=80=99m working on a X310+UBX160 with a =
multichannel DUC that has 4 inputs each one with a different frequency offs=
et and then i sum the outputs with the addsub rfnoc block(I generated the F=
PGA firmware accordingly).</p><p>Actually I managed to have it work correct=
ly but I had to discover by myself some oddities, the correct steps in my c=
onfiguration are in order:</p><p>1-configure the graph according to my need=
s (radio_control, duc, streamer)</p><p>2-set the RF output frequency on the=
 radio control</p><p>3-make the tune request through the streamer</p><p>4-s=
et the desired frequency offset on the DUC (for example: -10e6, -5e6, 5e6, =
10e6)</p><p>The last step is the more critical, in order to get the exact o=
ffset I had first to get the starting frequency offset of the DUC (which is=
 not zero after the tune request, but just on the first channel of the DUC!=
!!) and then to sum up that residual frequency offset (which actually count=
s few kHz) to the desired frequency offset.</p><p>If I miss this step it wo=
n=E2=80=99t have the exact offset needed.</p><p>It seems to me a bit clumsy=
, is there a cleaner way to do it?</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000007ef8510635aaeef2--

--===============0782032769794144521==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0782032769794144521==--
