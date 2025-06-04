Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A5CACDBB4
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jun 2025 12:13:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7C974385FDB
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jun 2025 06:13:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749031980; bh=99VMadD/SlSuu8otStcSx78wMdzuJUFdetciwnNs2g8=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=An6STVpPsw8r5+WWeR+EDPnLWQEwxcoFenJxPhLP6zPjJXL+NuTIZhw/PLaP/xA1l
	 Uz22MQ+iBuy0lECcaoW6bzLZS1EnTBGjALqj7IGTwugawiN7JdUxlGm9RgshkZchqB
	 6CUeGpTdWoUJpfy4AwI3aaAZno9kuG9NGTjhBspqqTnXX+RQ5E8p0Y/a/n0hn/Eqgo
	 9ylciZTjm62mzF3PMRk/Ye28ygH+/FRuu1GnsCIVNJdV1ZvddizH8AX/joIBEPgXHZ
	 VoSjbM0/JV6uzlkWkuKBy6Z/j3WVYmnlTCB1s7YuMaiTUrDSpGF19RFL5BQTBrZvfm
	 URYNNKw8PgW2g==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 1E27A385F1C
	for <usrp-users@lists.ettus.com>; Wed,  4 Jun 2025 06:12:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="cVerpWXS";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-adb5fd85996so647375966b.2
        for <usrp-users@lists.ettus.com>; Wed, 04 Jun 2025 03:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1749031927; x=1749636727; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k0uS0SXLayxZMkYVWaKBQwbmakjAM+AmpeSsVAypcFQ=;
        b=cVerpWXSElU+hUmZBsND+Q5sj4XkeOnrfx0/C80kGWPxRT9NEED0yzln6sd7RcRDNq
         JoPT+/7DjX5msvIe2enAoxH4GC2uzbvHCN8wb05WMSa7QQ/zRszuCSx8oJ23cHAcaemr
         I+bMdJhHodoBH0Spcd0XwEzL6ua1KSOsfq3iYZAgdDR6oQTRK8lJF+gUtyNpyILJF8qh
         Ods0U3D7yfcQ+drucU+eKxBSHYwN0JBUWbdbdsJvqMTAZxsCCB7AxQ7mRNiel6C0M3r/
         uySklRCAuM5wkr5sBCa923FUovxKP9hJdRlCqaseYVlxyJxJ1pa9S2JpWQHtV40c43yC
         hFbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749031927; x=1749636727;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k0uS0SXLayxZMkYVWaKBQwbmakjAM+AmpeSsVAypcFQ=;
        b=fqqGjNRlla0siPbUvY1RKcDyzYN2yQK4oQC87zsAu9JHwBbAiMA/ltpqT1CxhjqoIk
         dH1OClsQL6GBhmu2HWWPxwpjCwfE201X5vgw8Nig00gq3yYpRinU1r2qv53QoeK8DlGi
         oyXZhpnIy54PSlaOiUUnskTceK6u4Wle0sM4zocLJpd7qg848REnIimR/IfSsAZ5gpzL
         O6fGLOQbYWKxz3KnlQxGvGsALwOI4Dg6J/sIGlUuqSWWLmLegxYBMnJHj7slxcGe1lIG
         jP1PkYGmlLIIdRiIY2IMc3Yl7QIsr5meZPI8/E4Ih2YJJLYJ8GRehAqLYU7vnU1rfaus
         oM6w==
X-Gm-Message-State: AOJu0YxirLUGyRpTwTmi1nE3Vrjm+n5GEBLPzXS4dhQXjzc3yalUWMfm
	tw1UzBJgxZug40XllkIOuAEO0lCDO+74QHkX5DMevMZG99IsVwzm/wSSvVAsus0+SBa6riowqfb
	5EeXBvdREEdT69U146JjAnIhE/2X4N64aaMtTN0LQEe1Y2wic/R03ivo=
X-Gm-Gg: ASbGnctNv3MYAsvuTlmgoVs78pP8fdIaVQH2X7JhawT0WQozv0DVLSq+TqYXNZxZDoA
	8LZtTeuv9MCbP07DTkLtYieijVkfMJC49qxS6hLSg7FtmvTAyfouIRpSn/GaKWdijAbG5S7NfUf
	VAXwt+5RQWIy4f45azENUwbpRziQIoRBac2jFPxTdikf8bLQb4QvRGIJCD2fB+QNE=
X-Google-Smtp-Source: AGHT+IECOscdL1z6ApBnV8q5jEeJZrTU1Y129/xGcUPjgy/JE968gFLUhDA5jImZ4+5ZIdpySvOlhNNKCyNuIfgFGLc=
X-Received: by 2002:a17:907:d8f:b0:adb:2db9:b0ac with SMTP id
 a640c23a62f3a-addf8c9a617mr219155766b.7.1749031926682; Wed, 04 Jun 2025
 03:12:06 -0700 (PDT)
MIME-Version: 1.0
References: <7GJojO84ARx2hw0AYly38eolhNs1iqDN7otldWo1o3k@lists.ettus.com>
In-Reply-To: <7GJojO84ARx2hw0AYly38eolhNs1iqDN7otldWo1o3k@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 4 Jun 2025 12:11:55 +0200
X-Gm-Features: AX0GCFspUdUNh3xPcziYZZg2c1rPwrA0jaXoRSvAOaXGUp8MfblopRDjtbUmB7w
Message-ID: <CAFOi1A69j-+9M4ihA9+pfzzP3y7Ewh1e7cfyuhYQT7O+-+_e1w@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: FMXNGEL2S3T3KQTTCYADERYX3ZLERQ54
X-Message-ID-Hash: FMXNGEL2S3T3KQTTCYADERYX3ZLERQ54
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 RFNoC AssertionError
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FMXNGEL2S3T3KQTTCYADERYX3ZLERQ54/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8420878385275122860=="

--===============8420878385275122860==
Content-Type: multipart/alternative; boundary="000000000000b0f2f50636bc3a2f"

--000000000000b0f2f50636bc3a2f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This error points to a communication issue between the CPLD and
synthesizer, which smells like hardware issues. If the issue persists, I
would suggest an RMA.

--M

On Wed, Jun 4, 2025 at 11:55=E2=80=AFAM <sebastian.schroeder@hhi.fraunhofer=
.de>
wrote:

> Hello,
>
> I have two USRP X410 devices, one of which no longer seems to work when
> initialization Radio1 . I set up both devices with the latest Mender file
> system, v4.8.0.0_x4xx. They also both share the same FPGA image, CG_400. =
I
> have also tried using the X4_200 image. My system is up to date with the
> UHD_4.8.0.HEAD-0-g308126a4 version. Has anyone experienced a similar issu=
e?
> Does anyone know how to resolve this error?
>
> The log below shows me first loading a fresh FPGA image, then probing the
> USRP twice with different errors.
>
> $ uhd_image_loader --args type=3Dx4xx,addr=3D172.24.12.227,fpga=3DCG_400
>
> [INFO] [UHD] linux; GNU C++ version 12.3.0; Boost_108400; DPDK_21.11;
> UHD_4.8.0.HEAD-0-g308126a4
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D172.24.12.227,type=3Dx4xx,product=3Dx410,serial=3D327B85F,nam=
e=3Dni-x4xx-327B85F,fpga=3DX4_200,claimed=3DFalse,skip_init=3D1
>
> [INFO] [MPMD] Claimed device without full initialization.
>
> [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
>
> [INFO] [MPM.PeriphManager] Installing component `fpga'
>
> [INFO] [MPM.PeriphManager] Installing component `dts'
>
> [INFO] [MPM.RPCServer] Resetting peripheral manager.
>
> [INFO] [MPM.PeriphManager] Device serial number: 32748FC
>
> [INFO] [MPM.PeriphManager.ClkMgr] Using Clock Configuration:
>
> DB0: Master Clock Rate: 491.52 MSps @Converter Rate 2.94912 GHz
>
> DB1: Master Clock Rate: 491.52 MSps @Converter Rate 2.94912 GHz
>
> [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
>
> [INFO] [MPM.PeriphManager] init() called with device args
> `boot_init=3DTrue,clock_source=3Dinternal,time_source=3Dinternal,initiali=
zing=3DTrue'.
>
> [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D172.24.12.227,type=3Dx4xx,product=3Dx410,serial=3D327B85F,nam=
e=3Dni-x4xx-327B85F,fpga=3DCG_400,claimed=3DFalse,addr=3D172.24.12.227,find=
_all=3D1
>
> [INFO] [MPM.PeriphManager] init() called with device args
> `find_all=3D1,fpga=3DCG_400,mgmt_addr=3D172.24.12.227,name=3Dni-x4xx-327B=
85F,product=3Dx410,clock_source=3Dinternal,time_source=3Dinternal,initializ=
ing=3DTrue'.
>
> [INFO] [0/Radio#0] Clocking reconfigured, running ADC Self Cal on DB0...
>
> [INFO] [0/Radio#0] Calibrating channel 0...
>
> [INFO] [0/Radio#0] Calibrating channel 1...
>
> [INFO] [0/Radio#0] Calibrated 2 channels.
>
> [ERROR] [RFNOC::GRAPH] Error during initialization of block 0/Radio#1!
>
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> RfnocError: OpFailed: Control operation returned a failing status
>
> Error: RuntimeError: Failure to create rfnoc_graph.
>
> $uhd_usrp_probe --args "addr=3D172.24.12.227"
>
> [INFO] [UHD] linux; GNU C++ version 12.3.0; Boost_108400; DPDK_21.11;
> UHD_4.8.0.HEAD-0-g308126a4
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D172.24.12.227,type=3Dx4xx,product=3Dx410,serial=3D327B85F,nam=
e=3Dni-x4xx-327B85F,fpga=3DCG_400,claimed=3DFalse,addr=3D172.24.12.227I
> have two USRP X410 devices, one of which no longer seems to work when
> initializing Radio 1.
>
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DCG_400,mgmt_addr=3D172.24.12.227,name=3Dni-x4xx-327B85F,product=
=3Dx410,clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'=
.
>
> [ERROR] [RFNOC::GRAPH] Error during initialization of block 0/Radio#1!
>
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> RfnocError: OpFailed: Control operation returned a failing status
>
> Error: RuntimeError: Failure to create rfnoc_graph.
>
> $ uhd_usrp_probe --args "addr=3D172.24.12.227"
>
> [INFO] [UHD] linux; GNU C++ version 12.3.0; Boost_108400; DPDK_21.11;
> UHD_4.8.0.HEAD-0-g308126a4
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D172.24.12.227,type=3Dx4xx,product=3Dx410,serial=3D327B85F,nam=
e=3Dni-x4xx-327B85F,fpga=3DCG_400,claimed=3DFalse,addr=3D172.24.12.227
>
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3DCG_400,mgmt_addr=3D172.24.12.227,name=3Dni-x4xx-327B85F,product=
=3Dx410,clock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'=
.
>
> [ERROR] [RFNOC::GRAPH] Error during initialization of block 0/Radio#1!
>
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> AssertionError: _regs.ADDRESS =3D=3D addr
>
> in lo_peek16
>
> at /home/hhi/Software/uhd/host/lib/usrp/dboard/zbx/zbx_cpld_ctrl.cpp:682
>
> Error: RuntimeError: Failure to create rfnoc_graph.
>
>
> Host Config:
> *uhd_config_info --print-all*
>
>
>    -
>
>    UHD 4.8.0.HEAD-0-g308126a4
>    -
>
>    Build date: Tue, 27 May 2025 09:27:27
>    -
>
>    C compiler: GNU 12.3.0
>    -
>
>    C++ compiler: GNU 12.3.0
>    -
>
>    Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API,
>    Examples, Utils, Tests, Python Module (Utils only), USB, B100, B200, U=
SRP1,
>    USRP2, X300, MPMD, SIM, N300, N320, E320, E300, X400, OctoClock, DPDK
>    -
>
>    Install prefix: /usr/local
>    -
>
>    Boost version: 1.84
>    -
>
>    DPDK version: 21.11.6
>    -
>
>    Libusb version: 1.0.27
>
>
> Tank you for any help.
> ~Sebastian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b0f2f50636bc3a2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This error points to a communication issue between th=
e CPLD and synthesizer, which smells like hardware issues. If the issue per=
sists, I would suggest an RMA.</div><div><br></div><div>--M</div></div><br>=
<div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"=
gmail_attr">On Wed, Jun 4, 2025 at 11:55=E2=80=AFAM &lt;<a href=3D"mailto:s=
ebastian.schroeder@hhi.fraunhofer.de">sebastian.schroeder@hhi.fraunhofer.de=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<p>Hello,</p><p>I have two USRP X410 devices, one of which no longer seems =
to work when initialization Radio1 . I set up both devices with the latest =
Mender file system, v4.8.0.0_x4xx. They also both share the same FPGA image=
, CG_400. I have also tried using the X4_200 image. My system is up to date=
 with the UHD_4.8.0.HEAD-0-g308126a4 version. Has anyone experienced a simi=
lar issue? Does anyone know how to resolve this error?</p><p>The log below =
shows me first loading a fresh FPGA image, then probing the USRP twice with=
 different errors.<strong><br></strong><br></p><p><code>$ uhd_image_loader =
--args type=3Dx4xx,addr=3D172.24.12.227,fpga=3DCG_400</code></p><p><code>[I=
NFO] [UHD] linux; GNU C++ version 12.3.0; Boost_108400; DPDK_21.11; UHD_4.8=
.0.HEAD-0-g308126a4</code></p><p><code>[INFO] [MPMD] Initializing 1 device(=
s) in parallel with args: mgmt_addr=3D172.24.12.227,type=3Dx4xx,product=3Dx=
410,serial=3D327B85F,name=3Dni-x4xx-327B85F,fpga=3DX4_200,claimed=3DFalse,s=
kip_init=3D1</code></p><p><code>[INFO] [MPMD] Claimed device without full i=
nitialization.</code></p><p><code>[INFO] [MPMD IMAGE LOADER] Starting updat=
e. This may take a while.</code></p><p><code>[INFO] [MPM.PeriphManager] Ins=
talling component `fpga&#39;</code></p><p><code>[INFO] [MPM.PeriphManager] =
Installing component `dts&#39;</code></p><p><code>[INFO] [MPM.RPCServer] Re=
setting peripheral manager.</code></p><p><code>[INFO] [MPM.PeriphManager] D=
evice serial number: 32748FC</code></p><p><code>[INFO] [MPM.PeriphManager.C=
lkMgr] Using Clock Configuration:</code></p><p><code>DB0: Master Clock Rate=
: 491.52 MSps @Converter Rate 2.94912 GHz</code></p><p><code>DB1: Master Cl=
ock Rate: 491.52 MSps @Converter Rate 2.94912 GHz</code></p><p><code>[INFO]=
 [MPM.PeriphManager] Initialized 2 daughterboard(s).</code></p><p><code>[IN=
FO] [MPM.PeriphManager] init() called with device args `boot_init=3DTrue,cl=
ock_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue&#39;.</cod=
e></p><p><code>[INFO] [MPMD IMAGE LOADER] Update component function succeed=
ed.</code></p><p><code>[INFO] [MPMD] Initializing 1 device(s) in parallel w=
ith args: mgmt_addr=3D172.24.12.227,type=3Dx4xx,product=3Dx410,serial=3D327=
B85F,name=3Dni-x4xx-327B85F,fpga=3DCG_400,claimed=3DFalse,addr=3D172.24.12.=
227,find_all=3D1</code></p><p><code>[INFO] [MPM.PeriphManager] init() calle=
d with device args `find_all=3D1,fpga=3DCG_400,mgmt_addr=3D172.24.12.227,na=
me=3Dni-x4xx-327B85F,product=3Dx410,clock_source=3Dinternal,time_source=3Di=
nternal,initializing=3DTrue&#39;.</code></p><p><code>[INFO] [0/Radio#0] Clo=
cking reconfigured, running ADC Self Cal on DB0...</code></p><p><code>[INFO=
] [0/Radio#0] Calibrating channel 0...</code></p><p><code>[INFO] [0/Radio#0=
] Calibrating channel 1...</code></p><p><code>[INFO] [0/Radio#0] Calibrated=
 2 channels.</code></p><p><code>[ERROR] [RFNOC::GRAPH] Error during initial=
ization of block 0/Radio#1!</code></p><p><code>[ERROR] [RFNOC::GRAPH] Caugh=
t exception while initializing graph: RfnocError: OpFailed: Control operati=
on returned a failing status</code></p><p><code>Error: RuntimeError: Failur=
e to create rfnoc_graph.</code></p><p><code>$uhd_usrp_probe --args &quot;ad=
dr=3D172.24.12.227&quot;                     </code></p><p><code>[INFO] [UH=
D] linux; GNU C++ version 12.3.0; Boost_108400; DPDK_21.11; UHD_4.8.0.HEAD-=
0-g308126a4</code></p><p><code>[INFO] [MPMD] Initializing 1 device(s) in pa=
rallel with args: mgmt_addr=3D172.24.12.227,type=3Dx4xx,product=3Dx410,seri=
al=3D327B85F,name=3Dni-x4xx-327B85F,fpga=3DCG_400,claimed=3DFalse,addr=3D17=
2.24.12.227</code>I have two USRP X410 devices, one of which no longer seem=
s to work when initializing Radio 1.</p><p><code>[INFO] [MPM.PeriphManager]=
 init() called with device args `fpga=3DCG_400,mgmt_addr=3D172.24.12.227,na=
me=3Dni-x4xx-327B85F,product=3Dx410,clock_source=3Dinternal,time_source=3Di=
nternal,initializing=3DTrue&#39;.</code></p><p><code>[ERROR] [RFNOC::GRAPH]=
 Error during initialization of block 0/Radio#1!</code></p><p><code>[ERROR]=
 [RFNOC::GRAPH] Caught exception while initializing graph: RfnocError: OpFa=
iled: Control operation returned a failing status</code></p><p><code>Error:=
 RuntimeError: Failure to create rfnoc_graph.</code></p><p><code>$ uhd_usrp=
_probe --args &quot;addr=3D172.24.12.227&quot;</code></p><p><code>[INFO] [U=
HD] linux; GNU C++ version 12.3.0; Boost_108400; DPDK_21.11; UHD_4.8.0.HEAD=
-0-g308126a4</code></p><p><code>[INFO] [MPMD] Initializing 1 device(s) in p=
arallel with args: mgmt_addr=3D172.24.12.227,type=3Dx4xx,product=3Dx410,ser=
ial=3D327B85F,name=3Dni-x4xx-327B85F,fpga=3DCG_400,claimed=3DFalse,addr=3D1=
72.24.12.227</code></p><p><code>[INFO] [MPM.PeriphManager] init() called wi=
th device args `fpga=3DCG_400,mgmt_addr=3D172.24.12.227,name=3Dni-x4xx-327B=
85F,product=3Dx410,clock_source=3Dinternal,time_source=3Dinternal,initializ=
ing=3DTrue&#39;.</code></p><p><code>[ERROR] [RFNOC::GRAPH] Error during ini=
tialization of block 0/Radio#1!</code></p><p><code>[ERROR] [RFNOC::GRAPH] C=
aught exception while initializing graph: AssertionError: _regs.ADDRESS =3D=
=3D addr</code></p><p><code>  in lo_peek16</code></p><p><code>  at /home/hh=
i/Software/uhd/host/lib/usrp/dboard/zbx/zbx_cpld_ctrl.cpp:682</code></p><p>=
<code>Error: RuntimeError: Failure to create rfnoc_graph.</code></p><p><br>=
</p><p>Host Config: <strong><br><code>uhd_config_info --print-all</code></s=
trong></p><blockquote><ul><li><p><code>UHD 4.8.0.HEAD-0-g308126a4</code></p=
></li><li><p><code>Build date: Tue, 27 May 2025 09:27:27</code></p></li><li=
><p><code>C compiler: GNU 12.3.0</code></p></li><li><p><code>C++ compiler: =
GNU 12.3.0</code></p></li><li><p><code>Enabled components: LibUHD, LibUHD -=
 C API, LibUHD - Python API, Examples, Utils, Tests, Python Module (Utils o=
nly), USB, B100, B200, USRP1, USRP2, X300, MPMD, SIM, N300, N320, E320, E30=
0, X400, OctoClock, DPDK</code></p></li><li><p><code>Install prefix: /usr/l=
ocal</code></p></li><li><p><code>Boost version: 1.84</code></p></li><li><p>=
<code>DPDK version: 21.11.6</code></p></li><li><p><code>Libusb version: 1.0=
.27<br></code><br></p></li></ul></blockquote><p>Tank you for any help.<br>~=
Sebastian</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b0f2f50636bc3a2f--

--===============8420878385275122860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8420878385275122860==--
