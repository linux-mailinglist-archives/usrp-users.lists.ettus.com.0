Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D72964B6FA9
	for <lists+usrp-users@lfdr.de>; Tue, 15 Feb 2022 16:21:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B6AD384C15
	for <lists+usrp-users@lfdr.de>; Tue, 15 Feb 2022 10:21:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qegODBVD";
	dkim-atps=neutral
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by mm2.emwd.com (Postfix) with ESMTPS id A0E63384BE4
	for <usrp-users@lists.ettus.com>; Tue, 15 Feb 2022 10:20:53 -0500 (EST)
Received: by mail-wm1-f51.google.com with SMTP id bg21-20020a05600c3c9500b0035283e7a012so1648068wmb.0
        for <usrp-users@lists.ettus.com>; Tue, 15 Feb 2022 07:20:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:references:in-reply-to;
        bh=sz/QAP7kVPGvbai3UgaeFWzSZAwqHO0QZNcqaDkj0Yc=;
        b=qegODBVDVFCsmONlFodLe1ngAx/2u6R7tfcPBHgs46vqk0nWRWAyEirQxlSpzHOzmh
         9qAOFBz12zh/HHlE056iBF0sFcT6zeT72qfOj/K8nvpz7qL5VVVCk5VuIoc6bfArgT3D
         jbBouenH2X80g0X9UcKgzynIg03LZVRsAgQnxrn3mFj7l61rc8o5oHYOog72SbjXnc2s
         nSeWhd0FvJKsX0mPjJWp66LlLcmdrkIezrCCeRe6PwWK9IEgm8FgOansS2X6tGnDoRGC
         Z259v+WTiRFmm8ei/cPWJQzsCol8tHWYRSHjG9IWSieYsbuhk8kMR8iPN+HyFWXimphU
         7KPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:references:in-reply-to;
        bh=sz/QAP7kVPGvbai3UgaeFWzSZAwqHO0QZNcqaDkj0Yc=;
        b=QwA4zPEEXAYR5b/jbtD1rVSCc8XVBeKWg+sQtS+9Y8H3Zj+iWgxdKnennwwjthqH8V
         7+Ap273naydW54NgMU+dSjMaQR6P3yzY5DSIP2ENXNN3hv6DEMlSjeXlJ76OPseSweD7
         YffamuJ8a+i8Rj9qqE68eWlOzdzm5YgKnQnc7r3Xhx+NGHo3sih8MZH14dfbMRw1mJ1S
         hlCxZDYLdfwfvRQ18bal1SWV3t9Y6mi1liR8fX55CFJ2AcBRUTueQFjtfQCMxZpbFyTK
         1isRQidVTa9FWcOeM9PdsRrzBTWrnMI2QKRzFA7kV+2PPwZV48aA3FmMqpaApNnH3TYY
         BtKA==
X-Gm-Message-State: AOAM530Fnd0zwH7MO1gz4eGzqX9EJ8ZDe0bdKsrzNRfvQwAEFDdb4XW5
	IZvMKO3kuGbeMxyP83EwgvnUd3vPPmm+gA==
X-Google-Smtp-Source: ABdhPJwkkcK8KDbFqoEs8KXC+IR2I4UFniKLZ4rKIqUgB39fbmm+XLe6t6lT3XN2Gnup99ntr78xPA==
X-Received: by 2002:a05:600c:3ba0:b0:37b:b86a:5d30 with SMTP id n32-20020a05600c3ba000b0037bb86a5d30mr3469126wms.136.1644938452334;
        Tue, 15 Feb 2022 07:20:52 -0800 (PST)
Received: from [172.16.4.232] ([193.145.14.195])
        by smtp.gmail.com with ESMTPSA id 14sm1641776wrb.34.2022.02.15.07.20.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Feb 2022 07:20:51 -0800 (PST)
Message-ID: <cfa365c7-0449-2946-e76d-12e2d0e35406@gmail.com>
Date: Tue, 15 Feb 2022 16:20:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
From: Giuseppe Santaromita <giuseppe.santaromita1@gmail.com>
To: zeyuan.li@zengyi-tech.com, usrp-users@lists.ettus.com
References: <deed8d5e-6ab5-21dc-5da9-9f580e859dee@gmail.com>
 <014601d81e26$cb469260$61d3b720$@zengyi-tech.com>
 <384482b4-b1ca-a497-86ec-46baa7c43472@gmail.com>
 <28e04eea-f737-f99c-c851-15b38b02388c@gmail.com>
 <ec67277c-80ac-db10-af63-c15987cf8042@gmail.com>
 <ed848007-2bc2-d246-209e-3217bf37c1a2@gmail.com>
 <c701de64-c2d9-a189-489a-37eac6deba22@gmail.com>
 <c83d6c10-9159-f329-2f25-db055e9429f9@gmail.com>
 <e1b5678a-a961-7fcc-7fe1-2dc4e176b4ef@gmail.com>
 <018e01d82212$05cc7230$11655690$@zengyi-tech.com>
 <f7bba14b-ef1a-7669-e6f4-9fab89507e7e@gmail.com>
In-Reply-To: <f7bba14b-ef1a-7669-e6f4-9fab89507e7e@gmail.com>
Message-ID-Hash: YY3QXUCUVVY5ZNGWSUOAIJSHXM64F7MG
X-Message-ID-Hash: YY3QXUCUVVY5ZNGWSUOAIJSHXM64F7MG
X-MailFrom: giuseppe.santaromita1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: OAI with USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YY3QXUCUVVY5ZNGWSUOAIJSHXM64F7MG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0544585351638093325=="

This is a multi-part message in MIME format.
--===============0544585351638093325==
Content-Type: multipart/alternative;
 boundary="------------AihA90cfvSzbAalKpvn7zFjc"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------AihA90cfvSzbAalKpvn7zFjc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Another thing is that maybe the problem is the cable. I am trying to do=20
about 60 MSps in TX and 60 MSps in RX. This doesn't work even trying=20
with benchmark_rate.

However, when I try to use 20 MSps in RX and TX it works. I have a 1Gbps=20
ETH connection. Is this possible?

Another thing, when I try to use the benchmark_rate for testing, after a=20
few tries the following happens and I have to reboot the N310. What=20
could be the problem?


./benchmark_rate=C2=A0=C2=A0=C2=A0=C2=A0 --args=20
"type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.10.2,master_clock_ra=
te=3D122.88e6"=20
--duration 10=C2=A0=C2=A0=C2=A0 --channels "0"=C2=A0=C2=A0=C2=A0 --rx_rat=
e 20.84e6 --rx_subdev=20
"A:0"=C2=A0=C2=A0=C2=A0 --tx_rate 20.84e6=C2=A0=C2=A0=C2=A0 --tx_subdev "=
A:0"

[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-rele=
ase
[00:00:00.000234] Creating the usrp device with:=20
type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.10.2,master_clock_rat=
e=3D122.88e6...
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3211008,fpga=
=3DHG,claimed=3DFalse,addr=3D192.168.10.2,master_clock_rate=3D122.88e6
[WARNING] [MPM.RPCServer] A timeout event occured!
[INFO] [MPM.PeriphManager] init() called with device args=20
`fpga=3DHG,master_clock_rate=3D122.88e6,mgmt_addr=3D192.168.10.2,product=3D=
n310,clock_source=3Dexternal,time_source=3Dinternal'.
[WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
[ERROR] [RFNOC::GRAPH] Error during initialization of block 0/Radio#0!
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:=20
RfnocError: OpTimeout: Control operation timed out waiting for ACK
Error: RuntimeError: Failure to create rfnoc_graph.



Il 15/2/22 13:07, Giuseppe Santaromita ha scritto:
>
> Thank you very much.
>
> This (attached) is the log files.
>
> Any ideas?
>
> Il 15/2/22 3:16, zeyuan.li@zengyi-tech.com ha scritto:
>>
>> Please try this =E2=80=9Csudo ./nr-softmodem -O=20
>> ../../../ci-scripts/conf_files/gnb.band78.tm1.106PRB.usrpn300.conf=20
>> --sa --args clock_source=3Dinternal || sudo tee files_log.txt=E2=80=9D
>>
>> =E8=B0=A2=E8=B0=A2=EF=BC=8C=E6=9C=89=E4=BB=BB=E4=BD=95=E9=97=AE=E9=A2=98=
=E8=AF=B7=E9=9A=8F=E6=97=B6=E4=B8=8E=E6=88=91=E8=81=94=E7=B3=BB=EF=BC=81
>>
>> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
>>
>> =E6=9D=8E=E6=B3=BD=E8=BF=9C|=E7=A0=94=E5=8F=91=E5=B7=A5=E7=A8=8B=E5=B8=
=88
>>
>> =E5=8C=97=E4=BA=AC=E6=9B=BE=E7=9B=8A=E7=A7=91=E6=8A=80=E6=9C=89=E9=99=90=
=E5=85=AC=E5=8F=B8
>>
>> =E6=89=8B=E6=9C=BA=EF=BC=9A13121162044
>>
>> =E5=9C=B0=E5=9D=80=EF=BC=9A=E5=8C=97=E4=BA=AC=E5=B8=82=E6=B5=B7=E6=B7=80=
=E5=8C=BA=E4=B8=AD=E5=85=B3=E6=9D=91=E5=A4=A7=E8=A1=97=E4=B8=AD=E5=85=B3=E6=
=9D=91SOHO 1108
>> =E7=BD=91=E5=9D=80=EF=BC=9A_www.zengyi-tech.com <http://www.zengyi-tec=
h.com>_
>>
>> *=E5=8F=91=E4=BB=B6=E4=BA=BA:*Giuseppe Santaromita <giuseppe.santaromi=
ta1@gmail.com>
>> *=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4:*2022=E5=B9=B42=E6=9C=8815=E6=97=
=A52:02
>> *=E6=94=B6=E4=BB=B6=E4=BA=BA:*usrp-users@lists.ettus.com
>> *=E4=B8=BB=E9=A2=98:*[USRP-users] OAI with USRP N310
>>
>> Dear community,
>>
>> I would like to use OpenAirInterface with the USRP N310 and I am=20
>> having overflow problems. I am forwarding here the email I sent to=20
>> the OAI mail list, because I think the problem is with the USRP and=20
>> non-real time operations.
>>
>> Does anyone have any ideas?
>>
>> Thanks in advance,
>>
>> Giuseppe
>>
>>     Dear community,
>>
>>     After solving problems with OAI installation and USRP N310
>>     configuration, I am trying to create a 5G SA link, starting with
>>     gNB.
>>
>>     I tried this:
>>     sudo ./nr-softmodem -O
>>     ../../../ci-scripts/conf_files/gnb.band78.tm1.106PRB.usrpn300.conf
>>     --sa --args clock_source=3Dinternal
>>
>>     But it gives problems that I think are related to the fact that
>>     probably the operations are not in real time.
>>
>>     For example:
>>     [PHY] rx_rf: Asked for 30720 samples, got 18906 from USRP
>>     [PHY] problem receiving samples
>>     LLLLLLLLLLLLLLLLLLLLLLLLLLLO[HW] [recv] received 18906 samples
>>     out of 30720
>>     [HW] Time: 1.41826 s
>>     ERROR_CODE_OVERFLOW (Overflow)
>>
>>     Or, even earlier:
>>     [WARNING] [MPM.RPCServer] A timeout event occured!
>>
>>     Also, I would like to attach a log file but I can't find it, and
>>     using the "> file_log.txt" at the end of the command it all goes
>>     immediately in overflow.
>>
>>     Does anyone have any ideas?
>>
--------------AihA90cfvSzbAalKpvn7zFjc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Another thing is that maybe the problem is the cable. I am trying
      to do about 60 MSps in TX and 60 MSps in RX. This doesn't work
      even trying with benchmark_rate. <br>
      <br>
      However, when I try to use 20 MSps in RX and TX it works. I have a
      1Gbps ETH connection. Is this possible?<br>
      <br>
      Another thing, when I try to use the benchmark_rate for testing,
      after a few tries the following happens and I have to reboot the
      N310. What could be the problem?<br>
      <br>
    </p>
    <p><br>
    </p>
    <p>./benchmark_rate=C2=A0=C2=A0=C2=A0=C2=A0 --args
"type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.10.2,master_clock_ra=
te=3D122.88e6"=C2=A0=C2=A0=C2=A0
      --duration 10=C2=A0=C2=A0=C2=A0 --channels "0"=C2=A0=C2=A0=C2=A0 --=
rx_rate 20.84e6=C2=A0=C2=A0=C2=A0
      --rx_subdev "A:0"=C2=A0=C2=A0=C2=A0 --tx_rate 20.84e6=C2=A0=C2=A0=C2=
=A0 --tx_subdev "A:0"<br>
      <br>
      [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
      UHD_4.1.0.4-release<br>
      [00:00:00.000234] Creating the usrp device with:
type=3Dn3xx,mgmt_addr=3D192.168.10.2,addr=3D192.168.10.2,master_clock_rat=
e=3D122.88e6...<br>
      [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3211008,fpga=
=3DHG,claimed=3DFalse,addr=3D192.168.10.2,master_clock_rate=3D122.88e6<br=
>
      [WARNING] [MPM.RPCServer] A timeout event occured!<br>
      [INFO] [MPM.PeriphManager] init() called with device args
`fpga=3DHG,master_clock_rate=3D122.88e6,mgmt_addr=3D192.168.10.2,product=3D=
n310,clock_source=3Dexternal,time_source=3Dinternal'.<br>
      [WARNING] [RFNOC::GRAPH] One or more blocks timed out during
      flush!<br>
      [ERROR] [RFNOC::GRAPH] Error during initialization of block
      0/Radio#0!<br>
      [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
      RfnocError: OpTimeout: Control operation timed out waiting for ACK<=
br>
      Error: RuntimeError: Failure to create rfnoc_graph.<br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">Il 15/2/22 13:07, Giuseppe Santaromita
      ha scritto:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:f7bba14b-ef1a-7669-e6f4-9fab89507e7e@gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Thank you very much.<br>
      </p>
      <p>This (attached) is the log files.</p>
      <p>Any ideas?<br>
      </p>
      <div class=3D"moz-cite-prefix">Il 15/2/22 3:16, <a
          class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
          href=3D"mailto:zeyuan.li@zengyi-tech.com" moz-do-not-send=3D"tr=
ue">zeyuan.li@zengyi-tech.com</a>
        ha scritto:<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:018e01d82212$05cc7230$11655690$@zengyi-tech.com">
        <meta http-equiv=3D"Content-Type" content=3D"text/html;
          charset=3DUTF-8">
        <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
          medium)">
        <style>@font-face
	{font-family:=E5=AE=8B=E4=BD=93;
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:=E7=AD=89=E7=BA=BF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:"\@=E5=AE=8B=E4=BD=93";
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:"\@=E7=AD=89=E7=BA=BF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:-moz-fixed;
	panose-1:0 0 0 0 0 0 0 0 0 0;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:=E5=AE=8B=E4=BD=93;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:=E5=AE=8B=E4=BD=93;}span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
        <div class=3D"WordSection1">
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" l=
ang=3D"EN-US">Please
              try this =E2=80=9Csudo ./nr-softmodem -O
              ../../../ci-scripts/conf_files/gnb.band78.tm1.106PRB.usrpn3=
00.conf
              --sa --args clock_source=3Dinternal || sudo tee
              files_log.txt=E2=80=9D<o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" l=
ang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
          <div>
            <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p>=
</span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p>=
</span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p>=
</span></p>
            <p class=3D"MsoNormal">=E8=B0=A2=E8=B0=A2=EF=BC=8C=E6=9C=89=E4=
=BB=BB=E4=BD=95=E9=97=AE=E9=A2=98=E8=AF=B7=E9=9A=8F=E6=97=B6=E4=B8=8E=E6=88=
=91=E8=81=94=E7=B3=BB=EF=BC=81<span lang=3D"EN-US"><o:p></o:p></span></p>
            <p class=3D"MsoNormal">=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94<span
                lang=3D"EN-US"><o:p></o:p></span></p>
            <p class=3D"MsoNormal"><span style=3D"color:black;border:none
                windowtext 1.0pt;padding:0cm;background:white">=E6=9D=8E=E6=
=B3=BD=E8=BF=9C<span
                  lang=3D"EN-US">|</span>=E7=A0=94=E5=8F=91=E5=B7=A5=E7=A8=
=8B=E5=B8=88</span><span lang=3D"EN-US"><o:p></o:p></span></p>
            <p class=3D"MsoNormal"><span style=3D"color:black;border:none
                windowtext 1.0pt;padding:0cm;background:white">=E5=8C=97=E4=
=BA=AC=E6=9B=BE=E7=9B=8A=E7=A7=91=E6=8A=80=E6=9C=89=E9=99=90=E5=85=AC=E5=8F=
=B8</span><span
                lang=3D"EN-US"><o:p></o:p></span></p>
            <p class=3D"MsoNormal"><span style=3D"color:black;border:none
                windowtext 1.0pt;padding:0cm;background:white">=E6=89=8B=E6=
=9C=BA=EF=BC=9A<span
                  lang=3D"EN-US">13121162044</span></span><span
                lang=3D"EN-US"><o:p></o:p></span></p>
            <p class=3D"MsoNormal"><span style=3D"color:black;border:none
                windowtext 1.0pt;padding:0cm;background:white">=E5=9C=B0=E5=
=9D=80=EF=BC=9A=E5=8C=97=E4=BA=AC=E5=B8=82=E6=B5=B7=E6=B7=80=E5=8C=BA=E4=B8=
=AD=E5=85=B3=E6=9D=91=E5=A4=A7=E8=A1=97=E4=B8=AD=E5=85=B3=E6=9D=91<span
                  lang=3D"EN-US">SOHO 1108<br>
                </span>=E7=BD=91=E5=9D=80=EF=BC=9A<u><span lang=3D"EN-US"=
><a
                      href=3D"http://www.zengyi-tech.com"
                      moz-do-not-send=3D"true"><span style=3D"color:#0563=
C1">www.zengyi-tech.com</span></a></span></u></span><span
                lang=3D"EN-US"><o:p></o:p></span></p>
          </div>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:10.5pt;font-family:=E7=AD=89=E7=BA=BF" l=
ang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0cm 0cm 0cm">
              <p class=3D"MsoNormal"><b><span
                    style=3D"font-size:11.0pt;font-family:=E7=AD=89=E7=BA=
=BF">=E5=8F=91=E4=BB=B6=E4=BA=BA<span
                      lang=3D"EN-US">:</span></span></b><span
                  style=3D"font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF=
" lang=3D"EN-US">
                  Giuseppe Santaromita <a class=3D"moz-txt-link-rfc2396E"
                    href=3D"mailto:giuseppe.santaromita1@gmail.com"
                    moz-do-not-send=3D"true">&lt;giuseppe.santaromita1@gm=
ail.com&gt;</a>
                  <br>
                </span><b><span style=3D"font-size:11.0pt;font-family:=E7=
=AD=89=E7=BA=BF">=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4<span
                      lang=3D"EN-US">:</span></span></b><span
                  style=3D"font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF=
" lang=3D"EN-US">
                  2022</span><span
                  style=3D"font-size:11.0pt;font-family:=E7=AD=89=E7=BA=BF=
">=E5=B9=B4<span
                    lang=3D"EN-US">2</span>=E6=9C=88<span lang=3D"EN-US">=
15</span>=E6=97=A5<span
                    lang=3D"EN-US"> 2:02<br>
                  </span><b>=E6=94=B6=E4=BB=B6=E4=BA=BA<span lang=3D"EN-U=
S">:</span></b><span
                    lang=3D"EN-US"> <a class=3D"moz-txt-link-abbreviated
                      moz-txt-link-freetext"
                      href=3D"mailto:usrp-users@lists.ettus.com"
                      moz-do-not-send=3D"true">usrp-users@lists.ettus.com=
</a><br>
                  </span><b>=E4=B8=BB=E9=A2=98<span lang=3D"EN-US">:</spa=
n></b><span
                    lang=3D"EN-US"> [USRP-users] OAI with USRP N310<o:p><=
/o:p></span></span></p>
            </div>
          </div>
          <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></=
span></p>
          <div>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">Dear community,<o=
:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p>=
</span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">I would like to u=
se
                OpenAirInterface with the USRP N310 and I am having
                overflow problems. I am forwarding here the email I sent
                to the OAI mail list, because I think the problem is
                with the USRP and non-real time operations.<o:p></o:p></s=
pan></p>
            <p><span lang=3D"EN-US">Does anyone have any ideas?<o:p></o:p=
></span></p>
            <p><span lang=3D"EN-US">Thanks in advance,<o:p></o:p></span><=
/p>
            <p><span lang=3D"EN-US">Giuseppe<o:p></o:p></span></p>
            <p><span lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
            <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
              <div>
                <p class=3D"MsoNormal"><span
                    style=3D"font-size:13.5pt;font-family:&quot;-moz-fixe=
d&quot;,serif"
                    lang=3D"EN-US">Dear community, <br>
                    <br>
                    After solving problems with OAI installation and
                    USRP N310 configuration, I am trying to create a 5G
                    SA link, starting with gNB. <br>
                    <br>
                    I tried this: <br>
                    sudo ./nr-softmodem -O
                    ../../../ci-scripts/conf_files/gnb.band78.tm1.106PRB.=
usrpn300.conf
                    --sa --args clock_source=3Dinternal <br>
                    <br>
                    But it gives problems that I think are related to
                    the fact that probably the operations are not in
                    real time. <br>
                    <br>
                    For example: <br>
                    [PHY] rx_rf: Asked for 30720 samples, got 18906 from
                    USRP <br>
                    [PHY] problem receiving samples <br>
                    LLLLLLLLLLLLLLLLLLLLLLLLLLLO[HW] [recv] received
                    18906 samples out of 30720 <br>
                    [HW] Time: 1.41826 s <br>
                    ERROR_CODE_OVERFLOW (Overflow) <br>
                    <br>
                    Or, even earlier: <br>
                    [WARNING] [MPM.RPCServer] A timeout event occured! <b=
r>
                    <br>
                    Also, I would like to attach a log file but I can't
                    find it, and using the "&gt; file_log.txt" at the
                    end of the command it all goes immediately in
                    overflow. <br>
                    <br>
                    Does anyone have any ideas? </span><span
                    style=3D"font-size:9.0pt;font-family:&quot;-moz-fixed=
&quot;,serif"
                    lang=3D"EN-US"><o:p></o:p></span></p>
              </div>
            </blockquote>
          </div>
        </div>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------AihA90cfvSzbAalKpvn7zFjc--

--===============0544585351638093325==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0544585351638093325==--
