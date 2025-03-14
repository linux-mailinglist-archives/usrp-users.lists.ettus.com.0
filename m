Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B36A60686
	for <lists+usrp-users@lfdr.de>; Fri, 14 Mar 2025 01:35:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1B491385E42
	for <lists+usrp-users@lfdr.de>; Thu, 13 Mar 2025 20:35:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741912526; bh=4iaq8oeiVsGlNKKv5HioFoqrUDGAqNPzd1SzIHEj/yM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=syYTUHlFOZD+oDjrlw7k7bh6p7/tSQj29eqtCICuT1d82mVvJqNTTJQpEKkvaOXCC
	 lpCymaFlpH2bfC0+iaYGVUnDaMo7AhlKXetp78W6p2rLSE33C+l6TmNLqnfKF0OlzN
	 VLwpS+48z/W3uiAbzy0rvfjSqNI+aDpONn0b++VFCYl/coYgx+3Tf5hUtCz8J0PXEI
	 +iU46cDQrQPQWxV7PSOaMCrXJJJoWv5sXqytn5BpLGsJi59D66AoOfo4yIZzvRrNOk
	 aK68dyqRi0PyeQTx8/EF69FeClVuwMQbeJloe7A+Qp0wng1nS+CDjFlGgZPgibYu9o
	 xZ0R76S0TYhwQ==
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E3F4385CD9
	for <usrp-users@lists.ettus.com>; Thu, 13 Mar 2025 20:34:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="dt9TdWio";
	dkim-atps=neutral
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e6341e4d0b4so2378925276.0
        for <usrp-users@lists.ettus.com>; Thu, 13 Mar 2025 17:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1741912453; x=1742517253; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=42hab2TUN9CDu4CNaJ2GK5Id39E4p7efG7PfPUis1pE=;
        b=dt9TdWiofmTfzsQoatCe+6sqjBbDzNrsRkSObFdFPFk1V2IzIj0iQgD+sv53yXzGJU
         fT+Obiq5twe/F6hZ7dGkzlLrc9Q6Z7Gw8P9oNISwgH27zORt9yOEe6Nfql9dtwvxNuss
         N7blkFNwnVmiGBbgsN93J/3QDzYHA1UdCwTqeNt4g0bcsTKbwImBGTgaQD8havzZDIAd
         IWZ0moi6IiR9qvwOJDuIQqCBBEyNRN7Ps7mJp31St7mkZ+R5+6Q0NpoU20+KaDvahvRt
         bdvfYay5fGdQ4UkUsfjtkhPYaKEfP34X3Ppxqyglj4iZvi1078cap41sF+G8vmGcEl8s
         u6jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741912453; x=1742517253;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=42hab2TUN9CDu4CNaJ2GK5Id39E4p7efG7PfPUis1pE=;
        b=lWo//Leve8c4wnJC1ZbW1mdqDPhPFZ+J0hLolVlE42tPVxCfZ4j9x+jmuvIXKthTvP
         1DSLErvk6f83LvNm/tFCINTACqhyvvKau8O4OwOsIkRwaRLd31fKS0hsheZs9eO8zR3h
         GcLt5RJ9vlklZ9uX7DZ3Mf5VAi2xTHh3Qog7YDgdsHuU64v/cjdwoF5+rg3rrv9GHrGW
         buHEzYKDZ8aCulKKQIUC+o5F6GthwucVxuZORn4L7mbIAysJV5u1oN6X+1RAgCaFQJDY
         Wx1fT/XQNbTZ6WDCEya0LEA+R7MgoVFtlYsyHQcTu8jE8I//+9X73q8OpmnYI6uI1/PV
         vTRw==
X-Gm-Message-State: AOJu0Yy6s6593VguLUGUPle0gBAQJQ7P7Rqrj5eRZSRoSJ/4lj7dyWLv
	7Gkd1Nggi2SUl3qB8t3c5ACqPIgHsKWcFr0QNPIdVWDKokuid+3xADoD3usPp9dSidBJtRGjd/o
	YGp56ENgk1eohpN/UHsZ8TR9ZnaxbzA0I01nE96vS
X-Gm-Gg: ASbGnctGkuWmbEBpRYdT+J+if6UWaBbY4M8eijhlAkL4oodpswG/byGk9+K8O7yBPdt
	Ee5KnrfOs2B0pRkM4cyKONV1RpVPOR6/dwfuLKUwin4LgMAUrs48sSQrr4FEG6H2kT3eT2w7g6U
	h+wVPJ0CiSZMnpiTQNT0AeSiA=
X-Google-Smtp-Source: AGHT+IF/rL9nkRVi6uo8TWlwJU0VH6mA+gKcJQB0Hw7ooKM/5G2zntHmcKTAZ1fGvmhzEucmDOIDIagpWE/QIzR1HN0=
X-Received: by 2002:a05:6902:1885:b0:e61:142a:82b0 with SMTP id
 3f1490d57ef6-e63f892d1c4mr506250276.24.1741912453491; Thu, 13 Mar 2025
 17:34:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK72NmdLr7oyguv2P7hx29OgdwW3Et7DgMUrr_6r9FxQsg@mail.gmail.com>
In-Reply-To: <CAEXYVK72NmdLr7oyguv2P7hx29OgdwW3Et7DgMUrr_6r9FxQsg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 13 Mar 2025 19:33:57 -0500
X-Gm-Features: AQ5f1JrW0v5-2-ow88y2o_YZ1AdVSD5ZOM42tPvayXCRYzti7RnI4W-FGhFnF14
Message-ID: <CAFche=i+egcOTZVWPhgmsMQUCSugTDhsWBm_UeCb=9vBHMnpZw@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: XC3OH3TDPJRJQ63GLH4XTA3RFAJVFUNK
X-Message-ID-Hash: XC3OH3TDPJRJQ63GLH4XTA3RFAJVFUNK
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: axi_mm io_signature issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XC3OH3TDPJRJQ63GLH4XTA3RFAJVFUNK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1443569402840427631=="

--===============1443569402840427631==
Content-Type: multipart/alternative; boundary="000000000000054e3d0630429975"

--000000000000054e3d0630429975
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Brian,

I'm pretty sure that's a typo. Someone mixed 4096 with 8192. But it should
not matter as long as the bus is big enough. The extra bits will be ignored
and optimized out. Even 4096 is bigger than needed in most cases.

There has been some work to have the image builder set these widths to
exactly the right size, but it looks like that hasn't been done for the
DRAM interface yet.

Thanks,

Wade

On Tue, Mar 11, 2025 at 6:10=E2=80=AFPM Brian Padalino <bpadalino@gmail.com=
> wrote:

> I am checking the IO signatures, and I am seeing that the axi_mm interfac=
e
> generated in rfnoc_image_core.sv is a bit wonky. I traced it back to the
> io_signature.yaml definition here:
>
>
> https://github.com/EttusResearch/uhd/blob/0dede88c6535ae6ffb30b162c83dc01=
d59d3bfa0/host/include/uhd/rfnoc/core/io_signatures.yml#L63
>
> It states that it's up to 512-bit, 8 channels, and 48-bit address - but
> the m_axi_wdata  and m_axi_rdata is 4192 bits. I think it should be 4096
> bits (512*8) but really I think this should follow some parameters that a=
re
> passed into it? Similar to how the radio interface is defined?
>
> Alternatively, the x4xx_core.v file seems to utilise the localparam
> DRAM_PORTS_PER_BANK - could the IO signature just use a generic like that=
?
>
>
> https://github.com/EttusResearch/uhd/blob/0dede88c6535ae6ffb30b162c83dc01=
d59d3bfa0/fpga/usrp3/top/x400/x4xx_core.v#L576
>
> Was this just an oversight or is there a plan to "right-size" this
> interface based on the parameters passed into it?
>
> Thanks,
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000054e3d0630429975
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Brian,</div><div><br></div><div>I&#39;m pretty sur=
e that&#39;s a typo. Someone mixed 4096 with 8192. But it should not matter=
 as long as the bus is big enough. The extra bits will be ignored and optim=
ized out. Even 4096 is bigger than needed in most cases.</div><div><br></di=
v><div>There has been some work to have the image builder set these widths =
to exactly the right size, but it looks like that hasn&#39;t been done for =
the DRAM interface yet.</div><div><br></div><div>Thanks,</div><div><br></di=
v><div>Wade</div></div><br><div class=3D"gmail_quote gmail_quote_container"=
><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 11, 2025 at 6:10=E2=80=
=AFPM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr">I am checking the IO signatures, and I am seeing t=
hat the axi_mm interface generated in <a href=3D"http://rfnoc_image_core.sv=
" target=3D"_blank">rfnoc_image_core.sv</a> is a bit wonky. I traced it bac=
k to the io_signature.yaml definition here:<div><br></div><div>=C2=A0=C2=A0=
<a href=3D"https://github.com/EttusResearch/uhd/blob/0dede88c6535ae6ffb30b1=
62c83dc01d59d3bfa0/host/include/uhd/rfnoc/core/io_signatures.yml#L63" targe=
t=3D"_blank">https://github.com/EttusResearch/uhd/blob/0dede88c6535ae6ffb30=
b162c83dc01d59d3bfa0/host/include/uhd/rfnoc/core/io_signatures.yml#L63</a><=
/div><div><br></div><div>It states that it&#39;s up to 512-bit, 8 channels,=
 and 48-bit address - but the m_axi_wdata=C2=A0 and m_axi_rdata is 4192 bit=
s. I think it should be 4096 bits (512*8) but really I think this should fo=
llow some parameters that are passed into it? Similar to how the radio inte=
rface is defined?</div><div><br></div><div>Alternatively, the x4xx_core.v f=
ile seems to utilise the localparam DRAM_PORTS_PER_BANK - could the IO sign=
ature just use a generic like that?</div><div><br></div><div>=C2=A0=C2=A0<a=
 href=3D"https://github.com/EttusResearch/uhd/blob/0dede88c6535ae6ffb30b162=
c83dc01d59d3bfa0/fpga/usrp3/top/x400/x4xx_core.v#L576" target=3D"_blank">ht=
tps://github.com/EttusResearch/uhd/blob/0dede88c6535ae6ffb30b162c83dc01d59d=
3bfa0/fpga/usrp3/top/x400/x4xx_core.v#L576</a></div><div><br></div><div>Was=
 this just an oversight or is there a plan to &quot;right-size&quot; this i=
nterface based on the parameters passed into it?</div><div><br></div><div>T=
hanks,</div><div>Brian</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000054e3d0630429975--

--===============1443569402840427631==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1443569402840427631==--
