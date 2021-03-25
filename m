Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E5F34881D
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 05:56:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DD19A384017
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 00:56:29 -0400 (EDT)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 33DCC383A4D
	for <usrp-users@lists.ettus.com>; Thu, 25 Mar 2021 00:55:37 -0400 (EDT)
Received: by mail-ua1-f45.google.com with SMTP id b7so82708uam.10
        for <usrp-users@lists.ettus.com>; Wed, 24 Mar 2021 21:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QV6tPi/HZHcI+4I01FqfDj1Sgboc7mnZV0gBO8RCjTg=;
        b=kMdNdvpBRTz8iygkCW71gA3JlTnA9IgA8uSIlLrllsrqayBnIPlDZpbSwotCGf7PCF
         QOE8u0zdc2uc4FpdkY1vd6ZTCwWpXhdVMlUbiVzm+ygivNA6IEWmYmPlEpyPxj939iek
         k8RbM22bsMlOCZgbVjOGllVCLOxZafggd+aAl0dcebrCJXZkkHQj+wPHdPvECXQz/e3s
         Ap8SrqAOdY4qap6u5CUbu+H2L4JMXw7iHtxwExOkJmP4xbqaYE78OyXZIstaJD1/vrs5
         VkX8zyX+4Z7COeLl5cGxQ1/Ep+LJ7oLNmGLqhDAZMFX9uVgVLsXbCfNm2RZmCrsPfJ3k
         /aNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QV6tPi/HZHcI+4I01FqfDj1Sgboc7mnZV0gBO8RCjTg=;
        b=f0BULb+zuY36rGMSl18MGMeXs5xsOO6NhAqKk6LuEl/X5frH65W2le9sgkgNCEZx1F
         EEEO4kJNqeIfdu924FDLRnPILh8pz+L/OS3WwUn5R0I7Jiy+6xWd+z3+Xcg2q0KFDzXz
         v9JXV3dmD86i8MeszslSUwPlYmp7eahGiJabQFFuhezifMHBAOj2l/7BzA8SMD5aPTIO
         HUi/2KRpl4V9SirDQXktPWtfNtlvhnpeYUynknEkR7huxLu0lEkXOsuqdQEpxIdO5g0W
         18DBovmzz7lRjsj7PzKRKUkng+Tssb/WWf+9a7SbcKGEupw++j28KRItu1cCwfn91Rs9
         2rXQ==
X-Gm-Message-State: AOAM533yIyIenOj/D+qhiID6MWoGyun/+2++PJjN3UqV8Kmly02OIFXJ
	j115y4CTBcUqwPbzeSKJ6H5fVWCnVjENoB91OgrgFEBz
X-Google-Smtp-Source: ABdhPJyJ20wyPctwOVL7Te8znbX/OJFt7TKAn6v1RgWInqeyvu9u+8WXA2EVl58gN4oZjQWMhR2/Q08bHBt1v+Ro/cU=
X-Received: by 2002:a9f:3f09:: with SMTP id h9mr3853614uaj.139.1616648136614;
 Wed, 24 Mar 2021 21:55:36 -0700 (PDT)
MIME-Version: 1.0
References: <FUcaf1mlodlwRBWLsAbYL3Ch7jPE803adsIrofQPBA@lists.ettus.com>
In-Reply-To: <FUcaf1mlodlwRBWLsAbYL3Ch7jPE803adsIrofQPBA@lists.ettus.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Thu, 25 Mar 2021 00:55:00 -0400
Message-ID: <CAL7q81sMYF641DVQ36POZCgLx58DNOwY8UCSfWyug9X9qem6GA@mail.gmail.com>
To: Julian Casallas <jcasallas2019@gmail.com>
Message-ID-Hash: HE5RUZ5M7I4A3T52OQMI5C5LUP6UDAIS
X-Message-ID-Hash: HE5RUZ5M7I4A3T52OQMI5C5LUP6UDAIS
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding DmaFIFO block like FFT block in UHD 4 guide.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HE5RUZ5M7I4A3T52OQMI5C5LUP6UDAIS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0241528633664142728=="

--===============0241528633664142728==
Content-Type: multipart/alternative; boundary="000000000000e8f86305be553945"

--000000000000e8f86305be553945
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Julian,

The DmaFIFO block, which I believe is now called axi_ram_fifo in RFNoC 4,
does not have GNU Radio support. There is an effort to add support for
several blocks missing from GNU Radio, but I'm not sure if axi_ram_fifo
will be included in that effort. If it were available, can you share how
you were going to use it?

Jonathon

On Fri, Mar 19, 2021 at 4:48 PM <jcasallas2019@gmail.com> wrote:

> hi all,
>
> I am trying to add DmaFIFO block following UHD 4 Getting started guide in
> the same way the FFT block was added, but when looking into gr-ettus/grc/
> folder, I did not find any ettus_rfnoc_dmaFIFO yaml file like the rest of
> default blocks..
>
> This is what I found in /usr/local/share/=E2=80=A6 and did not see any rf=
noc
> DmaFIFO block.
>
>
> -rw-r--r-- 1 root root 166 Mar 2 14:58 ettus_fpga_clk.domain.yml
>
> -rw-r--r-- 1 root root 171 Mar 2 14:58 ettus_fpga_ctrl.domain.yml
>
> -rw-r--r-- 1 root root 168 Mar 2 14:58 ettus_fpga_data.domain.yml
>
> -rw-r--r-- 1 root root 618 Mar 2 14:58 ettus_fpga_ddc.block.yml
>
> -rw-r--r-- 1 root root 617 Mar 2 14:58 ettus_fpga_duc.block.yml
>
> -rw-r--r-- 1 root root 131 Mar 2 14:58 ettus_fpga_fft.block.yml
>
> -rw-r--r-- 1 root root 200 Mar 2 14:58 ettus_fpga_io_ctrl_port.domain.yml
>
> -rw-r--r-- 1 root root 181 Mar 2 14:58 ettus_fpga_io_radio.domain.yml
>
> -rw-r--r-- 1 root root 205 Mar 2 14:58 ettus_fpga_io_time_keeper.domain.y=
ml
>
> -rw-r--r-- 1 root root 820 Mar 2 14:58 ettus_fpga_radio.block.yml
>
> -rw-r--r-- 1 root root 811 Mar 2 14:58 ettus_fpga_sep.block.yml
>
> -rw-r--r-- 1 root root 663 Mar 2 14:58 ettus_fpga_x310.block.yml
>
> -rw-r--r-- 1 root root 1056 Mar 2 14:58 ettus_rfnoc_ddc.block.yml
>
> -rw-r--r-- 1 root root 1022 Mar 9 13:36 ettus_rfnoc_duc.block.yml
>
> -rw-r--r-- 1 root root 2174 Mar 2 14:58 ettus_rfnoc_fft.block.yml
>
> -rw-r--r-- 1 root root 3990 Mar 2 14:58 ettus_rfnoc_fosphor.block.yml
>
> -rw-r--r-- 1 root root 4842 Mar 2 14:58 ettus_rfnoc_graph.block.yml
>
> -rw-r--r-- 1 root root 1950 Mar 2 14:58 ettus_rfnoc_rx_radio.block.yml
>
> -rw-r--r-- 1 root root 1266 Mar 2 14:58 ettus_rfnoc_rx_streamer.block.yml
>
> -rw-r--r-- 1 root root 1580 Mar 2 14:58 ettus_rfnoc_tx_radio.block.yml
>
> -rw-r--r-- 1 root root 1187 Mar 2 14:58 ettus_rfnoc_tx_streamer.block.yml
>
> -rw-r--r-- 1 root root 675 Mar 2 14:58 ettus.tree.yml
>
>
> I wonder if I am missing a step to make the DmaFIFO works with gnuradio
> like the FFT block example.
>
>
> Thanks
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e8f86305be553945
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Julian,<div><br></div><div>The DmaFIFO block, which I b=
elieve is now called axi_ram_fifo in RFNoC 4, does not have GNU Radio suppo=
rt. There is an effort to add support for several blocks missing from GNU R=
adio, but I&#39;m not sure if axi_ram_fifo will be included in that effort.=
 If it were available, can you share how you were going to use it?</div><di=
v><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, Mar 19, 2021 at 4:48 PM &lt;<a href=
=3D"mailto:jcasallas2019@gmail.com">jcasallas2019@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>hi all,</p><p=
>I am trying to add DmaFIFO block following UHD 4 Getting started guide in =
the same way the FFT block was added, but when looking into gr-ettus/grc/ f=
older, I did not find any ettus_rfnoc_dmaFIFO  yaml  file like the rest of =
default blocks..</p><p>This is what I found in /usr/local/share/=E2=80=A6 a=
nd did not see any rfnoc DmaFIFO block. </p><p><br></p><p> <code>-rw-r--r--=
 1 root root    166 Mar  2 14:58 ettus_fpga_clk.domain.yml</code></p><p><co=
de>-rw-r--r-- 1 root root    171 Mar  2 14:58 ettus_fpga_ctrl.domain.yml</c=
ode></p><p><code>-rw-r--r-- 1 root root    168 Mar  2 14:58 ettus_fpga_data=
.domain.yml</code></p><p><code>-rw-r--r-- 1 root root    618 Mar  2 14:58 e=
ttus_fpga_ddc.block.yml</code></p><p><code>-rw-r--r-- 1 root root    617 Ma=
r  2 14:58 ettus_fpga_duc.block.yml</code></p><p><code>-rw-r--r-- 1 root ro=
ot    131 Mar  2 14:58 ettus_fpga_fft.block.yml</code></p><p><code>-rw-r--r=
-- 1 root root    200 Mar  2 14:58 ettus_fpga_io_ctrl_port.domain.yml</code=
></p><p><code>-rw-r--r-- 1 root root    181 Mar  2 14:58 ettus_fpga_io_radi=
o.domain.yml</code></p><p><code>-rw-r--r-- 1 root root    205 Mar  2 14:58 =
ettus_fpga_io_time_keeper.domain.yml</code></p><p><code>-rw-r--r-- 1 root r=
oot    820 Mar  2 14:58 ettus_fpga_radio.block.yml</code></p><p><code>-rw-r=
--r-- 1 root root    811 Mar  2 14:58 ettus_fpga_sep.block.yml</code></p><p=
><code>-rw-r--r-- 1 root root    663 Mar  2 14:58 ettus_fpga_x310.block.yml=
</code></p><p><code>-rw-r--r-- 1 root root   1056 Mar  2 14:58 ettus_rfnoc_=
ddc.block.yml</code></p><p><code>-rw-r--r-- 1 root root   1022 Mar  9 13:36=
 ettus_rfnoc_duc.block.yml</code></p><p><code>-rw-r--r-- 1 root root   2174=
 Mar  2 14:58 ettus_rfnoc_fft.block.yml</code></p><p><code>-rw-r--r-- 1 roo=
t root   3990 Mar  2 14:58 ettus_rfnoc_fosphor.block.yml</code></p><p><code=
>-rw-r--r-- 1 root root   4842 Mar  2 14:58 ettus_rfnoc_graph.block.yml</co=
de></p><p><code>-rw-r--r-- 1 root root   1950 Mar  2 14:58 ettus_rfnoc_rx_r=
adio.block.yml</code></p><p><code>-rw-r--r-- 1 root root   1266 Mar  2 14:5=
8 ettus_rfnoc_rx_streamer.block.yml</code></p><p><code>-rw-r--r-- 1 root ro=
ot   1580 Mar  2 14:58 ettus_rfnoc_tx_radio.block.yml</code></p><p><code>-r=
w-r--r-- 1 root root   1187 Mar  2 14:58 ettus_rfnoc_tx_streamer.block.yml<=
/code></p><p><code>-rw-r--r-- 1 root root    675 Mar  2 14:58 ettus.tree.ym=
l</code></p><p><br></p><p>I wonder if I am missing a step to make the DmaFI=
FO works with gnuradio like the FFT block example.</p><p><br></p><p>Thanks<=
/p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e8f86305be553945--

--===============0241528633664142728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0241528633664142728==--
