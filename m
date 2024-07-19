Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A705937C7D
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jul 2024 20:34:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DC8C2385B12
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jul 2024 14:34:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721414069; bh=U8NnPPpo8BhetSc0kqFBeRN1dfvMEIJmY4KHBh4bAKk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=mk1nqYpPfpJi7iv6ZdvBgMbdcIzUW6T+FsC3PuFBgNgOOJ9s/5DdDtzPsRywY/l/n
	 lMlHhTrXDjwdgXzmXjnYX2ZBiPO9McJEEgY1VylOI7+C+xaOLOyQ6mhrcPWCqsKVes
	 bsUn6WYtE0h5SEgm1F0Isk4e/BNMM+9Hx3VLK/Iw0TenDWIFZX1DNhPv/gJ1fs2H8P
	 gH4h5abuWZiqnk+oNj4WI6seKEmld1AVt8VJR/jy1rvcrLCizcni7fRqkTKqO7CqyA
	 gxrT2iT/HffL+EhbFBhZAhatA80/bm8WWE53fJNmfmHFzGEqHa3GAmf6NLb3X+fhKb
	 fPhSBHmANSUgA==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id C68DB385AE4
	for <usrp-users@lists.ettus.com>; Fri, 19 Jul 2024 14:28:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="VmuSqNp1";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5a2ffc3447fso1185648a12.1
        for <usrp-users@lists.ettus.com>; Fri, 19 Jul 2024 11:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1721413721; x=1722018521; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VLqfhAyDKeWMefKNDHdM9cAXDBare7TIk7UOEphbSDw=;
        b=VmuSqNp1x/VyBjIIgIFiO4+CEbuJkzxYyVtoFR6+1xezeYrk5Fx7/Ly/ACyYRlh7H+
         6XIScHNuy06WNgJvN2h1JmH1wRlyNBa1GSwoK+mbQRm9l0EEwZnYbriq2PkN/JoDeqwb
         BcJFES8KdFu1n5gSMH/0TcO6+JnKm8Ba+G6Nvk+nxYtF+dU5GBtj58pLP7EoWpLDREgh
         rB4IFXQ0an2qSPuV6uZFpdHH1Gpn4WMy+y13FzqOqhUHhGO8yJ3G4gfj0L4wXpAk5v+v
         18ecsfHAhsj+fM6zh7tQITgzD+dlVZ5nUjDWi1Hh8fU8yndTwRQkeazWhJVpmabKYKzI
         SZLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721413721; x=1722018521;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VLqfhAyDKeWMefKNDHdM9cAXDBare7TIk7UOEphbSDw=;
        b=EdktgUJwlHc+Qq0QkhyIP+VaCSqiDW6GQybUerg4RC9VucHSEBNhTGuXem1x23ZlcU
         GEMfNbfFRNADiKtpgcODmAGPf5W0NelAj+BZjQVYlZJ165u2CF3Ltt1m7fCUZkDoPNMv
         MLQnsSSsX8R4/M4zztlOFysR7OFnNdctn2rc2bDj8OF6Vc4V2S9mfkQKqwe0/ezifpOo
         0BZREuV5J+vPLv07VIRNUfhBD1CsWk1WeMQLAEwEumZbf2DhzTOHCqJRM2Ld48TlogKg
         gVOVTccDaAVNYwhv/L0OeKBGnLK+El5ikTsML/8U9Xap6LVoZ+8nCUt/g/4PEp5NIiFk
         RBjg==
X-Gm-Message-State: AOJu0YynafNOOIIbd1NzoYMG3M40xfi0r/AFG2sHakBswmY6Jv9VXB9V
	OAZKKo27mxPbvR/RSQu6puPG+Nimj6l5z2s+lBqXTJETH/MQcKoDkMzdefoCADbAmjVU3b4vRXf
	OdfSF+Ntwt3B8lNLzHgpCv5xQBPCfGq9d/UJQNyMr
X-Google-Smtp-Source: AGHT+IG1OwIm9tg89PygO6Dh2HIPgRy8Xq8w9uesPStoe72FhW6lZld5uvgrvsSk0SNCWiIdbExSS/hbRnDrRcM8cLk=
X-Received: by 2002:a17:906:4902:b0:a72:44d8:3051 with SMTP id
 a640c23a62f3a-a7a011e224fmr651741766b.16.1721413721333; Fri, 19 Jul 2024
 11:28:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAOkUcSt8Z6jQEtH+aTOtkdcx8V_EGHcm-fdfNeri240RJr6J4A@mail.gmail.com>
 <CAOkUcSuovodVRNtP4Cn8Bj_NEsniOWit_E3B7sikoEG=F_AChQ@mail.gmail.com>
In-Reply-To: <CAOkUcSuovodVRNtP4Cn8Bj_NEsniOWit_E3B7sikoEG=F_AChQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 19 Jul 2024 13:28:25 -0500
Message-ID: <CAFche=j+6mzzWoTvQQNQSLxobzQ9QrN9dAvDemrafW5h=swTyw@mail.gmail.com>
To: cyberphox <cyberphox@gmail.com>
Message-ID-Hash: L3S457EMK5J67IQ5GR673L4PWF2BNAYJ
X-Message-ID-Hash: L3S457EMK5J67IQ5GR673L4PWF2BNAYJ
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fwd: UHD 4.7 - Building X310_XG FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L3S457EMK5J67IQ5GR673L4PWF2BNAYJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9208124537176396866=="

--===============9208124537176396866==
Content-Type: multipart/alternative; boundary="0000000000005f3c01061d9ddd4f"

--0000000000005f3c01061d9ddd4f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

IP generation issues tend to be caused by using the wrong Vivado version,
or having stale files laying around from previous versions. Make sure
you're using Vivado 2021.1 with the patch AR76780 installed. If you changed
Vivado versions at some point, you may need to clean the repo to remove any
stale files remaining from previous build attempts. Running "make cleanall"
in the FPGA's top directory is usually sufficient for this.

Also, if you changed anything in the code, that might be relevant as well.
Beyond that, you might need to share more of your logs since there may be
clues in the log further up before this failure.

Thanks,

Wade

On Fri, Jul 19, 2024 at 6:59=E2=80=AFAM cyberphox <cyberphox@gmail.com> wro=
te:

>
> Hi All,
>
> I have a clone of UHD 4.7 (Tags: v4.7.0.0) and am trying to build the
> default X310_XG FPGA to check if my setup is OK.
>
> I ran the following commands from /uhd/fpga/usrp3/top/x300
>
>  source ./setupenv.sh
>  rfnoc_image_builder -y x310_XG_rfnoc_image_core.yml -t X310_XG
>
> After some time I get this error:
>
> BUILDER: Adding IP:
> /home/gssltest/git/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_=
fft/axi_fft.xci
> BUILDER: Adding IP:
> /home/gssltest/git/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_=
hb31/axi_hb31.xci
> ERROR: [Common 17-107] Cannot change read-only property
> 'generate_synth_checkpoint'.
> Resolution: Please refer to Vivado Properties Reference Guide (UG912) for
> more information on setting properties.
> INFO: [Common 17-206] Exiting Vivado at Fri Jul 19 12:38:28 2024...
>
> Thanks for your help
>
> Marino
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005f3c01061d9ddd4f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>IP generation issues tend to be caused by using the w=
rong Vivado version, or having stale files laying around from previous vers=
ions. Make sure you&#39;re using Vivado 2021.1 with the patch AR76780 insta=
lled. If you changed Vivado versions at some point, you may need to clean t=
he repo to remove any stale files remaining from previous build attempts. R=
unning &quot;make cleanall&quot; in the FPGA&#39;s top directory is usually=
 sufficient for this.</div><div><br></div><div>Also, if you changed anythin=
g in the code, that might be relevant as well. Beyond that, you might need =
to share more of your logs since there may be clues in the log further up b=
efore this failure.<br></div><div><br></div><div>Thanks,</div><div><br></di=
v><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, Jul 19, 2024 at 6:59=E2=80=AFAM cyberphox &lt;=
<a href=3D"mailto:cyberphox@gmail.com">cyberphox@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div class=3D"gmail_quote"><br><div dir=3D"ltr"><div>Hi All,</div><div><br>=
</div><div>I have a clone of UHD 4.7 (Tags: v4.7.0.0) and am trying to buil=
d the default X310_XG FPGA to check if my setup is OK.</div><div><br></div>=
<div>I ran the following commands from <font face=3D"monospace">/uhd/fpga/u=
srp3/top/x300</font></div><div><br></div><div><font face=3D"monospace">=C2=
=A0source ./setupenv.sh<br>=C2=A0rfnoc_image_builder -y x310_XG_rfnoc_image=
_core.yml -t X310_XG</font><br></div><div><br></div><div>After some time I =
get this error:</div><div><br></div><font face=3D"monospace">BUILDER: Addin=
g IP: /home/gssltest/git/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/=
axi_fft/axi_fft.xci<br>BUILDER: Adding IP: /home/gssltest/git/uhd/fpga/usrp=
3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xci<br>ERROR: [Commo=
n 17-107] Cannot change read-only property &#39;generate_synth_checkpoint&#=
39;.<br>Resolution: Please refer to Vivado Properties Reference Guide (UG91=
2) for more information on setting properties.<br>INFO: [Common 17-206] Exi=
ting Vivado at Fri Jul 19 12:38:28 2024...</font><br><div><br></div><div>Th=
anks for your help</div><div><br></div><div>Marino</div><div><br></div></di=
v>
</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005f3c01061d9ddd4f--

--===============9208124537176396866==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9208124537176396866==--
