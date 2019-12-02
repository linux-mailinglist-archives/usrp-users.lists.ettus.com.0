Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DCD10F2F6
	for <lists+usrp-users@lfdr.de>; Mon,  2 Dec 2019 23:55:06 +0100 (CET)
Received: from [::1] (port=40222 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ibuau-0006Gz-Pt; Mon, 02 Dec 2019 17:55:04 -0500
Received: from mail-oi1-f173.google.com ([209.85.167.173]:34922)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1ibuaq-00068o-Pg
 for USRP-users@lists.ettus.com; Mon, 02 Dec 2019 17:55:00 -0500
Received: by mail-oi1-f173.google.com with SMTP id k196so1407874oib.2
 for <USRP-users@lists.ettus.com>; Mon, 02 Dec 2019 14:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RJfPIrLvjzxeMWxALVldORCeVcrr63cui01yrS7DvwM=;
 b=uTbGDcuV0K/Kqc38qgCXWJd/WWkg3k7Us6XCIopWlXe0xHHzOhCJvc/D7IyUsdQWbG
 XHHBm0Blm6qkyYz637he0FGYwhLGp0HPZvn4If2rS3wz7bleAI8R0tL7LeT9pwkF15Ri
 sQLwqXf1EszbRVfq4/Z8ztmDT59yzj9qM11FCLSJ5ULoGOLOJVBfzEdj97eAHb6oVGCV
 wAmRt4gKQtd9HQ5v9jfn0BH84Ckog+CHXpkyaEPPEzIcros5lYsziQbgnP7VVRGbRyI/
 CNa2PnuTbGyiwRR/BX0rVEccSAkEciCyWbN46kMgxEBU6i2p0FPwrai1NsjpjnS94xfe
 5/6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RJfPIrLvjzxeMWxALVldORCeVcrr63cui01yrS7DvwM=;
 b=PhJVmPAngcy9IqBPK1EnP2W72eJO/PL4DFFQYQ2QdRS6koQrgNv6IHWk4ULkBYIQqS
 44DuWfn7SxR9QQgSLWFadoQH8xutlYuEfmRABExvR7xUgM3Jnno8lGRzt7VazfBYR9W1
 K/9kz7OUsKKK9CcW9BLjGbnFXlRVcSC3WaOdXfIP7yKDC188R/tKpdbQexbAYITcTq3x
 m06P8sjcnePFrfMtYXsOkJtNz0m9D0+aBIIN/k5t0QzUjdyH/HWzyEOF5GNtqyfsPmX6
 V56jLuL7LKL6tOLCvRqZVpi5BeRZ4N2CYHAWSCtX2cRbpHvJB3eTAUDNQxN+RKkyAf8J
 Q+Qg==
X-Gm-Message-State: APjAAAVZD3cSOe1Nra5Nsy4rIXMNdQta1dYjYasWS1vnV895lrzboE/W
 WCaJvYsUzpc7vWX6XfIgjcCVdp4g4ED92Yw+KUCGcXxFDHEhUA==
X-Google-Smtp-Source: APXvYqyYhkjO/gXMuafppGdkq9/UUVkWXMscKBe27KWDsC6pCPkv+AmjknLXsQRY2w0UfZ/9kbhDu6e25HlLnksAfFo=
X-Received: by 2002:aca:3456:: with SMTP id b83mr1273445oia.82.1575327260003; 
 Mon, 02 Dec 2019 14:54:20 -0800 (PST)
MIME-Version: 1.0
References: <DC60473E-ABB5-49FD-8F69-E3734A4D72DB@c3commsystems.com>
In-Reply-To: <DC60473E-ABB5-49FD-8F69-E3734A4D72DB@c3commsystems.com>
Date: Mon, 2 Dec 2019 14:55:23 -0800
Message-ID: <CAL263ix65rwMH=ZKurAChMf_dngMrjj4mHW1JE7jqBpBK39wYA@mail.gmail.com>
To: "zcao@c3commsystems.com" <zcao@c3commsystems.com>
Subject: Re: [USRP-users] Problems running
 uhd/examples/tx_samples_from_files on E310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: USRP-users <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8597883732431878648=="
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

--===============8597883732431878648==
Content-Type: multipart/alternative; boundary="000000000000bcee860598c07518"

--000000000000bcee860598c07518
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Z. Cao,

What version of UHD are you running on your old E310?

Generally the max sample rate supported by the ARM is ~10 MS/s.

With regards to the sample rate error you saw when trying to run at 40
MS/s, try adding the device args: "master_clock_rate=3D40e6".

>Does RFNoC included in the default image in E310 now? If so, UHD 3.14.1
branch and all its examples supports RFNoC? Which E310 image doesn=E2=80=99=
t
include RFNoC?

With UHD 3.15 RFNoC will be enabled by default, on 3.14.x, it must be
enabled with the cmake arg -DENABLE_RFNOC=3DON.

Regards,
Nate Temple

On Thu, Oct 31, 2019 at 12:09 PM zcao--- via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> We are testing a newly acquired E310 by running UHD example
> tx_samples_from_files.cpp. The data file we use was used in testing other
> USRP E310 devices so we know it is correct. For this particular E310, we
> ran into underrun problem. The screen output looks like the following:
>
> root@ettus-e3xx-sg3:~/localinstall#
> usr/lib/uhd/examples/tx_samples_from_file --rate 4000000 --freq 251200000=
0
> --ant TX/RX --gain 30 --bw 1000000 --file ./pkt_0238_2.dat --repeat --spb
> 5000
>
> Creating the usrp device with: ...
> [INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700;
> UHD_3.14.1.HEAD-0-gbfb9c1c7
> [INFO] [E300] Loading FPGA image:
> /home/root/localinstall/usr/share/uhd/images/usrp_e310_fpga_sg3.bit...
> [INFO] [E300] FPGA image loaded
> [INFO] [E300] Detecting internal GPS
> .... [INFO] [E300] GPSDO found
> [INFO] [E300] Initializing core control (global registers)...
>
> [INFO] [E300] Performing register loopback test...
> [INFO] [E300] Register loopback test passed
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000000=
)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000002)
> [WARNING] [RFNOC] [legacy_compat] No FIFO detected. Higher transmit rates
> may encounter errors.
> Using Device: Single USRP:
>   Device: E-Series Device
>   Mboard 0: E3XX SG3
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: FE-RX2
>   RX Channel: 1
>     RX DSP: 1
>     RX Dboard: A
>     RX Subdev: FE-RX1
>   RX Channel: 2
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: FE-RX2
>   RX Channel: 3
>     RX DSP: 1
>     RX Dboard: A
>     RX Subdev: FE-RX1
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: FE-TX2
>   TX Channel: 1
>     TX DSP: 1
>     TX Dboard: A
>     TX Subdev: FE-TX1
>   TX Channel: 2
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: FE-TX2
>   TX Channel: 3
>     TX DSP: 1
>     TX Dboard: A
>     TX Subdev: FE-TX1
>
> Setting TX Rate: 4.000000 Msps...
> Actual TX Rate: 4.000000 Msps...
>
> Setting TX Freq: 2512.000000 MHz...
> Setting TX LO Offset: 0.000000 MHz...
> Actual TX Freq: 2512.000000 MHz...
>
> Setting TX Gain: 30.000000 dB...
> Actual TX Gain: 30.000000 dB...
>
> Setting TX Bandwidth: 1.000000 MHz...
> Actual TX Bandwidth: 1.000000 MHz...
>
> Checking TX: LO: locked ...
> Press Ctrl + C to stop streaming...
>
> UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUU^C
> Done!
> U
> UUUUUUUUUU[INFO] [E300] Loading FPGA image:
> /home/root/localinstall/usr/share/uhd/images/usrp_e3xx_fpga_idle_sg3.bit.=
..
> [INFO] [E300] FPGA image loaded
>
> Any suggestions on where we should go from here are appreciated. We have =
a
> few questions.
>
> 1. Does RFNoC included in the default image in E310 now? If so, UHD 3.14.=
1
> branch and all its examples supports RFNoC? Which E310 image doesn=E2=80=
=99t
> include RFNoC?
>
> 2. On our old E310 platforms acquired 3 years ago, we can run TX rate
> @40MSPS. However, for this E310, there is a warning sign above says :
> [WARNING] [RFNOC] [legacy_compat] No FIFO detected. Higher transmit rates
> may encounter errors.
>
> In fact, we tried to set rate high @40MSPS, we got the following messages=
:
>
> [WARNING] [MULTI_USRP] The hardware does not support the requested TX
> sample rate:
> Target sample rate: 40.000000 MSps
> Actual sample rate: 16.000000 MSps
>
>
> Are we using the right FPGA images?
>
>
> Thanks,
> Z. Cao
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000bcee860598c07518
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Z. Cao,<br><br>What version of UHD are you running o=
n your old E310?<br><br>Generally the max sample rate supported by the ARM =
is ~10 MS/s. <br><br>With regards to the sample rate error you saw when try=
ing to run at 40 MS/s, try adding the device args: &quot;master_clock_rate=
=3D40e6&quot;.<br></div><div class=3D"gmail_default" style=3D"font-family:a=
rial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"=
font-family:arial,helvetica,sans-serif">&gt;Does RFNoC included in the defa=
ult image in <span class=3D"gmail-il">E310</span> now? If so, <span class=
=3D"gmail-il">UHD</span> 3.14.1 branch and all its <span class=3D"gmail-il"=
>examples</span> supports RFNoC? Which <span class=3D"gmail-il">E310</span>=
 image doesn=E2=80=99t include RFNoC?</div><div class=3D"gmail_default" sty=
le=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail=
_default" style=3D"font-family:arial,helvetica,sans-serif">With UHD 3.15 RF=
NoC will be enabled by default, on 3.14.x, it must be enabled with the cmak=
e arg -DENABLE_RFNOC=3DON. <br></div><div class=3D"gmail_default" style=3D"=
font-family:arial,helvetica,sans-serif"><br>Regards,<br>Nate Temple</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Thu, Oct 31, 2019 at 12:09 PM zcao--- via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div style=3D"overfl=
ow-wrap: break-word;">Hi,=C2=A0<div><br></div><div>We are testing a newly a=
cquired E310 by running UHD example tx_samples_from_files.cpp. The data fil=
e we use was used in testing other USRP E310 devices so we know it is corre=
ct. For this particular E310, we ran into underrun problem. The screen outp=
ut looks like the following:</div><div><br></div><div><div style=3D"margin:=
0px;font-stretch:normal;line-height:normal;font-family:&quot;Courier New&qu=
ot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=
=3D"font-variant-ligatures:no-common-ligatures">root@ettus-e3xx-sg3:~/local=
install# usr/lib/uhd/examples/tx_samples_from_file --rate 4000000 --freq 25=
12000000 --ant TX/RX --gain 30 --bw 1000000 --file ./pkt_0238_2.dat --repea=
t --spb 5000</span></div><div style=3D"margin:0px;font-stretch:normal;line-=
height:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);ba=
ckground-color:rgba(0,0,0,0.85);min-height:16px"><span style=3D"font-varian=
t-ligatures:no-common-ligatures"></span><br></div><div style=3D"margin:0px;=
font-stretch:normal;line-height:normal;font-family:&quot;Courier New&quot;;=
color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"fo=
nt-variant-ligatures:no-common-ligatures">Creating the usrp device with: ..=
.</span></div><div style=3D"margin:0px;font-stretch:normal;line-height:norm=
al;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);background-co=
lor:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-ligat=
ures;color:rgb(52,188,38)">[INFO] [UHD] </span><span style=3D"font-variant-=
ligatures:no-common-ligatures">linux; GNU C++ version 4.9.2; Boost_105700; =
UHD_3.14.1.HEAD-0-gbfb9c1c7</span></div><div style=3D"margin:0px;font-stret=
ch:normal;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(=
244,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-variant=
-ligatures:no-common-ligatures;color:rgb(52,188,38)">[INFO] [E300] </span><=
span style=3D"font-variant-ligatures:no-common-ligatures">Loading FPGA imag=
e: /home/root/localinstall/usr/share/uhd/images/usrp_e310_fpga_sg3.bit...</=
span></div><div style=3D"margin:0px;font-stretch:normal;line-height:normal;=
font-family:&quot;Courier New&quot;;color:rgb(244,244,244);background-color=
:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-ligature=
s;color:rgb(52,188,38)">[INFO] [E300] </span><span style=3D"font-variant-li=
gatures:no-common-ligatures">FPGA image loaded</span></div><div style=3D"ma=
rgin:0px;font-stretch:normal;line-height:normal;font-family:&quot;Courier N=
ew&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span st=
yle=3D"font-variant-ligatures:no-common-ligatures;color:rgb(52,188,38)">[IN=
FO] [E300] </span><span style=3D"font-variant-ligatures:no-common-ligatures=
">Detecting internal GPS=C2=A0</span></div><div style=3D"margin:0px;font-st=
retch:normal;line-height:normal;font-family:&quot;Courier New&quot;;color:r=
gb(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-vari=
ant-ligatures:no-common-ligatures">.... </span><span style=3D"font-variant-=
ligatures:no-common-ligatures;color:rgb(52,188,38)">[INFO] [E300] </span><s=
pan style=3D"font-variant-ligatures:no-common-ligatures">GPSDO found</span>=
</div><div style=3D"margin:0px;font-stretch:normal;line-height:normal;font-=
family:&quot;Courier New&quot;;color:rgb(244,244,244);background-color:rgba=
(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-ligatures;col=
or:rgb(52,188,38)">[INFO] [E300] </span><span style=3D"font-variant-ligatur=
es:no-common-ligatures">Initializing core control (global registers)...</sp=
an></div><div style=3D"margin:0px;font-stretch:normal;line-height:normal;fo=
nt-family:&quot;Courier New&quot;;color:rgb(244,244,244);background-color:r=
gba(0,0,0,0.85);min-height:16px"><span style=3D"font-variant-ligatures:no-c=
ommon-ligatures"></span><br></div><div style=3D"margin:0px;font-stretch:nor=
mal;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(244,24=
4,244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligat=
ures:no-common-ligatures;color:rgb(52,188,38)">[INFO] [E300] </span><span s=
tyle=3D"font-variant-ligatures:no-common-ligatures">Performing register loo=
pback test...=C2=A0</span></div><div style=3D"margin:0px;font-stretch:norma=
l;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,=
244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatur=
es:no-common-ligatures;color:rgb(52,188,38)">[INFO] [E300] </span><span sty=
le=3D"font-variant-ligatures:no-common-ligatures">Register loopback test pa=
ssed</span></div><div style=3D"margin:0px;font-stretch:normal;line-height:n=
ormal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);background=
-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-li=
gatures;color:rgb(52,188,38)">[INFO] [0/Radio_0] </span><span style=3D"font=
-variant-ligatures:no-common-ligatures">Initializing block control (NOC ID:=
 0x12AD100000000000)</span></div><div style=3D"margin:0px;font-stretch:norm=
al;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244=
,244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatu=
res:no-common-ligatures;color:rgb(52,188,38)">[INFO] [0/DDC_0] </span><span=
 style=3D"font-variant-ligatures:no-common-ligatures">Initializing block co=
ntrol (NOC ID: 0xDDC0000000000000)</span></div><div style=3D"margin:0px;fon=
t-stretch:normal;line-height:normal;font-family:&quot;Courier New&quot;;col=
or:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-=
variant-ligatures:no-common-ligatures;color:rgb(52,188,38)">[INFO] [0/DUC_0=
] </span><span style=3D"font-variant-ligatures:no-common-ligatures">Initial=
izing block control (NOC ID: 0xD0C0000000000002)</span></div><div style=3D"=
margin:0px;font-stretch:normal;line-height:normal;font-family:&quot;Courier=
 New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span =
style=3D"font-variant-ligatures:no-common-ligatures;color:rgb(175,173,36)">=
[WARNING] [RFNOC] </span><span style=3D"font-variant-ligatures:no-common-li=
gatures">[legacy_compat] No FIFO detected. Higher transmit rates may encoun=
ter errors.</span></div><div style=3D"margin:0px;font-stretch:normal;line-h=
eight:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);bac=
kground-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-co=
mmon-ligatures">Using Device: Single USRP:</span></div><div style=3D"margin=
:0px;font-stretch:normal;line-height:normal;font-family:&quot;Courier New&q=
uot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=
=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 Device: E-Series Dev=
ice</span></div><div style=3D"margin:0px;font-stretch:normal;line-height:no=
rmal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);background-=
color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-lig=
atures">=C2=A0 Mboard 0: E3XX SG3</span></div><div style=3D"margin:0px;font=
-stretch:normal;line-height:normal;font-family:&quot;Courier New&quot;;colo=
r:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-v=
ariant-ligatures:no-common-ligatures">=C2=A0 RX Channel: 0</span></div><div=
 style=3D"margin:0px;font-stretch:normal;line-height:normal;font-family:&qu=
ot;Courier New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.8=
5)"><span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 =C2=
=A0 RX DSP: 0</span></div><div style=3D"margin:0px;font-stretch:normal;line=
-height:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);b=
ackground-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-=
common-ligatures">=C2=A0 =C2=A0 RX Dboard: A</span></div><div style=3D"marg=
in:0px;font-stretch:normal;line-height:normal;font-family:&quot;Courier New=
&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span styl=
e=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 =C2=A0 RX Subdev: F=
E-RX2</span></div><div style=3D"margin:0px;font-stretch:normal;line-height:=
normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);backgroun=
d-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-l=
igatures">=C2=A0 RX Channel: 1</span></div><div style=3D"margin:0px;font-st=
retch:normal;line-height:normal;font-family:&quot;Courier New&quot;;color:r=
gb(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-vari=
ant-ligatures:no-common-ligatures">=C2=A0 =C2=A0 RX DSP: 1</span></div><div=
 style=3D"margin:0px;font-stretch:normal;line-height:normal;font-family:&qu=
ot;Courier New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.8=
5)"><span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 =C2=
=A0 RX Dboard: A</span></div><div style=3D"margin:0px;font-stretch:normal;l=
ine-height:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244=
);background-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:=
no-common-ligatures">=C2=A0 =C2=A0 RX Subdev: FE-RX1</span></div><div style=
=3D"margin:0px;font-stretch:normal;line-height:normal;font-family:&quot;Cou=
rier New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><s=
pan style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 RX Channel:=
 2</span></div><div style=3D"margin:0px;font-stretch:normal;line-height:nor=
mal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);background-c=
olor:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-liga=
tures">=C2=A0 =C2=A0 RX DSP: 0</span></div><div style=3D"margin:0px;font-st=
retch:normal;line-height:normal;font-family:&quot;Courier New&quot;;color:r=
gb(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-vari=
ant-ligatures:no-common-ligatures">=C2=A0 =C2=A0 RX Dboard: A</span></div><=
div style=3D"margin:0px;font-stretch:normal;line-height:normal;font-family:=
&quot;Courier New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,=
0.85)"><span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 =
=C2=A0 RX Subdev: FE-RX2</span></div><div style=3D"margin:0px;font-stretch:=
normal;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(244=
,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-li=
gatures:no-common-ligatures">=C2=A0 RX Channel: 3</span></div><div style=3D=
"margin:0px;font-stretch:normal;line-height:normal;font-family:&quot;Courie=
r New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span=
 style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 =C2=A0 RX DSP:=
 1</span></div><div style=3D"margin:0px;font-stretch:normal;line-height:nor=
mal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);background-c=
olor:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-liga=
tures">=C2=A0 =C2=A0 RX Dboard: A</span></div><div style=3D"margin:0px;font=
-stretch:normal;line-height:normal;font-family:&quot;Courier New&quot;;colo=
r:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-v=
ariant-ligatures:no-common-ligatures">=C2=A0 =C2=A0 RX Subdev: FE-RX1</span=
></div><div style=3D"margin:0px;font-stretch:normal;line-height:normal;font=
-family:&quot;Courier New&quot;;color:rgb(244,244,244);background-color:rgb=
a(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-ligatures">=
=C2=A0 TX Channel: 0</span></div><div style=3D"margin:0px;font-stretch:norm=
al;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244=
,244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatu=
res:no-common-ligatures">=C2=A0 =C2=A0 TX DSP: 0</span></div><div style=3D"=
margin:0px;font-stretch:normal;line-height:normal;font-family:&quot;Courier=
 New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span =
style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 =C2=A0 TX Dboar=
d: A</span></div><div style=3D"margin:0px;font-stretch:normal;line-height:n=
ormal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);background=
-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-li=
gatures">=C2=A0 =C2=A0 TX Subdev: FE-TX2</span></div><div style=3D"margin:0=
px;font-stretch:normal;line-height:normal;font-family:&quot;Courier New&quo=
t;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D=
"font-variant-ligatures:no-common-ligatures">=C2=A0 TX Channel: 1</span></d=
iv><div style=3D"margin:0px;font-stretch:normal;line-height:normal;font-fam=
ily:&quot;Courier New&quot;;color:rgb(244,244,244);background-color:rgba(0,=
0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-ligatures">=C2=
=A0 =C2=A0 TX DSP: 1</span></div><div style=3D"margin:0px;font-stretch:norm=
al;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244=
,244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatu=
res:no-common-ligatures">=C2=A0 =C2=A0 TX Dboard: A</span></div><div style=
=3D"margin:0px;font-stretch:normal;line-height:normal;font-family:&quot;Cou=
rier New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><s=
pan style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 =C2=A0 TX S=
ubdev: FE-TX1</span></div><div style=3D"margin:0px;font-stretch:normal;line=
-height:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);b=
ackground-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-=
common-ligatures">=C2=A0 TX Channel: 2</span></div><div style=3D"margin:0px=
;font-stretch:normal;line-height:normal;font-family:&quot;Courier New&quot;=
;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures">=C2=A0 =C2=A0 TX DSP: 0</span></=
div><div style=3D"margin:0px;font-stretch:normal;line-height:normal;font-fa=
mily:&quot;Courier New&quot;;color:rgb(244,244,244);background-color:rgba(0=
,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-ligatures">=C2=
=A0 =C2=A0 TX Dboard: A</span></div><div style=3D"margin:0px;font-stretch:n=
ormal;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(244,=
244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-lig=
atures:no-common-ligatures">=C2=A0 =C2=A0 TX Subdev: FE-TX2</span></div><di=
v style=3D"margin:0px;font-stretch:normal;line-height:normal;font-family:&q=
uot;Courier New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.=
85)"><span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 TX C=
hannel: 3</span></div><div style=3D"margin:0px;font-stretch:normal;line-hei=
ght:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);backg=
round-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-comm=
on-ligatures">=C2=A0 =C2=A0 TX DSP: 1</span></div><div style=3D"margin:0px;=
font-stretch:normal;line-height:normal;font-family:&quot;Courier New&quot;;=
color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"fo=
nt-variant-ligatures:no-common-ligatures">=C2=A0 =C2=A0 TX Dboard: A</span>=
</div><div style=3D"margin:0px;font-stretch:normal;line-height:normal;font-=
family:&quot;Courier New&quot;;color:rgb(244,244,244);background-color:rgba=
(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-ligatures">=
=C2=A0 =C2=A0 TX Subdev: FE-TX1</span></div><div style=3D"margin:0px;font-s=
tretch:normal;line-height:normal;font-family:&quot;Courier New&quot;;color:=
rgb(244,244,244);background-color:rgba(0,0,0,0.85);min-height:16px"><span s=
tyle=3D"font-variant-ligatures:no-common-ligatures"></span><br></div><div s=
tyle=3D"margin:0px;font-stretch:normal;line-height:normal;font-family:&quot=
;Courier New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)=
"><span style=3D"font-variant-ligatures:no-common-ligatures">Setting TX Rat=
e: 4.000000 Msps...</span></div><div style=3D"margin:0px;font-stretch:norma=
l;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,=
244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatur=
es:no-common-ligatures">Actual TX Rate: 4.000000 Msps...</span></div><div s=
tyle=3D"margin:0px;font-stretch:normal;line-height:normal;font-family:&quot=
;Courier New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)=
;min-height:16px"><span style=3D"font-variant-ligatures:no-common-ligatures=
"></span><br></div><div style=3D"margin:0px;font-stretch:normal;line-height=
:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);backgrou=
nd-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-=
ligatures">Setting TX Freq: 2512.000000 MHz...</span></div><div style=3D"ma=
rgin:0px;font-stretch:normal;line-height:normal;font-family:&quot;Courier N=
ew&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span st=
yle=3D"font-variant-ligatures:no-common-ligatures">Setting TX LO Offset: 0.=
000000 MHz...</span></div><div style=3D"margin:0px;font-stretch:normal;line=
-height:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);b=
ackground-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-=
common-ligatures">Actual TX Freq: 2512.000000 MHz...</span></div><div style=
=3D"margin:0px;font-stretch:normal;line-height:normal;font-family:&quot;Cou=
rier New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85);min=
-height:16px"><span style=3D"font-variant-ligatures:no-common-ligatures"></=
span><br></div><div style=3D"margin:0px;font-stretch:normal;line-height:nor=
mal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);background-c=
olor:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-liga=
tures">Setting TX Gain: 30.000000 dB...</span></div><div style=3D"margin:0p=
x;font-stretch:normal;line-height:normal;font-family:&quot;Courier New&quot=
;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"=
font-variant-ligatures:no-common-ligatures">Actual TX Gain: 30.000000 dB...=
</span></div><div style=3D"margin:0px;font-stretch:normal;line-height:norma=
l;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);background-col=
or:rgba(0,0,0,0.85);min-height:16px"><span style=3D"font-variant-ligatures:=
no-common-ligatures"></span><br></div><div style=3D"margin:0px;font-stretch=
:normal;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(24=
4,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-l=
igatures:no-common-ligatures">Setting TX Bandwidth: 1.000000 MHz...</span><=
/div><div style=3D"margin:0px;font-stretch:normal;line-height:normal;font-f=
amily:&quot;Courier New&quot;;color:rgb(244,244,244);background-color:rgba(=
0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-ligatures">Act=
ual TX Bandwidth: 1.000000 MHz...</span></div><div style=3D"margin:0px;font=
-stretch:normal;line-height:normal;font-family:&quot;Courier New&quot;;colo=
r:rgb(244,244,244);background-color:rgba(0,0,0,0.85);min-height:16px"><span=
 style=3D"font-variant-ligatures:no-common-ligatures"></span><br></div><div=
 style=3D"margin:0px;font-stretch:normal;line-height:normal;font-family:&qu=
ot;Courier New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.8=
5)"><span style=3D"font-variant-ligatures:no-common-ligatures">Checking TX:=
 LO: locked ...</span></div><div style=3D"margin:0px;font-stretch:normal;li=
ne-height:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244)=
;background-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:n=
o-common-ligatures">Press Ctrl + C to stop streaming...</span></div><div st=
yle=3D"margin:0px;font-stretch:normal;line-height:normal;font-family:&quot;=
Courier New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"=
><span style=3D"font-variant-ligatures:no-common-ligatures">UUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU=
^C</span></div><div style=3D"margin:0px;font-stretch:normal;line-height:nor=
mal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);background-c=
olor:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-liga=
tures">Done!</span></div><div style=3D"margin:0px;font-stretch:normal;line-=
height:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);ba=
ckground-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-c=
ommon-ligatures">U</span></div><div style=3D"margin:0px;font-stretch:normal=
;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,2=
44);background-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligature=
s:no-common-ligatures">UUUUUUUUUU</span><span style=3D"font-variant-ligatur=
es:no-common-ligatures;color:rgb(52,188,38)">[INFO] [E300] </span><span sty=
le=3D"font-variant-ligatures:no-common-ligatures">Loading FPGA image: /home=
/root/localinstall/usr/share/uhd/images/usrp_e3xx_fpga_idle_sg3.bit...</spa=
n></div><div style=3D"margin:0px;font-stretch:normal;line-height:normal;fon=
t-family:&quot;Courier New&quot;;color:rgb(244,244,244);background-color:rg=
ba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-ligatures;c=
olor:rgb(52,188,38)">[INFO] [E300] </span><span style=3D"font-variant-ligat=
ures:no-common-ligatures">FPGA image loaded</span></div></div><div><br></di=
v><div>Any suggestions on where we should go from here are appreciated. We =
have a few questions.</div><div><br></div><div>1. Does RFNoC included in th=
e default image in E310 now? If so, UHD 3.14.1 branch and all its examples =
supports RFNoC? Which E310 image doesn=E2=80=99t include RFNoC?</div><div><=
br></div><div>2. On our old E310 platforms acquired 3 years ago, we can run=
 TX rate @40MSPS. However, for this E310, there is a warning sign above say=
s :</div><div><span style=3D"font-family:&quot;Courier New&quot;;background=
-color:rgba(0,0,0,0.85);font-variant-ligatures:no-common-ligatures;color:rg=
b(175,173,36)">[WARNING] [RFNOC]=C2=A0</span><span style=3D"color:rgb(244,2=
44,244);font-family:&quot;Courier New&quot;;background-color:rgba(0,0,0,0.8=
5);font-variant-ligatures:no-common-ligatures">[legacy_compat] No FIFO dete=
cted. Higher transmit rates may encounter errors.</span></div><div><span st=
yle=3D"color:rgb(244,244,244)"><br></span></div><div><span>In fact, we trie=
d to set rate high @40MSPS, we got the following messages:</span></div><div=
><span><br></span></div><div><div style=3D"margin:0px;font-stretch:normal;l=
ine-height:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244=
);background-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:=
no-common-ligatures;color:rgb(175,173,36)">[WARNING] [MULTI_USRP] </span><s=
pan style=3D"font-variant-ligatures:no-common-ligatures">The hardware does =
not support the requested TX sample rate:</span></div><div style=3D"margin:=
0px;font-stretch:normal;line-height:normal;font-family:&quot;Courier New&qu=
ot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=
=3D"font-variant-ligatures:no-common-ligatures">Target sample rate: 40.0000=
00 MSps</span></div><div style=3D"margin:0px;font-stretch:normal;line-heigh=
t:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);backgro=
und-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common=
-ligatures">Actual sample rate: 16.000000 MSps</span></div></div><div style=
=3D"margin:0px;font-stretch:normal;line-height:normal;font-family:&quot;Cou=
rier New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><s=
pan style=3D"font-variant-ligatures:no-common-ligatures"><br></span></div><=
div style=3D"margin:0px;font-stretch:normal;line-height:normal;font-family:=
&quot;Courier New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,=
0.85)"><span style=3D"font-variant-ligatures:no-common-ligatures"><br></spa=
n></div><div style=3D"margin:0px;font-stretch:normal;line-height:normal;fon=
t-family:&quot;Courier New&quot;;color:rgb(244,244,244);background-color:rg=
ba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-ligatures">=
Are we using the right FPGA images?</span></div><div style=3D"margin:0px;fo=
nt-stretch:normal;line-height:normal;font-family:&quot;Courier New&quot;;co=
lor:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"font=
-variant-ligatures:no-common-ligatures"><br></span></div><div style=3D"marg=
in:0px;font-stretch:normal;line-height:normal;font-family:&quot;Courier New=
&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span styl=
e=3D"font-variant-ligatures:no-common-ligatures"><br></span></div><div styl=
e=3D"margin:0px;font-stretch:normal;line-height:normal;font-family:&quot;Co=
urier New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><=
span style=3D"font-variant-ligatures:no-common-ligatures">Thanks,</span></d=
iv><div style=3D"margin:0px;font-stretch:normal;line-height:normal;font-fam=
ily:&quot;Courier New&quot;;color:rgb(244,244,244);background-color:rgba(0,=
0,0,0.85)">Z. Cao</div><div style=3D"margin:0px;font-stretch:normal;line-he=
ight:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);back=
ground-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-com=
mon-ligatures"><br></span></div><div style=3D"margin:0px;font-stretch:norma=
l;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,=
244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatur=
es:no-common-ligatures"><br></span></div><div style=3D"margin:0px;font-stre=
tch:normal;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb=
(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-varian=
t-ligatures:no-common-ligatures"><br></span></div><div style=3D"margin:0px;=
font-stretch:normal;line-height:normal;font-family:&quot;Courier New&quot;;=
color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"fo=
nt-variant-ligatures:no-common-ligatures"><br></span></div><div style=3D"ma=
rgin:0px;font-stretch:normal;line-height:normal;font-family:&quot;Courier N=
ew&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span st=
yle=3D"font-variant-ligatures:no-common-ligatures"><br></span></div><div st=
yle=3D"margin:0px;font-stretch:normal;line-height:normal;font-family:&quot;=
Courier New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"=
><span style=3D"font-variant-ligatures:no-common-ligatures"><br></span></di=
v><div style=3D"margin:0px;font-stretch:normal;line-height:normal;font-fami=
ly:&quot;Courier New&quot;;color:rgb(244,244,244);background-color:rgba(0,0=
,0,0.85)"><span style=3D"font-variant-ligatures:no-common-ligatures"><br></=
span></div><div style=3D"margin:0px;font-stretch:normal;line-height:normal;=
font-family:&quot;Courier New&quot;;color:rgb(244,244,244);background-color=
:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-ligature=
s"><br></span></div><div style=3D"margin:0px;font-stretch:normal;line-heigh=
t:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244);backgro=
und-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common=
-ligatures"><br></span></div><div style=3D"margin:0px;font-stretch:normal;l=
ine-height:normal;font-family:&quot;Courier New&quot;;color:rgb(244,244,244=
);background-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:=
no-common-ligatures"><br></span></div><div style=3D"margin:0px;font-stretch=
:normal;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(24=
4,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-variant-l=
igatures:no-common-ligatures"><br></span></div><div style=3D"margin:0px;fon=
t-stretch:normal;line-height:normal;font-family:&quot;Courier New&quot;;col=
or:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=3D"font-=
variant-ligatures:no-common-ligatures"><br></span></div><div style=3D"margi=
n:0px;font-stretch:normal;line-height:normal;font-family:&quot;Courier New&=
quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><span style=
=3D"font-variant-ligatures:no-common-ligatures"><br></span></div><div style=
=3D"margin:0px;font-stretch:normal;line-height:normal;font-family:&quot;Cou=
rier New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,0.85)"><s=
pan style=3D"font-variant-ligatures:no-common-ligatures"><br></span></div><=
div style=3D"margin:0px;font-stretch:normal;line-height:normal;font-family:=
&quot;Courier New&quot;;color:rgb(244,244,244);background-color:rgba(0,0,0,=
0.85)"><span style=3D"font-variant-ligatures:no-common-ligatures"><br></spa=
n></div><div style=3D"margin:0px;font-stretch:normal;line-height:normal;fon=
t-family:&quot;Courier New&quot;;color:rgb(244,244,244);background-color:rg=
ba(0,0,0,0.85)"><span style=3D"font-variant-ligatures:no-common-ligatures">=
<br></span></div></div>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000bcee860598c07518--


--===============8597883732431878648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8597883732431878648==--

