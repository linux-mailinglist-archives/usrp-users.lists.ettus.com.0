Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FF05B6EA6
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 15:55:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C40AD38151A
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 09:55:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663077322; bh=1MYRSDSV4GihRmQ5Fsr0GsmvGNvV895h3dDPHP2K/rQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=DOcW7ZMfAnH9wwIi63mdUojES1VXZSbfkunGQUoETfecMa7Gn2mjJvcYJTYHz6R5F
	 yrsObV+RwfucJXhdnEfH1i67TIdoWYwLCfL5tqGc/g10c366UpMgUMHCE9B0NS5VGm
	 ScXD8/vlp6bTwzKLsdpgTxyFlI9gxkJeh6QEGAyoh8p/V6XyK6mREreSfQNpHZZpbQ
	 tCm4ecE1p4CetDxobeBIro95jTmutYyCKgIQbbOL17urCE9XmVv9JpxcKdls8elKhF
	 7VLu47qlgZH+/tYVuDdX3M6pHXxN5ycfJgkm7yyAheWMmODgImIP9jHPT65EFh0BcE
	 2luAAcnRsVR0g==
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 10ABF380D95
	for <usrp-users@lists.ettus.com>; Tue, 13 Sep 2022 09:54:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="YV1AcU55";
	dkim-atps=neutral
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-3450990b0aeso140719897b3.12
        for <usrp-users@lists.ettus.com>; Tue, 13 Sep 2022 06:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=0b1sf6DxR6b9hgQKStgtOzncYPXInkcEP0jSILvEFhg=;
        b=YV1AcU55yMTXxUIJs6ZzWqZAYp3GvevHB3YYU92fSFwvis//ySttIAX/0SKJXYXzBG
         TbMir3JqzgtJmyHJKyPPdj9U+DIVx5Ric8YlJQXR82r2rJD9rTpLmZdpjpzvYfo2gm71
         oiVvtkkljpqyStxOhbO7ov0c0W5SMQkCjgUHARNPAP03ahhmsJLzqnX/wBim5x4rYz9i
         /Wq0G7yLaiCL795q4w/MOKJ/dgrrhOJWLWeYSV90Jkh+eobyKhkS2AESN3WY6deCeyw2
         djxIam9lGVzCJojD+Sn3WnfDKqkCqAR+QFW0XXyLb5QrTM3pZF+zwGnzGzZ0pYN2fuay
         tXQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=0b1sf6DxR6b9hgQKStgtOzncYPXInkcEP0jSILvEFhg=;
        b=JHguHSx7szMhNuxA02p8/Kas89DceRSNx9YJ0zQS3yokVIdsCHV6pjvUyQ8ce5sw2t
         o1H1Ew+ERZYuk2fGDU45zEPP+gF7+USu16F3aVAFVt4ZqDT2kgEGed/UhODvShoI30dn
         ILm0fx73/G6UdAEX1y+8tewS/8QBCJXZszcQKlwbgvjY51a9Wxyi9Gjm9xs5KjMFOV/B
         O9Q23FYfa9khTt2hd9vZQ+rVmYcC1L1n+4fepIGVcPzwDknIbuBTKj/ISxT26d8enrh1
         B4wcd9FIwQWo9y3QShsbKQbuNl2DtpAFML1NG+yXBCDmRHzYZM5LhtT+D6eqdFkTkKE6
         mJBg==
X-Gm-Message-State: ACgBeo1eQSH7wzHn83bK0H6W2RfhjCyu9hHcxC4LSHZ7tWuLq9voljbw
	gpydGaHd2XzAEMjApKxgrl1/mLo2DpgjtFXRUWpe6g==
X-Google-Smtp-Source: AA6agR6fdb9+a8GB/amnWErIbBhc6ivY8c72/IniIcbMTlHnea44BV9vIeLnzdljb6k84JOGIna8elE9vIlP01R2nts=
X-Received: by 2002:a81:478a:0:b0:349:2e6c:ce07 with SMTP id
 u132-20020a81478a000000b003492e6cce07mr9676138ywa.82.1663077253069; Tue, 13
 Sep 2022 06:54:13 -0700 (PDT)
MIME-Version: 1.0
References: <BYAPR03MB46780CFCA3FB71E223471337D3479@BYAPR03MB4678.namprd03.prod.outlook.com>
In-Reply-To: <BYAPR03MB46780CFCA3FB71E223471337D3479@BYAPR03MB4678.namprd03.prod.outlook.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 13 Sep 2022 09:54:02 -0400
Message-ID: <CAB__hTTGkkNKhVvau+gRAqsSaYypLpoatEZWm0Jrm-bH-3HnKA@mail.gmail.com>
To: "Minutolo, Lorenzo" <minutolo@caltech.edu>
Message-ID-Hash: GY5BJJ4PTM4JCPZQRWMOMNOYIKLRH7ZM
X-Message-ID-Hash: GY5BJJ4PTM4JCPZQRWMOMNOYIKLRH7ZM
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC4, FFT Block, Python
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GY5BJJ4PTM4JCPZQRWMOMNOYIKLRH7ZM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1596071858119125316=="

--===============1596071858119125316==
Content-Type: multipart/alternative; boundary="000000000000e7834205e88f5818"

--000000000000e7834205e88f5818
Content-Type: text/plain; charset="UTF-8"

Hi Lorenzo,
The FFT block requires the number of samples per packet to exactly equal
the FFT size.  When the graph commits, UHD will try to resolve a packet
size that all of the blocks are happy with.  Perhaps if the FFT size is
2^11, this packet size may be bigger than the radio wants to deliver (or
bigger than the SPP you specified in the rx_streamer, I don't really know).

In my opinion, this is a really unnecessary limitation of the stock FFT
block. With relatively minor changes, this block would not need any linkage
between packet size and FFT length.
Rob

On Mon, Sep 12, 2022 at 8:20 PM Minutolo, Lorenzo <minutolo@caltech.edu>
wrote:

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
>                 const auto spp =
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
>     args = "addr=192.168.30.2"
>     graph = uhd.rfnoc.RfnocGraph(args)
>
>     radio_ID_A = uhd.rfnoc.BlockID(0, "Radio", 0);
>     radio_block_A = graph.get_block(radio_ID_A);
>     radio_ctrl_A = uhd.rfnoc.RadioControl(radio_block_A)
>
>     set_freq = 300e6
>     spp = 512
>     radio_ctrl_A.set_tx_frequency(set_freq, 0)
>     tx_freq = radio_ctrl_A.get_tx_frequency(0)
>     radio_ctrl_A.set_rx_frequency(set_freq, 0)
>     rx_freq = radio_ctrl_A.get_rx_frequency(0)
>     print("Tuning is TX %.1f, RX: %.1f MHz" % (tx_freq/1e6,rx_freq/1e6 ) )
>
>     radio_ctrl_A.set_properties(f'spp={spp}', 0)
>     radio_ctrl_A.set_rx_antenna('RX2',0)
>     radio_ctrl_A.set_rate(200e6)
>
>
>     DDC_ID = graph.find_blocks("DDC")[0]
>     DDC_block = graph.get_block(DDC_ID)
>     DDC_control = uhd.rfnoc.DdcBlockControl(DDC_block)
>     DDC_control.set_input_rate(200e6, 0)
>     DDC_control.set_output_rate(5e6, 0)
>
>     FFT_ID = graph.find_blocks("FFT")[0]
>     FFT_block = graph.get_block(FFT_ID)
>     FFT_control = uhd.rfnoc.FftBlockControl(FFT_block)
>     FFT_control.set_length(spp)
>     FFT_control.set_magnitude(uhd.libpyuhd.rfnoc.fft_magnitude.COMPLEX)
>     FFT_control.set_direction(uhd.libpyuhd.rfnoc.fft_direction.FORWARD)
>     FFT_control.set_shift_config(uhd.libpyuhd.rfnoc.fft_shift.REVERSE)
>
>     stream_args = uhd.usrp.StreamArgs('fc32','sc16')
>     stream_args.args = 'spp='+str(spp)
>     rx_stream = graph.create_rx_streamer(1, stream_args)
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

--000000000000e7834205e88f5818
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Lorenzo,<div>The FFT block requires the number of sampl=
es per packet to exactly equal the FFT size.=C2=A0 When the graph commits, =
UHD will try to resolve a packet size that all of the blocks are happy with=
.=C2=A0 Perhaps if the FFT size is 2^11, this packet size may be bigger tha=
n the radio wants to deliver (or bigger than the SPP you specified in the r=
x_streamer, I don&#39;t really know).</div><div><br></div><div>In my opinio=
n, this is a really unnecessary limitation of the stock FFT block. With rel=
atively minor changes, this block would not need any linkage between packet=
 size and FFT length.</div><div>Rob</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 12, 2022 at 8:20 PM Mi=
nutolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu">minutolo@caltec=
h.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div class=3D"msg-6585048748708128889">




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
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000e7834205e88f5818--

--===============1596071858119125316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1596071858119125316==--
