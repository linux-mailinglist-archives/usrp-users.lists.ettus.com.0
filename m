Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBBE46292B
	for <lists+usrp-users@lfdr.de>; Tue, 30 Nov 2021 01:35:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8C7E0384B4A
	for <lists+usrp-users@lfdr.de>; Mon, 29 Nov 2021 19:35:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="n4Bot9Dr";
	dkim-atps=neutral
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 212553847B7
	for <usrp-users@lists.ettus.com>; Mon, 29 Nov 2021 19:34:39 -0500 (EST)
Received: by mail-qk1-f178.google.com with SMTP id m192so24950364qke.2
        for <usrp-users@lists.ettus.com>; Mon, 29 Nov 2021 16:34:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=+RLCNW/+OXi0N5kSi8/L59qrOt5relcXHm2muq6dqPY=;
        b=n4Bot9Dr3GRWoBfzh9l1UXXKxFNw1rB3R+4zp0Oqz8EJCvuwcJCPsAVq54jeIENdcM
         ZhHVpTHztQcDncEUkTfAk4w7yrGaan0ZC+A9+V09HJFZY9TPLKOB5e0U0q2hYgclpQaY
         pNIa1ImrFV5+9zesYO0vV50ViY/6Kj5qEOrNMquZ/UOLlUGrt6XOzEMD4myT8pLkgSrO
         bjrHoi4BkckKjURrznsn5WBMCSurfAO4qGBLe3HbRY5rt8fIW9cyTSSsOvB0mqgJ/MQ4
         fOgoAGACpZ37E9ZZwM/AO9SDI1q8mpTQNUMGs42IX/82jI91Kvv8LKcsxHFIKoOt27OF
         Rq/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=+RLCNW/+OXi0N5kSi8/L59qrOt5relcXHm2muq6dqPY=;
        b=gdc6hKYHXNZS7FuHe5FTxtpJrZii0vjxPr+JIr/cJKn2yZ3ENpHeAx5Ox3uF0SbObi
         QuGl3fGpoX4IWuiferTNsj7Od2MnBDtsZYlqnqFAEu4CNZZnMwmnkQbUUcGBg/ikKlI4
         8fkTD0HpXAVwhpMTPHPN42rZAbmGYFktikMWjh0YUuixBKq2rqER2+WyVMOh1HrfeQKd
         uD/z278b4uxjXKFTy1hJaaIGZi4j0oq36Rr5W0bfklFnmXLOAoYTdKiRg2yCIVZFqRm9
         c9ySLRFpCWS8uidGC/g52NFxEl/nJa4APR8S3aP93le9O3FAM59wsVU4RhZuEIIVTYQG
         coAA==
X-Gm-Message-State: AOAM531hEiVwahCFHmY0+dQMKLtZ+fd97fHi8d+OAydQnfZOyz32N7Yj
	WoYafIE9Q0xhmB2iWRoxoAoJgy68IeY=
X-Google-Smtp-Source: ABdhPJylcQYlbG6eO2/7uBHeum0vGT+fFwByRl7GRhCOx1cscbCzSW1CSTD6QgFfzJ4jpxe90+hJzw==
X-Received: by 2002:a37:68ce:: with SMTP id d197mr34191505qkc.693.1638232478495;
        Mon, 29 Nov 2021 16:34:38 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id 22sm9682723qtw.12.2021.11.29.16.34.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Nov 2021 16:34:38 -0800 (PST)
Message-ID: <c0883989-44e1-feab-c59b-f069c032c12c@gmail.com>
Date: Mon, 29 Nov 2021 19:34:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MN2PR16MB350290C9B8C095A24BB79358B9669@MN2PR16MB3502.namprd16.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR16MB350290C9B8C095A24BB79358B9669@MN2PR16MB3502.namprd16.prod.outlook.com>
Message-ID-Hash: XGKCA3QR7RL6KU2UPX7LZBCPPEXWQLG2
X-Message-ID-Hash: XGKCA3QR7RL6KU2UPX7LZBCPPEXWQLG2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP streaming data performance
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XGKCA3QR7RL6KU2UPX7LZBCPPEXWQLG2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3990986352221252761=="

This is a multi-part message in MIME format.
--===============3990986352221252761==
Content-Type: multipart/alternative;
 boundary="------------QU47Xiqh0cPzKB06REvgBS2o"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------QU47Xiqh0cPzKB06REvgBS2o
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-29 18:22, Jonathan Pratt wrote:
>
> We are looking to develop a standalone sdr platform connecting an=20
> nVidia Jetson AGX Xavier to a USRP X310. The X310 has two dual=20
> receiver boards installed but we are only trying to stream data from=20
> one core at this time.
>
> The Xavier is an octacore ARM platform with all cores enabled and=20
> running close to 1.5GHz.
>
> The connection between the two devices is via ethernet running at=20
> 1Gbit. The xavier has a x16 PCIe interface connector and we are using=20
> a NIC with 1Gbps SFP module =E2=80=93 we intend to run the link at 10Gb=
it in=20
> the future. The onboard 1Gbps ethernet is connected to our LAN
>
> The Xavier is running ubuntu 18.04 for arm. This is the development=20
> platform that nVidia provides. uhd 4.0.0, gnuradio 3.8 and RfNoC 4=20
> have been installed on the Xavier.
>
> The Xavier is given a simple flow to run under gnuradio-companion=20
> which consists of a USRP Source connected directly to =C2=A0the QT GUI=20
> Frequency sink (or Null Sink)
>
> The network buffers and mtu on the xavier are increased to at least=20
> those recommended.
>
> The result we get is a whole lot of =E2=80=98D=E2=80=99s output if we i=
ncrease the=20
> sample rate beyond 2MSPS. =C2=A0The same result is found if we run the =
flow=20
> from the command line (without the gui).
>
> For comparison we have done a similar setup with a USRP E312 =E2=80=93=20
> connected to a xavier, a ubuntu 20 virtual machine and directly to a=20
> computer running ubuntu 20.04. In each case when we increase the=20
> sample rate beyond 2MSPS we get =E2=80=98O=E2=80=99s output.
>
> Can anyone please indicate what setup is required to achieve the=20
> 25MSPS that should be possible across this link?
>
> Thanks in advance
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
You might want to run "benchmark_rate" from the UHD examples code to=20
eliminate GR entirely at first--just to get a feel for what your machine=20
is capable of.

I'll note that the "network mode" in E312 (where it streams to a regular=20
PC) has *considerable* performance constraints, and achieving even 2Msps=20
is a bit of a
 =C2=A0 miracle.

The X310, on the other hand, is Niagara Falls.=C2=A0 Any=20
streaming-performance issues are your host.=C2=A0 The FPGA on the X310 ca=
n=20
stream to the xGIGe interfaces as fast as
 =C2=A0 physics allows, pretty much.

For a "order of magnitude" benchmark, I can achieve 10Msps from a B2xx=20
into an Odroid XU4Q with 8-bit samples (there's a USB bandwidth issue=20
there).=C2=A0 I can even
 =C2=A0 "do stuff" at 10Msps, including several different radio astronomy=
=20
signal processing chains.=C2=A0 I would expect your Xavier to be similar.


--------------QU47Xiqh0cPzKB06REvgBS2o
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-29 18:22, Jonathan Pratt
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR16MB350290C9B8C095A24BB79358B9669@MN2PR16MB3502.namprd16=
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
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">We are looking to develop a standalone sdr
          platform connecting an nVidia Jetson AGX Xavier to a USRP
          X310. The X310 has two dual receiver boards installed but we
          are only trying to stream data from one core at this time.<o:p>=
</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">The Xavier is an octacore ARM platform wit=
h
          all cores enabled and running close to 1.5GHz.<o:p></o:p></p>
        <p class=3D"MsoNormal">The connection between the two devices is
          via ethernet running at 1Gbit. The xavier has a x16 PCIe
          interface connector and we are using a NIC with 1Gbps SFP
          module =E2=80=93 we intend to run the link at 10Gbit in the fut=
ure.
          The onboard 1Gbps ethernet is connected to our LAN <o:p></o:p><=
/p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">The Xavier is running ubuntu 18.04 for arm=
.
          This is the development platform that nVidia provides. uhd
          4.0.0, gnuradio 3.8 and RfNoC 4 have been installed on the
          Xavier.<o:p></o:p></p>
        <p class=3D"MsoNormal">The Xavier is given a simple flow to run
          under gnuradio-companion which consists of a USRP Source
          connected directly to =C2=A0the QT GUI Frequency sink (or Null
          Sink)<o:p></o:p></p>
        <p class=3D"MsoNormal">The network buffers and mtu on the xavier
          are increased to at least those recommended.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">The result we get is a whole lot of =E2=80=
=98D=E2=80=99s
          output if we increase the sample rate beyond 2MSPS. =C2=A0The s=
ame
          result is found if we run the flow from the command line
          (without the gui).<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">For comparison we have done a similar setu=
p
          with a USRP E312 =E2=80=93 connected to a xavier, a ubuntu 20 v=
irtual
          machine and directly to a computer running ubuntu 20.04. In
          each case when we increase the sample rate beyond 2MSPS we get
          =E2=80=98O=E2=80=99s output.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Can anyone please indicate what setup is
          required to achieve the 25MSPS that should be possible across
          this link?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks in advance<o:p></o:p></p>
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
    You might want to run "benchmark_rate" from the UHD examples code to
    eliminate GR entirely at first--just to get a feel for what your
    machine is capable of.<br>
    <br>
    I'll note that the "network mode" in E312 (where it streams to a
    regular PC) has *considerable* performance constraints, and
    achieving even 2Msps is a bit of a<br>
    =C2=A0 miracle.<br>
    <br>
    The X310, on the other hand, is Niagara Falls.=C2=A0 Any
    streaming-performance issues are your host.=C2=A0 The FPGA on the X31=
0
    can stream to the xGIGe interfaces as fast as<br>
    =C2=A0 physics allows, pretty much.<br>
    <br>
    For a "order of magnitude" benchmark, I can achieve 10Msps from a
    B2xx into an Odroid XU4Q with 8-bit samples (there's a USB bandwidth
    issue there).=C2=A0 I can even<br>
    =C2=A0 "do stuff" at 10Msps, including several different radio astron=
omy
    signal processing chains.=C2=A0 I would expect your Xavier to be
    similar.=C2=A0 <br>
    <br>
    <br>
  </body>
</html>
--------------QU47Xiqh0cPzKB06REvgBS2o--

--===============3990986352221252761==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3990986352221252761==--
