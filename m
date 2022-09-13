Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE965B794B
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 20:21:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 508AF383C52
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 14:21:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663093272; bh=YMP5KrisPfNTcJXveJomBhWceqtdYXAo/yQjjjCX5/I=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=W6qaUDlk4Cc/yzDFBJVgVU5uXS7wNkAxDlnMGbkvhmTzLDBOpw8o+cUiml3y+D3/s
	 +O6pc/EOHWuyBL/BeX6+j+eDMEAt5E1aOQuMoqMF2NNZf04BeYrQM6gN26kz0zWnCi
	 gaNgrr93hr+bV9kDAH/fVVCLCrd95cfNkzrz+nY6v72oQuHSTFFHWmrDw7q4RkACHN
	 fDikVDIvjklIgYqiL7eLNuRvP5UZGs9fnre7C+sBcdoLLJhS0p+ghZLkao1pg9nSCo
	 nciizJ+ixxOGOSmz1ZYHDN7a9C+qQ3uCmurIs7JLnG4Homf/DsDSWzaaJ680ImtOdV
	 NmVCMPZHoydVQ==
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 1E22A383B97
	for <usrp-users@lists.ettus.com>; Tue, 13 Sep 2022 14:20:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="hOpIDrFJ";
	dkim-atps=neutral
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-3487d84e477so150634087b3.6
        for <usrp-users@lists.ettus.com>; Tue, 13 Sep 2022 11:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=e3SgWtUlOjQ5swI/l/mcnHg9rnQ1DehvSE1IiA8M9NI=;
        b=hOpIDrFJrNXwH0gU1Amh03q7NfYrV979LkhFZnG71CWKXgeWTxBAIYAhuBzVXOCrb8
         WlxylvbDysa18QxY0XVHlYsFulEMGK/fhqpQkiJFTcjW/Ia89KvP/Zd+Pf/toJLXN5mi
         HkKknG6Ud0vDSot+PbKAb5k6/voQ4bgTxtwkzHbrFzxtW1pZ7617RmvDcLz11BDa/poI
         P1MgbSgx+Ql1VL7Q7Z6nEJ2irumjQ/e3ZGC7mZ8yBVUN5nohNbT+8oRORCqPujRSx2wy
         Cl2/cJ8DNNLGC8PmjtBWNEbnxxxbla8DX9Hg8xWowsUJ3t95NnB2lqXr10VCazC4NvR5
         UJqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=e3SgWtUlOjQ5swI/l/mcnHg9rnQ1DehvSE1IiA8M9NI=;
        b=Yid9hx0rZe5MZgmEmlyBJDhL5ziFOxObsFyfVpO2igdJRIgA3hN/z9bTKOgC5qPizP
         ZtirV1zph1jiNe3FM0Dx0exnbLrzUmXbkqUhMcAfAiiqzWqNaGLchwtCGNC7fo3Vur5m
         tv6gV+WmlXZwnk0x14WgcKEQF8+1YZ3xIqIdh6MUl6ycl2/EJnw5fNs8d8JleRxv81kn
         TFm4sj4uW0ZyWv0IS5cBYn1hSryXebLVSzoZ7Xga82AOKhNriCOc1tUq3wZln+lJJWYm
         aDdvAR865BqNQIdaZEFx8ueSYQhmJ1sFWNGpImgclQQXODDbBritUy7dxl6KaH507Yf1
         9DNA==
X-Gm-Message-State: ACgBeo2DmSWb8xPpzGtiH8m90PwfEAUJcWKyODL4Wdg776Sl5BFxez/2
	JrbDhXsV99KU9LZQ5KovlQXRGmUBzPpF61BpVmuM9w==
X-Google-Smtp-Source: AA6agR6YDembcqyycHxJ58iiizyHpAXTYijT5Qfapi3LpHIOTybVc1YqpphZhVKij3/z2OEh55C8zIH5POULi+DKzlk=
X-Received: by 2002:a81:6143:0:b0:335:3076:168e with SMTP id
 v64-20020a816143000000b003353076168emr26596796ywb.460.1663093200186; Tue, 13
 Sep 2022 11:20:00 -0700 (PDT)
MIME-Version: 1.0
References: <BYAPR03MB46780CFCA3FB71E223471337D3479@BYAPR03MB4678.namprd03.prod.outlook.com>
 <CAB__hTTGkkNKhVvau+gRAqsSaYypLpoatEZWm0Jrm-bH-3HnKA@mail.gmail.com> <DM6PR03MB370599116ECE3A17C98DB900AF479@DM6PR03MB3705.namprd03.prod.outlook.com>
In-Reply-To: <DM6PR03MB370599116ECE3A17C98DB900AF479@DM6PR03MB3705.namprd03.prod.outlook.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 13 Sep 2022 14:19:49 -0400
Message-ID: <CAB__hTQiHKPbeY-1EzfK1fPW6ERuMSD48wgL4Xu4sMqG75s6tQ@mail.gmail.com>
To: Paul Atreides <maud.dib1984@gmail.com>
Message-ID-Hash: GHR5JBA7BDW4WYDDNK3OBG3ORF6QFVCP
X-Message-ID-Hash: GHR5JBA7BDW4WYDDNK3OBG3ORF6QFVCP
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC4, FFT Block, Python
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GHR5JBA7BDW4WYDDNK3OBG3ORF6QFVCP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0666654894125962895=="

--===============0666654894125962895==
Content-Type: multipart/alternative; boundary="0000000000006d385405e8930f69"

--0000000000006d385405e8930f69
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, the spp needs to be the same. I don't use gnuradio much so I don't
know if it may be manually configuring something, but in recent versions of
UHD, the graph connection process will automatically try to set the SPP
appropriately for all blocks using the "atomic item size" property of each
block. In the case of the FFT block, this size is the FFT length I think
and so other blocks would have to conform to that SPP.

On Tue, Sep 13, 2022 at 2:03 PM Paul Atreides <maud.dib1984@gmail.com>
wrote:

> If I recall correctly, the app has to be the same in all blocks when you
> use the FFT, that=E2=80=99s the case for the Fosphor graph anyways.
> Does that track with your understanding Rob?
>
> Get Outlook for iOS <https://aka.ms/o0ukef>
> ------------------------------
> *From:* Rob Kossler <rkossler@nd.edu>
> *Sent:* Tuesday, September 13, 2022 9:54:02 AM
> *To:* Minutolo, Lorenzo <minutolo@caltech.edu>
> *Cc:* USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: RFNOC4, FFT Block, Python
>
> Hi Lorenzo,
> The FFT block requires the number of samples per packet to exactly equal
> the FFT size.  When the graph commits, UHD will try to resolve a packet
> size that all of the blocks are happy with.  Perhaps if the FFT size is
> 2^11, this packet size may be bigger than the radio wants to deliver (or
> bigger than the SPP you specified in the rx_streamer, I don't really know=
).
>
> In my opinion, this is a really unnecessary limitation of the stock FFT
> block. With relatively minor changes, this block would not need any linka=
ge
> between packet size and FFT length.
> Rob
>
> On Mon, Sep 12, 2022 at 8:20 PM Minutolo, Lorenzo <minutolo@caltech.edu>
> wrote:
>
> Hi All,
> I'm using UHD 4.2 to play around with RFNOC4. I successfully added an FFT
> block to the XG image of an X300, no static connections. uhd_usrp_probe
> returns as expected. I use the attached code to test it out.
> When I commit the graph I get the following error:
>
> Traceback (most recent call last):
>   File "/home/lorenzo/test_rfnoc_fft.py", line 71, in <module>
>     graph.commit()
> RuntimeError: ValueError: samples per package must not be smaller than
> atomic item size
>
> Digging a bit in the libraries I see that it originates from
> rfnoc_streamer.cpp, specifically:
> [...]
>   if (ais.is_valid()) {
>                 const auto spp =3D
> this->rx_streamer_impl::get_max_num_samps();
>                 if (spp < ais.get()) {
>                     throw uhd::value_error("samples per package must not
> be smaller than atomic item size");
>                 }
> [...]
>
> Has someone encountered this error before?
>
> Thenks,
> Lorenzo
>
>
>
>
>
> Attached code:
>
>     args =3D "addr=3D192.168.30.2"
>     graph =3D uhd.rfnoc.RfnocGraph(args)
>
>     radio_ID_A =3D uhd.rfnoc.BlockID(0, "Radio", 0);
>     radio_block_A =3D graph.get_block(radio_ID_A);
>     radio_ctrl_A =3D uhd.rfnoc.RadioControl(radio_block_A)
>
>     set_freq =3D 300e6
>     spp =3D 512
>     radio_ctrl_A.set_tx_frequency(set_freq, 0)
>     tx_freq =3D radio_ctrl_A.get_tx_frequency(0)
>     radio_ctrl_A.set_rx_frequency(set_freq, 0)
>     rx_freq =3D radio_ctrl_A.get_rx_frequency(0)
>     print("Tuning is TX %.1f, RX: %.1f MHz" % (tx_freq/1e6,rx_freq/1e6 ) =
)
>
>     radio_ctrl_A.set_properties(f'spp=3D{spp}', 0)
>     radio_ctrl_A.set_rx_antenna('RX2',0)
>     radio_ctrl_A.set_rate(200e6)
>
>
>     DDC_ID =3D graph.find_blocks("DDC")[0]
>     DDC_block =3D graph.get_block(DDC_ID)
>     DDC_control =3D uhd.rfnoc.DdcBlockControl(DDC_block)
>     DDC_control.set_input_rate(200e6, 0)
>     DDC_control.set_output_rate(5e6, 0)
>
>     FFT_ID =3D graph.find_blocks("FFT")[0]
>     FFT_block =3D graph.get_block(FFT_ID)
>     FFT_control =3D uhd.rfnoc.FftBlockControl(FFT_block)
>     FFT_control.set_length(spp)
>     FFT_control.set_magnitude(uhd.libpyuhd.rfnoc.fft_magnitude.COMPLEX)
>     FFT_control.set_direction(uhd.libpyuhd.rfnoc.fft_direction.FORWARD)
>     FFT_control.set_shift_config(uhd.libpyuhd.rfnoc.fft_shift.REVERSE)
>
>     stream_args =3D uhd.usrp.StreamArgs('fc32','sc16')
>     stream_args.args =3D 'spp=3D'+str(spp)
>     rx_stream =3D graph.create_rx_streamer(1, stream_args)
>
>     graph.connect(
>         radio_ID_A,0,
>         DDC_ID,0,
>         False
>     )
>     graph.connect(
>         DDC_ID,0,
>         FFT_ID,0,
>         False
>     )
>
>     graph.connect(
>         FFT_ID,0,
>         rx_stream,0
>     )
>
>     graph.commit()
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000006d385405e8930f69
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Yes, the spp needs to be the same. I don&=
#39;t use gnuradio much so I don&#39;t know if it may be manually configuri=
ng something, but in recent versions of UHD, the graph connection process w=
ill automatically try to set the SPP appropriately for all blocks using the=
 &quot;atomic item size&quot; property of each block. In the case of the FF=
T block, this size is the FFT length I think and so other blocks would have=
 to conform to that SPP.</div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, Sep 13, 2022 at 2:03 PM Paul Atreides &lt;<=
a href=3D"mailto:maud.dib1984@gmail.com">maud.dib1984@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">



<div>
<div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">If I recall correctly, the app has to be the same in all b=
locks when you use the FFT, that=E2=80=99s the case for the Fosphor graph a=
nyways.=C2=A0</div>
<div dir=3D"ltr">Does that track with your understanding Rob?</div>
</div>
</div>
<div id=3D"m_-1942680106436659030ms-outlook-mobile-signature">
<div><br>
</div>
Get <a href=3D"https://aka.ms/o0ukef" target=3D"_blank">Outlook for iOS</a>=
</div>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-1942680106436659030divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b>=
 Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkoss=
ler@nd.edu</a>&gt;<br>
<b>Sent:</b> Tuesday, September 13, 2022 9:54:02 AM<br>
<b>To:</b> Minutolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu" ta=
rget=3D"_blank">minutolo@caltech.edu</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Re: RFNOC4, FFT Block, Python</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hi Lorenzo,
<div>The FFT block requires the number of samples per packet to exactly equ=
al the FFT size.=C2=A0 When the graph commits, UHD will try to resolve a pa=
cket size that all of the blocks are happy with.=C2=A0 Perhaps if the FFT s=
ize is 2^11, this packet size may be bigger
 than the radio wants to deliver (or bigger than the SPP you specified in t=
he rx_streamer, I don&#39;t really know).</div>
<div><br>
</div>
<div>In my opinion, this is a really unnecessary limitation of the stock FF=
T block. With relatively minor changes, this block would not need any linka=
ge between packet size and FFT length.</div>
<div>Rob</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Mon, Sep 12, 2022 at 8:20 PM Minutolo, Lorenzo &lt;<a h=
ref=3D"mailto:minutolo@caltech.edu" target=3D"_blank">minutolo@caltech.edu<=
/a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi All,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39;m using UHD 4.2 to play around with RFNOC4. I successfully added an F=
FT block to the XG image of an X300, no static connections. uhd_usrp_probe =
returns as expected. I use the attached code to test it out.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
When I commit the graph I get the following error:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Traceback (most recent call last):
<div>=C2=A0 File &quot;/home/lorenzo/test_rfnoc_fft.py&quot;, line 71, in &=
lt;module&gt;</div>
<div>=C2=A0 =C2=A0 graph.commit()</div>
<div>RuntimeError: ValueError: samples per package must not be smaller than=
 atomic item size</div>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Digging a bit in the libraries I see that it originates from rfnoc_streamer=
.cpp, specifically:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
[...]</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
=C2=A0 if (ais.is_valid()) {
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const auto spp=
 =3D this-&gt;rx_streamer_impl::get_max_num_samps();</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (spp &lt; a=
is.get()) {</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
throw uhd::value_error(&quot;samples per package must not be smaller than a=
tomic item size&quot;);</div>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
[...]</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Has someone encountered this error before?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thenks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Lorenzo</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Attached code:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
=C2=A0 =C2=A0 args =3D &quot;addr=3D192.168.30.2&quot;
<div>=C2=A0 =C2=A0 graph =3D uhd.rfnoc.RfnocGraph(args)</div>
<div><br>
</div>
<div>=C2=A0 =C2=A0 radio_ID_A =3D uhd.rfnoc.BlockID(0, &quot;Radio&quot;, 0=
);</div>
<div>=C2=A0 =C2=A0 radio_block_A =3D graph.get_block(radio_ID_A);</div>
<div>=C2=A0 =C2=A0 radio_ctrl_A =3D uhd.rfnoc.RadioControl(radio_block_A)</=
div>
<div><br>
</div>
<div>=C2=A0 =C2=A0 set_freq =3D 300e6</div>
<div>=C2=A0 =C2=A0 spp =3D 512</div>
<div>=C2=A0 =C2=A0 radio_ctrl_A.set_tx_frequency(set_freq, 0)</div>
<div>=C2=A0 =C2=A0 tx_freq =3D radio_ctrl_A.get_tx_frequency(0)</div>
<div>=C2=A0 =C2=A0 radio_ctrl_A.set_rx_frequency(set_freq, 0)</div>
<div>=C2=A0 =C2=A0 rx_freq =3D radio_ctrl_A.get_rx_frequency(0)</div>
<div>=C2=A0 =C2=A0 print(&quot;Tuning is TX %.1f, RX: %.1f MHz&quot; % (tx_=
freq/1e6,rx_freq/1e6 ) )</div>
<div><br>
</div>
<div>=C2=A0 =C2=A0 radio_ctrl_A.set_properties(f&#39;spp=3D{spp}&#39;, 0)</=
div>
<div>=C2=A0 =C2=A0 radio_ctrl_A.set_rx_antenna(&#39;RX2&#39;,0)</div>
<div>=C2=A0 =C2=A0 radio_ctrl_A.set_rate(200e6)</div>
<div><br>
</div>
<div><br>
</div>
<div>=C2=A0 =C2=A0 DDC_ID =3D graph.find_blocks(&quot;DDC&quot;)[0]</div>
<div>=C2=A0 =C2=A0 DDC_block =3D graph.get_block(DDC_ID)</div>
<div>=C2=A0 =C2=A0 DDC_control =3D uhd.rfnoc.DdcBlockControl(DDC_block)</di=
v>
<div>=C2=A0 =C2=A0 DDC_control.set_input_rate(200e6, 0)</div>
<div>=C2=A0 =C2=A0 DDC_control.set_output_rate(5e6, 0)</div>
<div><br>
</div>
<div>=C2=A0 =C2=A0 FFT_ID =3D graph.find_blocks(&quot;FFT&quot;)[0]</div>
<div>=C2=A0 =C2=A0 FFT_block =3D graph.get_block(FFT_ID)</div>
<div>=C2=A0 =C2=A0 FFT_control =3D uhd.rfnoc.FftBlockControl(FFT_block)</di=
v>
<div>=C2=A0 =C2=A0 FFT_control.set_length(spp)</div>
<div>=C2=A0 =C2=A0 FFT_control.set_magnitude(uhd.libpyuhd.rfnoc.fft_magnitu=
de.COMPLEX)</div>
<div>=C2=A0 =C2=A0 FFT_control.set_direction(uhd.libpyuhd.rfnoc.fft_directi=
on.FORWARD)</div>
<div>=C2=A0 =C2=A0 FFT_control.set_shift_config(uhd.libpyuhd.rfnoc.fft_shif=
t.REVERSE)</div>
<div><br>
</div>
<div>=C2=A0 =C2=A0 stream_args =3D uhd.usrp.StreamArgs(&#39;fc32&#39;,&#39;=
sc16&#39;)</div>
<div>=C2=A0 =C2=A0 stream_args.args =3D &#39;spp=3D&#39;+str(spp)</div>
<div>=C2=A0 =C2=A0 rx_stream =3D graph.create_rx_streamer(1, stream_args)</=
div>
<div><br>
</div>
<div>=C2=A0 =C2=A0 graph.connect(</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 radio_ID_A,0,</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 DDC_ID,0,</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 False</div>
<div>=C2=A0 =C2=A0 )</div>
<div>=C2=A0 =C2=A0 graph.connect(</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 DDC_ID,0,</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 FFT_ID,0,</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 False</div>
<div>=C2=A0 =C2=A0 )</div>
<div><br>
</div>
<div>=C2=A0 =C2=A0 graph.connect(</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 FFT_ID,0,</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 rx_stream,0</div>
<div>=C2=A0 =C2=A0 )</div>
<div><br>
</div>
<div>=C2=A0 =C2=A0 graph.commit()</div>
<div><br>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</div>
</blockquote>
</div>
</div>
</div>

</blockquote></div></div>

--0000000000006d385405e8930f69--

--===============0666654894125962895==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0666654894125962895==--
