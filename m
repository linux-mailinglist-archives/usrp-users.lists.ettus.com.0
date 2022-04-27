Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 196065122D4
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 21:35:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5035E384AE1
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 15:35:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651088141; bh=d5sx0zUo6A9SJ4cVmLUjIO4XC2N/zMZvmZME8Mbp4Ww=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=vkWAROeEwR7325/YKMZ+zvdDkiTCmjqDBvXwTQcylYBJWXJ0Y4l2SZs9zl2yNfAlu
	 zaDHsqHBWP+8nZB/PvJCadInPgFihmyRHBJDbzI0zUds3votQEJt77TijqpoXIAMq6
	 APCrAzvpxHKCXyELu4wub5hvm73dh8nypjm0pxlU7Ope92kPLp3VED7vSkdfxBRtf6
	 enV7c3k1uMGmUH+8SbMQosXPguMeac3l5I071ENOvRs5+2T1VgQMAurhxR+2EIA1mh
	 0Yz+ZreLOmdWDIkF3re+gnUsWyOkO1GaIHv0L6HAOb1l/uUWVf2SNCGr+fvbtpbhLb
	 8lsCaPOJObcWQ==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 0E3D138417C
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 15:34:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="X0D3m4V2";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id c1so2058879qkf.13
        for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 12:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=7d5jnNmmuE3V+mMc4YtxcdvJAAHW0uHtOc5dQSIFBCo=;
        b=X0D3m4V27crT9mJE/7gesHqAnGwHljViuJKpP/IDzHw0SMZ8D7UjyJovhXDFZwAXg5
         pKRJpOQ060bwdQ5m4keE1PMUIxNCqm4kXBWqAqgYKsvIU831b9DjQfTalLQurokNjMOj
         zIBMRnUjchQhtdDKGbG3kMTFrhbPC9wOMh5a5LEpFRsWaAVzPPwOhUA24S/SQlf4dM2O
         OGePEAQXnimabwc+nZlrS5H5HRiblEGasLcrBgFRZFIBsJDqerrzCy+3FAw/HC4gapAb
         QRgLRvROrBLmU3Jr/hIja8FPRGpIcZ3uluWXIcAVAj0XA7fvvbZXPZgChYsjXPvATmXz
         uLOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=7d5jnNmmuE3V+mMc4YtxcdvJAAHW0uHtOc5dQSIFBCo=;
        b=aJoUWC6viDIpTfCfx5e6+heg9rlwFBEQakFesDQAhxu/UxJLzsDhVPVGsnxkXRxhIW
         6Ft7K37yTGtBeXGzfLvsJXC7WLz/7AbosdNTxRNSIHlGD4PmziYo3FRbTaRcnseKJpZA
         ANDi846x2w6LmrlUQcXCam8RoZafEStmwnWQFNOyb0gUhHehzKnKg9xQbea89Cgi2wLY
         at47ZWYvJxCjhLRu26/B2UEx/gwZiLBIpDQO7tCYmacGyhKI3LEMlp/jDigcCvgbb1Ws
         3Xput1nfT3B3TUW1kfR17/fLH7MIwJVWk4rs3KjpsMOn7c+8nBQ+LUHZUVRXl/F4MXsB
         O1lA==
X-Gm-Message-State: AOAM533jltwexKWv9IUAWMyYh3KKMgJEZTh04S4Oy32nSy1njjCAwPw/
	eYe2xd9etjDaLECIEm8S4Y3Cz5P/Jm4=
X-Google-Smtp-Source: ABdhPJy4LsGyEWnOH5RFC5Wq2y5GXHwfG6pBDzqJwXQM4sr8Lx/T5MqocKRFgLDfdz9MUAKGSlSyTA==
X-Received: by 2002:a05:620a:1907:b0:69f:363b:401f with SMTP id bj7-20020a05620a190700b0069f363b401fmr12487544qkb.627.1651088076515;
        Wed, 27 Apr 2022 12:34:36 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id v23-20020ae9e317000000b0069ea555b54dsm8291109qkf.128.2022.04.27.12.34.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 12:34:36 -0700 (PDT)
Message-ID: <fe1186a3-1059-3f8e-60d8-2f62c8ee1c2b@gmail.com>
Date: Wed, 27 Apr 2022 15:34:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: "Caffrey, Michael Paul" <mpc@lanl.gov>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <a10bc1673342466f9c2a166280d57643@lanl.gov>
 <6b538660-e051-c354-a9c3-a1fbde33e591@gmail.com>
 <d1678769adce4396b232ed2653d02014@lanl.gov>
 <196b97b5-4555-0527-f983-3cb2074f71df@gmail.com>
 <da34f941c5794b9ba453e49fc35ab7c0@lanl.gov>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <da34f941c5794b9ba453e49fc35ab7c0@lanl.gov>
Message-ID-Hash: WDPXJXRQ3TXSCXVYQJFXZXQRD4DWPOJ3
X-Message-ID-Hash: WDPXJXRQ3TXSCXVYQJFXZXQRD4DWPOJ3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: sychronous receiving from multiple e320's repeatedly results in ERROR_CODE_LATE_COMMAND
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WDPXJXRQ3TXSCXVYQJFXZXQRD4DWPOJ3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5934059682941277839=="

This is a multi-part message in MIME format.
--===============5934059682941277839==
Content-Type: multipart/alternative;
 boundary="------------8iIT5vGq2cbVNgx0u5qskQuQ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8iIT5vGq2cbVNgx0u5qskQuQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-04-27 15:31, Caffrey, Michael Paul wrote:
>
> I can run the program over and over again from the command line of the=20
> host without rebooting / resetting the host or the e320=E2=80=99s. Each=
 time I=20
> run the program, the first collects succeeds ( I receive the requested=20
> amount of data, anyway), while subsequent receives in the loop of the=20
> program do not receive data and generate the LATE error.
>
Ah.=C2=A0 Thanks for clarification.=C2=A0=C2=A0 I was under the (incorrec=
t) assumption=20
that we were talking about subsequent runs of the entire program, not=20
the internal "collect" loop.


> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Wednesday, April 27, 2022 1:27 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: [EXTERNAL] Re: sychronous receiving from=20
> multiple e320's repeatedly results in ERROR_CODE_LATE_COMMAND
>
> On 2022-04-27 15:13, Caffrey, Michael Paul via USRP-users wrote:
>
>     That is a good question and I should have included that I can run
>     the program over and over and the 1^st attempt always succeeds and
>     subsequent fail. I do not reboot or reset the e320=E2=80=99s in any=
 way
>     outside of the python example.
>
> OK, so how is "first time" defined?=C2=A0=C2=A0 First time after reboot=
ing your=20
> computer?=C2=A0 First time after rebooting the E320?=C2=A0=C2=A0 You ru=
n the program=20
> once and it never succeeds again, no
> =C2=A0 matter what you do?=C2=A0=C2=A0 I want to understand what the bo=
undary=20
> condition is that causes it to start working again...
>
>

--------------8iIT5vGq2cbVNgx0u5qskQuQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-04-27 15:31, Caffrey, Michael
      Paul wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:da34f941c5794b9ba453e49fc35ab7c0@lanl.gov">
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
	font-family:"Calibri",sans-serif;}span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
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
        <p class=3D"MsoNormal">I can run the program over and over again
          from the command line of the host without rebooting /
          resetting the host or the e320=E2=80=99s. Each time I run the p=
rogram,
          the first collects succeeds ( I receive the requested amount
          of data, anyway), while subsequent receives in the loop of the
          program do not receive data and generate the LATE error.</p>
      </div>
    </blockquote>
    Ah.=C2=A0 Thanks for clarification.=C2=A0=C2=A0 I was under the (inco=
rrect)
    assumption that we were talking about subsequent runs of the entire
    program, not the internal "collect" loop.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:da34f941c5794b9ba453e49fc35ab7c0@lanl.gov">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
              <b>Sent:</b> Wednesday, April 27, 2022 1:27 PM<br>
              <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> [USRP-users] Re: [EXTERNAL] Re: sychronous
              receiving from multiple e320's repeatedly results in
              ERROR_CODE_LATE_COMMAND<o:p></o:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 2022-04-27 15:13, Caffrey, Michael
            Paul via USRP-users wrote:<o:p></o:p></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">That is a good question and I should hav=
e
            included that I can run the program over and over and the 1<s=
up>st</sup>
            attempt always succeeds and subsequent fail. I do not reboot
            or reset the e320=E2=80=99s in any way outside of the python
            example.<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">OK, so how =
is
          "first time" defined?=C2=A0=C2=A0 First time after rebooting yo=
ur
          computer?=C2=A0 First time after rebooting the E320?=C2=A0=C2=A0=
 You run the
          program once and it never succeeds again, no<br>
          =C2=A0 matter what you do?=C2=A0=C2=A0 I want to understand wha=
t the boundary
          condition is that causes it to start working again...<br>
          <br>
          <br>
          <o:p></o:p></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------8iIT5vGq2cbVNgx0u5qskQuQ--

--===============5934059682941277839==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5934059682941277839==--
