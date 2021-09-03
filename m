Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7556A400129
	for <lists+usrp-users@lfdr.de>; Fri,  3 Sep 2021 16:22:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 491663840EA
	for <lists+usrp-users@lfdr.de>; Fri,  3 Sep 2021 10:22:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RlNHk3jy";
	dkim-atps=neutral
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 6A26D383F49
	for <usrp-users@lists.ettus.com>; Fri,  3 Sep 2021 10:21:50 -0400 (EDT)
Received: by mail-qv1-f44.google.com with SMTP id s16so3203184qvt.13
        for <usrp-users@lists.ettus.com>; Fri, 03 Sep 2021 07:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=HVPQUXD9zVn732HpxyBeJ4NiXPgX2OJKk1jjr65fxdM=;
        b=RlNHk3jyOq324K57i8Q01LWpIKeovd1uEskcrOVe6LsObCvMDxrmOQU76HKK6inKhS
         1/SyIOaYzDikRyAzMaZ1R18g3WZdhIo8JFhvi6j2gj2qwEMPnyZnjq6OcOzfUZIR080y
         kDM516khiVpHjFSo/GQDW0KhsLj6HVLDI7LdXLy1f/QLzbcYVhcbe5Dyog8tWA9LC6Ea
         7z6trfIoX2bmP+BkdeakOFS3epWZTDBY3OQzpImAaeuMvKHNY6cAVOAwtmJauJ1h93ok
         +whcUoD/IMGBPsPN5KXiwUcdH1627snhYrjG+DwINB2meZpmOqv7PWHdRboZk9ZyVF3l
         T2tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=HVPQUXD9zVn732HpxyBeJ4NiXPgX2OJKk1jjr65fxdM=;
        b=HKZ5PuMH3HL0fGOKGT9l/M3LISipLvtvBfarw31ER3u9JBAZ7trA1PVXM+dtYJ6/Vn
         vVTwlmRTdQlqhvQ9R5H/Wn1PZQ6gAXnOi/TUmSVfWiMXpR9YAOKioH5jY7DqTcMx8m2r
         3nawkRfIYgB9tD+hL+PF+Xx96nsnnhCWr7087PJcqzgGhnu3YIh96k69URYKXhR33ib9
         Zs52t4j9ORHyXeOzaBEafwDhwbAeicC/6ejdvziKpE7+uA5J6mbXR9ch+IlkGMvg8yeL
         9wTXN8MZvUHLyPR294py3gt/3UrTW9ZlV8vVwxx7oFG2i5yRgw2MrVJhc/QxOkt27gLZ
         ypvQ==
X-Gm-Message-State: AOAM530Pg0yCDblz3WsUEKx8VOohNwyQfxJPfhDERWukKJI5ksxJuq7o
	szYiEqpb3UdACrzr8GrePHNmn7wFHKf15w==
X-Google-Smtp-Source: ABdhPJyDq4UY7ZVUzM1cB6A71R+KtxlgX9u+FELZREvaPRks+2wPlcou9ifq/1dFKHaJJwDfiYKiGA==
X-Received: by 2002:a0c:c707:: with SMTP id w7mr3972243qvi.14.1630678909546;
        Fri, 03 Sep 2021 07:21:49 -0700 (PDT)
Received: from [192.168.2.232] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id s20sm3023017qtw.14.2021.09.03.07.21.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Sep 2021 07:21:48 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <8dd72780-0d9e-9066-958f-d39474178cfe@gmail.com>
Date: Fri, 3 Sep 2021 10:21:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es>
Content-Language: en-US
Message-ID-Hash: DZOKZWYODW5QAUEEC55NTDCDGXLMLABW
X-Message-ID-Hash: DZOKZWYODW5QAUEEC55NTDCDGXLMLABW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Resetting of USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DZOKZWYODW5QAUEEC55NTDCDGXLMLABW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0654155198574360803=="

This is a multi-part message in MIME format.
--===============0654155198574360803==
Content-Type: multipart/alternative;
 boundary="------------7AAD2877A40609E43578D393"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7AAD2877A40609E43578D393
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-03 5:00 a.m., Armin Ghani wrote:
>
> Dear Community
>
> I'm working remotely with USRPs. Sometimes due to unknown reasons,=20
> USRPs go to unknown state where they are still accessible through ping=20
> but they product error while initializing:
>
The only thing that's really reliable in this regard (other than=20
potential fixes for the bugs that cause this in UHD 4.x), would be=20
something like a network
 =C2=A0 power relay:

https://dataprobe.com/iboot-g2/

Or similar

>
> Executing: /usr/bin/python3 -u=20
> /home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.py
>
>
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;=20
> UHD_3.15.0.HEAD-0-gaea0e2de
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [ERROR] [UHD] Exception caught in safe-call.
> =C2=A0 in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with=20
> uhd::endianness_t _endianness =3D (uhd::endianness_t)0]
> =C2=A0 at /home/.../Documents/uhd/host/lib/rfnoc/ctrl_iface.cpp:52
> this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block=20
> ctrl (CE_00_Port_30) no response packet - AssertionError: bool(buff)
> =C2=A0 in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, dou=
ble)=20
> [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =
=3D=20
> long unsigned int]
> =C2=A0 at /home/.../Documents/uhd/host/lib/rfnoc/ctrl_iface.cpp:151
>
> Traceback (most recent call last):
> =C2=A0 File "/home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.p=
y",=20
> line 1067, in <module>
> =C2=A0=C2=A0=C2=A0 main()
> =C2=A0 File "/home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.p=
y",=20
> line 1043, in main
> =C2=A0=C2=A0=C2=A0 tb =3D top_block_cls(cp_len=3Doptions.cp_len, fft_le=
n=3Doptions.fft_len,=20
> samp_rate=3Doptions.samp_rate, tx_freq=3Doptions.tx_freq)
> =C2=A0 File "/home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.p=
y",=20
> line 237, in __init__
> =C2=A0=C2=A0=C2=A0 channels=3Dlist(range(0,1)),
> =C2=A0 File=20
> "/usr/local/lib/python3/dist-packages/gnuradio/uhd/__init__.py", line=20
> 125, in constructor_interceptor
> =C2=A0=C2=A0=C2=A0 return old_constructor(*args)
> =C2=A0 File=20
> "/usr/local/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py", line=20
> 3294, in make
> =C2=A0=C2=A0=C2=A0 return _uhd_swig.usrp_source_make(device_addr, strea=
m_args,=20
> issue_stream_cmd_on_start)
> RuntimeError: EnvironmentError: IOError: Block ctrl (CE_00_Port_30) no=20
> response packet - AssertionError: bool(buff)
> =C2=A0 in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, dou=
ble)=20
> [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0; uint64_t =
=3D=20
> long unsigned int]
> =C2=A0 at /home/.../Documents/uhd/host/lib/rfnoc/ctrl_iface.cpp:151
>
>
> And the only solution for this is hard resetting the USRP which is a=20
> bit difficult for me. I'd like to know if there are any other way to=20
> solve this issue or if you know remote ways to do resetting which is=20
> equivalent to hard reset.
>
> Regards.
>
>
> --=20
>
> Armin Ghani
>
> Research Engineer | Communication Systems Division (CSD)
>
> aghani@cttc.es <mailto:aghani@cttc.es>| +34 93 645 29 08 (2143)
>
> Centre Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)
>
> Av. Carl Friedrich Gauss, 7 - Edifici B4 - PMT
>
> 08860 - Castelldefels (Barcelona, Spain)
>
> www.cttc.cat
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--------------7AAD2877A40609E43578D393
Content-Type: multipart/related;
 boundary="------------BE324409DE333691F532CA3B"


--------------BE324409DE333691F532CA3B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-03 5:00 a.m., Armin Ghani
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Dear Community</p>
      <p>I'm working remotely with USRPs. Sometimes due to unknown
        reasons, USRPs go to unknown state where they are still
        accessible through ping but they product error while
        initializing:</p>
    </blockquote>
    The only thing that's really reliable in this regard (other than
    potential fixes for the bugs that cause this in UHD 4.x), would be
    something like a network<br>
    =C2=A0 power relay:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://dataprobe.com/iboo=
t-g2/">https://dataprobe.com/iboot-g2/</a><br>
    <br>
    Or similar<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es">
      <p><br>
      </p>
      <p><font face=3D"Courier New, Courier, monospace">Executing:
          /usr/bin/python3 -u
          /home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.py<br>
        </font></p>
      <p><br>
        <font face=3D"Courier New, Courier, monospace">[INFO] [UHD] linux=
;
          GNU C++ version 7.5.0; Boost_106501;
          UHD_3.15.0.HEAD-0-gaea0e2de<br>
          [INFO] [X300] X300 initialization sequence...<br>
          [INFO] [X300] Maximum frame size: 8000 bytes.<br>
          [INFO] [X300] Radio 1x clock: 200 MHz<br>
          [ERROR] [UHD] Exception caught in safe-call.<br>
          =C2=A0 in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl(=
)
          [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0]<b=
r>
          =C2=A0 at /home/.../Documents/uhd/host/lib/rfnoc/ctrl_iface.cpp=
:52<br>
          this-&gt;send_cmd_pkt(0, 0, true); -&gt; EnvironmentError:
          IOError: Block ctrl (CE_00_Port_30) no response packet -
          AssertionError: bool(buff)<br>
          =C2=A0 in uint64_t
          ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double)
          [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0;
          uint64_t =3D long unsigned int]<br>
          =C2=A0 at /home/.../Documents/uhd/host/lib/rfnoc/ctrl_iface.cpp=
:151<br>
          <br>
          Traceback (most recent call last):<br>
          =C2=A0 File
          "/home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.py",
          line 1067, in &lt;module&gt;<br>
          =C2=A0=C2=A0=C2=A0 main()<br>
          =C2=A0 File
          "/home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.py",
          line 1043, in main<br>
          =C2=A0=C2=A0=C2=A0 tb =3D top_block_cls(cp_len=3Doptions.cp_len=
,
          fft_len=3Doptions.fft_len, samp_rate=3Doptions.samp_rate,
          tx_freq=3Doptions.tx_freq)<br>
          =C2=A0 File
          "/home/.../Documents/.../ml/autoencoder/grc/dnn_ofdm_test.py",
          line 237, in __init__<br>
          =C2=A0=C2=A0=C2=A0 channels=3Dlist(range(0,1)),<br>
          =C2=A0 File
          "/usr/local/lib/python3/dist-packages/gnuradio/uhd/__init__.py"=
,
          line 125, in constructor_interceptor<br>
          =C2=A0=C2=A0=C2=A0 return old_constructor(*args)<br>
          =C2=A0 File
          "/usr/local/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py"=
,
          line 3294, in make<br>
          =C2=A0=C2=A0=C2=A0 return _uhd_swig.usrp_source_make(device_add=
r,
          stream_args, issue_stream_cmd_on_start)<br>
          RuntimeError: EnvironmentError: IOError: Block ctrl
          (CE_00_Port_30) no response packet - AssertionError:
          bool(buff)<br>
          =C2=A0 in uint64_t
          ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double)
          [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0;
          uint64_t =3D long unsigned int]<br>
          =C2=A0 at /home/.../Documents/uhd/host/lib/rfnoc/ctrl_iface.cpp=
:151</font></p>
      <p><br>
      </p>
      <p>And the only solution for this is hard resetting the USRP which
        is a bit difficult for me. I'd like to know if there are any
        other way to solve this issue or if you know remote ways to do
        resetting which is equivalent to hard reset.</p>
      <p>Regards.<br>
      </p>
      <p><br>
      </p>
      <div class=3D"moz-signature">-- <br>
        <meta http-equiv=3D"content-type" content=3D"text/html;
          charset=3DUTF-8">
        <title></title>
        <p> </p>
        <p>
          <meta name=3D"ProgId" content=3D"Word.Document">
          <meta name=3D"Generator" content=3D"Microsoft Word 15">
          <meta name=3D"Originator" content=3D"Microsoft Word 15">
          <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:roman;
	mso-font-pitch:variable;
	mso-font-signature:3 0 0 0 1 0;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-469750017 -1073732485 9 0 511 0;}@font-face
	{font-family:"Arial Black";
	panose-1:2 11 10 4 2 1 2 2 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-1610612049 1073772795 0 0 159 0;}@font-face
	{font-family:Aharoni;
	mso-font-charset:177;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:2051 0 0 0 33 0;}p.MsoNormal, li.MsoNormal, div.MsoNo=
rmal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:107%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Arial;
	mso-bidi-theme-font:minor-bidi;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	mso-themecolor:hyperlink;
	text-decoration:underline;
	text-underline:single;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-noshow:yes;
	mso-style-priority:99;
	color:#954F72;
	mso-themecolor:followedhyperlink;
	text-decoration:underline;
	text-underline:single;}.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Arial;
	mso-bidi-theme-font:minor-bidi;}.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:8.0pt;
	line-height:107%;}div.WordSection1
	{page:WordSection1;}</style> </p>
        <p class=3D"MsoNormal"
          style=3D"margin-bottom:0in;line-height:normal"><img
            src=3D"cid:part1.AE637862.3DEDDDEC@gmail.com" class=3D""
            width=3D"151" hspace=3D"12" height=3D"100" align=3D"left"><sp=
an
            style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family:
Aharoni;color:#2F5496;mso-themecolor:accent1;mso-themeshade:191">Armin
            Ghani</span></p>
        <p class=3D"MsoNormal"
          style=3D"margin-bottom:0in;line-height:normal"><span
            style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Researc=
h
            Engineer | Communication Systems Division (CSD)</span></p>
        <p class=3D"MsoNormal"
          style=3D"margin-bottom:0in;line-height:normal"><a
            href=3D"mailto:aghani@cttc.es" moz-do-not-send=3D"true"><span
              style=3D"font-size:9.0pt;font-family:&quot;Arial
              Black&quot;,sans-serif; mso-bidi-font-family:Aharoni">aghan=
i@cttc.es</span></a><span
            style=3D"font-size: 9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family:Aharoni"> | +34
            93 645 29 08 (2143)</span></p>
        <p class=3D"MsoNormal"
          style=3D"margin-bottom:0in;line-height:normal"><span
            style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Centre
            Tecnol=C3=B2gic de Telecomunicacions de Catalunya (CTTC)</spa=
n></p>
        <p class=3D"MsoNormal"
          style=3D"margin-bottom:0in;line-height:normal"><span
            style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">Av.
            Carl Friedrich Gauss, 7 - Edifici B4 - PMT</span></p>
        <p class=3D"MsoNormal"
          style=3D"margin-bottom:0in;line-height:normal"><span
            style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family: Aharoni">08860
            - Castelldefels (Barcelona, Spain)</span></p>
        <p class=3D"MsoNormal"
          style=3D"margin-bottom:0in;line-height:normal"><a
            moz-do-not-send=3D"true"><span
              style=3D"font-size:9.0pt;font-family:&quot;Arial
              Black&quot;,sans-serif;
              mso-bidi-font-family:Aharoni;mso-ansi-language:ES"
              lang=3D"ES">www.cttc.cat</span></a><span
            style=3D"font-size:9.0pt;font-family:&quot;Arial
            Black&quot;,sans-serif;mso-bidi-font-family:
            Aharoni;mso-ansi-language:ES" lang=3D"ES"></span></p>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------BE324409DE333691F532CA3B
Content-Type: image/jpeg;
 name="ghgbnjldhbgmmpcj.jpeg"
Content-Transfer-Encoding: base64
Content-ID: <part1.AE637862.3DEDDDEC@gmail.com>
Content-Disposition: inline;
 filename="ghgbnjldhbgmmpcj.jpeg"

/9j/4AAQSkZJRgABAQEAkACQAAD/2wBDAAoHBwkHBgoJCAkLCwoMDxkQDw4ODx4WFxIZJCAm
JSMgIyIoLTkwKCo2KyIjMkQyNjs9QEBAJjBGS0U+Sjk/QD3/2wBDAQsLCw8NDx0QEB09KSMp
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT3/wAAR
CAC7ARoDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAA
AgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkK
FhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWG
h4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl
5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREA
AgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYk
NOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOE
hYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk
5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD2aiiigAooooAKSlqjqeq2mkW5ub2ZY0HC
jqzH0A6k+woAu1l6r4i0vRsi+vY45O0YOW/If1rJb+3vEg+Uvo1gw4PWeQZ/8d6fXmrum+Dd
H0071tRNPnJlnO9ifXJp2S3AxpviPFMrDSNJ1C9wPvrEdufQ4BqJPGniR0DL4WmwemSR/Su5
VFQYRQo9AMU6nzLsB57N4/16BiJPDNwpHX5HI/MDFQW/xa/ekXemEL6Rvzn8RXpNU7zSrG/j
Md1aQyqf7yCnzR6oWpg6f8Q9CviFkna2kPaVcD866S3uoLyIS200csZ6NGwYH8RXHat8MdMu
wW0+R7OXsPvJ+RrirvQfEPg+4+0R+dHEn/Le3JKn6gf1quWMvhYXZ7YKK8z0L4osu2PW4ty9
p4B0+q/4V6DYalaanbi4sp454T/Eh6fUdqiUHHcZbpaQdKWpAKKKKACiiigAooooAKKKKACi
iigAooooAKKKKACiiigAooooAKKKKACiiqeoX0en2j3ExO1cAKvLMx6KB6mgCLVtUj02BcIZ
7mU7YIE+9K3p9PU9qpWGhs12NT1kx3F+PuD/AJZwD0Uf1qLz4dEtZtb16RUuXGMdTGp6RoO5
6Zx1NYr2uv8AjZ907yaTox+7Gv8ArZh7+gppAauq+P8ARNJdozc/aZ1OCkI3YPoT0rnZfiy2
9vI0olM/LvfBx711OmeCdD0tFENijsMfPJ8xPvWyLG1AA+zQ8f8ATMVV4roLU86/4W3KAN+l
oOeR5la9h8T9IunEd4k1n6u4yoP1FdJd6Dpl9xc2Fu5xjJQAiuQ1v4XW0wMujzG3lHPlSHKH
6HqKpOm9LWDU7axv7XUbcTWc8c8R6MjZq1XgzR6z4P1LB860nzkEHKSf0Ir0Pwt8Q7fVCtrq
ey2ujwrfwOfr2PtSlSa1WqBM7YU11VwUYAqRgg9DSg5xTqzGcN4m+HFnqCtPpIW1uhzs/gf/
AArzyCfVvCWqkAyWlwn30Jyrj37Ee9e9kc1k6/4dsvENkbe8TDfwSrwyH2NaQqW0YmjG8M+P
LPXiltcEWl9jhGPyyf7p/pXXDpXg+veHr7w5feVdjKE5hnTgNj09DXXeD/iCwMWn65JlThY7
k9vQN/jVTp6c0QTPSxS01WDgMpBB5BHenViMKKKKACiiigAooooAKKKKACiiigAooooAKKKK
ACiiigAoopKADjHtXP3NxBLcSapeSBNO0/dsznBcdXPrjoPetDVp3SBLeD/j4uW8tMfwju34
CsFrePWdWWwRgNG0nBmB6TTDkKT6L1PvTSANN0yXX71dd11CsKfNZWkgwIl/vsP7xFU9c+J1
lYSNBpkX2yVeC+dqD6dzVTVb/UPHWpyaVorGHS4GxPc9n9vcegrpNG8F6Ro0KiO2WaUcmWYB
jn+gq9F8QHn0/wARfEUzmWJkhQ8bVhyo/E1NY/FDV7Zwt3FBcgHnja36V6oLK2CbPs8Oz0CD
FYWueB9J1oFhH9mn7SwgDH1HQ1SnB7oWoeHvHGm6/iJWNvd/88ZeM/7p6Gul614Lr3h6+8N3
/lXXK/einTgN9PQ13Hgbxy928ematIPNIxDMeN/+yfelKnpzR2EmdpqukWesWjW17CskZ6E9
VPqDXjXifwtdeGr3bITJaOf3Uw/kfQ17kOlVNS0621Wyls7tA0UgwR6H1HvShNx9BtHn3gbx
2Ymi0vV5sqcJBO3Y9lY+noa9MU5FeC+IdBn8PapJaXALRHJhkI4kX1+vrXefDzxeb2NdJv5C
Z0X9w5/jX0+oq6kLrmiJM7+lpq/dp1YFFDV9KtdZsntL2IPG/wCan1B9a8W8TeGrjw5qJglG
+3ckxSkcMPQ+9e71na7otrr2myWd4vytyrDqh7EVpCbixNHnfgrxzJYyR6bqche2YhYpW6x+
x9q9UQhgCDkHkGvANa0e50LUXsrtfnHKsOki+ors/AHjQxGPSdTc7OlvMx6f7J/pWlSndc0R
Jnp1FNHSlrnKFooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKguphbWssxP3FLYNAGFq
uo/Zvtl8o3SQKLa2X+9K3p+P8qxNZjntbKx8K6dIft1/l7ufnIXq7E+9aiwh9SsludvlWETX
lwWHHmN0Ofbk1j2GpLp2mal4v1BM3F4/l2iHkiPOFA+vWrSEy5q/iDT/AAJpcOl6bCkt0FwF
BwFP95/f2rz+813XdYkM8k94w6/uQyqB7YrqvCXhI61JJrviHDrKxdIm4Df7Te3oK7aDWdEj
ZLaC9slP3VRXX8qtNR6XYvU8csfE2s6XPuhvpwwOWSUlgfqDXpvhDxrD4hT7PchYL5Rnbn5Z
B6r/AIVZ8TeELLxDbblRIbscxzIOp9D6ivH5YrzQtVZG3QXVs+cj1/wq/dqLzDY901XSrXWb
CS0vIw8bDg91PqK8P1jSrjQdXktZgVkjO5HHdexBr2bwxrieItDhveFk+7Ko/hcdaxviLoK6
nopvoYwbq0Gc92TuKzpycXysGifwF4lbXNK8m6cG9t/lftvXs1dUBketeDeHNbk0LWre8Vj5
e7bMP7yHr+Ve8RuskaujBlYAgjoRSqQsxpmF4x8PDxDorxRgC6i+eFj6+n414pFLPZXazIXi
uIXyD0KsK+iT615N8SdB+waqNRgX9zd/fwPuuP8AGqoz+yxSR6B4W19PEGjRXIIEo+WZB/C1
bVeKeBvEP9g66qytizuiI5R/dP8AC1e1L04ORUVI8rGmOpCM0tFQM5zxj4Zj8R6YQoC3cILQ
uOuf7p9jXiskUkEzJIpSWNsMvQhhX0WeteafEvwz5b/23argNhblR0Ho39K3oztoyWrmt4A8
XNrFqbC9fN7APlb/AJ6J6/Wu2Br53sryfT76K7tWKzRtlD0B9jXuXhzXYfEOkRXkPyt92WPP
KOOopVafK7jTNeikHTrmlrEYUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAVm6qPP8As9pjInlG
4f7K/MT+YH51pVjapceTczzK3NrZySL/ALx//UKAOb1m4aTQ7+SF9s2sXgtYmUk5TO3I/AGq
2v2Sap4m0bwxbkC1tIxJLtOcADv+H86urbB/EHhrTsnFrA15Io/vY4/Mk1R0C7WObxT4lcP8
haOPAzwP/ritI6LQDO+IHiZ5Ls6NYSeVaW4CSeWcbzj7v0FcQYWiALRMmTlSykZ+ldz8N9AX
VbufV79RKIX2qrDIaQ8k/hXoGu6Faa9pj2lzGOR+7cDlD2IrRTUPdJtc4v4ceKZZJv7HvpSy
kf6MzdR6qT/KpfilooeC31eIYaM+VNjup+7+tcDDLNoutJIx2yWs/wAxx6HB/MZr2vW7ZdX8
MXUW3Imt9yg+uMilP3ZKSBao89+F+qm21uWwZ/3VyhYD/aH/ANavVpI1ljZHGUYFSPavn/R7
ttO1izuAf9TMu788GvoJSGUMOhGaVZWlcInz/rWnnTNavLJxjyJSBnup5H6EV6r8OtUN/wCG
Y4ZHDy2jeUR/s/w/p/KuW+KtgIdatrxQwFxD5bN2yp4/Qn8qZ8Lr8w63cWbYCzx7gM4+Zf8A
9dXL3qdxdT1isbxXpA1rw9dWqrmULvi/3h0/wrZpDXMnbUs+ciCPvZVgcEe//wCuvbPBGsf2
x4bgZj+9h/dSDPOR0/SvMfG2lrpXim6RF/dSnzkH+91Fanwz1f7Frz2MrkR3iYXPTeOn6cV1
VFzxuQtz1wUtIOlLXKWJUN1axXdrLbzoHilUqynuDU1BoA8D8RaLJoGsz2UmfLU7om7snY/0
q/4K8Rf8I/rKeYxFrcEJKCeF9GruviRoH9p6N9vgTN1Zjdx/Encf1ryPBcD35rsg1ONmQ9D6
NRgyhlOVPII6GnVxPw38QnUNLbTrh83FoMIxPLp2/LpXbCuRx5XYsWiiikAUUUUAFFFFABRR
RQAUUUUAFFFFABWNq2kT39tfRJIgNwI1Xj7oBBOfyNbNJgUAYY0e4XxFd6gHjCNZi3h45U5z
k1hxeDNQj8EXGkpcxrdXE/mu3O0gtkj8a7jFGKfMwMTwnor6BoEVnMUMwZmdl6Ek1t4FGKMU
gPONd+G17qmr3V3DdQqk0hYKwPGa7uxtZIdLhtp2DyJEEZh0JxirlGKpyb3A8sn+FV+7yNHe
26qWJUEHivTbKJ4LGCKQ7nSNVY+pAwamxRihzctwOb8Z+GJPE9lbwwzLC8Mm7cwyMEYrB0X4
d32ja1aX/wBugkED5ZQhGRjB/nXoWKKFNpWAQdKXFFLUgcj4y8GP4mubeaC4igeJSrFlJ3Cs
Gy+GGoWV5b3MepQh4ZA4IU54r0vFFWqkkrAIvI7fhTqQcUtQAUUUUAMkQOhVlDKwwQfSvNbr
4UTveTNbahCkDOWRGQ5UHtXplFVGTjsB59ofw91LQ9Xgvo9SgOxvnUIfmXuK9AXv60uKWk5X
3AKKKKQBRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRSGkyaAHUlHOaQnFIBaWkHSlpgJS03PN
LmgBaKTPsaM+xoAWikz7GjPsaAFopKSkA6ikB+tGfY0wFopM+xoz7GgApaTPsaM+xoAWikzz
QDmgBaKKaT6cmgBaKQHNBzQAtLTQaWgAooNIeKAFopM0Z96VwFopAfejd7UwHU0mlrn/ABh4
g/4R/Q3lj5uZcxwj3I6/hTSu7CZV8V+OLbw8DbwKtxfEZ8vdwnux/pXDrqPi/wAXSE2zTiHP
SL91GB9ak8EeFW8RXkuoapuktUfnceZn9z6CvWoYY4IliiQIiDAVeAK0bUNBas8j/wCEA8VD
97vPmen2s5pjan4u8ISr9refyieBL+8jP49q9i2imT28VxA8M0ayRuMMrDIIpe07oZzPhTxz
beIj9nmUW96BnYTw49VNdUOleO+NfDjeFtVhvdNLRW8jboivWJx2+lel+GNZGu6BbXnSRhtk
How4NE46cyBHD+OfFOsaX4pmtbG9MMKxIQoUdSOa5/8A4TnxF/0Em/75FWPiTj/hNJ+nMMf8
q5fK+o/Ot6cE4ktm/wD8Jz4i/wCgk3/fIo/4TnxF/wBBJv8AvkVgZB4U8+lLV8kewrs3v+E5
8Rf9BJv++RR/wnPiL/oJN/3yKwR34pMj1H50csew7nQf8Jz4i4/4mR/75FeleFtSu7/wYl9d
TGS5KSMXx3GcV4plSfvDivYvBP8AyTyP08qTn86yqxikrDTPPI/HfiJo1b+0WGRn7opf+E58
Rf8AQSb/AL5Fc7ER5S8joO/tTsj1HsM1tyRFdnQf8Jz4i/6CTf8AfIo/4TnxF/0Em/75FYHB
HFFHJHsK7Og/4TnxF/0Em/75FH/Cc+Iv+gk3/fIrnzgDP6UEjPUfnRyRHc6rSvGmvT6zYwzX
5eOSdFYbRyCcGvYydv418/6GR/wkGmjPW5j/APQhXuur6jFpOmT3s/3IUJx6nsK560VdJDTK
niDxNZeHLXzbx8yN/q4k5Zj/AIV5nq3xF1nUGYWzrZRZOPK+/j/ern9U1O51jUJb27ctLIen
ZR2Aqoen0rSnSS3FcmlvbqdzJLdXDuerGVsn9aRLq4RwyXNwrKcgiVuP1qMAsQEVmbHRRk0p
Vk/1iOhPTcpH860shHRaZ4913TpAWujeR90uPmJ+h6ivSfDXjOx8QqIwwgux1gc8keqnv1rx
LqORkGnxSvb3Ec8TlJI2DIw/hNRKkpDTPosHNUtZnkttLmmhbbIgyDVHwlro8QaHHdMNsyny
5V9GH+PWrXiHjRLn6D+dcFa6hI1p6zRzdvqer3WfId5COuAKle516MZkEgXudtTeEv8Aj4uR
/sitqGW7N5OtxGi2y/cfua8ujSlUgm5M761WMJuKijlP7e1EEg3ByPVa6u3nkktonZzuZAT+
Vchq0sUupStDgoSMEeveuttP+POD/rmv8qihKalKLexWJjHljJK1zTryL4j30moeKUsIwxEA
CKB/eb/9Yr12vFvKN/8AE5o2JOdRI69lJI/lXv0t2zy2etaPp8el6TbWcSgLFGAcever+KMU
tZDCkpaKAOc8c6a+p+FbqGGFpZlw8aquWyD2/DNYvwxttQsba+tr6yuLZDIsiGaMrnIwQM/S
u8wM5owKfN7tgM298OaVqNybi8sYZpiAC7DkgdKg/wCEO0H/AKBdv+VbVFF2Fjzj4i6Dpml6
HFLY2cUEhmClkHOK82r1n4qf8i7B/wBdxXk1ddFtx1IluT2CLJqVqjjcrzIrA9wWGRXt/wDw
h2g/9Au3/I14jp/GqWZ/6eI//QhX0OOlZ1200OJjf8IfoIz/AMSu359q0bXTrWysxa20Kx24
BHlr0561ZorC7ZRif8IdoAAH9l2/HsaD4O0Ef8wu3/I1t0ho5mB4b40s7ew8UXNvaRLFCuMI
vQcVhV0nxA/5HG7+i/yrm67ofCjN7nafDXSrLVb6/W/to51jjUqHHQ5r0EeDtB/6Bdv+VcT8
Jf8AkIal/wBcl/ma9QHQVy1W+ZlpaGRH4T0SCVJYtNgV0YMrAcgjoa5H4r6kUis9PRz85Msg
HoOma9FNePfE2US+LSo/gt0Qj3yT/Wil70kDORI5p8UUk8yQwrukkYIg9zwKZW/4HtftXjDT
17RuZT+A/wDr11ydoshHqvhvw1aeH7COKONTcbR5kpHJbvzV3VdGstZs3t72FZFYYDEfMv0N
XQME0uK8+7vc0PnzWNPbSNWubGVstC5UE9x2P5VTDDnkV71eeGNI1C5ae7sIppWHLt1NQ/8A
CGaB/wBAu3/KuhV1Ylo4j4TXuzUb6zLnEkayKueMg4J/Iiu/8Qf8gS447D+dLY+HdK0u5+0W
NlFBNtK7kHOD2/SrGo2hvbGSANtLDrXNiH7SL5TSm+WSbOc8KyIk85ZgpKjqa0LHUnk1W7t5
nUxLypP8qoDwjN3uVHTPFU9S0V9MiWV51fLYAAwa8dOtRpq8dEelKNGtUfK9WRa3EkWpSiLG
xiGGK6i0z9jg/wCua/yriCcnPU13tvFttol9EA/SssNJSlKVtysWuSMYvoX68YspRb/FIyOe
BqUgP45H9a9nrxXxfA+keOpplRgvmpcof7wyCf1Br6Ol1R5DPaqWobe4S5t45o2BWRQyke9T
VkMKKKKAEz1pM98jFZniLVf7E0O5vuC0a/IG6FjwK5/wP4r1HxLdXK3kcKRQIDmNepJ6U1Ft
XFc7QUtIOlLSGcR8VP8AkXYP+u4ryavWfip/yLsH/XcV5NXXR+AiW5Y0/wD5Cdn/ANfEf/oQ
r6HHQV88af8A8hOz/wCviP8A9CFfQ46Cs8RuhxFooorAoKQ0tIaAPFPiB/yON39F/lXN10nx
A/5HG7+i/wAq5uu+n8KM3ud/8Jf+QhqX/XJf5mvUB0FeX/CX/kIal/1yX+Zr1AdBXJV+JlrY
DxivGviRGU8YzE/xxIw+mMf0r2U15Z8VrIx6rZ3nO2SIxn0G05A/U0UXaQM4Oum+Hkwh8Z2u
f40dB9SP/rVzR61Y069fTdStryPO+CQPx6Dr+ma65q8SEfQopc4qvY3sOo2cV1bOHilUMpBq
WWRIomklYKiAszHoBXBY0DzEBwWUH3NL5qf31/OvCfE+r/2z4huruN28otsj5Iyo71k73H8b
/wDfRreNBtE8x9GCRGOFdSfrTsV5L8LLWWXxJcT7maOG3KtlieWIx/6Ca9aHFZTjyuw07la/
ulsbVp2VmC9lHNcRqOpy6nNvk4UfdVTxXfSIHQqwyCMEetc8/hON7wuJdsHUIByDXnY2lVqJ
KnsduEq0qbvMxdI09769QY/dqcsa7oKgAHpUdraRWcQjhQKo9KmwPQVphsKqMbdSMTiHWlfo
LXB/E7Q3vNPi1GAEtbAiQD+4e/4V3lNeNZEZHUMrDBBGQRXZGXK7nMcF8N/E8c9kukXcgWeH
iAseHX0HuPSu+3Z6V5X4q+H9zYXBvtDRmgB3eUh+eI+o9qj034manpiiDVbZbkKcFmPlyD+h
rRwUtYiues0mTmuA/wCFt2OP+QZd9P76f41h6n8Q9X1vNpptuLdZPl/d5aRvx7VKpyC5Z+Jn
iNLy5j0q1fdFbtvnI6F+w/AZrqPh9ob6R4fDzgie7PmuCOVGMAflWB4P8ATrdpqOtqBg7o4G
5Jb1avSQOB2qpNJcqBCjpS0lLWQziPip/wAi7B/13FeTdq9Y+Kn/ACLsOAT+/HQV5Rg/3W/7
5NddF+6Q0T6f/wAhOz/6+I//AEIV9DjoK+eNPVv7Ts/lb/j4j/hP94V9DKQQCORUYjdFIdRR
RXOMKQ0UH6UAeKfED/kcbv6L/KubrpPH/PjC7wG7fwn0rnMH+63/AHya7qb91EPc774S/wDI
Q1L/AK5L/M16gOgry/4Sg/2jqPBH7peox3r1AVy1fjZS2A1geM9EOueH5YYl3XEf7yL/AHh2
/LNb5oIzUJ2dxnziysjFZAVdTggjBHsaT6da9V8ZeARqszX+lbI7tzmWNjhZPf2NeY3ljdad
M0V7byQODjDrjNdkKkZIhou6R4k1TQ9wsLlkRjkowyv4DtU+q+L9Z1iEw3V0RC33kjG0N9ax
OvTmg8Dmq5I72FdhxQeh5xnipba3lvJ1htonmlfhVQZJr0Lwh8OnhuI7/WsBk+aO26jPq3+F
KVRRQ1qbvw70N9H0DzbhdtxdnzGB6qMYUflXWU0DFOribu7loQ0YpaKQCUtFFABSUtFADdtU
7zRdOv23XdlbynGAXjBI/Gr1FFwMD/hB/D27P9mRZznqf8a07TSbGwz9jtIIM944wDVyii7Y
DdtLilooAKKKKAGPEkn31Vv94Zpv2aE/8sY/++RUtFAEJtIDg+TFkcg7BUuKWigAooooAKQ0
tFAETQRM2WjQk9yoo+zQ/wDPGP8A74FSUUAMSCONtyIinGMqoBp4GKWigBKKWigBMVDc2cF3
GY7qGOZD1V1BFT0hoA5+fwL4euW3SabED/sEqPyBpsXgDw5FIsi6am5TkbnYj8ia6Klp8z7g
VbXTbOyTbaW0MAByBGgWrAGKdSUgClpKWgAooooAKKKKAP/Z
--------------BE324409DE333691F532CA3B--

--------------7AAD2877A40609E43578D393--

--===============0654155198574360803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0654155198574360803==--
