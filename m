Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8688BD21284
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jan 2026 21:21:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 832D4386703
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jan 2026 15:21:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1768422094; bh=uNUkWqCpgiNVJhrSGhm6jccmv/XklldPHIz7EWwRs5Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Jpb4NrEOn0+LnyM8ZR4szGJnWSqecM7j+sdSHPEUHurWpUPiMfd6xk6NSSpmtTPbd
	 CMIyHQz7tGa0Z1UhXala3MFCIKMIvpVD65a132ACEWE+vZdFKlJbTFAAguq+9nIEe7
	 yz0CaGoTJ2ZcetOSnjJFYsi6TBudaXFnJ5lBK0ZiVDWXRbaT5OLjjPfNHL84FoZfls
	 jGRGvmzBO6DU6VzV+2Nx4NwfKpj9H3eoLE/sgee38GVvVyZbnVaSaCYfaqeQGdoRz+
	 JdZZnZkRCvD8xW0XzPbzV6HiWxZNeRclHjzeVaMhN2Ui1pK0P8ulXj4Or4Ne2HlUw7
	 DrYsgb42CDH0A==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 53EC33866C3
	for <usrp-users@lists.ettus.com>; Wed, 14 Jan 2026 15:20:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CSikUEHk";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-8b1bfd4b3deso17757385a.2
        for <usrp-users@lists.ettus.com>; Wed, 14 Jan 2026 12:20:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768422018; x=1769026818; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/G+n6I+Ms6e+fkd42KDasDNKGoIB4BMT+4Y/Y4/mvsM=;
        b=CSikUEHk9xXRMiQtyGs5+3e6N19USDoOqWIOtI1+QH743IutnhdmAnrvvZoH4ZTLqa
         5uIdYoyd+ed8sdpqdppUKu7pTSgavJmvHxGbPLkMPWI+TYX40wnvwvKBKki3m/wfF3kF
         I/ok+NAc5+ovlZbsAVFK+/Ipu+3Ft6yi7dI7gnEKBfI9lu6IVDgT0hTU4n28iZu3woQR
         jz/+b1cj9TK4TjDbTvY+MlEA9uNV4LDqcAO04RqTV4ZSouQN7/4R5pSc1ffeToABcLcE
         82Uurs9ixdOWkurQdYhhDrBFBpkTlP3zVTiXF8ijlgj9KE4ZvIarUDo17riogGMFkC+x
         6x2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768422018; x=1769026818;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/G+n6I+Ms6e+fkd42KDasDNKGoIB4BMT+4Y/Y4/mvsM=;
        b=blZoYeaYVUDemPWWVgs8DXQzNtfs+vkPS4BOZPUmb7yY9xdNu2xe2i+HSQfdS98gr7
         V99kOnxePwqtl4EKi114BgngN9FzRlcU2UGEBlQPbSui8Ad3MtXkm3+ku4dcHzCiKEui
         sWcDZg4rHfZ9Q1bH4JqkXUx1+53Cpvu7Kr64sXtPRU+tyF8y5EOUOKNiZEsPvfgoNcjC
         JW2eofnpuWmPFV+u2NK82DN/axZwY66UIdDDC3xs9cUH4elBrtKKxldjD5Y8x6f09Lo+
         eIlZwmv02jTvOWqfElsQyhFZyMdSnS/HeGgJ5arLyrK7wett4BAsBGmN1CR32q85+VYY
         akew==
X-Gm-Message-State: AOJu0Yz6Q8/YjXDk+MCfpr9NqhGAQdRmoB7iI7DXjESXK32RzTEa8aaS
	BosVVO1s5csVXZn6whn0ABXAvBtE7q8PSaGSIxJwpXC8Ny66Mzr76NzEe5Fvsg==
X-Gm-Gg: AY/fxX431Ea78x8bs8Ul26cisc3adwOqjiKSsJ0Mq/h7YAotrdT3TZ6a359fzdDj8Ht
	gKvijeYSoTmwSSwcTpJ85TsEp1sK4xSDFih6kgS/vTsnKwr/iORlXFIacxtjqI/IQbF/TXI8fbV
	UDrga58UtfWMHnpc2zaN1cQI7FUE8DWpfcVUiYv/L5dJfeyp4LU0d188uEscyElYEWt832ep4Vq
	PtOcJ+ZHIv86w0H2l9IeASSw5wPtI010pkziEiv0FfmkZs0kDvIFzrHKiauzxdZCUrzV3+GwcF7
	T8dN8KYbH5wl1O/MFUGbtMUx/o+a4t2he1qBv4TNytQUOhOpxciszB0Xi1MObEJA/E7TCuyE+EH
	PPblaHIA91po9m2WUELVZNM0iW/i2+CfXI0uq9g5WfbU4hQTHVfMtJ+tMebHMEqLNDjLvRJYoM0
	cEvPgsLTIHjJYn68KiB/w=
X-Received: by 2002:a05:620a:3192:b0:892:501a:290 with SMTP id af79cd13be357-8c5318250cdmr414841085a.86.1768422018020;
        Wed, 14 Jan 2026 12:20:18 -0800 (PST)
Received: from [192.168.2.208] ([76.68.79.204])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-8c530a984e5sm223639185a.16.2026.01.14.12.20.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 12:20:17 -0800 (PST)
Message-ID: <217ceb53-0caa-412a-a79d-dfc2c47208ff@gmail.com>
Date: Wed, 14 Jan 2026 15:20:06 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <SA1P110MB19324582F1B8CFDD8469BBA6B78FA@SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SA1P110MB19324582F1B8CFDD8469BBA6B78FA@SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: NYM2RZ3PFZDGBCLDRU3DUH7BRBTADT42
X-Message-ID-Hash: NYM2RZ3PFZDGBCLDRU3DUH7BRBTADT42
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using USRP B206mini with Octoclock 10MHz+PPS
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NYM2RZ3PFZDGBCLDRU3DUH7BRBTADT42/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4323741246430590594=="

This is a multi-part message in MIME format.
--===============4323741246430590594==
Content-Type: multipart/alternative;
 boundary="------------ouaOELInSCKT6ooJdpk8DtIS"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ouaOELInSCKT6ooJdpk8DtIS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2026-01-14 14:57, David Raeman via USRP-users wrote:
>
> Hello,
>
> I have a project currently hosted on a USRP E320 that involves=20
> distributed signal coherence. During development I sometimes do=20
> over-the-wire testing using an Octoclock=E2=80=99s 10MHz and PPS output=
s to=20
> synchronize multiple radios on the bench.
>
> I=E2=80=99m starting to investigate the viability of rehosting this=20
> application on a USRP B206mini to reduce size and cost. As far as I=20
> can discern, this radio only has a single port that can accept either=20
> a 10MHz reference input or a PPS input. Is it possible to somehow use=20
> the radio with both clock and PPS outputs from an Octoclock with=20
> out-of-the-box UHD? If not, would it be viable for me to add a bit of=20
> FPGA logic and UHD tweaks such that software can specify a GPIO pin as=20
> the PPS input while using the SMA as the 10MHz input? Or are there=20
> hardware or systems constraints that would preclude that approach?
>
> Thanks!
>
> David Raeman
>
> Synoptic Engineering
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
You could probably add some FPGA functionality to implement a separate=20
PPS input.

But I should warn you that the clock servo in the B205x series is simply=20
NOT UP TO THE TASK of building-out multi-unit coherent applications.

The mutual phase-noise is way too high.=C2=A0 The B205 was never intended=
 for=20
such applications to begin with, and the clock servo just doesn't work=20
that well.
--------------ouaOELInSCKT6ooJdpk8DtIS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2026-01-14 14:57, David Raeman via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SA1P110MB19324582F1B8CFDD8469BBA6B78FA@SA1P110MB1932.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Aptos;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hello,<o:=
p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>=C2=A0=
</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I have a
            project currently hosted on a USRP E320 that involves
            distributed signal coherence. During development I sometimes
            do over-the-wire testing using an Octoclock=E2=80=99s 10MHz a=
nd PPS
            outputs to synchronize multiple radios on the bench.<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>=C2=A0=
</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I=E2=80=99=
m starting
            to investigate the viability of rehosting this application
            on a USRP B206mini to reduce size and cost. As far as I can
            discern, this radio only has a single port that can accept
            either a 10MHz reference input or a PPS input. Is it
            possible to somehow use the radio with both clock and PPS
            outputs from an Octoclock with out-of-the-box UHD? If not,
            would it be viable for me to add a bit of FPGA logic and UHD
            tweaks such that software can specify a GPIO pin as the PPS
            input while using the SMA as the 10MHz input? Or are there
            hardware or systems constraints that would preclude that
            approach?<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>=C2=A0=
</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thanks!<o=
:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">David Rae=
man<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Synoptic
            Engineering<o:p></o:p></span></p>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre wrap=3D"" class=3D"moz-quote-pre">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    You could probably add some FPGA functionality to implement a
    separate PPS input.<br>
    <br>
    But I should warn you that the clock servo in the B205x series is
    simply NOT UP TO THE TASK of building-out multi-unit coherent
    applications.<br>
    <br>
    The mutual phase-noise is way too high.=C2=A0 The B205 was never inte=
nded
    for such applications to begin with, and the clock servo just
    doesn't work that well.<br>
  </body>
</html>

--------------ouaOELInSCKT6ooJdpk8DtIS--

--===============4323741246430590594==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4323741246430590594==--
