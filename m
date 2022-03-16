Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 706C74DB96D
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 21:35:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5DF203850B6
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 16:35:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Nt9zsohR";
	dkim-atps=neutral
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id E76BD384C84
	for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 16:34:13 -0400 (EDT)
Received: by mail-qt1-f180.google.com with SMTP id t7so2815569qta.10
        for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 13:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=UPMsWDH3/Ws188ct9TY5MZ5JrEf94SvJApWxPrSgxRU=;
        b=Nt9zsohR+Dzz3m5WaKEFlPyzc4XcpDSIsOLNnE66gIIsGyDi5IgnGjwtHQGCqVjn13
         vMvdFEJCxcl8Df2/hQ1DPTEwyVMleiAda9g9vMeoKlXLCRFXxhPb+d/Mh5VEdzO0xh8+
         FW4CdcvcIL6oAVaDCzprZ7FUDW8YwaZwp+Gp6gEWItFzlxwLNbBEbaTzxaYQ3vEXUthN
         s/A1+nbgBp+BWWH20yxWz8ktmSzt472bFk5hGg6kxh4rTlmEWIAMRDE3/fOHUfY/20Wd
         0dImmEkMc/+kwirfujLVOFvWEsnavtDZlHas6vsETui334TvlmSOV7RUp76R37084s20
         VWfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=UPMsWDH3/Ws188ct9TY5MZ5JrEf94SvJApWxPrSgxRU=;
        b=iklkJtboI3XSuqU4sFokvlSUBo4+41nCNPo4VmWDWhrd7rcLdRRfhMGXK2o4fN9a1T
         1EwjE7d0PrC/5yi2jQ0Bq9yTqixMHx/jcZ8Wom7lczYybiBi6DYv+Fu9wQVZo620KmuD
         u2Oepb2AGdaocq0GX5ggArl6dA7DLf3NtTiTesBjlSrI/WAl9hV6EH/HTp8nTd1qZ702
         Bib1OatliyHLQuTbyw17McymODAzUMP6yhTtuhKF7WTFqiY8wn++ZN+YGWHOOsXVGj7Q
         xOyGA87PxvGVklqL2Ftu1mYMEEmE1ZerWJIh7Lp7zNkcou2RUsKqzQ46IvFlJcLfsgWt
         d/XQ==
X-Gm-Message-State: AOAM530p7xyoxSsCFUHUwo88PA/sqkTPMAADZDbRSGNlBPzbt8e/mssk
	xStZx5AIaU8V6aaPN3UYjPo9qNePfEo=
X-Google-Smtp-Source: ABdhPJx3LHxDhja3T7jLt9gBSvWXyv0punstjN6mU/gGNaJ/9AqRqC7UcaIOIVysTZJtoS44SzC4qQ==
X-Received: by 2002:ac8:5b92:0:b0:2e1:e454:7fd7 with SMTP id a18-20020ac85b92000000b002e1e4547fd7mr1311099qta.667.1647462853139;
        Wed, 16 Mar 2022 13:34:13 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id w17-20020ac857d1000000b002e19feda592sm1965082qta.85.2022.03.16.13.34.12
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Mar 2022 13:34:12 -0700 (PDT)
Message-ID: <9f61c0ef-7d9d-291c-4fdc-5a2f51a35600@gmail.com>
Date: Wed, 16 Mar 2022 16:34:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <ed3ca7414cb34e9e962bdaecb31fb3be@lanl.gov>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <ed3ca7414cb34e9e962bdaecb31fb3be@lanl.gov>
Message-ID-Hash: VN6FR2B4T4KZ6NJTS444477HV7EY7TVH
X-Message-ID-Hash: VN6FR2B4T4KZ6NJTS444477HV7EY7TVH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: pybombs install of rfnoc onto ubuntu 20.04 lts
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VN6FR2B4T4KZ6NJTS444477HV7EY7TVH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8057012358596456669=="

This is a multi-part message in MIME format.
--===============8057012358596456669==
Content-Type: multipart/alternative;
 boundary="------------W2uujc1ruu0cgHqMzEh9O3xy"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------W2uujc1ruu0cgHqMzEh9O3xy
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-03-16 12:41, Caffrey, Michael Paul via USRP-users wrote:
>
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Wednesday, March 16, 2022 10:15 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* =C2=A0[USRP-users] Re: pybombs install of rfnoc onto ubuntu=20
> 20.04 lts
>
> On 2022-03-16 12:05, Caffrey, Michael Paul via USRP-users wrote:
>
>
>
> Since this is a pybombs install, you need to run setup_env.sh to get=20
> various environment variables set correctly based on where your=20
> pybombs run
> =C2=A0 installed things, including shared libraries.
>
> Aw, this made the difference, thank you Marcus.
>
> This looks like you're missing Python2.7 libraries--it may be the case=20
> that 20.04 doesn't installed 2.7 libraries by default and you'll have=20
> to install them.
>
> Indeed, Ubuntu hasn=E2=80=99t included 2.7 for some time apparently, so=
 I=20
> installed it, but I get the same error from pybomb. Does pybomb not=20
> handle dependencies? Where might I find a list of python2.7 library=20
> dependencies that need to be installed for gnuradio?
>
> Thank you for the input -Mike
>
>
>
I think you may be heading down a path of grief here, since GR 3.7 is=20
now quite obsolete, and the RFNoC bits and pieces for it are also quite=20
obsolete.

With the part1 and part2 RFNOC 4 workshop slide deck:

https://www.gnuradio.org/grcon/grcon20/grcon20_RFNoC_4_Part1.pdf

https://www.gnuradio.org/grcon/grcon20/grcon20_RFNoC_4_Part2.pdf

And the migration guide:

https://kb.ettus.com/RFNoC_4_Migration_Guide

I think you're probably a new user of this stuff, so it's better to=20
point you at "newer" stuff, than let you go down a path that is obsolete=20
before your start....




--------------W2uujc1ruu0cgHqMzEh9O3xy
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-03-16 12:41, Caffrey, Michael
      Paul via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:ed3ca7414cb34e9e962bdaecb31fb3be@lanl.gov">
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}p.msonormal0, li.msonormal0, div.ms=
onormal0
	{mso-style-name:msonormal;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
              <b>Sent:</b> Wednesday, March 16, 2022 10:15 AM<br>
              <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> =C2=A0[USRP-users] Re: pybombs install of r=
fnoc
              onto ubuntu 20.04 lts<o:p></o:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 2022-03-16 12:05, Caffrey, Michael
            Paul via USRP-users wrote:<span style=3D"font-size:12.0pt"><o=
:p></o:p></span></p>
        </div>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif"><br>
            <br>
            Since this is a pybombs install, you need to run
            setup_env.sh to get various environment variables set
            correctly based on where your pybombs run<br>
            =C2=A0 installed things, including shared libraries.<br>
            <br>
            Aw, this made the difference, thank you Marcus.<br>
          </span>=C2=A0<span style=3D"font-size:12.0pt;font-family:&quot;=
Times
            New Roman&quot;,serif"><o:p></o:p></span></p>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal"><span
              style=3D"font-size:12.0pt;font-family:&quot;Times New
              Roman&quot;,serif"><o:p>=C2=A0</o:p></span></p>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif">This looks like you're missing Python2.7
            libraries--it may be the case that 20.04 doesn't installed
            2.7 libraries by default and you'll have to install them.<o:p=
></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif">Indeed, Ubuntu hasn=E2=80=99t included 2.7=
 for
            some time apparently, so I installed it, but I get the same
            error from pybomb. Does pybomb not handle dependencies?
            Where might I find a list of python2.7 library dependencies
            that need to be installed for gnuradio?
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif">Thank you for the input -Mike<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif"><br>
            <br>
          </span></p>
      </div>
    </blockquote>
    I think you may be heading down a path of grief here, since GR 3.7
    is now quite obsolete, and the RFNoC bits and pieces for it are also
    quite obsolete.<br>
    <br>
    With the part1 and part2 RFNOC 4 workshop slide deck:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://www.gnuradio.org/g=
rcon/grcon20/grcon20_RFNoC_4_Part1.pdf">https://www.gnuradio.org/grcon/gr=
con20/grcon20_RFNoC_4_Part1.pdf</a><br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://www.gnuradio.org/g=
rcon/grcon20/grcon20_RFNoC_4_Part2.pdf">https://www.gnuradio.org/grcon/gr=
con20/grcon20_RFNoC_4_Part2.pdf</a><br>
    <br>
    And the migration guide:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/RFNoC=
_4_Migration_Guide">https://kb.ettus.com/RFNoC_4_Migration_Guide</a><br>
    <br>
    I think you're probably a new user of this stuff, so it's better to
    point you at "newer" stuff, than let you go down a path that is
    obsolete before your start....<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------W2uujc1ruu0cgHqMzEh9O3xy--

--===============8057012358596456669==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8057012358596456669==--
