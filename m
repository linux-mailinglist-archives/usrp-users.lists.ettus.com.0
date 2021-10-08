Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EB1426F5C
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 19:08:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2DFD93852FE
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 13:08:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="q4TRU6vH";
	dkim-atps=neutral
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id E774538440C
	for <usrp-users@lists.ettus.com>; Fri,  8 Oct 2021 13:07:32 -0400 (EDT)
Received: by mail-qv1-f43.google.com with SMTP id k19so1116599qvm.13
        for <usrp-users@lists.ettus.com>; Fri, 08 Oct 2021 10:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=es6POsXCDCIEdXCmtdHE9anVUx3CLrNQwv1GeYt+F5Y=;
        b=q4TRU6vHwUWCWdly5iOIwoOyEeav5qAH8DsUsH4mvipqeO6Z44+sSqmukoCfZLb4+e
         8/N9Dgu82352mPDNlkHlaRI5dHd52vpCHivPlR4oETidoZefMDwl683Bq7pGJ+3WG9By
         v0k8UWt+OZfi6DN47RdeCroU6tYKCiqw6N/FQtRUaeGNP3usS7goZrCDdFMoTAv0JcSB
         uhW9lqrUZZf+O6elUENjCHwqjcRGbrDufJumd7XMD8C9CANFsr7TO3yY37es8l66gxdQ
         NxRbMRru/wpRvUsyG6Q+hbdjwqGfrbrN+7zE7ocAH7Ls9YczOyR7vwd+Fvk3CVlbQa4j
         Lxiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=es6POsXCDCIEdXCmtdHE9anVUx3CLrNQwv1GeYt+F5Y=;
        b=vHPHQ9uW0GDI+7FgxVOclqSMft0wVGo7l5+q9mkynPuxZDIkwA4xNSYahhcxs7s/uI
         OosUbjHlUSj2EWFw3cViJWhGs+9yWDf20hexe0JypwxTAnNpmWWYZP9zBDsneKYbTTZd
         T2y/df9+u4Tec0HxFKj7bnR+jDD480CkVNISqXOe/05nJtlIeifQgQJw7JbdlFFHtbv8
         aF0A7exIqZjx4ucDz3r9gxhBtkE/QUJagr8paQDCTmGP2jKY0MrBtNpBwHgjuxktfiNG
         8ksWvNNjgd9U4FW+OOBLFr2HviZHbv0+D14fXOQb0pS+LZd8wNtefVY/nZiZsL+I86rG
         FnLQ==
X-Gm-Message-State: AOAM5313eTva4ueeZbXpFEMnjPLRo/ty5UcQY9OhEh3fIj3N0LxrAknQ
	Rhcy07xh3Y8pUnT4ANQOcMt1/skrHYs=
X-Google-Smtp-Source: ABdhPJyqO0gJWLyLoPCwuEBoCjFrOMmiCRNrrZobyBAe1Y1jh8/j/mRXVeQ2BPMmJ2IOxZyc+tMoVw==
X-Received: by 2002:a05:6214:1349:: with SMTP id b9mr11570103qvw.47.1633712852058;
        Fri, 08 Oct 2021 10:07:32 -0700 (PDT)
Received: from [192.168.2.253] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id h17sm2491399qtp.13.2021.10.08.10.07.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Oct 2021 10:07:31 -0700 (PDT)
To: Jonathan Tobin <Tobin@augustusaero.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <BN7PR05MB4500C27C573EBDAB9A2FD998D5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
 <CAB__hTQbAiyie8RxsnpE1arSu6sR7Zqxozz4VOpugNK2qSLGMQ@mail.gmail.com>
 <CAB__hTR35saQd6PsoATaN93woLe_0g1Bnq2qoLzPATkZmMnz7A@mail.gmail.com>
 <BN7PR05MB45000A47C92750DDCFEC590CD5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
 <9449daef-bcc9-e996-f0eb-be6d8676f1c6@gmail.com>
 <BN7PR05MB450066DB9ABF262DE0F01C51D5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <f69f676c-429d-6bfc-3c8f-e9fe2d576dda@gmail.com>
Date: Fri, 8 Oct 2021 13:07:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <BN7PR05MB450066DB9ABF262DE0F01C51D5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
Content-Language: en-US
Message-ID-Hash: 5EHJAELJ5MGR2DAFEXLUCPHKRQSOM4Z3
X-Message-ID-Hash: 5EHJAELJ5MGR2DAFEXLUCPHKRQSOM4Z3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 3.15 on Windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5EHJAELJ5MGR2DAFEXLUCPHKRQSOM4Z3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6487346568310181484=="

This is a multi-part message in MIME format.
--===============6487346568310181484==
Content-Type: multipart/alternative;
 boundary="------------1D41855BF39EA08F636709FF"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1D41855BF39EA08F636709FF
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-08 1:02 p.m., Jonathan Tobin wrote:
>
> It does indeed fail. I updated the image on the N310, but the issue=20
> remains the same.
>
> Thanks,
>
> Jonathan
>
Could you share with us the output of the (newly) failing uhd_usrp_probe?

And you confirm that the SAME device works from Linux under the same=20
physical configuration?


> *From:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Thursday, October 7, 2021 1:27 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: UHD 3.15 on Windows
>
> On 2021-10-07 2:31 p.m., Jonathan Tobin wrote:
>
>     I am only connected to the USRP via ethernet to SFP+0 port.
>
>     I have no problems with a Linux Host running 3.15.
>
> Yup, so try:
>
> uhd_usrp_probe --args addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310
>
> If that *still* fails, then you probably have a much-older image on=20
> the N310, and should follow the directions for updating it:
>
> https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Ca=
rd<https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_C=
ard>
>
>
>
>
>     *From:*Rob Kossler <rkossler@nd.edu><mailto:rkossler@nd.edu>
>     *Sent:* Thursday, October 7, 2021 11:56 AM
>     *To:* Jonathan Tobin
>     <Tobin@augustusaero.com><mailto:Tobin@augustusaero.com>
>     *Cc:* usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
>     *Subject:* Re: [USRP-users] UHD 3.15 on Windows
>
>     Also, does the N310 have the 3.15 file system / MPM installed?
>
>     On Thu, Oct 7, 2021 at 1:54 PM Rob Kossler
>     <rkossler@nd.edu<mailto:rkossler@nd.edu>> wrote:
>
>         Perhaps you are just finding the address of the N310 RJ45
>         Ethernet port, but not the address of the SFP+ ports? These
>         are needed for UHD (at least one of them). Are you only
>         connected via 1GB?=A0 Do you have a direct=A0link between host =
PC
>         and one of the SFP+ ports?
>
>         Rob
>
>         On Thu, Oct 7, 2021 at 1:37 PM Jonathan Tobin
>         <Tobin@augustusaero.com<mailto:Tobin@augustusaero.com>> wrote:
>
>             Hello =96 I am attempting to install UHD 3.15 on my Windows
>             10 PC. I am able to ping and find the device, but
>             currently unable to probe. Not sure what the issue is =96
>             any recommendations?
>
>             Command Prompt output:
>
>             C:\Program Files\UHD3\bin>uhd_find_devices
>
>             [INFO] [UHD] Win32; Microsoft Visual C++ version 14.2;
>             Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de
>
>             --------------------------------------------------
>
>             -- UHD Device 0
>
>             --------------------------------------------------
>
>             Device Address:
>
>             serial: 3218B5F
>
>             claimed: False
>
>             =A0=A0mgmt_addr: 192.168.10.2
>
>             product: n310
>
>             reachable: No
>
>             =A0=A0=A0 type: n3xx
>
>             C:\Program Files\UHD3\bin>uhd_usrp_probe
>
>             [INFO] [UHD] Win32; Microsoft Visual C++ version 14.2;
>             Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de
>
>             [INFO] [MPMD FIND] Found MPM devices, but none are
>             reachable for a UHD session. Specify find_all to find all
>             devices.
>
>             Error: LookupError: KeyError: No devices found for ----->
>
>             Empty Device Address
>
>             Thanks,
>
>             Jonathan
>
>             _______________________________________________
>             USRP-users mailing list --
>             usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.co=
m>
>             To unsubscribe send an email to
>             usrp-users-leave@lists.ettus.com<mailto:usrp-users-leave@li=
sts.ettus.com>
>
>
>
>     _______________________________________________
>
>     USRP-users mailing list -- usrp-users@lists.ettus.com  <mailto:usrp=
-users@lists.ettus.com>
>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com  <=
mailto:usrp-users-leave@lists.ettus.com>
>


--------------1D41855BF39EA08F636709FF
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-08 1:02 p.m., Jonathan Tobi=
n
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN7PR05MB450066DB9ABF262DE0F01C51D5B19@BN7PR05MB4500.namprd05=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}.MsoChpDefault
	{mso-style-type:export-only;}div.WordSection1
	{page:WordSection1;}</style>
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">It does indeed fail. I updated the image o=
n
          the N310, but the issue remains the same.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
        <p class=3D"MsoNormal">Jonathan</p>
      </div>
    </blockquote>
    Could you share with us the output of the (newly) failing
    uhd_usrp_probe?<br>
    <br>
    And you confirm that the SAME device works from Linux under the same
    physical configuration?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN7PR05MB450066DB9ABF262DE0F01C51D5B19@BN7PR05MB4500.namprd05=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><a name=3D"_MailEndCompose"
            moz-do-not-send=3D"true"><o:p>=A0</o:p></a></p>
        <span style=3D"mso-bookmark:_MailEndCompose"></span>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><a name=3D"_MailOriginal"
                moz-do-not-send=3D"true"><b>From:</b></a><span
                style=3D"mso-bookmark:_MailOriginal"> Marcus D. Leech
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvo=
nbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                <br>
                <b>Sent:</b> Thursday, October 7, 2021 1:27 PM<br>
                <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> [USRP-users] Re: UHD 3.15 on Windows<o:p>=
</o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOriginal"=
><o:p>=A0</o:p></span></p>
        <div>
          <p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOrigina=
l">On
              2021-10-07 2:31 p.m., Jonathan Tobin wrote:<o:p></o:p></spa=
n></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOrigina=
l">I
              am only connected to the USRP via ethernet to SFP+0 port.
              =A0<o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOrigina=
l">=A0<o:p></o:p></span></p>
          <p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOrigina=
l">I
              have no problems with a Linux Host running 3.15.<o:p></o:p>=
</span></p>
          <p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOrigina=
l">=A0<o:p></o:p></span></p>
        </blockquote>
        <p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOriginal"=
>Yup,
            so try:<br>
            <br>
            uhd_usrp_probe --args
            addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310<br>
            <br>
            If that *still* fails, then you probably have a much-older
            image on the N310, and should follow the directions for
            updating it:<br>
            <br>
          </span><span style=3D"mso-bookmark:_MailOriginal"></span><a
href=3D"https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a=
_SD_Card"
            moz-do-not-send=3D"true"><span
              style=3D"mso-bookmark:_MailOriginal">https://kb.ettus.com/W=
riting_the_USRP_File_System_Disk_Image_to_a_SD_Card</span><span
              style=3D"mso-bookmark:_MailOriginal"></span></a><span
            style=3D"mso-bookmark:_MailOriginal"><br>
            <br>
            <br>
            <br>
            <br>
            <o:p></o:p></span></p>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><span
                style=3D"mso-bookmark:_MailOriginal"><b>From:</b></span><=
span
                style=3D"mso-bookmark:_MailOriginal"> Rob Kossler
              </span><a href=3D"mailto:rkossler@nd.edu"
                moz-do-not-send=3D"true"><span
                  style=3D"mso-bookmark:_MailOriginal">&lt;rkossler@nd.ed=
u&gt;</span><span
                  style=3D"mso-bookmark:_MailOriginal"></span></a><span
                style=3D"mso-bookmark:_MailOriginal">
                <br>
                <b>Sent:</b> Thursday, October 7, 2021 11:56 AM<br>
                <b>To:</b> Jonathan Tobin </span><a
                href=3D"mailto:Tobin@augustusaero.com"
                moz-do-not-send=3D"true"><span
                  style=3D"mso-bookmark:_MailOriginal">&lt;Tobin@augustus=
aero.com&gt;</span><span
                  style=3D"mso-bookmark:_MailOriginal"></span></a><span
                style=3D"mso-bookmark:_MailOriginal"><br>
                <b>Cc:</b> </span><a
                href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true"><span
                  style=3D"mso-bookmark:_MailOriginal">usrp-users@lists.e=
ttus.com</span><span
                  style=3D"mso-bookmark:_MailOriginal"></span></a><span
                style=3D"mso-bookmark:_MailOriginal"><br>
                <b>Subject:</b> Re: [USRP-users] UHD 3.15 on Windows<o:p>=
</o:p></span></p>
          </div>
          <p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOrigina=
l">=A0<o:p></o:p></span></p>
          <div>
            <p class=3D"MsoNormal"><span
                style=3D"mso-bookmark:_MailOriginal">Also, does the N310
                have the 3.15 file system / MPM installed?<o:p></o:p></sp=
an></p>
          </div>
          <p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOrigina=
l">=A0<o:p></o:p></span></p>
          <div>
            <div>
              <p class=3D"MsoNormal"><span
                  style=3D"mso-bookmark:_MailOriginal">On Thu, Oct 7, 202=
1
                  at 1:54 PM Rob Kossler &lt;</span><a
                  href=3D"mailto:rkossler@nd.edu" moz-do-not-send=3D"true=
"><span
                    style=3D"mso-bookmark:_MailOriginal">rkossler@nd.edu<=
/span><span
                    style=3D"mso-bookmark:_MailOriginal"></span></a><span
                  style=3D"mso-bookmark:_MailOriginal">&gt; wrote:<o:p></=
o:p></span></p>
            </div>
            <blockquote style=3D"border:none;border-left:solid #CCCCCC
              1.0pt;padding:0in 0in 0in
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-bottom:5=
.0pt">
              <div>
                <div>
                  <p class=3D"MsoNormal" style=3D"margin-left:40.8pt"><sp=
an
                      style=3D"mso-bookmark:_MailOriginal">Perhaps you ar=
e
                      just finding the address of the N310 RJ45 Ethernet
                      port, but not the address of the SFP+ ports? These
                      are needed for UHD (at least one of them). Are you
                      only connected via 1GB?=A0 Do you have a direct=A0l=
ink
                      between host PC and one of the SFP+ ports?<o:p></o:=
p></span></p>
                  <div>
                    <p class=3D"MsoNormal" style=3D"margin-left:40.8pt"><=
span
                        style=3D"mso-bookmark:_MailOriginal">Rob<o:p></o:=
p></span></p>
                  </div>
                </div>
                <p class=3D"MsoNormal" style=3D"margin-left:40.8pt"><span
                    style=3D"mso-bookmark:_MailOriginal">=A0<o:p></o:p></=
span></p>
                <div>
                  <div>
                    <p class=3D"MsoNormal" style=3D"margin-left:40.8pt"><=
span
                        style=3D"mso-bookmark:_MailOriginal">On Thu, Oct
                        7, 2021 at 1:37 PM Jonathan Tobin &lt;</span><a
                        href=3D"mailto:Tobin@augustusaero.com"
                        target=3D"_blank" moz-do-not-send=3D"true"><span
                          style=3D"mso-bookmark:_MailOriginal">Tobin@augu=
stusaero.com</span><span
                          style=3D"mso-bookmark:_MailOriginal"></span></a=
><span
                        style=3D"mso-bookmark:_MailOriginal">&gt; wrote:<=
o:p></o:p></span></p>
                  </div>
                  <blockquote style=3D"border:none;border-left:solid
                    #CCCCCC 1.0pt;padding:0in 0in 0in
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-bottom:5=
.0pt">
                    <div>
                      <div>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">Hello =96=
 I
                            am attempting to install UHD 3.15 on my
                            Windows 10 PC. I am able to ping and find
                            the device, but currently unable to probe.
                            Not sure what the issue is =96 any
                            recommendations?<o:p></o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">=A0<o:p>=
</o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">Command
                            Prompt output:<o:p></o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">=A0<o:p>=
</o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">C:\Progr=
am
                            Files\UHD3\bin&gt;uhd_find_devices<o:p></o:p>=
</span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">[INFO]
                            [UHD] Win32; Microsoft Visual C++ version
                            14.2; Boost_107200;
                            UHD_3.15.0.HEAD-0-gaea0e2de<o:p></o:p></span>=
</p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">--------=
------------------------------------------<o:p></o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">-- UHD
                            Device 0<o:p></o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">--------=
------------------------------------------<o:p></o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">Device
                            Address:<o:p></o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">=A0=A0=A0
                            serial: 3218B5F<o:p></o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">=A0=A0=A0
                            claimed: False<o:p></o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">=A0
                            =A0=A0mgmt_addr: 192.168.10.2<o:p></o:p></spa=
n></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">=A0=A0=A0
                            product: n310<o:p></o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">=A0=A0=A0
                            reachable: No<o:p></o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">=A0=A0=A0=
 type:
                            n3xx<o:p></o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">=A0<o:p>=
</o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">C:\Progr=
am
                            Files\UHD3\bin&gt;uhd_usrp_probe<o:p></o:p></=
span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">[INFO]
                            [UHD] Win32; Microsoft Visual C++ version
                            14.2; Boost_107200;
                            UHD_3.15.0.HEAD-0-gaea0e2de<o:p></o:p></span>=
</p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">[INFO]
                            [MPMD FIND] Found MPM devices, but none are
                            reachable for a UHD session. Specify
                            find_all to find all devices.<o:p></o:p></spa=
n></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">Error:
                            LookupError: KeyError: No devices found for
                            -----&gt;<o:p></o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">Empty
                            Device Address<o:p></o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">=A0<o:p>=
</o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">=A0<o:p>=
</o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">Thanks,<=
o:p></o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">Jonathan=
<o:p></o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">=A0<o:p>=
</o:p></span></p>
                        <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:4=
5.6pt"><span
                            style=3D"mso-bookmark:_MailOriginal">=A0<o:p>=
</o:p></span></p>
                      </div>
                    </div>
                    <p class=3D"MsoNormal" style=3D"margin-left:45.6pt"><=
span
                        style=3D"mso-bookmark:_MailOriginal">____________=
___________________________________<br>
                        USRP-users mailing list -- </span><a
                        href=3D"mailto:usrp-users@lists.ettus.com"
                        target=3D"_blank" moz-do-not-send=3D"true"><span
                          style=3D"mso-bookmark:_MailOriginal">usrp-users=
@lists.ettus.com</span><span
                          style=3D"mso-bookmark:_MailOriginal"></span></a=
><span
                        style=3D"mso-bookmark:_MailOriginal"><br>
                        To unsubscribe send an email to </span><a
                        href=3D"mailto:usrp-users-leave@lists.ettus.com"
                        target=3D"_blank" moz-do-not-send=3D"true"><span
                          style=3D"mso-bookmark:_MailOriginal">usrp-users=
-leave@lists.ettus.com</span><span
                          style=3D"mso-bookmark:_MailOriginal"></span></a=
><span
                        style=3D"mso-bookmark:_MailOriginal"><o:p></o:p><=
/span></p>
                  </blockquote>
                </div>
              </div>
            </blockquote>
          </div>
          <p class=3D"MsoNormal"><span style=3D"mso-bookmark:_MailOrigina=
l"><br>
              <br>
              <o:p></o:p></span></p>
          <pre><span style=3D"mso-bookmark:_MailOriginal">_______________=
________________________________</span></pre>
          <pre><span style=3D"mso-bookmark:_MailOriginal">USRP-users mail=
ing list -- </span><a href=3D"mailto:usrp-users@lists.ettus.com" moz-do-n=
ot-send=3D"true"><span style=3D"mso-bookmark:_MailOriginal">usrp-users@li=
sts.ettus.com</span><span style=3D"mso-bookmark:_MailOriginal"></span></a=
><span style=3D"mso-bookmark:_MailOriginal"></span></pre>
          <pre><span style=3D"mso-bookmark:_MailOriginal">To unsubscribe =
send an email to </span><a href=3D"mailto:usrp-users-leave@lists.ettus.co=
m" moz-do-not-send=3D"true"><span style=3D"mso-bookmark:_MailOriginal">us=
rp-users-leave@lists.ettus.com</span><span style=3D"mso-bookmark:_MailOri=
ginal"></span></a><span style=3D"mso-bookmark:_MailOriginal"></span></pre=
>
        </blockquote>
        <span style=3D"mso-bookmark:_MailOriginal"></span>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------1D41855BF39EA08F636709FF--

--===============6487346568310181484==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6487346568310181484==--
