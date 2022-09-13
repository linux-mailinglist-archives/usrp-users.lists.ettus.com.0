Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E6F5B7919
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 20:04:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B3FC5383B76
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 14:04:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663092264; bh=ivISnOfXv7tCCMA1/St7hAY3v4AZUCJcO1n7tK3tbDc=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=eZ2OaxzJT+HkhxsAkQzYadzyKmd7oJv/0iEG4g9iSGb69fuv8hDacXUS074NNxqaY
	 GaSzs3vn723tSSvD2ToHquK2jiR/V32KJkvrqVZ7nN+QsWd2vsW0R9V4WnLIPF2Ix0
	 9G3wDf9sdksuzZi8tzRvQo2IEXg5HlHh5IQpt6lN2EWFQh2SNEvCRTfjp3AjPPNJQH
	 ph4FDubWSKNmm7iHN6yeHb7EJT0YKT+hnUQxj9XY3X3I1aMUh6RMg4kzzlEtFQ0UEz
	 qIfYuwlikwBS0rzXUOa7hEu/GGWdkPnaZfbCYbkGbR8EpFJVv4gE3S5MH0L+uWRqlT
	 aynzbMqGZ6kCw==
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 2C5FA383850
	for <usrp-users@lists.ettus.com>; Tue, 13 Sep 2022 14:03:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qxTUlZcX";
	dkim-atps=neutral
Received: by mail-io1-f48.google.com with SMTP id z191so10285704iof.10
        for <usrp-users@lists.ettus.com>; Tue, 13 Sep 2022 11:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:from:to:cc:subject:date;
        bh=ruJ4WDjw783c4Ysla7ELLvhJlMwdExuh8LgMEg/V5WU=;
        b=qxTUlZcXrUA8jSahaKZsVLNhoYdBETbPTfG+w9FAGm3pEiwHZsXr1Tk0Es9bafF+Di
         E4LJuRmc7vRPDT8vrvvW2AJkl1+EP95lII+9IGg8ngG10uSfNHP6k5/9Z1PR8nQ+Kz1a
         sWIS4athKr+3LrqJQpWqfU9JAd/l1hi5Tbp8cbtwK2CvUe9S/jkpg6c7uL7L8ZiRDipY
         5k94nwYDZw2u0ZBuK6PkbR2hzYybKjc8NyT4HNYrvSc+txbDiLgg0keVoKhyjxowaDHJ
         6buJzRAIOZxGko8orK+jwu7fba51V5fS4jUAk1LxUITzmocUkh/xt1kt/4OLZTB/jTDT
         Kr4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date;
        bh=ruJ4WDjw783c4Ysla7ELLvhJlMwdExuh8LgMEg/V5WU=;
        b=QSOzoLt5A/sN6NSC+MXxML1xBl+HecQE3S6yHT95JscvlMJnTiLHG05ka0rTLAVWxl
         tMZhdht9EIJ/e5hZYECd03EpoX99RQC+OP+2Il8IEGgKLdu6jTX5sHdL0OYGMYRB66ys
         FrMPNzf/0emwkj1BY3BIXBtg18zgTrvEenqJ8eZvoWaOE6fwxqFSft05qHpk8j8/jozW
         8yFW1Vr6//qmx8/F11T3xKhoJXw25S7oT4FMJd1V4vl5OHwdk8yjWMHPAKt5jZgvi2cz
         6zfZn/OcKzP6syyvSHXBvmcMnyvC9UR88+s8N3MF7bizBWZNd/N9womwINqF16eGnR8M
         2/eQ==
X-Gm-Message-State: ACgBeo0fZnOL8BowfOfsbwPa4dyDRhUaHSQraWWDYX9s7up4IdwyItG9
	pDqq/nNjkmy+gHWG9dRtjg8=
X-Google-Smtp-Source: AA6agR5V4KIlQIftq3t4R0SJ1byb6gLPQjED/4X1fCo3QGcmZhD3kMfZZkJgwH4IK2M0V1XNM1t5NQ==
X-Received: by 2002:a6b:c3c2:0:b0:68a:8d8c:487e with SMTP id t185-20020a6bc3c2000000b0068a8d8c487emr14912794iof.38.1663092191325;
        Tue, 13 Sep 2022 11:03:11 -0700 (PDT)
Received: from DM6PR03MB3705.namprd03.prod.outlook.com ([2603:1036:301:2038::5])
        by smtp.gmail.com with ESMTPSA id a1-20020a056e02120100b002e85e8b8d1dsm5417475ilq.5.2022.09.13.11.03.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2022 11:03:10 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
To: Rob Kossler <rkossler@nd.edu>, "Minutolo, Lorenzo" <minutolo@caltech.edu>
Thread-Topic: [USRP-users] Re: RFNOC4, FFT Block, Python
Thread-Index: AQHYxwT+eGu9EQU6FEy301ESNYYr163dYoUAgABFWyY=
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Tue, 13 Sep 2022 18:03:08 +0000
Message-ID: 
	<DM6PR03MB370599116ECE3A17C98DB900AF479@DM6PR03MB3705.namprd03.prod.outlook.com>
References: 
	<BYAPR03MB46780CFCA3FB71E223471337D3479@BYAPR03MB4678.namprd03.prod.outlook.com>
 <CAB__hTTGkkNKhVvau+gRAqsSaYypLpoatEZWm0Jrm-bH-3HnKA@mail.gmail.com>
In-Reply-To: 
	<CAB__hTTGkkNKhVvau+gRAqsSaYypLpoatEZWm0Jrm-bH-3HnKA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
MIME-Version: 1.0
Message-ID-Hash: GUE53YZZV3XPIMKJSIKULX3D433ZL7WB
X-Message-ID-Hash: GUE53YZZV3XPIMKJSIKULX3D433ZL7WB
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC4, FFT Block, Python
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5CJFCECXVPIELCFA6NJDC25TXKHBJWCI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7823208305537297299=="

--===============7823208305537297299==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR03MB370599116ECE3A17C98DB900AF479DM6PR03MB3705namp_"

--_000_DM6PR03MB370599116ECE3A17C98DB900AF479DM6PR03MB3705namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

If I recall correctly, the app has to be the same in all blocks when you us=
e the FFT, that=92s the case for the Fosphor graph anyways.
Does that track with your understanding Rob?

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Rob Kossler <rkossler@nd.edu>
Sent: Tuesday, September 13, 2022 9:54:02 AM
To: Minutolo, Lorenzo <minutolo@caltech.edu>
Cc: USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: RFNOC4, FFT Block, Python

Hi Lorenzo,
The FFT block requires the number of samples per packet to exactly equal th=
e FFT size.  When the graph commits, UHD will try to resolve a packet size =
that all of the blocks are happy with.  Perhaps if the FFT size is 2^11, th=
is packet size may be bigger than the radio wants to deliver (or bigger tha=
n the SPP you specified in the rx_streamer, I don't really know).

In my opinion, this is a really unnecessary limitation of the stock FFT blo=
ck. With relatively minor changes, this block would not need any linkage be=
tween packet size and FFT length.
Rob

On Mon, Sep 12, 2022 at 8:20 PM Minutolo, Lorenzo <minutolo@caltech.edu<mai=
lto:minutolo@caltech.edu>> wrote:
Hi All,
I'm using UHD 4.2 to play around with RFNOC4. I successfully added an FFT b=
lock to the XG image of an X300, no static connections. uhd_usrp_probe retu=
rns as expected. I use the attached code to test it out.
When I commit the graph I get the following error:

Traceback (most recent call last):
  File "/home/lorenzo/test_rfnoc_fft.py", line 71, in <module>
    graph.commit()
RuntimeError: ValueError: samples per package must not be smaller than atom=
ic item size

Digging a bit in the libraries I see that it originates from rfnoc_streamer=
.cpp, specifically:
[...]
  if (ais.is_valid()) {
                const auto spp =3D this->rx_streamer_impl::get_max_num_samp=
s();
                if (spp < ais.get()) {
                    throw uhd::value_error("samples per package must not be=
 smaller than atomic item size");
                }
[...]

Has someone encountered this error before?

Thenks,
Lorenzo





Attached code:

    args =3D "addr=3D192.168.30.2"
    graph =3D uhd.rfnoc.RfnocGraph(args)

    radio_ID_A =3D uhd.rfnoc.BlockID(0, "Radio", 0);
    radio_block_A =3D graph.get_block(radio_ID_A);
    radio_ctrl_A =3D uhd.rfnoc.RadioControl(radio_block_A)

    set_freq =3D 300e6
    spp =3D 512
    radio_ctrl_A.set_tx_frequency(set_freq, 0)
    tx_freq =3D radio_ctrl_A.get_tx_frequency(0)
    radio_ctrl_A.set_rx_frequency(set_freq, 0)
    rx_freq =3D radio_ctrl_A.get_rx_frequency(0)
    print("Tuning is TX %.1f, RX: %.1f MHz" % (tx_freq/1e6,rx_freq/1e6 ) )

    radio_ctrl_A.set_properties(f'spp=3D{spp}', 0)
    radio_ctrl_A.set_rx_antenna('RX2',0)
    radio_ctrl_A.set_rate(200e6)


    DDC_ID =3D graph.find_blocks("DDC")[0]
    DDC_block =3D graph.get_block(DDC_ID)
    DDC_control =3D uhd.rfnoc.DdcBlockControl(DDC_block)
    DDC_control.set_input_rate(200e6, 0)
    DDC_control.set_output_rate(5e6, 0)

    FFT_ID =3D graph.find_blocks("FFT")[0]
    FFT_block =3D graph.get_block(FFT_ID)
    FFT_control =3D uhd.rfnoc.FftBlockControl(FFT_block)
    FFT_control.set_length(spp)
    FFT_control.set_magnitude(uhd.libpyuhd.rfnoc.fft_magnitude.COMPLEX)
    FFT_control.set_direction(uhd.libpyuhd.rfnoc.fft_direction.FORWARD)
    FFT_control.set_shift_config(uhd.libpyuhd.rfnoc.fft_shift.REVERSE)

    stream_args =3D uhd.usrp.StreamArgs('fc32','sc16')
    stream_args.args =3D 'spp=3D'+str(spp)
    rx_stream =3D graph.create_rx_streamer(1, stream_args)

    graph.connect(
        radio_ID_A,0,
        DDC_ID,0,
        False
    )
    graph.connect(
        DDC_ID,0,
        FFT_ID,0,
        False
    )

    graph.connect(
        FFT_ID,0,
        rx_stream,0
    )

    graph.commit()

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_DM6PR03MB370599116ECE3A17C98DB900AF479DM6PR03MB3705namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">If I recall correctly, the app has to be the same in all b=
locks when you use the FFT, that=92s the case for the Fosphor graph anyways=
.&nbsp;</div>
<div dir=3D"ltr">Does that track with your understanding Rob?</div>
</div>
</div>
<div id=3D"ms-outlook-mobile-signature">
<div><br>
</div>
Get <a href=3D"https://aka.ms/o0ukef">Outlook for iOS</a></div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Rob Kossler &lt;rkoss=
ler@nd.edu&gt;<br>
<b>Sent:</b> Tuesday, September 13, 2022 9:54:02 AM<br>
<b>To:</b> Minutolo, Lorenzo &lt;minutolo@caltech.edu&gt;<br>
<b>Cc:</b> USRP-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: RFNOC4, FFT Block, Python</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Lorenzo,
<div>The FFT block requires the number of samples per packet to exactly equ=
al the FFT size.&nbsp; When the graph commits, UHD will try to resolve a pa=
cket size that all of the blocks are happy with.&nbsp; Perhaps if the FFT s=
ize is 2^11, this packet size may be bigger
 than the radio wants to deliver (or bigger than the SPP you specified in t=
he rx_streamer, I don't really know).</div>
<div><br>
</div>
<div>In my opinion, this is a really unnecessary limitation of the stock FF=
T block. With relatively minor changes, this block would not need any linka=
ge between packet size and FFT length.</div>
<div>Rob</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, Sep 12, 2022 at 8:20 PM Min=
utolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu">minutolo@caltech=
.edu</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div class=3D"x_msg-6585048748708128889">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi All,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I'm using UHD 4.2 to play around with RFNOC4. I successfully added an FFT b=
lock to the XG image of an X300, no static connections. uhd_usrp_probe retu=
rns as expected. I use the attached code to test it out.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
When I commit the graph I get the following error:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Traceback (most recent call last):
<div>&nbsp; File &quot;/home/lorenzo/test_rfnoc_fft.py&quot;, line 71, in &=
lt;module&gt;</div>
<div>&nbsp; &nbsp; graph.commit()</div>
<div>RuntimeError: ValueError: samples per package must not be smaller than=
 atomic item size</div>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Digging a bit in the libraries I see that it originates from rfnoc_streamer=
.cpp, specifically:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
[...]</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
&nbsp; if (ais.is_valid()) {
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; const auto spp=
 =3D this-&gt;rx_streamer_impl::get_max_num_samps();</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (spp &lt; a=
is.get()) {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
throw uhd::value_error(&quot;samples per package must not be smaller than a=
tomic item size&quot;);</div>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
[...]</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Has someone encountered this error before?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thenks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Lorenzo</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Attached code:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
&nbsp; &nbsp; args =3D &quot;addr=3D192.168.30.2&quot;
<div>&nbsp; &nbsp; graph =3D uhd.rfnoc.RfnocGraph(args)</div>
<div><br>
</div>
<div>&nbsp; &nbsp; radio_ID_A =3D uhd.rfnoc.BlockID(0, &quot;Radio&quot;, 0=
);</div>
<div>&nbsp; &nbsp; radio_block_A =3D graph.get_block(radio_ID_A);</div>
<div>&nbsp; &nbsp; radio_ctrl_A =3D uhd.rfnoc.RadioControl(radio_block_A)</=
div>
<div><br>
</div>
<div>&nbsp; &nbsp; set_freq =3D 300e6</div>
<div>&nbsp; &nbsp; spp =3D 512</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_tx_frequency(set_freq, 0)</div>
<div>&nbsp; &nbsp; tx_freq =3D radio_ctrl_A.get_tx_frequency(0)</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_rx_frequency(set_freq, 0)</div>
<div>&nbsp; &nbsp; rx_freq =3D radio_ctrl_A.get_rx_frequency(0)</div>
<div>&nbsp; &nbsp; print(&quot;Tuning is TX %.1f, RX: %.1f MHz&quot; % (tx_=
freq/1e6,rx_freq/1e6 ) )</div>
<div><br>
</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_properties(f'spp=3D{spp}', 0)</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_rx_antenna('RX2',0)</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_rate(200e6)</div>
<div><br>
</div>
<div><br>
</div>
<div>&nbsp; &nbsp; DDC_ID =3D graph.find_blocks(&quot;DDC&quot;)[0]</div>
<div>&nbsp; &nbsp; DDC_block =3D graph.get_block(DDC_ID)</div>
<div>&nbsp; &nbsp; DDC_control =3D uhd.rfnoc.DdcBlockControl(DDC_block)</di=
v>
<div>&nbsp; &nbsp; DDC_control.set_input_rate(200e6, 0)</div>
<div>&nbsp; &nbsp; DDC_control.set_output_rate(5e6, 0)</div>
<div><br>
</div>
<div>&nbsp; &nbsp; FFT_ID =3D graph.find_blocks(&quot;FFT&quot;)[0]</div>
<div>&nbsp; &nbsp; FFT_block =3D graph.get_block(FFT_ID)</div>
<div>&nbsp; &nbsp; FFT_control =3D uhd.rfnoc.FftBlockControl(FFT_block)</di=
v>
<div>&nbsp; &nbsp; FFT_control.set_length(spp)</div>
<div>&nbsp; &nbsp; FFT_control.set_magnitude(uhd.libpyuhd.rfnoc.fft_magnitu=
de.COMPLEX)</div>
<div>&nbsp; &nbsp; FFT_control.set_direction(uhd.libpyuhd.rfnoc.fft_directi=
on.FORWARD)</div>
<div>&nbsp; &nbsp; FFT_control.set_shift_config(uhd.libpyuhd.rfnoc.fft_shif=
t.REVERSE)</div>
<div><br>
</div>
<div>&nbsp; &nbsp; stream_args =3D uhd.usrp.StreamArgs('fc32','sc16')</div>
<div>&nbsp; &nbsp; stream_args.args =3D 'spp=3D'+str(spp)</div>
<div>&nbsp; &nbsp; rx_stream =3D graph.create_rx_streamer(1, stream_args)</=
div>
<div><br>
</div>
<div>&nbsp; &nbsp; graph.connect(</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; radio_ID_A,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; DDC_ID,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; False</div>
<div>&nbsp; &nbsp; )</div>
<div>&nbsp; &nbsp; graph.connect(</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; DDC_ID,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; FFT_ID,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; False</div>
<div>&nbsp; &nbsp; )</div>
<div><br>
</div>
<div>&nbsp; &nbsp; graph.connect(</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; FFT_ID,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; rx_stream,0</div>
<div>&nbsp; &nbsp; )</div>
<div><br>
</div>
<div>&nbsp; &nbsp; graph.commit()</div>
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
</body>
</html>

--_000_DM6PR03MB370599116ECE3A17C98DB900AF479DM6PR03MB3705namp_--

--===============7823208305537297299==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7823208305537297299==--
