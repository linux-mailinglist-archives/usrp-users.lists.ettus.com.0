Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA2A43547E
	for <lists+usrp-users@lfdr.de>; Wed, 20 Oct 2021 22:20:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D3903845AA
	for <lists+usrp-users@lfdr.de>; Wed, 20 Oct 2021 16:20:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Y4wHka8a";
	dkim-atps=neutral
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 4FE953841AB
	for <USRP-users@lists.ettus.com>; Wed, 20 Oct 2021 16:20:07 -0400 (EDT)
Received: by mail-yb1-f172.google.com with SMTP id o17so1050448ybq.4
        for <USRP-users@lists.ettus.com>; Wed, 20 Oct 2021 13:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Culx3sEWVvnqNR007VtblJxXAoA9h2vZG/dOq0YNQ1Y=;
        b=Y4wHka8abvUhr8iHe1EezITlYS9zwg8Nmis+SLIDXa73AzawHtogt1kZYafiu9gq3B
         E2DfGdEo1MotH2C6qrWPrx5e//OCwz2c0BfWaWFZHV/e6igSm312mK4OcGSX1jnyEnzV
         cY4mlAWbqkudh+/cFugP0GZgmXALkg5jdh/fRcdbr59m9S8zDvEDXh8EIZ3O95wkHhal
         99IsQsvv7SgouoVJ6qXF2+Zz4NZhpVL5jtIYOrAmd9erW6r/jWZYhTrmQE2Dp0hoScvj
         pV2qIyFr1Mt/ZL5BKqgsXRpx8xJeDvln51QyHhGeM6ECIiHRVtqo1ew4p9rvpuQnZTTb
         38uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Culx3sEWVvnqNR007VtblJxXAoA9h2vZG/dOq0YNQ1Y=;
        b=HqwOif0U/fX69SQJhlpuJUhzpd9gUi3e71XvltAqfh2dcvB6hFfpJzOIZplMtszxQ9
         mC2AdvxbpI1ZhpneYQB7nFvjBrdqlz6l9+fZwdVvAJq3ZYneiPFuopua4Cq8aUF35LKZ
         pJlWsqWNKLqrXN7mU7dBMr9EB5OxAfilgi7xSMD0JwKqSH/DHr/xCN4y17ZaeUONxOHu
         C7oxFA0gximMVvAcGmuoD7owcjvZv3h9xuiCIvzAaj1H7WJWa4zDYrwq3CRGPxI7eO0U
         zWeomRAE4UcX7ykIFKI6/7qGL7uhA15jg/P3Le7bSCqR0lUkjdisrF0VWwEVW3RDKUbS
         vasw==
X-Gm-Message-State: AOAM532Bw2ylahiY7LgtljhPf/noH1VkvUa7sYDWnwNh3Vx6VmZy6+kG
	vONaMgKurTuoI0IKTfpA45auRfWCUI7JBVbOyU4=
X-Google-Smtp-Source: ABdhPJwAUgvUNyJW/wUVbuD7k0s2R5QP+6kQezmIeRq/3GYOLLog9AbJh9op7ImLXXLqEgUrxCkeEtFak/jI5NbiX2E=
X-Received: by 2002:a25:d09:: with SMTP id 9mr1305026ybn.94.1634761207147;
 Wed, 20 Oct 2021 13:20:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAN+Y6vALVOHVGX+bT6EGDH6erEeSbK3mYMTABCRpEPFnQXdDSw@mail.gmail.com>
 <32778a04-eddc-32d4-7c93-23b24baa8669@gmail.com>
In-Reply-To: <32778a04-eddc-32d4-7c93-23b24baa8669@gmail.com>
From: isaac mario tupac davila <isacctd92@gmail.com>
Date: Wed, 20 Oct 2021 15:19:54 -0500
Message-ID: <CAN+Y6vBOBQ=_7_cXtpu7vfAJmuo65-8Wi0aCPjU0hgUiEB0iOA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, discuss-gnuradio@gnu.org,
	USRP-users@lists.ettus.com
Message-ID-Hash: ISUIDBHTBW2YGXGM2CYVZY7CYNWXJ5AM
X-Message-ID-Hash: ISUIDBHTBW2YGXGM2CYVZY7CYNWXJ5AM
X-MailFrom: isacctd92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Installing Images and firmware USRPN200/N210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ISUIDBHTBW2YGXGM2CYVZY7CYNWXJ5AM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7379628169344603497=="

--===============7379628169344603497==
Content-Type: multipart/alternative; boundary="0000000000000b6edc05cece8116"

--0000000000000b6edc05cece8116
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus

Curiosity and quickness possessed me. I tried first to burn it with the
usrp_n210_r4_fpga.bit as I have a N210 but it failed. Later, I could burn
it with the usrp_n200_r4_fpga.bit. I changed the Ip and installed the
usrp_n200_fw.bin  and  usrp_n200_r4_fpga.bin. It could recognize it. My
FPGA is a Spartan 3 XC3SD1800A.

EnvironmentError: OSError: error in pthread_setschedparam
  _____________________________________________________
 /
|       Device: USRP2 / N-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: N???
|   |   mac-addr: 00:00:00:00:40:00
|   |   ip-addr: 192.168.10.3
|   |   subnet: 0.0.0.104
|   |   gateway: 255.255.255.255
|   |   gpsdo: none
|   |   serial: 0
|   |   FW Version: 12.4
|   |   FPGA Version: 11.1
|   |
|   |   Time sources:  none, external, _external_, mimo
|   |   Clock sources: internal, external, mimo
|   |   Sensors: mimo_locked, ref_locked

The problem is when I run the ./test_pps_input from the uhd my USRP fails
finding the PPS.

Please see the general application notes in the manual for instructions.
EnvironmentError: OSError: error in pthread_setschedparam
Error: RuntimeError: Board 0 may not be getting a PPS signal!
No PPS detected within the time interval.
See the application notes for your device.

What could be the problem? Maybe the firmware? I'm not completely sure
about it

Any help or advice will be appreciate

Regards
Isaac T.

El vie, 15 oct 2021 a las 20:12, Marcus D. Leech (<patchvonbraun@gmail.com>=
)
escribi=C3=B3:

> On 2021-10-15 5:57 p.m., isaac mario tupac davila wrote:
> > Hello
> >
> > I'm Isaac. I have a tricky thing here instaling images. I have a USRP
> > N210 with FW Version: 12.1 FPGA Version: 10.0. When I prove the pps
> > test, it says: No PPS detected within the time interval. I believe it
> > is for the FPGA image(v10). So I tried to update the image and
> > firmware doing: ./uhd_images_downloader.py and later:
> > ./uhd_image_loader
> > --args=3D"type=3Dusrp2,addr=3D192.168.10.2,overwrite-safe"
> > --fw-path=3D/usr/local/share/uhd/images/usrp_n210_fw.bin
> > --fpga-path=3D/usr/local/share/uhd/images/usrp_n210_r4_fpga.bin, only o=
nce.
> >
> > I turned off my USRPN210 and now I can't find it (doesn't have IP
> > anymore) and any light(A,B,C or D) has turned on.
> >
> > The interesting thing is that I have a second USRP (N200,FW Version:
> > 12.3 FPGA Version: 10.0) with the same PPS problem and I don't want to
> > make the same mistake again. So...
> >
> > 1. What do you think I did wrong? =C2=BFDo I have to eliminate
> > overwrite-safe in the command?
> Why did you use overwrite-safe?  What possessed you to do that? Most of
> the time there is NO reason to overwrite the safe-mode image, since it
>    is an image specifically to help you get through loading a bad "main"
> image.
>
> > 2. How could I save my first USRP? Do I have to burn the FW and image
> > with a burner JTAG directly on the motherboard?
> Almost certainly you do now.
>
>
> https://kb.ettus.com/N200/N210_Device_Recovery#Unbricking_an_N-Series_Dev=
ice
>
>
> >
> > Any help will be appreciate it.
> > Thanks
> > Regards
> > Isaac T.
> >
>
>
>

--0000000000000b6edc05cece8116
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Marcus</div><div><br></div><div>Curiosity and quic=
kness possessed me. I tried first to burn it with the usrp_n210_r4_fpga.bit=
 as I have a N210 but it failed. Later, I could burn it with the usrp_n200_=
r4_fpga.bit. I changed the Ip and installed the usrp_n200_fw.bin=C2=A0 and=
=C2=A0 usrp_n200_r4_fpga.bin. It could recognize it. My FPGA is a Spartan 3=
 XC3SD1800A.<br></div><div><br></div><div>EnvironmentError: OSError: error =
in pthread_setschedparam<br>=C2=A0 ________________________________________=
_____________<br>=C2=A0/<br>| =C2=A0 =C2=A0 =C2=A0 Device: USRP2 / N-Series=
 Device<br>| =C2=A0 =C2=A0 ________________________________________________=
_____<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: N???<b=
r>| =C2=A0 | =C2=A0 mac-addr: 00:00:00:00:40:00<br>| =C2=A0 | =C2=A0 ip-add=
r: 192.168.10.3<br>| =C2=A0 | =C2=A0 subnet: 0.0.0.104<br>| =C2=A0 | =C2=A0=
 gateway: 255.255.255.255<br>| =C2=A0 | =C2=A0 gpsdo: none<br>| =C2=A0 | =
=C2=A0 serial: 0<br>| =C2=A0 | =C2=A0 FW Version: 12.4<br>| =C2=A0 | =C2=A0=
 FPGA Version: 11.1<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 Time sources=
: =C2=A0none, external, _external_, mimo<br>| =C2=A0 | =C2=A0 Clock sources=
: internal, external, mimo<br>| =C2=A0 | =C2=A0 Sensors: mimo_locked, ref_l=
ocked</div><div><br></div><div>The problem is when I run the ./test_pps_inp=
ut from the uhd my USRP fails finding the PPS.</div><div><br></div><div>Ple=
ase see the general application notes in the manual for instructions.<br>En=
vironmentError: OSError: error in pthread_setschedparam<br>Error: RuntimeEr=
ror: Board 0 may not be getting a PPS signal!<br>No PPS detected within the=
 time interval.<br>See the application notes for your device.<br></div><div=
><br></div><div>What could be the problem? Maybe the firmware? I&#39;m not =
completely sure about it</div><div><br></div><div>Any help or advice will b=
e appreciate</div><div><br></div><div>Regards</div><div>Isaac T.<br> </div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
El vie, 15 oct 2021 a las 20:12, Marcus D. Leech (&lt;<a href=3D"mailto:pat=
chvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;) escribi=C3=B3:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">On 2021-10-15 5:57 p.=
m., isaac mario tupac davila wrote:<br>
&gt; Hello<br>
&gt;<br>
&gt; I&#39;m Isaac. I have a tricky thing here instaling images. I have a U=
SRP <br>
&gt; N210 with FW Version: 12.1 FPGA Version: 10.0. When I prove the pps <b=
r>
&gt; test, it says: No PPS detected within the time interval. I believe it =
<br>
&gt; is for the FPGA image(v10). So I tried to update the image and <br>
&gt; firmware doing: ./uhd_images_downloader.py and later: <br>
&gt; ./uhd_image_loader <br>
&gt; --args=3D&quot;type=3Dusrp2,addr=3D192.168.10.2,overwrite-safe&quot; <=
br>
&gt; --fw-path=3D/usr/local/share/uhd/images/usrp_n210_fw.bin <br>
&gt; --fpga-path=3D/usr/local/share/uhd/images/usrp_n210_r4_fpga.bin, only =
once.<br>
&gt;<br>
&gt; I turned off my USRPN210 and now I can&#39;t find it (doesn&#39;t have=
 IP <br>
&gt; anymore) and any light(A,B,C or D) has turned on.<br>
&gt;<br>
&gt; The interesting thing is that I have a second USRP (N200,FW Version: <=
br>
&gt; 12.3 FPGA Version: 10.0) with the same PPS problem and I don&#39;t wan=
t to <br>
&gt; make the same mistake again. So...<br>
&gt;<br>
&gt; 1. What do you think I did wrong? =C2=BFDo I have to eliminate <br>
&gt; overwrite-safe in the command?<br>
Why did you use overwrite-safe?=C2=A0 What possessed you to do that? Most o=
f <br>
the time there is NO reason to overwrite the safe-mode image, since it<br>
=C2=A0=C2=A0 is an image specifically to help you get through loading a bad=
 &quot;main&quot; <br>
image.<br>
<br>
&gt; 2. How could I save my first USRP? Do I have to burn the FW and image =
<br>
&gt; with a burner JTAG directly on the motherboard?<br>
Almost certainly you do now.<br>
<br>
<a href=3D"https://kb.ettus.com/N200/N210_Device_Recovery#Unbricking_an_N-S=
eries_Device" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/N20=
0/N210_Device_Recovery#Unbricking_an_N-Series_Device</a><br>
<br>
<br>
&gt;<br>
&gt; Any help will be appreciate it.<br>
&gt; Thanks<br>
&gt; Regards<br>
&gt; Isaac T.<br>
&gt;<br>
<br>
<br>
</blockquote></div>

--0000000000000b6edc05cece8116--

--===============7379628169344603497==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7379628169344603497==--
