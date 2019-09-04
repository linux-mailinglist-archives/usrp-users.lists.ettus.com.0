Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2230CA8604
	for <lists+usrp-users@lfdr.de>; Wed,  4 Sep 2019 17:17:55 +0200 (CEST)
Received: from [::1] (port=52422 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5X2Z-0004WD-S2; Wed, 04 Sep 2019 11:17:47 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:37975)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1i5X2V-0004OM-DD
 for usrp-users@lists.ettus.com; Wed, 04 Sep 2019 11:17:43 -0400
Received: by mail-ot1-f41.google.com with SMTP id r20so20971413ota.5
 for <usrp-users@lists.ettus.com>; Wed, 04 Sep 2019 08:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nsoo0/exON8S49N4NJr7Qg5UXfgqoms9IY+kbOBGFl4=;
 b=tR6GNC/O5log5vehrq02fg4D0sKsyKAWfYoGpkeITZLiTqmExQ5/hq+vUVt95zRCMF
 nS53Qq87DuCVqpocYFBuPwLTFv3DMn/L0W/Xr8vUwG6GIse9ZZI7LeU9RZHqD9dbMA4Y
 u0Z/YSH5M/l9RvcmO2XImfr4T4lmUmXkUxea0q3HGfFQE95OdmCHNzcMPLrVVpt/nnnv
 0Fht5eqvBjUvJktaTljzJjMFSOR3QxmWTjM1RrdCyxbIuvSmS9ivOGJKkjF7c1PI9IQs
 XmKYECwmFKMcz0EG+XnTtICuN2uRDPLSh6pTLjE30VUcP1RLfRjicDz9JFEmj/981fzF
 7D/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nsoo0/exON8S49N4NJr7Qg5UXfgqoms9IY+kbOBGFl4=;
 b=I6DB9oyvOdbuGwfAxtBZGybudcDHENU6wNf7OZZn8AzNtlUzYLcuY7uKDEJNyUBLrz
 5KeMDHusOfj094jxG/judHTo1VnA+gPqHAAXzqA6YjOMY8pqS20cHXGcQfJAoZFUqJJB
 NVzvj7TTpIQC5BuFdSV4pOnr/nZjbWf63zO8Cl4RchugaHLJnwS1pFaOZoYMezADM3Le
 /xH4bcQrInq3eJST7mmsYUvdCBIJjyU6qYE0zie+xITZFxaC9E+QqdWKtf0t6I+Osmo5
 IUDj0ysoirestm4HCYeQuC7K2PzEDexd449RzOgHa8lHDrHKGMjmLB5p9qXENVjUStE8
 gXkw==
X-Gm-Message-State: APjAAAVHR0BNf53OKY48gaFT8DkEciFbx3jnOWSG4cs0SZk0TbyzPNS8
 zRfaQTVlDVhscfD3BFiWGWV/nC+zxF5yizBxQzxkXqKa
X-Google-Smtp-Source: APXvYqxUa9ULm6jnYtbD/U3y4ytYJXpP6lwY2xTWi8EUi5CBzZV9Fr/ihYqk5qHS3KrPtINdD1o3kFaWEDVMOIn9zes=
X-Received: by 2002:a05:6830:115a:: with SMTP id
 x26mr3014286otq.231.1567610222574; 
 Wed, 04 Sep 2019 08:17:02 -0700 (PDT)
MIME-Version: 1.0
References: <38E0BEB98EBB5941BDC0A8EA39458CB4A88E0D34@DLDEFFMIMP04EXC.intra.dlr.de>
In-Reply-To: <38E0BEB98EBB5941BDC0A8EA39458CB4A88E0D34@DLDEFFMIMP04EXC.intra.dlr.de>
Date: Wed, 4 Sep 2019 08:17:39 -0700
Message-ID: <CAL263iyOs=-srcJh8H5cQ0wm0PCAKsRZw55A5wDQ=6pCXCD1XQ@mail.gmail.com>
To: Emanuel.Staudinger@dlr.de
Subject: Re: [USRP-users] N200: Sequence error at low sampling rate
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0385250126128302270=="
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

--===============0385250126128302270==
Content-Type: multipart/alternative; boundary="00000000000076958f0591bbb232"

--00000000000076958f0591bbb232
Content-Type: text/plain; charset="UTF-8"

Hi Emanuel,

What ethernet controller is installed on your NUC?

lspci | grep Ethernet


Can you try rebooting the NUC, and then run a benchmark to trigger the
sequence errors, after that run:

ethtool -S <interface>

and send its output.

Regards,
Nate Temple

On Tue, Sep 3, 2019 at 1:35 AM Emanuel via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi everybody,
>
> I experience a weird behavior while streaming from my N200 at low sampling
> rates.
> The setup is as follows: USRP N200 with latest FPGA image, UHD Version
> 3.14.1.0, Host computer is a Intel NUC Hades Canyon with Ubuntu 18.04 LTS
> and CPU governor set to performance. The USRP is directly connected to the
> NUC (no switch in between)
>
> If I use the benchmark program at 1 MHz sampling rate, I get multiple
> sequence errors, see one example log at the end of this Mail. It does not
> seem to correlate with the MTU size: I tried smaller ones and in same cases
> a smaller MTU size (about 1000) seems to decrease the number of sequence
> errors a bit. The overall CPU load is pretty small. I also experience the
> same troubles if I simply stream into a null-sink or any other block in
> Gnuradio.
>
> If I use a sampling rate of 20MHz or 25MHz I do not get any sequence
> errors. And that's what puzzles me: Does anyone have an idea why it works
> worse at low sampling rates?
>
> In the manual I found the entry about the ups_per_fifo and ups_per_sec for
> the N200 series. However, I did not find more information on that: Would
> changing those settings help, and if so, in which direction should I change
> those parameters?
>
> Best regards,
> Emanuel
>
> xx@xx:/usr/local/lib/uhd/examples$ ./benchmark_rate --duration 600
> --rx_subdev A:A --rx_rate 1e6 --args "addr=192.168.21.2"
>
> [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106501;
> UHD_3.14.1.HEAD-0-gbfb9c1c7
> [00:00:00.000001] Creating the usrp device with: addr=192.168.21.2...
> [INFO] [USRP2] Opening a USRP2/N-Series device...
> [INFO] [USRP2] Current recv frame size: 1472 bytes
> [INFO] [USRP2] Current send frame size: 1472 bytes
> [INFO] [USRP2] Detecting internal GPSDO....
> [INFO] [GPS] Found an internal GPSDO: Jackson-Labs, FireFly , Firmware Rev
> 0.929
> [INFO] [USRP2] Setting references to the internal GPSDO
> Using Device: Single USRP:
>   Device: USRP2 / N-Series Device
>   Mboard 0: N200r4
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: BasicRX (A)
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: Unknown (0xffff) - 0
>
> [00:00:02.491478] Setting device timestamp to 0...
> [00:00:02.491698] Testing receive rate 1.000000 Msps on 1 channels
> [D00:01:03.889970] Detected Rx sequence error.
> [D00:01:28.796795] Detected Rx sequence error.
> [D00:01:32.880153] Detected Rx sequence error.
> [D00:02:34.087632] Detected Rx sequence error.
> [D00:05:13.241379] Detected Rx sequence error.
> [D00:06:13.370751] Detected Rx sequence error.
> [D00:07:05.771504] Detected Rx sequence error.
> [D00:07:12.235087] Detected Rx sequence error.
> [D00:08:25.865832] Detected Rx sequence error.
> [D00:09:18.883324] Detected Rx sequence error.
> [00:10:02.491954] Benchmark complete.
>
>
> Benchmark rate summary:
>   Num received samples:     599997347
>   Num dropped samples:      3630
>   Num overruns detected:    0
>   Num transmitted samples:  0
>   Num sequence errors (Tx): 0
>   Num sequence errors (Rx): 10
>   Num underruns detected:   0
>   Num late commands:        0
>   Num timeouts (Tx):        0
>   Num timeouts (Rx):        0
>
>
> Done!
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000076958f0591bbb232
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Emanuel,<br><br>What ethernet controller is installe=
d on your NUC? =C2=A0<br><br>lspci | grep Ethernet<br><br><br>Can you try r=
ebooting the NUC, and then run a benchmark to trigger the sequence errors, =
after that run:<br><br>ethtool -S &lt;interface&gt; <br><br>and send its ou=
tput.<br><br>Regards,<br>Nate Temple</div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 3, 2019 at 1:35 AM Em=
anuel via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp=
-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">




<div>
<div style=3D"direction:ltr;font-family:Tahoma;color:rgb(0,0,0);font-size:1=
0pt">
<div>Hi everybody,</div>
<div><br>
</div>
<div>I experience a weird behavior while streaming from my N200 at low samp=
ling rates.</div>
<div>The setup is as follows: USRP N200 with latest FPGA image, UHD Version=
 3.14.1.0, Host computer is a Intel NUC Hades Canyon with Ubuntu 18.04 LTS =
and CPU governor set to performance. The USRP is directly connected to the =
NUC (no switch in between)<br>
</div>
<div><br>
</div>
<div>If I use the benchmark program at 1 MHz sampling rate, I get multiple =
sequence errors, see one example log at the end of this Mail. It does not s=
eem to correlate with the MTU size: I tried smaller ones and in same cases =
a smaller MTU size (about 1000)
 seems to decrease the number of sequence errors a bit. The overall CPU loa=
d is pretty small. I also experience the same troubles if I simply stream i=
nto a null-sink or any other block in Gnuradio.<br>
</div>
<div><br>
</div>
<div>If I use a sampling rate of 20MHz or 25MHz I do not get any sequence e=
rrors. And that&#39;s what puzzles me: Does anyone have an idea why it work=
s worse at low sampling rates?</div>
<div><br>
</div>
<div>In the manual I found the entry about the ups_per_fifo and ups_per_sec=
 for the N200 series. However, I did not find more information on that: Wou=
ld changing those settings help, and if so, in which direction should I cha=
nge those parameters?<br>
</div>
<div><br>
</div>
<div>Best regards,</div>
<div>Emanuel</div>
<div><br>
</div>
<div>xx@xx:/usr/local/lib/uhd/examples$ ./benchmark_rate --duration 600 --r=
x_subdev A:A --rx_rate 1e6 --args &quot;addr=3D192.168.21.2&quot;<br>
<br>
[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106501; UHD_3.14.1.HEAD-0-=
gbfb9c1c7<br>
[00:00:00.000001] Creating the usrp device with: addr=3D192.168.21.2...<br>
[INFO] [USRP2] Opening a USRP2/N-Series device...<br>
[INFO] [USRP2] Current recv frame size: 1472 bytes<br>
[INFO] [USRP2] Current send frame size: 1472 bytes<br>
[INFO] [USRP2] Detecting internal GPSDO.... <br>
[INFO] [GPS] Found an internal GPSDO: Jackson-Labs, FireFly , Firmware Rev =
0.929<br>
[INFO] [USRP2] Setting references to the internal GPSDO<br>
Using Device: Single USRP:<br>
=C2=A0 Device: USRP2 / N-Series Device<br>
=C2=A0 Mboard 0: N200r4<br>
=C2=A0 RX Channel: 0<br>
=C2=A0=C2=A0=C2=A0 RX DSP: 0<br>
=C2=A0=C2=A0=C2=A0 RX Dboard: A<br>
=C2=A0=C2=A0=C2=A0 RX Subdev: BasicRX (A)<br>
=C2=A0 TX Channel: 0<br>
=C2=A0=C2=A0=C2=A0 TX DSP: 0<br>
=C2=A0=C2=A0=C2=A0 TX Dboard: A<br>
=C2=A0=C2=A0=C2=A0 TX Subdev: Unknown (0xffff) - 0<br>
<br>
[00:00:02.491478] Setting device timestamp to 0...<br>
[00:00:02.491698] Testing receive rate 1.000000 Msps on 1 channels<br>
[D00:01:03.889970] Detected Rx sequence error.<br>
[D00:01:28.796795] Detected Rx sequence error.<br>
[D00:01:32.880153] Detected Rx sequence error.<br>
[D00:02:34.087632] Detected Rx sequence error.<br>
[D00:05:13.241379] Detected Rx sequence error.<br>
[D00:06:13.370751] Detected Rx sequence error.<br>
[D00:07:05.771504] Detected Rx sequence error.<br>
[D00:07:12.235087] Detected Rx sequence error.<br>
[D00:08:25.865832] Detected Rx sequence error.<br>
[D00:09:18.883324] Detected Rx sequence error.<br>
[00:10:02.491954] Benchmark complete.<br>
<br>
<br>
Benchmark rate summary:<br>
=C2=A0 Num received samples:=C2=A0=C2=A0=C2=A0=C2=A0 599997347<br>
=C2=A0 Num dropped samples:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3630<br>
=C2=A0 Num overruns detected:=C2=A0=C2=A0=C2=A0 0<br>
=C2=A0 Num transmitted samples:=C2=A0 0<br>
=C2=A0 Num sequence errors (Tx): 0<br>
=C2=A0 Num sequence errors (Rx): 10<br>
=C2=A0 Num underruns detected:=C2=A0=C2=A0 0<br>
=C2=A0 Num late commands:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0<br>
=C2=A0 Num timeouts (Tx):=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0<br>
=C2=A0 Num timeouts (Rx):=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0<br>
<br>
<br>
Done!<br>
<br>
</div>
<div><br>
</div>
<div><br>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000076958f0591bbb232--


--===============0385250126128302270==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0385250126128302270==--

