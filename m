Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E0C4B2B2B
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 18:01:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1C39F3840E4
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 12:01:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YmxgVo5+";
	dkim-atps=neutral
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id DB9B9384AD2
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 11:33:21 -0500 (EST)
Received: by mail-qv1-f49.google.com with SMTP id o5so8973620qvm.3
        for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 08:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=GpRY5CcxTHQFZvAm11GLgUlCoGaTBNooB5YK9EQt9mc=;
        b=YmxgVo5+ouwhNh2sSNRLwq9wp1/v+AcpIzG0A6BIO7cemYi/2nMaQBOJKKrpKDMkKu
         Lgto+uyqpWzS8NS0IzilE/sUsH/I2eE1944iqlM84O2Z+OuWp1esFSCuA8+eVwIssDqT
         4MY8EzriZ8x3WAKr4+XQxT//0lI8sI6C+LtUgCKdhUg6D75ulgD2fTOj5lnub+6oMld5
         ZpOhvq/qnpGK91FlYPjGPFDOO3PmKwK2cUEaHZd342GOUxkkPNC61P1ynKANdmqOqZ/+
         2YA8X+nblpwpdKEmoJT669jYMMjB040yibCqDwmU8uPHiz8tQsYcWHEKywd04llV6D+i
         rofg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=GpRY5CcxTHQFZvAm11GLgUlCoGaTBNooB5YK9EQt9mc=;
        b=JJRZ1GXi93aesSDuAWm5ahCoDvLIF44KneaE0qapSfSsVmDox2umxIMidSYjKMlxhs
         LyzAzCxa0GH/UXIr2l5fXYdqYD9PkODlhk6SHS6pIBk0XZzXEEkwPz1+8n0a8ivwcTp0
         LD7rLGyNCLuOzlI/Bnkm/xmT6qhkz0ZuPicaIgsW2hrcXTnPuLjwHqoQwHNj06rz96ti
         43KI7gMvOcSFPq/PaV0BfGTXb+bzmY1cSTBMQ97OokNt9vhHD9EWl9rKuCs1cVLnIqrg
         3GbmKdJTNC3ssnyEjC1LsgDjE5tN/zZpiaNyqKv6I1q4lxkYq93LFDNLUZdoUDODytIJ
         1IHQ==
X-Gm-Message-State: AOAM530/JNoXwSDQOzg8jyJxzq0dB1A7kF50ea7Sg+4NJNprEzEsPU/0
	FcmMTngVHtkSG55yvmIvC1Spt1l3MxeTbA==
X-Google-Smtp-Source: ABdhPJwiRSTlV3aTyuOLDfKXEJBl+G5N3uSP3SFAKsglzy8q2DARoOHQtjWFkmHxsZtY/Vhxk41hIQ==
X-Received: by 2002:a05:6214:1c87:: with SMTP id ib7mr1634972qvb.42.1644597201065;
        Fri, 11 Feb 2022 08:33:21 -0800 (PST)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id f8sm413568qtq.36.2022.02.11.08.33.20
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Feb 2022 08:33:20 -0800 (PST)
Message-ID: <28db4f71-42d9-f2cb-3b83-464a5f2407c3@gmail.com>
Date: Fri, 11 Feb 2022 11:33:19 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BY3PR09MB8770D54395EC44842C212446E4309@BY3PR09MB8770.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BY3PR09MB8770D54395EC44842C212446E4309@BY3PR09MB8770.namprd09.prod.outlook.com>
Message-ID-Hash: FSYAFR2F6CAAIHVZ6EARDKYAND4VS53T
X-Message-ID-Hash: FSYAFR2F6CAAIHVZ6EARDKYAND4VS53T
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC and time vs frequency averaging
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FSYAFR2F6CAAIHVZ6EARDKYAND4VS53T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1026680743252397112=="

This is a multi-part message in MIME format.
--===============1026680743252397112==
Content-Type: multipart/alternative;
 boundary="------------TFOTZ74nzjzD1C01eBG3XOPQ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------TFOTZ74nzjzD1C01eBG3XOPQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-11 10:38, Kuester, Dan (Fed) via USRP-users wrote:
>
> Hi everyone,
>
> I=E2=80=99m hoping for some advice on using RFNoC for a spectrum analys=
is=20
> application (I have another hardware clocking question that I=E2=80=99m=
 going=20
> to ask separately).
>
> Context: we need to continuously stream channel power in a bank of 8=20
> contiguous 10 MHz bands on short (a few microseconds) time scales. To=20
> manage the initial deluge of IQ, I=E2=80=99d like to use an FPGA to per=
form a=20
> 512-point FFT and then reduce the volume of data by summing up mag^2=20
> across frequency to give channel power. The resulting stream of 8=20
> channel power readings every few microseconds is then pretty=20
> manageable for transport and processing on the host.
>
> After looking at the RFNoC block list, the (wishful thinking? :-))=20
> implementation in my head looks like this:
>
> (Radio) =E2=86=92 Window =E2=86=92 FFT (mag^2 output) =E2=86=92 Vector =
IIR to sum across=20
> frequency bins =E2=86=92 Keep 1 in N =E2=86=92 (Stream to host)
>
> Some questions have come up on this:
>
>  1. Does the Vector IIR at the output of an FFT operate across time or
>     frequency? For =E2=80=9CKeep 1 in N,=E2=80=9D there=E2=80=99s a cle=
ar flag to determine
>     whether the operation is applied by sample or by packet, but I
>     don=E2=80=99t see anything about which of these =E2=80=9CMoving Ave=
rage=E2=80=9D =E2=80=9CVector
>     IIR=E2=80=9D operate on.
>  2. Are there any obvious fixed-point traps in doing this?
>  3. Are there any other pitfalls that I=E2=80=99m missing here?
>
> Thanks in advance for any ideas!
>
>
The vector IIR operates across time, so it cannot be used to reduce the=20
effective frequency resolution of the FFT, as you suggest.

Why not simply use the smallest FFT possible in the FPGA, with mag**2=20
outputs, then vector IIR that, then keep-one-in-N, then do the
 =C2=A0 resolution reduction on the host at a now much-more-modest rate?

For example, a 64-point FFT with 100MHz input rate gives you 1.56e6 FFT=20
outputs/second.=C2=A0 IIR and drop this to perhaps 1/8 of that, and even
 =C2=A0 an rPi4 should be able to do the vector sum operation to reduce=20
effective resolution.


--------------TFOTZ74nzjzD1C01eBG3XOPQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-11 10:38, Kuester, Dan (Fed=
)
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BY3PR09MB8770D54395EC44842C212446E4309@BY3PR09MB8770.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}p.MsoListParagraph, li.MsoListParagrap=
h, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0in;}ul
	{margin-bottom:0in;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi everyone,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I=E2=80=99m hoping for some advice on usin=
g RFNoC
          for a spectrum analysis application (I have another hardware
          clocking question that I=E2=80=99m going to ask separately).
          <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Context: we need to continuously stream
          channel power in a bank of 8 contiguous 10 MHz bands on short
          (a few microseconds) time scales. To manage the initial deluge
          of IQ, I=E2=80=99d like to use an FPGA to perform a 512-point F=
FT and
          then reduce the volume of data by summing up mag<sup>2</sup>
          across frequency to give channel power. The resulting stream
          of 8 channel power readings every few microseconds is then
          pretty manageable for transport and processing on the host.
          <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">After looking at the RFNoC block list, the
          (wishful thinking? :-)) implementation in my head looks like
          this:<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal" style=3D"text-indent:.5in">(Radio) =E2=86=92=
 Window =E2=86=92
          FFT (mag<sup>2</sup> output) =E2=86=92 Vector IIR to sum across
          frequency bins =E2=86=92 Keep 1 in N =E2=86=92 (Stream to host)
          <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Some questions have come up on this:<o:p><=
/o:p></p>
        <ol style=3D"margin-top:0in" type=3D"1" start=3D"1">
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0in;mso-list:l0 level1 lfo1">Does the
            Vector IIR at the output of an FFT operate across time or
            frequency? For =E2=80=9CKeep 1 in N,=E2=80=9D there=E2=80=99s=
 a clear flag to
            determine whether the operation is applied by sample or by
            packet, but I don=E2=80=99t see anything about which of these
            =E2=80=9CMoving Average=E2=80=9D =E2=80=9CVector IIR=E2=80=9D=
 operate on.<o:p></o:p></li>
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0in;mso-list:l0 level1 lfo1">Are there
            any obvious fixed-point traps in doing this?<o:p></o:p></li>
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0in;mso-list:l0 level1 lfo1">Are there
            any other pitfalls that I=E2=80=99m missing here?<o:p></o:p><=
/li>
        </ol>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks in advance for any ideas!<o:p></o:p=
></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <br>
      </div>
    </blockquote>
    The vector IIR operates across time, so it cannot be used to reduce
    the effective frequency resolution of the FFT, as you suggest.<br>
    <br>
    Why not simply use the smallest FFT possible in the FPGA, with
    mag**2 outputs, then vector IIR that, then keep-one-in-N, then do
    the<br>
    =C2=A0 resolution reduction on the host at a now much-more-modest rat=
e?<br>
    <br>
    For example, a 64-point FFT with 100MHz input rate gives you 1.56e6
    FFT outputs/second.=C2=A0 IIR and drop this to perhaps 1/8 of that, a=
nd
    even<br>
    =C2=A0 an rPi4 should be able to do the vector sum operation to reduc=
e
    effective resolution.<br>
    <br>
    <br>
  </body>
</html>

--------------TFOTZ74nzjzD1C01eBG3XOPQ--

--===============1026680743252397112==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1026680743252397112==--
