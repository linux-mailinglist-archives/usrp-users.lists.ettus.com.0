Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA26C7DE771
	for <lists+usrp-users@lfdr.de>; Wed,  1 Nov 2023 22:34:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 04574385EDE
	for <lists+usrp-users@lfdr.de>; Wed,  1 Nov 2023 17:34:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1698874446; bh=580Ul8QBLexsZgYNjweSXNrJdRh26+BlUbbvlz4ZNEs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Jk16JgH3qxR3oNoooY/z9wFjM0vZphA6RItfIWARKlGsuFoOVc7Q8278JmuTU4CZu
	 QQwKw0flQMAR3JFeYk7ESWkwNQTygSJ86dHhMQqpYUsAwS3jpn/ZE9YPF/jwbTTiw4
	 IbFdyGLtfgOGez3OdbkSTJeNOkGcJzTqTgtlzB2sLauk4Bz2KU9yRLwxeH2LPRc8Gm
	 nbxOsD0dtqotOofl0a82PdoQpk9YV9jc0Gpo5XS2o4QzztKXe2TiNcsUlxCmZcrAPC
	 yB6dx0OXcNCoYUBAYM5XNfXd4iwH0EthnvgvJaGlRcaHxnwc1cO3cJMYgkcMKP5D1D
	 bOYNm4RzYXQvg==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id B9D6438558F
	for <usrp-users@lists.ettus.com>; Wed,  1 Nov 2023 17:33:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gG5Yferw";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-41cd6e1d4fbso1051281cf.1
        for <usrp-users@lists.ettus.com>; Wed, 01 Nov 2023 14:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698874421; x=1699479221; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F3ZDdqrsmrm/WHqsfKEklEH8nGKrkhiTunaozxxx9cI=;
        b=gG5Yferw0nYFOGPYaq/28ZIA2l3C/3gW3ftZK+emByjVT8fZACUnaAQOXD47Do7cBb
         v+IHl4veSzMFuTXRqM3sfIa3KQBw+Db6RuMmUL+Se/5cAe/HswyaSO3DmiPHlFmKER9j
         +/jX2KYSRUoe7jDYIvIogpvyR80VUCz6z6Kp6wJNA+TUKeAfXofnPcEYJpsz90fYkzIy
         6fdnB+G31Ozcn4TisRQbnmOTW1Um1ZQe+YoI14uziZmyw/j2OwF2sjOxfNQqrnzQYNFy
         O8qmCSw+pcj5TyGmUiZhJBOGCjlWMWu8aUhG8Jc3DN0I609e7t1TWNADcWdMni0RbfPQ
         4kuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698874421; x=1699479221;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=F3ZDdqrsmrm/WHqsfKEklEH8nGKrkhiTunaozxxx9cI=;
        b=rrNJTD8lMY1aO+LKg51JqaGb2B40GhN04mxn0rH66HBBP3ixCIXOK32CFxxsWZ75Uv
         Z81eNlKmDE4vVvqb+4yYzol/y4ANQMdT/yO0Zh65PpBABjmylW6N3QQZAghp1g8DtmJV
         yjbEgs8jtE6tCydvKUcQLTSDmJ4w/ZQRS/JSh00WBLsiNG6zb1DnmeMjJe+LsAJBznJw
         g16SV8NstNMvxCevf4KEDVzj+7Go5Qe+gfgyfYdpAnwtw8RTA8HiE/2L9Q2JjIJD6H/+
         Juk1DwW7d2kMJqWj7USjQN51ydrBp4IY+wUwMM/rZbUuuGQu3BKlRKhY1axTcNImV6rT
         xnzw==
X-Gm-Message-State: AOJu0Yx0wKB2jCSVBSWbdb9o8HUDb27/+41SuLaGAi9Ewpgs9TVEjzBR
	7U2/F2kqDQaI/LE/pfFV0VCjYMDj9AQ=
X-Google-Smtp-Source: AGHT+IG7qABuhqVz1gP3fZMDY3Y1XRULvJQbAijMsqs5zKhCyAIWrE4diCxPA2U1UOpMR/BWCp03Rw==
X-Received: by 2002:ac8:5f88:0:b0:403:2877:bc52 with SMTP id j8-20020ac85f88000000b004032877bc52mr18683646qta.0.1698874420842;
        Wed, 01 Nov 2023 14:33:40 -0700 (PDT)
Received: from [192.168.2.182] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id v26-20020ac8749a000000b004181f542bcbsm1739377qtq.11.2023.11.01.14.33.39
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Nov 2023 14:33:40 -0700 (PDT)
Message-ID: <fda9b390-0dc0-470a-bf84-ce16e2d5742d@gmail.com>
Date: Wed, 1 Nov 2023 17:33:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BN2P110MB0948CE39707B3966A22ACAE5CAA7A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN2P110MB0948CE39707B3966A22ACAE5CAA7A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: UM6WCLVCRUCYUMAPUYMF3XDCUFHW4VIT
X-Message-ID-Hash: UM6WCLVCRUCYUMAPUYMF3XDCUFHW4VIT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 gui
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UM6WCLVCRUCYUMAPUYMF3XDCUFHW4VIT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5471981036247335415=="

This is a multi-part message in MIME format.
--===============5471981036247335415==
Content-Type: multipart/alternative;
 boundary="------------jHfIp9VItduPNIh9POVX8oD5"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------jHfIp9VItduPNIh9POVX8oD5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 01/11/2023 17:03, Alvin.Begaye--- via USRP-users wrote:
>
> Is there a GUI interface to the X410?=C2=A0=C2=A0 I noticed there are s=
ome=20
> gnuradio type programs when I ssh into it.=C2=A0 How are those executed=
?
>
> Thank You!
>
>   * *Alvin*//
>
The Linux image running on the X410 is there largely to run MPM to=20
control the radio hardware you should NOT
 =C2=A0 think of it as a place to host your applications.=C2=A0 It's not =
powerful=20
enough, and AFAIR, Ettus/NI DO NOT install
 =C2=A0 Gnu Radio by default on the filesystem image.

You may be thinking of some of the example programs, which would be in=20
/usr/lib/uhd/examples.=C2=A0 They don't use
 =C2=A0 Gnu Radio and I think only one of them has an interface that coul=
d=20
even remotely be called "GUI"--the "curses_fft"
 =C2=A0 example.


>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------jHfIp9VItduPNIh9POVX8oD5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 01/11/2023 17:03, Alvin.Begaye---
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB0948CE39707B3966A22ACAE5CAA7A@BN2P110MB0948.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <style>@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}@font-face
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
        <p class=3D"MsoNormal">Is there a GUI interface to the X410?=C2=A0=
=C2=A0 I
          noticed there are some gnuradio type programs when I ssh into
          it.=C2=A0 How are those executed?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thank You!<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <ul style=3D"margin-top:0in" type=3D"disc">
          <li class=3D"MsoListParagraph"
style=3D"color:black;margin-left:0in;mso-list:l0 level1 lfo1;background:w=
hite;vertical-align:top">
            <b><span style=3D"color:black">Alvin</span></b><i><o:p></o:p>=
</i></li>
        </ul>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
    </blockquote>
    The Linux image running on the X410 is there largely to run MPM to
    control the radio hardware you should NOT<br>
    =C2=A0 think of it as a place to host your applications.=C2=A0 It's n=
ot
    powerful enough, and AFAIR, Ettus/NI DO NOT install<br>
    =C2=A0 Gnu Radio by default on the filesystem image.<br>
    <br>
    You may be thinking of some of the example programs, which would be
    in /usr/lib/uhd/examples.=C2=A0 They don't use<br>
    =C2=A0 Gnu Radio and I think only one of them has an interface that c=
ould
    even remotely be called "GUI"--the "curses_fft"<br>
    =C2=A0 example.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:BN2P110MB0948CE39707B3966A22ACAE5CAA7A@BN2P110MB0948.NAMP110.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
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

--------------jHfIp9VItduPNIh9POVX8oD5--

--===============5471981036247335415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5471981036247335415==--
