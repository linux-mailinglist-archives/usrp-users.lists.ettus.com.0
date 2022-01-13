Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3265248DCF2
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 18:32:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 65B693853C6
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 12:32:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="RNgFQZdq";
	dkim-atps=neutral
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	by mm2.emwd.com (Postfix) with ESMTPS id ED3BA384E94
	for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 12:31:08 -0500 (EST)
Received: by mail-yb1-f171.google.com with SMTP id z22so16617911ybi.11
        for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 09:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eDaRVMVgg2OjJxmV6EV81I2IxTqqwGMRYVw/T61b2us=;
        b=RNgFQZdq9HJdcuBpyTIYL8pI/qSBvmrS60QSHN5syVLSvkKkF2pnBiQIEOqOPuUfpF
         EamxW6L6SaWp+nuErQVuRsd7D+tUPWBveWfHVGmvw+Jjhz3166qpV1SVFaUQZvVH1ceF
         QZH9HoUiF9cCe43oXL6qyr4AtHuhrEJ4q+sNBClDJ+n6B3QS+kay9DMjTbawssBQeOiB
         Mloef5J1C0WuzHLTn4dWWgSrY2NX1OFY2ceh+05obGjyKIw66miJ7RcviqnNf91kwzYj
         Hk+WuXm2smNptoHyjfnUmjn2ZsFl16UPJ3l3l9MJba6uXE9YKtcEn6zQ7VpLOEX16nmQ
         YTFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eDaRVMVgg2OjJxmV6EV81I2IxTqqwGMRYVw/T61b2us=;
        b=RtTi9vIMlrUx2WKsqrPKJ+TOxwImzpqXnrbIhDRBzO9uLT6c3RqizHm2grM37BnrJH
         YU3aeSh30m78+skSHgmRgryKPDt71OXuPq/15SuXpJbaVdvi+0ZUf9vLNwd0I/2m+GAe
         mLVGuck4qQpP6E0Mb/XA/E+DZRzvdbC0BZ0KEKzxMN71unkcOzWLxBLl+I+CgaO+Bhx0
         fpjON/4T0oz6kgiu7pTYZcmbUkqLJHviD58awcwQNK3fZ5rlWj5nlS/xdwmt2w4Sgior
         pWnBhL3NjFfrSJfluWpkac5WPxLHRkP0R6n+o2V36GOc0S7/S+Nzcxcw70IlTo7SLdy/
         t8wA==
X-Gm-Message-State: AOAM5300/nldC/pjCSwP+CJAXnCcmM14vCzZ3kLPCATwlXp8ZkEVHKPt
	8fQ2qC5HzMKKarOICDRF4no26wKUzEJARajTKfd2MtFjze7luKyy
X-Google-Smtp-Source: ABdhPJyu9bRE/7d9IDTtjyDIUj8Wg9LV1pIkGmz9u+9Jaryy9Og7Q88kcAcrjFTEL6kLqzYaJr46gIRS2x1+V8cqzQA=
X-Received: by 2002:a25:7e87:: with SMTP id z129mr7602100ybc.719.1642095068269;
 Thu, 13 Jan 2022 09:31:08 -0800 (PST)
MIME-Version: 1.0
References: <7a0dba07-cfba-e011-e7d5-d0d7624a6218@univ-ubs.fr>
 <CAFche=gD4oH_m1FXzHPc8E5sgQNOZC_MGV4PoJvi+rX1Sf9wHQ@mail.gmail.com>
 <CAFche=iGqxswZJUA7+3_v46BParz5XXHMoxBiBh3L-+u+gpLSA@mail.gmail.com> <b116c657-2bcb-1a05-6999-90fc6033cc2b@univ-ubs.fr>
In-Reply-To: <b116c657-2bcb-1a05-6999-90fc6033cc2b@univ-ubs.fr>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 13 Jan 2022 11:30:52 -0600
Message-ID: <CAFche=iodxshymdbtviiMjSd30MRh9qJVu52Rc1Pqu0aVHF+XQ@mail.gmail.com>
To: Camille Moniere <camille.moniere@univ-ubs.fr>
Message-ID-Hash: DIYMBGALJTQRSZMRXCYPGDX4KSUGPYHH
X-Message-ID-Hash: DIYMBGALJTQRSZMRXCYPGDX4KSUGPYHH
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fir Filter RFNoC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DIYMBGALJTQRSZMRXCYPGDX4KSUGPYHH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6346927854676673757=="

--===============6346927854676673757==
Content-Type: multipart/alternative; boundary="0000000000003b5f5c05d57a0d7c"

--0000000000003b5f5c05d57a0d7c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

At a glance, the YML has both firS and fir0. I was expecting just fir0. But
I also would have expected rfnoc_image_builder to throw an error for that.

Wade

On Thu, Jan 13, 2022 at 11:19 AM Camille Moniere <
camille.moniere@univ-ubs.fr> wrote:

> Hi wade,
>
> I had already linked the FIR ce to the ce of the _device_.
>
> Also, this custom image aims only to receive data (so no duc nor SEP for
> TX). I tried to free some space, considering only one UBX-160 is availabl=
e
> (so only 1 radio).
> I have read in the RFNoC guide that, for a device to host communication,
> an ingress buffer of size 0 is possible, again to free resources.
> A big block is expected to be added in the future...
>
> Here the YAML file I use with rfnoc_image_builder:
>
> # General parameters
> # -----------------------------------------
> schema: rfnoc_imagebuilder_args # Identifier for the schema used to
> validate this file
> copyright: 'Camille Moni=C3=A8re' # Copyright information used in file he=
aders
> license: 'SPDX-License-Identifier: LGPL-3.0-or-later' # License
> information used in file headers
> version: '1.0' # File version
> rfnoc_version: '1.0' # RFNoC protocol version
> chdr_width: 64 # Bit width of the CHDR bus for this image
> device: 'x310'
> default_target: 'X310_HG'
> # A list of all stream endpoints in design
> # ----------------------------------------
> stream_endpoints:
> ep0: # Stream endpoint name
> ctrl: True # Endpoint passes control traffic
> data: True # Endpoint passes data traffic
> buff_size: 0 # Ingress buffer size for data
> # A list of all NoC blocks in design
> # ----------------------------------
> noc_blocks:
> ddc0:
> block_desc: 'ddc.yml'
> parameters:
> NUM_PORTS: 1
> radio0:
> block_desc: 'radio_2x64.yml'
> parameters:
> NUM_PORTS: 1
> fir0:
> block_desc: 'fir_filter.yml'
> parameters:
> NUM_PORTS: 1
> COEFF_WIDTH: 16
> NUM_COEFFS: 21
> COEFFS_VEC: "{ 16'h7FFF, {320{1'b0}} }"
> RELOADABLE_COEFFS: 1
> SYMMETRIC_COEFFS: 0
> SKIP_ZERO_COEFFS: 0
> USE_EMBEDDED_REGS_COEFFS: 1
> # A list of all static connections in design
> # ------------------------------------------
> # Format: A list of connection maps (list of key-value pairs) with the
> following keys
> # - srcblk =3D Source block to connect
> # - srcport =3D Port on the source block to connect
> # - dstblk =3D Destination block to connect
> # - dstport =3D Port on the destination block to connect
> connections:
> # radio0 to ep0 - RFA RX
> - { srcblk: radio0, srcport: out_0, dstblk: ddc0, dstport: in_0 }
> - { srcblk: ddc0, srcport: out_0, dstblk: firS, dstport: in_0 }
> - { srcblk: firS, srcport: out_0, dstblk: ep0, dstport: in0 }
> # BSP Connections
> - { srcblk: radio0, srcport: ctrl_port, dstblk: _device_, dstport:
> ctrlport_radio0 }
> - { srcblk: _device_, srcport: x300_radio0, dstblk: radio0, dstport:
> x300_radio }
> - { srcblk: _device_, srcport: time_keeper, dstblk: radio0, dstport:
> time_keeper }
> # A list of all clock domain connections in design
> # ------------------------------------------
> # Format: A list of connection maps (list of key-value pairs) with the
> following keys
> # - srcblk =3D Source block to connect (Always "_device"_)
> # - srcport =3D Clock domain on the source block to connect
> # - dstblk =3D Destination block to connect
> # - dstport =3D Clock domain on the destination block to connect
> clk_domains:
> - { srcblk: _device_, srcport: radio, dstblk: radio0, dstport: radio }
> - { srcblk: _device_, srcport: ce, dstblk: ddc0, dstport: ce }
> - { srcblk: _device_, srcport: ce, dstblk: firS, dstport: ce }
>
>
> I have tried in python and in C++, with UHD and directly with RFNoC API.
> None succeeded
> For instance, this is what I do in Python:
>
> import numpy as np
> import scipy as sp
> import ipywidgets as widgets
> import matplotlib.pyplot as plt
> import uhd
> graph =3D uhd.rfnoc.RfnocGraph("addr=3D192.168.10.2,dboard_clock_rate=3D2=
0e6")
> radio_crtl =3D uhd.rfnoc.RadioControl(graph.get_block("0/Radio#0"))
> ddc_crtl =3D uhd.rfnoc.DdcBlockControl(graph.get_block("0/DDC#0"))
> target_freq =3D 433e6
> target_gain =3D 25
> target_rate =3D 1e6
> radio_crtl.set_rx_antenna('RX2', 0)
> radio_crtl.get_rx_antenna(0)
> actual_gain =3D radio_crtl.set_rx_gain(target_gain, 0)
> actual_rf_freq =3D radio_crtl.set_rx_frequency(target_freq, 0)
> target_dsp_freq =3D actual_rf_freq - target_freq
> actual_dsp_freq =3D ddc_crtl.set_freq(target_dsp_freq, 0)
> clipped_rx_freq =3D actual_rf_freq - actual_dsp_freq
> actual_rate =3D ddc_crtl.set_output_rate(target_rate, 0)
> fir_static =3D uhd.rfnoc.FirFilterBlockControl(graph.get_block("0/FIR#0")=
)
> coefficients =3D fir_static.get_coefficients()
> fir_static.set_coefficients(coefficients)
> coefficients =3D fir_static.get_coefficients()
> plt.stem(coefficients)
> plt.show()
> stream_args =3D uhd.usrp.StreamArgs("fc32", "sc16")
> recv_stream =3D graph.create_rx_streamer(1, stream_args)
> graph.connect(radio_crtl.get_block_id(), 0, ddc_crtl.get_block_id(), 0,
> False)
> graph.connect(ddc_crtl.get_block_id(), 0, fir_static.get_block_id(), 0,
> False)
> graph.connect(fir_static.get_block_id(), 0, recv_stream, 0)
> graph.commit()
> num_samps =3D int(1e6) # 1 MB of data, be aware.
> data =3D np.empty((num_samps), dtype=3Dnp.complex64)
> md =3D uhd.types.RXMetadata()
> stream_cmd =3D uhd.types.StreamCMD(uhd.types.StreamMode.num_done)
> stream_cmd.stream_now =3D True
> stream_cmd.num_samps =3D num_samps
> stream_cmd.time_spec =3D uhd.types.TimeSpec(1, 0) # Wait 1s before recept=
ion
> recv_stream.issue_stream_cmd(stream_cmd)
> received_spls =3D recv_stream.recv(data, md, 3.)
> print(f'Received {float(received_spls):.2e} samples')
> if md.error_code !=3D md.error_code.none:
> print(f'\033[1;31m[ERROR]\033[0m {md.strerror()}')
> else:
> print(f'Everything went well.')
>
> Without the Fir (and adapting the code of course), I get my 1e6 data
> buffer.
>
> Is there an error I miss, or have I made too much space, deleting
> important part in the process?
>
> On 1/13/22 17:08, Wade Fife wrote:
>
> In particular, make sure you have a clock connected to the CE input of th=
e
> FIR filter. Something like this in your clk_domains section:
>
> clk_domains:
>     - { srcblk: _device_, srcport: ce, dstblk: fir0, dstport: ce }
>
> Wade
>
> On Thu, Jan 13, 2022 at 10:04 AM Wade Fife <wade.fife@ettus.com> wrote:
>
>> Hi Camille,
>>
>> Maybe you could share your RFNoC YML file and someone could take a look?
>> There might be something wrong there.
>>
>> Wade
>>
>> On Thu, Jan 13, 2022 at 8:32 AM Camille Moniere <
>> camille.moniere@univ-ubs.fr> wrote:
>>
>>> Hello everyone,
>>>
>>> I unsuccessfully try to use the FIR Filter RFNoC block in reception, in
>>> an USRP X310 with a UBX-160 daughterboard on-board.
>>> I have tested several topology for the custom image (radio0 - > ddc0 ->
>>> fir0 -> ep0 || radio0 -> ddc0 -> ep0 + ep1 -> fir0 + fir0 -> ep1, for
>>> example),
>>> with several parameter for the filter (With or without re-loadable
>>> coefficients, with or without embedded DSP registers, 21 coef' instead
>>> of 41 ...) but it ultimately
>>> always fails the same way.
>>> When the FIR is used, I can't retrieve any data. I got an Overflow
>>> error, without receiving any samples. Sometimes, I even got a "Late
>>> Command" error, even when using  RFNoC in C++
>>> (graph committed immediately before the stream now stream_cmd).
>>>
>>> For the record, the center frequency is 433 MHz for a sampling rate of
>>> 1
>>> Msps.
>>>
>>> I assumed the filter output one complex sample (sc16) for each new
>>> input
>>> (sc16 too). Am I wrong? Or is there specific setup I have forgotten?
>>> Has someone successfully used this block, and can provide an example or
>>> tutorial?
>>>
>>> Regards,
>>>
>>> Camille
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>

--0000000000003b5f5c05d57a0d7c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>At a glance, the YML has both firS and fir0. I was ex=
pecting just fir0. But I also would have expected rfnoc_image_builder to th=
row an error for that.</div><div><br></div><div>Wade<br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 1=
3, 2022 at 11:19 AM Camille Moniere &lt;<a href=3D"mailto:camille.moniere@u=
niv-ubs.fr">camille.moniere@univ-ubs.fr</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    Hi wade, <br>
    <br>
    I had already linked the FIR <tt>ce</tt> to the <tt>ce</tt> of the
    <tt>_device_</tt>.<br>
    <br>
    Also, this custom image aims only to receive data (so no <tt>duc</tt>
    nor SEP for TX). I tried to free some space, considering only one
    UBX-160 is available (so only 1 radio).<br>
    I have read in the RFNoC guide that, for a device to host
    communication, an ingress buffer of size 0 is possible, again to
    free resources.<br>
    A big block is expected to be added in the future...<br>
    <br>
    Here the YAML file I use with <tt>rfnoc_image_builder</tt>:<br>
    <br>
    <div style=3D"color:rgb(212,212,212);background-color:rgb(30,30,30);fon=
t-family:&quot;Droid Sans Mono For Powerline&quot;,&quot;Droid Sans Mono&qu=
ot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-we=
ight:normal;font-size:14px;line-height:19px;white-space:pre-wrap"><div><spa=
n style=3D"color:rgb(106,153,85)"># General parameters</span></div><div><sp=
an style=3D"color:rgb(106,153,85)"># --------------------------------------=
---</span></div><div><span style=3D"color:rgb(86,156,214)">schema</span><sp=
an style=3D"color:rgb(212,212,212)">: </span><span style=3D"color:rgb(206,1=
45,120)">rfnoc_imagebuilder_args</span><span style=3D"color:rgb(212,212,212=
)">                       </span><span style=3D"color:rgb(106,153,85)"># Id=
entifier for the schema used to validate this file</span></div><div><span s=
tyle=3D"color:rgb(86,156,214)">copyright</span><span style=3D"color:rgb(212=
,212,212)">: </span><span style=3D"color:rgb(206,145,120)">&#39;Camille Mon=
i=C3=A8re&#39;</span><span style=3D"color:rgb(212,212,212)">               =
           </span><span style=3D"color:rgb(106,153,85)"># Copyright informa=
tion used in file headers</span></div><div><span style=3D"color:rgb(86,156,=
214)">license</span><span style=3D"color:rgb(212,212,212)">: </span><span s=
tyle=3D"color:rgb(206,145,120)">&#39;SPDX-License-Identifier: LGPL-3.0-or-l=
ater&#39;</span><span style=3D"color:rgb(212,212,212)"> </span><span style=
=3D"color:rgb(106,153,85)"># License information used in file headers</span=
></div><div><span style=3D"color:rgb(86,156,214)">version</span><span style=
=3D"color:rgb(212,212,212)">: </span><span style=3D"color:rgb(206,145,120)"=
>&#39;1.0&#39;</span><span style=3D"color:rgb(212,212,212)">               =
                         </span><span style=3D"color:rgb(106,153,85)"># Fil=
e version</span></div><div><span style=3D"color:rgb(86,156,214)">rfnoc_vers=
ion</span><span style=3D"color:rgb(212,212,212)">: </span><span style=3D"co=
lor:rgb(206,145,120)">&#39;1.0&#39;</span><span style=3D"color:rgb(212,212,=
212)">                                  </span><span style=3D"color:rgb(106=
,153,85)"># RFNoC protocol version</span></div><div><span style=3D"color:rg=
b(86,156,214)">chdr_width</span><span style=3D"color:rgb(212,212,212)">: </=
span><span style=3D"color:rgb(181,206,168)">64</span><span style=3D"color:r=
gb(212,212,212)">                                        </span><span style=
=3D"color:rgb(106,153,85)"># Bit width of the CHDR bus for this image</span=
></div><div><span style=3D"color:rgb(86,156,214)">device</span><span style=
=3D"color:rgb(212,212,212)">: </span><span style=3D"color:rgb(206,145,120)"=
>&#39;x310&#39;</span></div><div><span style=3D"color:rgb(86,156,214)">defa=
ult_target</span><span style=3D"color:rgb(212,212,212)">: </span><span styl=
e=3D"color:rgb(206,145,120)">&#39;X310_HG&#39;</span></div>
<div><span style=3D"color:rgb(106,153,85)"># A list of all stream endpoints=
 in design</span></div><div><span style=3D"color:rgb(106,153,85)"># -------=
---------------------------------</span></div><div><span style=3D"color:rgb=
(86,156,214)">stream_endpoints</span><span style=3D"color:rgb(212,212,212)"=
>:</span></div><div><span style=3D"color:rgb(212,212,212)">  </span><span s=
tyle=3D"color:rgb(86,156,214)">ep0</span><span style=3D"color:rgb(212,212,2=
12)">:                       </span><span style=3D"color:rgb(106,153,85)">#=
 Stream endpoint name</span></div><div><span style=3D"color:rgb(212,212,212=
)">    </span><span style=3D"color:rgb(86,156,214)">ctrl</span><span style=
=3D"color:rgb(212,212,212)">: </span><span style=3D"color:rgb(86,156,214)">=
True</span><span style=3D"color:rgb(212,212,212)">                      </s=
pan><span style=3D"color:rgb(106,153,85)"># Endpoint passes control traffic=
</span></div><div><span style=3D"color:rgb(212,212,212)">    </span><span s=
tyle=3D"color:rgb(86,156,214)">data</span><span style=3D"color:rgb(212,212,=
212)">: </span><span style=3D"color:rgb(86,156,214)">True</span><span style=
=3D"color:rgb(212,212,212)">                      </span><span style=3D"col=
or:rgb(106,153,85)"># Endpoint passes data traffic</span></div><div><span s=
tyle=3D"color:rgb(212,212,212)">    </span><span style=3D"color:rgb(86,156,=
214)">buff_size</span><span style=3D"color:rgb(212,212,212)">: </span><span=
 style=3D"color:rgb(181,206,168)">0</span><span style=3D"color:rgb(212,212,=
212)">                    </span><span style=3D"color:rgb(106,153,85)"># In=
gress buffer size for data</span></div>
<div><span style=3D"color:rgb(106,153,85)"># A list of all NoC blocks in de=
sign</span></div><div><span style=3D"color:rgb(106,153,85)"># -------------=
---------------------</span></div><div><span style=3D"color:rgb(86,156,214)=
">noc_blocks</span><span style=3D"color:rgb(212,212,212)">:</span></div><di=
v><span style=3D"color:rgb(212,212,212)">  </span><span style=3D"color:rgb(=
86,156,214)">ddc0</span><span style=3D"color:rgb(212,212,212)">:</span></di=
v><div><span style=3D"color:rgb(212,212,212)">    </span><span style=3D"col=
or:rgb(86,156,214)">block_desc</span><span style=3D"color:rgb(212,212,212)"=
>: </span><span style=3D"color:rgb(206,145,120)">&#39;ddc.yml&#39;</span></=
div><div><span style=3D"color:rgb(212,212,212)">    </span><span style=3D"c=
olor:rgb(86,156,214)">parameters</span><span style=3D"color:rgb(212,212,212=
)">:</span></div><div><span style=3D"color:rgb(212,212,212)">      </span><=
span style=3D"color:rgb(86,156,214)">NUM_PORTS</span><span style=3D"color:r=
gb(212,212,212)">: </span><span style=3D"color:rgb(181,206,168)">1</span></=
div><div><span style=3D"color:rgb(212,212,212)">  </span><span style=3D"col=
or:rgb(86,156,214)">radio0</span><span style=3D"color:rgb(212,212,212)">:</=
span></div><div><span style=3D"color:rgb(212,212,212)">    </span><span sty=
le=3D"color:rgb(86,156,214)">block_desc</span><span style=3D"color:rgb(212,=
212,212)">: </span><span style=3D"color:rgb(206,145,120)">&#39;radio_2x64.y=
ml&#39;</span></div><div><span style=3D"color:rgb(212,212,212)">    </span>=
<span style=3D"color:rgb(86,156,214)">parameters</span><span style=3D"color=
:rgb(212,212,212)">:</span></div><div><span style=3D"color:rgb(212,212,212)=
">      </span><span style=3D"color:rgb(86,156,214)">NUM_PORTS</span><span =
style=3D"color:rgb(212,212,212)">: </span><span style=3D"color:rgb(181,206,=
168)">1</span></div><div><span style=3D"color:rgb(212,212,212)">  </span><s=
pan style=3D"color:rgb(86,156,214)">fir0</span><span style=3D"color:rgb(212=
,212,212)">:</span></div><div><span style=3D"color:rgb(212,212,212)">    </=
span><span style=3D"color:rgb(86,156,214)">block_desc</span><span style=3D"=
color:rgb(212,212,212)">: </span><span style=3D"color:rgb(206,145,120)">&#3=
9;fir_filter.yml&#39;</span></div><div><span style=3D"color:rgb(212,212,212=
)">    </span><span style=3D"color:rgb(86,156,214)">parameters</span><span =
style=3D"color:rgb(212,212,212)">:</span></div><div><span style=3D"color:rg=
b(212,212,212)">      </span><span style=3D"color:rgb(86,156,214)">NUM_PORT=
S</span><span style=3D"color:rgb(212,212,212)">: </span><span style=3D"colo=
r:rgb(181,206,168)">1</span></div><div><span style=3D"color:rgb(212,212,212=
)">      </span><span style=3D"color:rgb(86,156,214)">COEFF_WIDTH</span><sp=
an style=3D"color:rgb(212,212,212)">: </span><span style=3D"color:rgb(181,2=
06,168)">16</span></div><div><span style=3D"color:rgb(212,212,212)">      <=
/span><span style=3D"color:rgb(86,156,214)">NUM_COEFFS</span><span style=3D=
"color:rgb(212,212,212)">: </span><span style=3D"color:rgb(181,206,168)">21=
</span></div><div><span style=3D"color:rgb(212,212,212)">      </span><span=
 style=3D"color:rgb(86,156,214)">COEFFS_VEC</span><span style=3D"color:rgb(=
212,212,212)">: </span><span style=3D"color:rgb(206,145,120)">&quot;{ 16&#3=
9;h7FFF, {320{1&#39;b0}} }&quot;</span></div><div><span style=3D"color:rgb(=
212,212,212)">      </span><span style=3D"color:rgb(86,156,214)">RELOADABLE=
_COEFFS</span><span style=3D"color:rgb(212,212,212)">: </span><span style=
=3D"color:rgb(181,206,168)">1</span></div><div><span style=3D"color:rgb(212=
,212,212)">      </span><span style=3D"color:rgb(86,156,214)">SYMMETRIC_COE=
FFS</span><span style=3D"color:rgb(212,212,212)">: </span><span style=3D"co=
lor:rgb(181,206,168)">0</span></div><div><span style=3D"color:rgb(212,212,2=
12)">      </span><span style=3D"color:rgb(86,156,214)">SKIP_ZERO_COEFFS</s=
pan><span style=3D"color:rgb(212,212,212)">: </span><span style=3D"color:rg=
b(181,206,168)">0</span></div><div><span style=3D"color:rgb(212,212,212)"> =
     </span><span style=3D"color:rgb(86,156,214)">USE_EMBEDDED_REGS_COEFFS<=
/span><span style=3D"color:rgb(212,212,212)">: </span><span style=3D"color:=
rgb(181,206,168)">1</span></div>

<div><span style=3D"color:rgb(106,153,85)"># A list of all static connectio=
ns in design</span></div><div><span style=3D"color:rgb(106,153,85)"># -----=
-------------------------------------</span></div><div><span style=3D"color=
:rgb(106,153,85)"># Format: A list of connection maps (list of key-value pa=
irs) with the following keys</span></div><div><span style=3D"color:rgb(106,=
153,85)">#         - srcblk  =3D Source block to connect</span></div><div><=
span style=3D"color:rgb(106,153,85)">#         - srcport =3D Port on the so=
urce block to connect</span></div><div><span style=3D"color:rgb(106,153,85)=
">#         - dstblk  =3D Destination block to connect</span></div><div><sp=
an style=3D"color:rgb(106,153,85)">#         - dstport =3D Port on the dest=
ination block to connect</span></div><div><span style=3D"color:rgb(86,156,2=
14)">connections</span><span style=3D"color:rgb(212,212,212)">:</span></div=
><div><span style=3D"color:rgb(212,212,212)">  </span><span style=3D"color:=
rgb(106,153,85)"># radio0 to ep0 - RFA RX</span></div><div><span style=3D"c=
olor:rgb(212,212,212)">  - { </span><span style=3D"color:rgb(86,156,214)">s=
rcblk</span><span style=3D"color:rgb(212,212,212)">: </span><span style=3D"=
color:rgb(206,145,120)">radio0</span><span style=3D"color:rgb(212,212,212)"=
>, </span><span style=3D"color:rgb(86,156,214)">srcport</span><span style=
=3D"color:rgb(212,212,212)">: </span><span style=3D"color:rgb(206,145,120)"=
>out_0</span><span style=3D"color:rgb(212,212,212)">, </span><span style=3D=
"color:rgb(86,156,214)">dstblk</span><span style=3D"color:rgb(212,212,212)"=
>: </span><span style=3D"color:rgb(206,145,120)">ddc0</span><span style=3D"=
color:rgb(212,212,212)">,   </span><span style=3D"color:rgb(86,156,214)">ds=
tport</span><span style=3D"color:rgb(212,212,212)">: </span><span style=3D"=
color:rgb(206,145,120)">in_0</span><span style=3D"color:rgb(212,212,212)"> =
}</span></div><div><span style=3D"color:rgb(212,212,212)">  - { </span><spa=
n style=3D"color:rgb(86,156,214)">srcblk</span><span style=3D"color:rgb(212=
,212,212)">: </span><span style=3D"color:rgb(206,145,120)">ddc0</span><span=
 style=3D"color:rgb(212,212,212)">,   </span><span style=3D"color:rgb(86,15=
6,214)">srcport</span><span style=3D"color:rgb(212,212,212)">: </span><span=
 style=3D"color:rgb(206,145,120)">out_0</span><span style=3D"color:rgb(212,=
212,212)">, </span><span style=3D"color:rgb(86,156,214)">dstblk</span><span=
 style=3D"color:rgb(212,212,212)">: </span><span style=3D"color:rgb(206,145=
,120)">firS</span><span style=3D"color:rgb(212,212,212)">,   </span><span s=
tyle=3D"color:rgb(86,156,214)">dstport</span><span style=3D"color:rgb(212,2=
12,212)">: </span><span style=3D"color:rgb(206,145,120)">in_0</span><span s=
tyle=3D"color:rgb(212,212,212)"> }</span></div><div><span style=3D"color:rg=
b(212,212,212)">  - { </span><span style=3D"color:rgb(86,156,214)">srcblk</=
span><span style=3D"color:rgb(212,212,212)">: </span><span style=3D"color:r=
gb(206,145,120)">firS</span><span style=3D"color:rgb(212,212,212)">,   </sp=
an><span style=3D"color:rgb(86,156,214)">srcport</span><span style=3D"color=
:rgb(212,212,212)">: </span><span style=3D"color:rgb(206,145,120)">out_0</s=
pan><span style=3D"color:rgb(212,212,212)">, </span><span style=3D"color:rg=
b(86,156,214)">dstblk</span><span style=3D"color:rgb(212,212,212)">: </span=
><span style=3D"color:rgb(206,145,120)">ep0</span><span style=3D"color:rgb(=
212,212,212)">,    </span><span style=3D"color:rgb(86,156,214)">dstport</sp=
an><span style=3D"color:rgb(212,212,212)">: </span><span style=3D"color:rgb=
(206,145,120)">in0</span><span style=3D"color:rgb(212,212,212)">  }</span><=
/div><div><span style=3D"color:rgb(212,212,212)">  </span><span style=3D"co=
lor:rgb(106,153,85)"># BSP Connections</span></div><div><span style=3D"colo=
r:rgb(212,212,212)">  - { </span><span style=3D"color:rgb(86,156,214)">srcb=
lk</span><span style=3D"color:rgb(212,212,212)">: </span><span style=3D"col=
or:rgb(206,145,120)">radio0</span><span style=3D"color:rgb(212,212,212)">, =
  </span><span style=3D"color:rgb(86,156,214)">srcport</span><span style=3D=
"color:rgb(212,212,212)">: </span><span style=3D"color:rgb(206,145,120)">ct=
rl_port</span><span style=3D"color:rgb(212,212,212)">,   </span><span style=
=3D"color:rgb(86,156,214)">dstblk</span><span style=3D"color:rgb(212,212,21=
2)">: </span><span style=3D"color:rgb(206,145,120)">_device_</span><span st=
yle=3D"color:rgb(212,212,212)">, </span><span style=3D"color:rgb(86,156,214=
)">dstport</span><span style=3D"color:rgb(212,212,212)">: </span><span styl=
e=3D"color:rgb(206,145,120)">ctrlport_radio0</span><span style=3D"color:rgb=
(212,212,212)"> }</span></div><div><span style=3D"color:rgb(212,212,212)"> =
 - { </span><span style=3D"color:rgb(86,156,214)">srcblk</span><span style=
=3D"color:rgb(212,212,212)">: </span><span style=3D"color:rgb(206,145,120)"=
>_device_</span><span style=3D"color:rgb(212,212,212)">, </span><span style=
=3D"color:rgb(86,156,214)">srcport</span><span style=3D"color:rgb(212,212,2=
12)">: </span><span style=3D"color:rgb(206,145,120)">x300_radio0</span><spa=
n style=3D"color:rgb(212,212,212)">, </span><span style=3D"color:rgb(86,156=
,214)">dstblk</span><span style=3D"color:rgb(212,212,212)">: </span><span s=
tyle=3D"color:rgb(206,145,120)">radio0</span><span style=3D"color:rgb(212,2=
12,212)">,   </span><span style=3D"color:rgb(86,156,214)">dstport</span><sp=
an style=3D"color:rgb(212,212,212)">: </span><span style=3D"color:rgb(206,1=
45,120)">x300_radio</span><span style=3D"color:rgb(212,212,212)"> }</span><=
/div><div><span style=3D"color:rgb(212,212,212)">  - { </span><span style=
=3D"color:rgb(86,156,214)">srcblk</span><span style=3D"color:rgb(212,212,21=
2)">: </span><span style=3D"color:rgb(206,145,120)">_device_</span><span st=
yle=3D"color:rgb(212,212,212)">, </span><span style=3D"color:rgb(86,156,214=
)">srcport</span><span style=3D"color:rgb(212,212,212)">: </span><span styl=
e=3D"color:rgb(206,145,120)">time_keeper</span><span style=3D"color:rgb(212=
,212,212)">, </span><span style=3D"color:rgb(86,156,214)">dstblk</span><spa=
n style=3D"color:rgb(212,212,212)">: </span><span style=3D"color:rgb(206,14=
5,120)">radio0</span><span style=3D"color:rgb(212,212,212)">,   </span><spa=
n style=3D"color:rgb(86,156,214)">dstport</span><span style=3D"color:rgb(21=
2,212,212)">: </span><span style=3D"color:rgb(206,145,120)">time_keeper</sp=
an><span style=3D"color:rgb(212,212,212)"> }</span></div>
<div><span style=3D"color:rgb(106,153,85)"># A list of all clock domain con=
nections in design</span></div><div><span style=3D"color:rgb(106,153,85)">#=
 ------------------------------------------</span></div><div><span style=3D=
"color:rgb(106,153,85)"># Format: A list of connection maps (list of key-va=
lue pairs) with the following keys</span></div><div><span style=3D"color:rg=
b(106,153,85)">#         - srcblk  =3D Source block to connect (Always &quo=
t;_device&quot;_)</span></div><div><span style=3D"color:rgb(106,153,85)"># =
        - srcport =3D Clock domain on the source block to connect</span></d=
iv><div><span style=3D"color:rgb(106,153,85)">#         - dstblk  =3D Desti=
nation block to connect</span></div><div><span style=3D"color:rgb(106,153,8=
5)">#         - dstport =3D Clock domain on the destination block to connec=
t</span></div><div><span style=3D"color:rgb(86,156,214)">clk_domains</span>=
<span style=3D"color:rgb(212,212,212)">:</span></div><div><span style=3D"co=
lor:rgb(212,212,212)">    - { </span><span style=3D"color:rgb(86,156,214)">=
srcblk</span><span style=3D"color:rgb(212,212,212)">: </span><span style=3D=
"color:rgb(206,145,120)">_device_</span><span style=3D"color:rgb(212,212,21=
2)">, </span><span style=3D"color:rgb(86,156,214)">srcport</span><span styl=
e=3D"color:rgb(212,212,212)">: </span><span style=3D"color:rgb(206,145,120)=
">radio</span><span style=3D"color:rgb(212,212,212)">, </span><span style=
=3D"color:rgb(86,156,214)">dstblk</span><span style=3D"color:rgb(212,212,21=
2)">: </span><span style=3D"color:rgb(206,145,120)">radio0</span><span styl=
e=3D"color:rgb(212,212,212)">, </span><span style=3D"color:rgb(86,156,214)"=
>dstport</span><span style=3D"color:rgb(212,212,212)">: </span><span style=
=3D"color:rgb(206,145,120)">radio</span><span style=3D"color:rgb(212,212,21=
2)"> }</span></div><div><span style=3D"color:rgb(212,212,212)">    - { </sp=
an><span style=3D"color:rgb(86,156,214)">srcblk</span><span style=3D"color:=
rgb(212,212,212)">: </span><span style=3D"color:rgb(206,145,120)">_device_<=
/span><span style=3D"color:rgb(212,212,212)">, </span><span style=3D"color:=
rgb(86,156,214)">srcport</span><span style=3D"color:rgb(212,212,212)">: </s=
pan><span style=3D"color:rgb(206,145,120)">ce</span><span style=3D"color:rg=
b(212,212,212)">,    </span><span style=3D"color:rgb(86,156,214)">dstblk</s=
pan><span style=3D"color:rgb(212,212,212)">: </span><span style=3D"color:rg=
b(206,145,120)">ddc0</span><span style=3D"color:rgb(212,212,212)">,   </spa=
n><span style=3D"color:rgb(86,156,214)">dstport</span><span style=3D"color:=
rgb(212,212,212)">: </span><span style=3D"color:rgb(206,145,120)">ce</span>=
<span style=3D"color:rgb(212,212,212)">    }</span></div><div><span style=
=3D"color:rgb(212,212,212)">    - { </span><span style=3D"color:rgb(86,156,=
214)">srcblk</span><span style=3D"color:rgb(212,212,212)">: </span><span st=
yle=3D"color:rgb(206,145,120)">_device_</span><span style=3D"color:rgb(212,=
212,212)">, </span><span style=3D"color:rgb(86,156,214)">srcport</span><spa=
n style=3D"color:rgb(212,212,212)">: </span><span style=3D"color:rgb(206,14=
5,120)">ce</span><span style=3D"color:rgb(212,212,212)">,    </span><span s=
tyle=3D"color:rgb(86,156,214)">dstblk</span><span style=3D"color:rgb(212,21=
2,212)">: </span><span style=3D"color:rgb(206,145,120)">firS</span><span st=
yle=3D"color:rgb(212,212,212)">,   </span><span style=3D"color:rgb(86,156,2=
14)">dstport</span><span style=3D"color:rgb(212,212,212)">: </span><span st=
yle=3D"color:rgb(206,145,120)">ce</span><span style=3D"color:rgb(212,212,21=
2)">    }</span></div>
</div>
    <br>
    <br>
    I have tried in python and in C++, with UHD and directly with RFNoC
    API. None succeeded<br>
    For instance, this is what I do in Python:<br>
    <br>
    <div style=3D"color:rgb(212,212,212);background-color:rgb(30,30,30);fon=
t-family:&quot;Droid Sans Mono For Powerline&quot;,&quot;Droid Sans Mono&qu=
ot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-we=
ight:normal;font-size:14px;line-height:19px;white-space:pre-wrap"><div><spa=
n style=3D"color:rgb(197,134,192)">import</span><span style=3D"color:rgb(21=
2,212,212)"> numpy </span><span style=3D"color:rgb(197,134,192)">as</span><=
span style=3D"color:rgb(212,212,212)"> np</span></div><div><span style=3D"c=
olor:rgb(197,134,192)">import</span><span style=3D"color:rgb(212,212,212)">=
 scipy </span><span style=3D"color:rgb(197,134,192)">as</span><span style=
=3D"color:rgb(212,212,212)"> sp</span></div>
<div><span style=3D"color:rgb(197,134,192)">import</span><span style=3D"col=
or:rgb(212,212,212)"> ipywidgets </span><span style=3D"color:rgb(197,134,19=
2)">as</span><span style=3D"color:rgb(212,212,212)"> widgets</span></div><d=
iv><span style=3D"color:rgb(197,134,192)">import</span><span style=3D"color=
:rgb(212,212,212)"> matplotlib.pyplot </span><span style=3D"color:rgb(197,1=
34,192)">as</span><span style=3D"color:rgb(212,212,212)"> plt</span></div>
<div><span style=3D"color:rgb(197,134,192)">import</span><span style=3D"col=
or:rgb(212,212,212)"> uhd</span></div>
<div><span style=3D"color:rgb(212,212,212)">graph =3D uhd.rfnoc.RfnocGraph(=
</span><span style=3D"color:rgb(206,145,120)">&quot;addr=3D192.168.10.2,</s=
pan><span style=3D"color:rgb(206,145,120)">dboard_clock_rate=3D20e6</span><=
span style=3D"color:rgb(206,145,120)">&quot;</span><span style=3D"color:rgb=
(212,212,212)">)</span><span style=3D"color:rgb(206,145,120)"></span></div>
<div><span style=3D"color:rgb(212,212,212)">radio_crtl =3D uhd.rfnoc.RadioC=
ontrol(graph.get_block(</span><span style=3D"color:rgb(206,145,120)">&quot;=
0/Radio#0&quot;</span><span style=3D"color:rgb(212,212,212)">))</span></div=
><div><span style=3D"color:rgb(212,212,212)">ddc_crtl   =3D uhd.rfnoc.DdcBl=
ockControl(graph.get_block(</span><span style=3D"color:rgb(206,145,120)">&q=
uot;0/DDC#0&quot;</span><span style=3D"color:rgb(212,212,212)">))

</span></div><div><span style=3D"color:rgb(212,212,212)">target_freq =3D </=
span><span style=3D"color:rgb(181,206,168)">433e6</span></div><div><span st=
yle=3D"color:rgb(212,212,212)">target_gain =3D </span><span style=3D"color:=
rgb(181,206,168)">25</span></div><div><span style=3D"color:rgb(212,212,212)=
">target_rate =3D </span><span style=3D"color:rgb(181,206,168)">1e6</span><=
/div>
<div><span style=3D"color:rgb(212,212,212)">radio_crtl.set_rx_antenna(</spa=
n><span style=3D"color:rgb(206,145,120)">&#39;RX2&#39;</span><span style=3D=
"color:rgb(212,212,212)">, 0)</span></div><div><span style=3D"color:rgb(212=
,212,212)">radio_crtl.get_rx_antenna(0)</span></div>
<div><span style=3D"color:rgb(212,212,212)">actual_gain    =3D radio_crtl.s=
et_rx_gain(target_gain, 0)
</span>
<div><span style=3D"color:rgb(212,212,212)">actual_rf_freq  =3D radio_crtl.=
set_rx_frequency(target_freq, 0)</span></div><span style=3D"color:rgb(212,2=
12,212)"></span></div><div><span style=3D"color:rgb(212,212,212)">target_ds=
p_freq =3D actual_rf_freq - target_freq</span></div><div><span style=3D"col=
or:rgb(212,212,212)">actual_dsp_freq =3D ddc_crtl.set_freq(target_dsp_freq,=
 0)</span></div><div><span style=3D"color:rgb(212,212,212)">clipped_rx_freq=
 =3D actual_rf_freq - actual_dsp_freq</span></div>
<div><span style=3D"color:rgb(212,212,212)">actual_rate =3D ddc_crtl.set_ou=
tput_rate(target_rate, 0)

</span><div style=3D"color:rgb(212,212,212);background-color:rgb(30,30,30);=
font-family:&quot;Droid Sans Mono For Powerline&quot;,&quot;Droid Sans Mono=
&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font=
-weight:normal;font-size:14px;line-height:19px;white-space:pre-wrap"><div><=
span style=3D"color:rgb(212,212,212)">fir_static   =3D uhd.rfnoc.FirFilterB=
lockControl(graph.get_block(</span><span style=3D"color:rgb(206,145,120)">&=
quot;0/FIR#0&quot;</span><span style=3D"color:rgb(212,212,212)">))
</span><div style=3D"color:rgb(212,212,212);background-color:rgb(30,30,30);=
font-family:&quot;Droid Sans Mono For Powerline&quot;,&quot;Droid Sans Mono=
&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font=
-weight:normal;font-size:14px;line-height:19px;white-space:pre-wrap"><div><=
span style=3D"color:rgb(212,212,212)">coefficients =3D </span><span style=
=3D"color:rgb(212,212,212)"><span style=3D"color:rgb(212,212,212)">fir_stat=
ic</span>.get_coefficients()</span></div><div><span style=3D"color:rgb(212,=
212,212)"><span style=3D"color:rgb(212,212,212)">fir_static</span>.set_coef=
ficients(coefficients)</span></div><div><span style=3D"color:rgb(212,212,21=
2)">coefficients =3D </span><span style=3D"color:rgb(212,212,212)"><span st=
yle=3D"color:rgb(212,212,212)">fir_static</span>.get_coefficients()</span><=
/div><div><span style=3D"color:rgb(212,212,212)">
plt.stem(coefficients)</span></div><div><span style=3D"color:rgb(212,212,21=
2)">plt.show() </span></div></div>
<span style=3D"color:rgb(212,212,212)"></span></div></div><div style=3D"col=
or:rgb(212,212,212);background-color:rgb(30,30,30);font-family:&quot;Droid =
Sans Mono For Powerline&quot;,&quot;Droid Sans Mono&quot;,&quot;monospace&q=
uot;,monospace,&quot;Droid Sans Fallback&quot;;font-weight:normal;font-size=
:14px;line-height:19px;white-space:pre-wrap"><div><span style=3D"color:rgb(=
212,212,212)">stream_args =3D uhd.usrp.StreamArgs(</span><span style=3D"col=
or:rgb(206,145,120)">&quot;fc32&quot;</span><span style=3D"color:rgb(212,21=
2,212)">, </span><span style=3D"color:rgb(206,145,120)">&quot;sc16&quot;</s=
pan><span style=3D"color:rgb(212,212,212)">)</span></div><div><span style=
=3D"color:rgb(212,212,212)">recv_stream =3D graph.create_rx_streamer(</span=
><span style=3D"color:rgb(181,206,168)">1</span><span style=3D"color:rgb(21=
2,212,212)">, stream_args)</span></div>
<div><span style=3D"color:rgb(212,212,212)">graph.connect(radio_crtl.get_bl=
ock_id(), </span><span style=3D"color:rgb(181,206,168)">0</span><span style=
=3D"color:rgb(212,212,212)">, ddc_crtl.get_block_id(),   </span><span style=
=3D"color:rgb(181,206,168)">0</span><span style=3D"color:rgb(212,212,212)">=
, </span><span style=3D"color:rgb(86,156,214)">False</span><span style=3D"c=
olor:rgb(212,212,212)">) </span></div><div><span style=3D"color:rgb(212,212=
,212)">graph.connect(ddc_crtl.get_block_id(),   </span><span style=3D"color=
:rgb(181,206,168)">0</span><span style=3D"color:rgb(212,212,212)">, fir_sta=
tic.get_block_id(), </span><span style=3D"color:rgb(181,206,168)">0</span><=
span style=3D"color:rgb(212,212,212)">, </span><span style=3D"color:rgb(86,=
156,214)">False</span><span style=3D"color:rgb(212,212,212)">)</span></div>=
<div><span style=3D"color:rgb(212,212,212)">graph.connect(fir_static.get_bl=
ock_id(), </span><span style=3D"color:rgb(181,206,168)">0</span><span style=
=3D"color:rgb(212,212,212)">, recv_stream,               </span><span style=
=3D"color:rgb(181,206,168)">0</span><span style=3D"color:rgb(212,212,212)">=
) </span></div>
<div><span style=3D"color:rgb(212,212,212)">graph.commit()</span></div>
<div><span style=3D"color:rgb(212,212,212)">num_samps =3D </span><span styl=
e=3D"color:rgb(78,201,176)">int</span><span style=3D"color:rgb(212,212,212)=
">(</span><span style=3D"color:rgb(181,206,168)">1e6</span><span style=3D"c=
olor:rgb(212,212,212)">) </span><span style=3D"color:rgb(106,153,85)"># 1 M=
B of data, be aware.</span></div>
<div><span style=3D"color:rgb(212,212,212)">data       =3D np.empty((num_sa=
mps), </span><span style=3D"color:rgb(156,220,254)">dtype</span><span style=
=3D"color:rgb(212,212,212)">=3Dnp.complex64)</span></div><div><span style=
=3D"color:rgb(212,212,212)">md         =3D uhd.types.RXMetadata()</span></d=
iv><div><span style=3D"color:rgb(212,212,212)">stream_cmd =3D uhd.types.Str=
eamCMD(uhd.types.StreamMode.num_done)</span></div>
<div><span style=3D"color:rgb(212,212,212)">stream_cmd.stream_now =3D </spa=
n><span style=3D"color:rgb(86,156,214)">True</span></div><div><span style=
=3D"color:rgb(212,212,212)">stream_cmd.num_samps  =3D num_samps</span></div=
><div><span style=3D"color:rgb(212,212,212)">stream_cmd.time_spec  =3D uhd.=
types.TimeSpec(</span><span style=3D"color:rgb(181,206,168)">1</span><span =
style=3D"color:rgb(212,212,212)">, </span><span style=3D"color:rgb(181,206,=
168)">0</span><span style=3D"color:rgb(212,212,212)">) </span><span style=
=3D"color:rgb(106,153,85)"># Wait 1s before reception</span></div>
<div><span style=3D"color:rgb(212,212,212)">recv_stream.issue_stream_cmd(st=
ream_cmd)</span></div><div><span style=3D"color:rgb(212,212,212)">received_=
spls =3D recv_stream.recv(data, md, </span><span style=3D"color:rgb(181,206=
,168)">3</span><span style=3D"color:rgb(212,212,212)">.)</span></div>
<div><span style=3D"color:rgb(220,220,170)">print</span><span style=3D"colo=
r:rgb(212,212,212)">(</span><span style=3D"color:rgb(86,156,214)">f</span><=
span style=3D"color:rgb(206,145,120)">&#39;Received </span><span style=3D"c=
olor:rgb(86,156,214)">{</span><span style=3D"color:rgb(78,201,176)">float</=
span><span style=3D"color:rgb(212,212,212)">(received_spls)</span><span sty=
le=3D"color:rgb(86,156,214)">:.2e}</span><span style=3D"color:rgb(206,145,1=
20)"> samples&#39;</span><span style=3D"color:rgb(212,212,212)">)</span></d=
iv>
<div><span style=3D"color:rgb(197,134,192)">if</span><span style=3D"color:r=
gb(212,212,212)"> md.error_code !=3D md.error_code.none:</span></div><div><=
span style=3D"color:rgb(212,212,212)">    </span><span style=3D"color:rgb(2=
20,220,170)">print</span><span style=3D"color:rgb(212,212,212)">(</span><sp=
an style=3D"color:rgb(86,156,214)">f</span><span style=3D"color:rgb(206,145=
,120)">&#39;</span><span style=3D"color:rgb(215,186,125)">\033</span><span =
style=3D"color:rgb(206,145,120)">[1;31m[ERROR]</span><span style=3D"color:r=
gb(215,186,125)">\033</span><span style=3D"color:rgb(206,145,120)">[0m </sp=
an><span style=3D"color:rgb(86,156,214)">{</span><span style=3D"color:rgb(2=
12,212,212)">md.strerror()</span><span style=3D"color:rgb(86,156,214)">}</s=
pan><span style=3D"color:rgb(206,145,120)">&#39;</span><span style=3D"color=
:rgb(212,212,212)">)</span></div><div><span style=3D"color:rgb(197,134,192)=
">else</span><span style=3D"color:rgb(212,212,212)">:</span></div><div><spa=
n style=3D"color:rgb(212,212,212)">    </span><span style=3D"color:rgb(220,=
220,170)">print</span><span style=3D"color:rgb(212,212,212)">(</span><span =
style=3D"color:rgb(86,156,214)">f</span><span style=3D"color:rgb(206,145,12=
0)">&#39;Everything went well.&#39;</span><span style=3D"color:rgb(212,212,=
212)">)</span></div></div><span style=3D"color:rgb(212,212,212)"></span></d=
iv></div>
    <br>
    Without the Fir (and adapting the code of course), I get my 1e6 data
    buffer.<br>
    <br>
    Is there an error I miss, or have I made too much space, deleting
    important part in the process?<br>
    <br>
    <div>On 1/13/22 17:08, Wade Fife wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>In particular, make sure you have a clock connected to the
          CE input of the FIR filter. Something like this in your
          clk_domains section:</div>
        <div><br>
        </div>
        <div>clk_domains:</div>
        <div>=C2=A0 =C2=A0 - { srcblk: _device_, srcport: ce, dstblk: fir0,
          dstport: ce }</div>
        <div><br>
        </div>
        <div>Wade<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 13, 2022 at 10:04
          AM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D=
"_blank">wade.fife@ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div>Hi Camille,</div>
            <div><br>
            </div>
            <div>Maybe you could share your RFNoC YML file and someone
              could take a look? There might be something wrong there.</div=
>
            <div><br>
            </div>
            <div>Wade<br>
            </div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 13, 2022 at
              8:32 AM Camille Moniere &lt;<a href=3D"mailto:camille.moniere=
@univ-ubs.fr" target=3D"_blank">camille.moniere@univ-ubs.fr</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello everyon=
e,<br>
              <br>
              I unsuccessfully try to use the FIR Filter RFNoC block in
              reception, in=C2=A0 <br>
              an USRP X310 with a UBX-160 daughterboard on-board.<br>
              I have tested several topology for the custom image
              (radio0 - &gt; ddc0 -&gt;=C2=A0 <br>
              fir0 -&gt; ep0 || radio0 -&gt; ddc0 -&gt; ep0 + ep1 -&gt;
              fir0 + fir0 -&gt; ep1, for=C2=A0 <br>
              example),<br>
              with several parameter for the filter (With or without
              re-loadable=C2=A0 <br>
              coefficients, with or without embedded DSP registers, 21
              coef&#39; instead=C2=A0 <br>
              of 41 ...) but it ultimately<br>
              always fails the same way.<br>
              When the FIR is used, I can&#39;t retrieve any data. I got an
              Overflow=C2=A0 <br>
              error, without receiving any samples. Sometimes, I even
              got a &quot;Late=C2=A0 <br>
              Command&quot; error, even when using=C2=A0 RFNoC in C++<br>
              (graph committed immediately before the stream now
              stream_cmd).<br>
              <br>
              For the record, the center frequency is 433 MHz for a
              sampling rate of 1=C2=A0 <br>
              Msps.<br>
              <br>
              I assumed the filter output one complex sample (sc16) for
              each new input=C2=A0 <br>
              (sc16 too). Am I wrong? Or is there specific setup I have
              forgotten?<br>
              Has someone successfully used this block, and can provide
              an example or=C2=A0 <br>
              tutorial?<br>
              <br>
              Regards,<br>
              <br>
              Camille<br>
              _______________________________________________<br>
              USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists=
.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
              To unsubscribe send an email to <a href=3D"mailto:usrp-users-=
leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</=
a><br>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--0000000000003b5f5c05d57a0d7c--

--===============6346927854676673757==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6346927854676673757==--
