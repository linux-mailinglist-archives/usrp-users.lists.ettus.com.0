Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C78E8469961
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 15:45:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 186963845D8
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 09:45:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ixn+aS/i";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 189AA3845D0
	for <usrp-users@lists.ettus.com>; Mon,  6 Dec 2021 09:44:22 -0500 (EST)
Received: by mail-qk1-f172.google.com with SMTP id d2so11269166qki.12
        for <usrp-users@lists.ettus.com>; Mon, 06 Dec 2021 06:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=eKkkibLTxQG6dDZh1Dw2KFEpEbW+TuGOkKMxcPDieNM=;
        b=Ixn+aS/iIqnDRWrvPxsBFvFl35BsQ4CGehnCy5Yg6T7VFQuDvhugbSe6PmjmKsfGKM
         7bLbokquCE3tiNrugEwKndXlrg8xCgKGUrzzRmGw+x/lJR8og+gfDU0p5SsoVMXWPMh1
         73Q0k3ieJnmnn2jY41Smq4rRRwtn6lDjrAMuzjNSDSvwfn3dRCLuhrsDtIIMWs7Z9VQz
         hzYbbIKa2EjJv2oq2rXTlOfWzhcKQ4zpe5//gKIMrVT6DJYtG1aKnCm+EzVVPvV/ibjf
         scRNENkDthGvka2sDQq4HPBA//p1DLQK03Dy+nCwym3UXx94Cwn2UkN2gPB6ShBo1EOx
         37Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=eKkkibLTxQG6dDZh1Dw2KFEpEbW+TuGOkKMxcPDieNM=;
        b=QRoP3V/vZ3tfDs+9CC/+hoDj+yyCjVTedTqxo7abFix/7tnb9UbOLJQ4IkKcJ/rRdT
         vfg1LinMpah6pE2Umhrir85sILNEETKoigq6vuucdCEUhYVxocfOhBoiu6vP0YHdX0VN
         +vui5M9zPupS+CFnAs3FFnA0NYKwV3r8RAM/0KhmgufvwE6sGELxSGIW/K11w30rKR+E
         fEi5m+rIKDltxwx5yx9z5q3P59e07CvMHjbZOBpx1Q7QCqWwxHlxFGYbtj6k5LQQT9zW
         oy3l6dqLG2inyVGwB/B2SW3EHw7CoDRrvRmtqSsSzRaNcNeyHOXT5hJ0672+Y8PAYfDr
         JFjQ==
X-Gm-Message-State: AOAM532PudsU8IZAldfuMXji1cPWaSWG1mFgExAmqQMeM64EFtkQznhR
	xGJZDMTd1VlloA3GZFRgQT94ZHpzYJc=
X-Google-Smtp-Source: ABdhPJxrDurDI/wzUY19RbbVRkf6/rNuEHUE6U64mLzgweKQRmGCsBIU0tMmyWLoArc1UtDSDSCf0w==
X-Received: by 2002:a05:620a:298a:: with SMTP id r10mr32841952qkp.381.1638801862191;
        Mon, 06 Dec 2021 06:44:22 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id g19sm7514066qtg.82.2021.12.06.06.44.21
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 06:44:21 -0800 (PST)
Message-ID: <c74ff3eb-89fc-967e-a21d-7c4bedef8e67@gmail.com>
Date: Mon, 6 Dec 2021 09:44:21 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <e9dc828a6115487ab2fbd574b3b6685c@riedel.net>
 <c3a818edbb694a94a60a063804386d45@riedel.net>
 <92045f50-fdc4-f672-ce0a-3f7a95ef7835@gmail.com>
 <ce61c64af3084393a17686a2731ac428@riedel.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <ce61c64af3084393a17686a2731ac428@riedel.net>
Message-ID-Hash: MVSWZSQML7JIZAVNCSS7544ETGLRN6KF
X-Message-ID-Hash: MVSWZSQML7JIZAVNCSS7544ETGLRN6KF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RfnocError: OpTimeout: Control operation timed out waiting for space in command buffer
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MVSWZSQML7JIZAVNCSS7544ETGLRN6KF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3777656819443413492=="

This is a multi-part message in MIME format.
--===============3777656819443413492==
Content-Type: multipart/alternative;
 boundary="------------lIyb6QQhh1715LD9XMKak8SU"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------lIyb6QQhh1715LD9XMKak8SU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-06 09:38, Christoph Schultz (Riedel) wrote:
>
> >>But I think the call you're using basically does a lot of "set up=20
> device parameters" work every time you call it, which is not the usual=20
> "pattern".<<
>
> Thanks for clarification!
>
> I would like to do a frequency sweep, and would therefore like to use=20
> the following sequence:
>
> * Initialize Device
>
> * Repeat n times:
>
> * Setup device to fn
>
> * Measure
>
> I finally managed to circumvent the described issue, by shifting the=20
> =E2=80=9CInitialize device=E2=80=9D step inside the loop:
>
> * Repeat n times:
>
> * (Re-)Initialize Device every m-th iteration
>
> * Setup device to fn
>
> * Measure
>
> With Gnuradio this was not possible.
>
> Btw =E2=80=93 is there a better approach to do a frequency sweep that a=
voids=20
> setting up the device parameters over and over again?
>
> Best regards
>
> Christoph
>
>
In GR, you'd just change the frequency on the UHD source block whenever=20
you wanted a new frequency.=C2=A0=C2=A0 The samples are tagged, so you ca=
n=20
determine in the
 =C2=A0 sample-stream when the frequency has changed.=C2=A0 No teardown/s=
etup=20
required, and you sure as heck don't have to stop/reconfigure/start.

Managing the frequency schedule can be done in a number of ways.

But the detailed discussion of how to manage GR flows probably belongs=20
on the discuss-gnuradio list.


--------------lIyb6QQhh1715LD9XMKak8SU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-06 09:38, Christoph Schultz
      (Riedel) wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:ce61c64af3084393a17686a2731ac428@riedel.net">
      <!-- Template generated by  on 03:38:08 Montag, 6 Dezember 2021 -->
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css">P.ImprintUniqueID {
	MARGIN: 0cm 0cm 0pt
}LI.ImprintUniqueID {
	MARGIN: 0cm 0cm 0pt
}DIV.ImprintUniqueID {
	MARGIN: 0cm 0cm 0pt
}TABLE.ImprintUniqueIDTable {
	MARGIN: 0cm 0cm 0pt
}DIV.Section1 {
	page: Section1
}</style>
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}span.EmailStyle22
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
        <p class=3D"MsoNormal">&gt;&gt;But I think the call you're using
          basically does a lot of "set up device parameters" work every
          time you call it, which is not the usual "pattern".&lt;&lt;<o:p=
></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks for clarification! <o:p></o:p></p>
        <p class=3D"MsoNormal">I would like to do a frequency sweep, and
          would therefore like to use the following sequence:<o:p></o:p><=
/p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">* Initialize Device<o:p></o:p></p>
        <p class=3D"MsoNormal">* Repeat n times:<o:p></o:p></p>
        <p class=3D"MsoNormal" style=3D"text-indent:36.0pt">* Setup devic=
e
          to fn<o:p></o:p></p>
        <p class=3D"MsoNormal" style=3D"text-indent:36.0pt">* Measure<o:p=
></o:p></p>
        <p class=3D"MsoNormal" style=3D"text-indent:36.0pt"><o:p>=C2=A0</=
o:p></p>
        <p class=3D"MsoNormal">I finally managed to circumvent the
          described issue, by shifting the =E2=80=9CInitialize device=E2=80=
=9D step
          inside the loop:<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">* Repeat n times:<o:p></o:p></p>
        <p class=3D"MsoNormal" style=3D"text-indent:36.0pt">*
          (Re-)Initialize Device every m-th iteration<o:p></o:p></p>
        <p class=3D"MsoNormal" style=3D"text-indent:36.0pt">* Setup devic=
e
          to fn<o:p></o:p></p>
        <p class=3D"MsoNormal" style=3D"text-indent:36.0pt">* Measure<o:p=
></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">With Gnuradio this was not possible.<o:p><=
/o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Btw =E2=80=93 is there a better approach t=
o do a
          frequency sweep that avoids setting up the device parameters
          over and over again?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Best regards<o:p></o:p></p>
        <p class=3D"MsoNormal">Christoph<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <br>
      </div>
    </blockquote>
    In GR, you'd just change the frequency on the UHD source block
    whenever you wanted a new frequency.=C2=A0=C2=A0 The samples are tagg=
ed, so
    you can determine in the<br>
    =C2=A0 sample-stream when the frequency has changed.=C2=A0 No teardow=
n/setup
    required, and you sure as heck don't have to stop/reconfigure/start.<=
br>
    <br>
    Managing the frequency schedule can be done in a number of ways.<br>
    <br>
    But the detailed discussion of how to manage GR flows probably
    belongs on the discuss-gnuradio list.<br>
    <br>
    <br>
  </body>
</html>
--------------lIyb6QQhh1715LD9XMKak8SU--

--===============3777656819443413492==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3777656819443413492==--
