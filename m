Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5825C349547
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 16:22:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07AD2383926
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 11:22:26 -0400 (EDT)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 725E53838EB
	for <usrp-users@lists.ettus.com>; Thu, 25 Mar 2021 11:21:34 -0400 (EDT)
Received: by mail-ej1-f54.google.com with SMTP id l4so3515886ejc.10
        for <usrp-users@lists.ettus.com>; Thu, 25 Mar 2021 08:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xZiB13ai3xlYTn9liEbAtUuqRKwowfaYK3BCJVmVcxw=;
        b=ZlJ1uazGXa6nwJHTnLoVRIgOvsNC40K7mRnE7vR5siQiehG2kXYUjcTCZ+6nGViUv/
         ggqJSOtgE0huL6sFvTJo8BOTVYkONWsNxhO2JxtcfgifLALNxsBdDmj9oLkgD77xT9aS
         FZXGHe52hv10nFXlS54NklrRrIm7PXoZf62/9zPPG7R3/MQrhe9qJYAVCQ/DSuyIl5PO
         WqBO7vFchyRiz11vx411tOIHpMAT6JfqwdZEQEwYLU+Jf6EHBwOThEKiEC3xaN+l0x1A
         UlHX/DRMBhjZAdwVKwD4E4WEnnicnx/7xQxQY7aIKRarF0b1JTeE5zUvlsTsWEM6layu
         1j5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xZiB13ai3xlYTn9liEbAtUuqRKwowfaYK3BCJVmVcxw=;
        b=s111pNW3KSLMyH7UflK39aF88Ywe96YcYLDcbkHwY3b3qxUKWCWQGfyzUrVVu4BHmG
         6Ya8zQ7kLQ2Kof+LjnDeKAZdbQMm+t/cz5P96txXDyWUQPQ6gw3UJ/aZjGY/1576U+f5
         8TQP4D//5bSVSSw8EUMqjjVal7YIq+iSmu0IYqqjLPP9C+qF6oCDgrCkCgROFv+SfFa9
         TMJqrSQCH9tLNmTSNh5D6CXtrdZrPmMqM9ryFBh8FXvhqp/jhFRW+TqBSxHEtIO1miwg
         k977t/hC/WrPjjqYhDVwM4f8A3sAx2EJ9f/lbYhRUwASCt70rmnf6xgNJiKBc753fPAy
         5iKg==
X-Gm-Message-State: AOAM533bxhnNsj+mBpevkQaRGSp/B23y7WaIW+Tq7MmgXe0KoEpT0sbZ
	3M3uAWGXHDSEcghOvU/zj1tnXgNsxY3JftR25IcXcQEIJL4=
X-Google-Smtp-Source: ABdhPJxutMO6zXUZmVkYLaev0dURPvBtfwHnBG+7jlff38G0z/LET88cqqjdR936nPrU9j1YFArf2RpQ+B7iqkvNE2Q=
X-Received: by 2002:a17:907:110c:: with SMTP id qu12mr10214012ejb.442.1616685692110;
 Thu, 25 Mar 2021 08:21:32 -0700 (PDT)
MIME-Version: 1.0
References: <FUcaf1mlodlwRBWLsAbYL3Ch7jPE803adsIrofQPBA@lists.ettus.com> <CAL7q81sMYF641DVQ36POZCgLx58DNOwY8UCSfWyug9X9qem6GA@mail.gmail.com>
In-Reply-To: <CAL7q81sMYF641DVQ36POZCgLx58DNOwY8UCSfWyug9X9qem6GA@mail.gmail.com>
From: Julian Casallas <jcasallas2019@gmail.com>
Date: Thu, 25 Mar 2021 11:21:20 -0400
Message-ID: <CAFBYX1UWqZAVbC7RC3x3zNJ8buBfsfCVK4pf+1Sj5g=RGFGAxw@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: 2HN6FZYKEDEROVR7R4HKPIJ2JKQQ3ZNS
X-Message-ID-Hash: 2HN6FZYKEDEROVR7R4HKPIJ2JKQQ3ZNS
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding DmaFIFO block like FFT block in UHD 4 guide.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2HN6FZYKEDEROVR7R4HKPIJ2JKQQ3ZNS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7215710920459417918=="

--===============7215710920459417918==
Content-Type: multipart/alternative; boundary="00000000000064494505be5df82c"

--00000000000064494505be5df82c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jonathon,

Thank you for replying back, I have watched both videos RFNoC 3 and 4 and
based on them along with the UHD 4 guide, I noticed that the DmaFIFO was
used in some cases.

For instance, based on the video RFNoC 3,  in the  fosphor demo with 100M
Rate, DmaFIFO and RFNoC FIFO blocks were used, also in your gain example
you used RFNoC: FIFO block.

In our case, using UHD 4 with ubuntu 20.04 when we run the benchmark, based
on the FPGA default image (there is no DmaFIFO), we noticed that there are
several U, D and Os. So I decided to tune the system following the USRP
tips and tricks  guide, the system improved but still a handful of Us in 60
seconds 100Msps both channels in x310.

On the other hand, last year I used the same x310 for 5G base station
with "*ubuntu
16.04 [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
UHD_3.15.0.HEAD-0-gaea0e2de*

*[00:00:00.000002] Creating the usrp device ..*.."    and tuned based on
the USRP tricks and tips guide. I could run the benchmark for 600 seconds
100MSPS 2 channels with no issues using the default image which for that
UHD version it had DmaFIFO.


For our project we want to achieve 100Msps in a loopback mode with the host
in the middle but we can not afford losing data.

What do you think would be our best approach, going back to 16.04 OR keep
using the 20.04 and add the DmaFIFO which might help when running the
benchmark at 100MSPS loopback mode?


We still need to add our own RFNoC block.


Thanks again.

JC

On Thu, Mar 25, 2021 at 12:55 AM Jonathon Pendlum <
jonathon.pendlum@ettus.com> wrote:

> Hi Julian,
>
> The DmaFIFO block, which I believe is now called axi_ram_fifo in RFNoC 4,
> does not have GNU Radio support. There is an effort to add support for
> several blocks missing from GNU Radio, but I'm not sure if axi_ram_fifo
> will be included in that effort. If it were available, can you share how
> you were going to use it?
>
> Jonathon
>
> On Fri, Mar 19, 2021 at 4:48 PM <jcasallas2019@gmail.com> wrote:
>
>> hi all,
>>
>> I am trying to add DmaFIFO block following UHD 4 Getting started guide i=
n
>> the same way the FFT block was added, but when looking into gr-ettus/grc=
/
>> folder, I did not find any ettus_rfnoc_dmaFIFO yaml file like the rest o=
f
>> default blocks..
>>
>> This is what I found in /usr/local/share/=E2=80=A6 and did not see any r=
fnoc
>> DmaFIFO block.
>>
>>
>> -rw-r--r-- 1 root root 166 Mar 2 14:58 ettus_fpga_clk.domain.yml
>>
>> -rw-r--r-- 1 root root 171 Mar 2 14:58 ettus_fpga_ctrl.domain.yml
>>
>> -rw-r--r-- 1 root root 168 Mar 2 14:58 ettus_fpga_data.domain.yml
>>
>> -rw-r--r-- 1 root root 618 Mar 2 14:58 ettus_fpga_ddc.block.yml
>>
>> -rw-r--r-- 1 root root 617 Mar 2 14:58 ettus_fpga_duc.block.yml
>>
>> -rw-r--r-- 1 root root 131 Mar 2 14:58 ettus_fpga_fft.block.yml
>>
>> -rw-r--r-- 1 root root 200 Mar 2 14:58 ettus_fpga_io_ctrl_port.domain.ym=
l
>>
>> -rw-r--r-- 1 root root 181 Mar 2 14:58 ettus_fpga_io_radio.domain.yml
>>
>> -rw-r--r-- 1 root root 205 Mar 2 14:58
>> ettus_fpga_io_time_keeper.domain.yml
>>
>> -rw-r--r-- 1 root root 820 Mar 2 14:58 ettus_fpga_radio.block.yml
>>
>> -rw-r--r-- 1 root root 811 Mar 2 14:58 ettus_fpga_sep.block.yml
>>
>> -rw-r--r-- 1 root root 663 Mar 2 14:58 ettus_fpga_x310.block.yml
>>
>> -rw-r--r-- 1 root root 1056 Mar 2 14:58 ettus_rfnoc_ddc.block.yml
>>
>> -rw-r--r-- 1 root root 1022 Mar 9 13:36 ettus_rfnoc_duc.block.yml
>>
>> -rw-r--r-- 1 root root 2174 Mar 2 14:58 ettus_rfnoc_fft.block.yml
>>
>> -rw-r--r-- 1 root root 3990 Mar 2 14:58 ettus_rfnoc_fosphor.block.yml
>>
>> -rw-r--r-- 1 root root 4842 Mar 2 14:58 ettus_rfnoc_graph.block.yml
>>
>> -rw-r--r-- 1 root root 1950 Mar 2 14:58 ettus_rfnoc_rx_radio.block.yml
>>
>> -rw-r--r-- 1 root root 1266 Mar 2 14:58 ettus_rfnoc_rx_streamer.block.ym=
l
>>
>> -rw-r--r-- 1 root root 1580 Mar 2 14:58 ettus_rfnoc_tx_radio.block.yml
>>
>> -rw-r--r-- 1 root root 1187 Mar 2 14:58 ettus_rfnoc_tx_streamer.block.ym=
l
>>
>> -rw-r--r-- 1 root root 675 Mar 2 14:58 ettus.tree.yml
>>
>>
>> I wonder if I am missing a step to make the DmaFIFO works with gnuradio
>> like the FFT block example.
>>
>>
>> Thanks
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000064494505be5df82c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Jonathon,<div><br></div><div>Thank you for replyin=
g back, I have watched both videos RFNoC 3 and 4 and based on them along wi=
th the UHD 4 guide, I noticed that the DmaFIFO was used in some cases.=C2=
=A0</div><div><br></div><div>For instance, based on the video RFNoC 3,=C2=
=A0 in the=C2=A0 fosphor demo with 100M Rate, DmaFIFO and RFNoC FIFO blocks=
 were used, also in your gain example you used RFNoC: FIFO block.=C2=A0=C2=
=A0</div><div><br></div><div>In our case, using UHD 4 with ubuntu 20.04 whe=
n we run the benchmark, based on the FPGA default=C2=A0image (there is no D=
maFIFO), we noticed that there are several U, D and Os. So I decided to tun=
e the system following the USRP tips and tricks=C2=A0 guide, the system imp=
roved but still a handful of Us in 60 seconds 100Msps both channels in x310=
.=C2=A0</div><div><br></div><div>On the other hand, last year I used the sa=
me x310 for 5G base station with &quot;<u><i>ubuntu 16.04=C2=A0<span style=
=3D"font-family:Calibri;font-size:11pt">[INFO] [UHD] linux;
GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.15.0.HEAD-0-gaea0e2de</=
span></i></u></div>

<p style=3D"margin:0in;font-size:11pt"><span style=3D"font-family:Calibri">=
<u><i>[00:00:00.000002]
Creating the usrp device ..</i></u>..&quot;=C2=A0 =C2=A0 </span><font face=
=3D"arial, sans-serif">and tuned based on the USRP tricks and tips guide. I=
 could run the benchmark for 600 seconds 100MSPS 2 channels with no issues =
using the default=C2=A0image which for that UHD version it had DmaFIFO.=C2=
=A0</font></p><p style=3D"margin:0in;font-size:11pt"><font face=3D"arial, s=
ans-serif"><br></font></p><p style=3D"margin:0in;font-size:11pt"><font face=
=3D"arial, sans-serif">For our project we want to achieve 100Msps in a loop=
back mode with the host in the middle but we can not afford losing data.=C2=
=A0</font></p><p style=3D"margin:0in;font-size:11pt"><font face=3D"arial, s=
ans-serif">What do you think would be our best approach, g</font><span styl=
e=3D"font-family:arial,sans-serif;font-size:11pt">oing back to 16.04 OR kee=
p using the 20.04 and add the DmaFIFO which might help when running the ben=
chmark at 100MSPS loopback mode?</span></p><p style=3D"margin:0in;font-size=
:11pt"><span style=3D"font-family:arial,sans-serif;font-size:11pt"><br></sp=
an></p><p style=3D"margin:0in;font-size:11pt"><span style=3D"font-family:ar=
ial,sans-serif;font-size:11pt">We still need to add our own RFNoC block.=C2=
=A0</span></p><p style=3D"margin:0in;font-size:11pt"><span style=3D"font-fa=
mily:arial,sans-serif;font-size:11pt"><br></span></p><p style=3D"margin:0in=
;font-size:11pt"><span style=3D"font-family:arial,sans-serif;font-size:11pt=
">Thanks again.</span></p><p style=3D"margin:0in;font-size:11pt"><span styl=
e=3D"font-family:arial,sans-serif;font-size:11pt">JC</span></p></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar =
25, 2021 at 12:55 AM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlu=
m@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">H=
i Julian,<div><br></div><div>The DmaFIFO block, which I believe is now call=
ed axi_ram_fifo in RFNoC 4, does not have GNU Radio support. There is an ef=
fort to add support for several blocks missing from GNU Radio, but I&#39;m =
not sure if axi_ram_fifo will be included in that effort. If it were availa=
ble, can you share how you were going to use it?</div><div><br></div><div>J=
onathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, Mar 19, 2021 at 4:48 PM &lt;<a href=3D"mailto:jcasalla=
s2019@gmail.com" target=3D"_blank">jcasallas2019@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>hi all,</p><p>=
I am trying to add DmaFIFO block following UHD 4 Getting started guide in t=
he same way the FFT block was added, but when looking into gr-ettus/grc/ fo=
lder, I did not find any ettus_rfnoc_dmaFIFO  yaml  file like the rest of d=
efault blocks..</p><p>This is what I found in /usr/local/share/=E2=80=A6 an=
d did not see any rfnoc DmaFIFO block. </p><p><br></p><p> <code>-rw-r--r-- =
1 root root    166 Mar  2 14:58 ettus_fpga_clk.domain.yml</code></p><p><cod=
e>-rw-r--r-- 1 root root    171 Mar  2 14:58 ettus_fpga_ctrl.domain.yml</co=
de></p><p><code>-rw-r--r-- 1 root root    168 Mar  2 14:58 ettus_fpga_data.=
domain.yml</code></p><p><code>-rw-r--r-- 1 root root    618 Mar  2 14:58 et=
tus_fpga_ddc.block.yml</code></p><p><code>-rw-r--r-- 1 root root    617 Mar=
  2 14:58 ettus_fpga_duc.block.yml</code></p><p><code>-rw-r--r-- 1 root roo=
t    131 Mar  2 14:58 ettus_fpga_fft.block.yml</code></p><p><code>-rw-r--r-=
- 1 root root    200 Mar  2 14:58 ettus_fpga_io_ctrl_port.domain.yml</code>=
</p><p><code>-rw-r--r-- 1 root root    181 Mar  2 14:58 ettus_fpga_io_radio=
.domain.yml</code></p><p><code>-rw-r--r-- 1 root root    205 Mar  2 14:58 e=
ttus_fpga_io_time_keeper.domain.yml</code></p><p><code>-rw-r--r-- 1 root ro=
ot    820 Mar  2 14:58 ettus_fpga_radio.block.yml</code></p><p><code>-rw-r-=
-r-- 1 root root    811 Mar  2 14:58 ettus_fpga_sep.block.yml</code></p><p>=
<code>-rw-r--r-- 1 root root    663 Mar  2 14:58 ettus_fpga_x310.block.yml<=
/code></p><p><code>-rw-r--r-- 1 root root   1056 Mar  2 14:58 ettus_rfnoc_d=
dc.block.yml</code></p><p><code>-rw-r--r-- 1 root root   1022 Mar  9 13:36 =
ettus_rfnoc_duc.block.yml</code></p><p><code>-rw-r--r-- 1 root root   2174 =
Mar  2 14:58 ettus_rfnoc_fft.block.yml</code></p><p><code>-rw-r--r-- 1 root=
 root   3990 Mar  2 14:58 ettus_rfnoc_fosphor.block.yml</code></p><p><code>=
-rw-r--r-- 1 root root   4842 Mar  2 14:58 ettus_rfnoc_graph.block.yml</cod=
e></p><p><code>-rw-r--r-- 1 root root   1950 Mar  2 14:58 ettus_rfnoc_rx_ra=
dio.block.yml</code></p><p><code>-rw-r--r-- 1 root root   1266 Mar  2 14:58=
 ettus_rfnoc_rx_streamer.block.yml</code></p><p><code>-rw-r--r-- 1 root roo=
t   1580 Mar  2 14:58 ettus_rfnoc_tx_radio.block.yml</code></p><p><code>-rw=
-r--r-- 1 root root   1187 Mar  2 14:58 ettus_rfnoc_tx_streamer.block.yml</=
code></p><p><code>-rw-r--r-- 1 root root    675 Mar  2 14:58 ettus.tree.yml=
</code></p><p><br></p><p>I wonder if I am missing a step to make the DmaFIF=
O works with gnuradio like the FFT block example.</p><p><br></p><p>Thanks</=
p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000064494505be5df82c--

--===============7215710920459417918==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7215710920459417918==--
