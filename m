Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E25314AF643
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 17:15:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ED21C384951
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 11:15:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QnaW6F9U";
	dkim-atps=neutral
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 53D4B38483A
	for <usrp-users@lists.ettus.com>; Wed,  9 Feb 2022 11:14:21 -0500 (EST)
Received: by mail-qt1-f176.google.com with SMTP id b5so2178382qtq.11
        for <usrp-users@lists.ettus.com>; Wed, 09 Feb 2022 08:14:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=va0mPLcXWn9uXGjs2OXLf412hYqq2XAzTqSmL8gDYtM=;
        b=QnaW6F9U4rYOKy9AUDEvJTCbZ3e3BeTH8b46vqRukxKuHQbDl1iMNOKkv69EW3Xw9O
         1GrD67SYcg1WJYb/TRYs55kbY0OUwrzXudG3uqbNsWp2+WlBFrXqI5Fg/pLd+WbJKrth
         lDpUVT6F+ae9BhMdI6ebZ3dV8NIOa/cHyZ2ko5f52yWAxWdRw96wME1nkzj0Umy6QWcv
         do8QzC+0SX6RXstDnumaIwz69LYSaw26b7oY8Lx4fDbpeB4l+3W3J+p0CkYFF/cdnMvP
         zvlbcKBk61lQk89oYU7ROdMHciCghPEs6b9me1nw8+3cvNELvmIlFlstE2zC5R+sb7x/
         DqAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=va0mPLcXWn9uXGjs2OXLf412hYqq2XAzTqSmL8gDYtM=;
        b=vNo1rn7y13bdex5NtqlqxvR/kfB4h+n2Dj1scg1N9zYd9hWEwWH+6Kvte3d7QK7hXU
         GC8gsGpGhGN+AJUeiW8/F0PkkywB5ZN+68JHZrwN3GA3E1SrXLw2Hh6emV5XeTQC7F9T
         BL1fj+VAqf4hwK7JgVromMqpXkbOSrRfDx/IjZwZwL2XFUtHLxJmHCLnYek8cko9Coh8
         BOac9FxepVi4ZO0PGYJJIKavj6QPrAIfpZ1MCyANa79RjZZ/A5B5DJEe1h3/pZHRyibG
         YM4uBYbJEEUdetCYmSI+h4tmsHFXfe0YzVB9T4M7lnY/6AUH47fIYVqSBwYg1+GWVu/g
         0LEA==
X-Gm-Message-State: AOAM533yBIJWRhZY3PGYwJ4za/KTWqwr9BOnJeCE7LybAGFwDugll2XD
	Nuyipz5JMZH8MNkdQatr1dqmv73mw2ixSg==
X-Google-Smtp-Source: ABdhPJwxAHma4v0eRZI1TXGk4+QYpJIWDXF0vHwIZQ5NrzCiJy6dj9lRf2TCk6ERQPSbM51rpe+Sfw==
X-Received: by 2002:a05:622a:1184:: with SMTP id m4mr1857612qtk.477.1644423260814;
        Wed, 09 Feb 2022 08:14:20 -0800 (PST)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id d6sm9027824qty.40.2022.02.09.08.14.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Feb 2022 08:14:20 -0800 (PST)
Message-ID: <8277c5d5-d6de-393c-832b-43d53ff9aa29@gmail.com>
Date: Wed, 9 Feb 2022 11:14:18 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Emanuel.Staudinger@dlr.de, usrp-users@lists.ettus.com
References: <f4069dea5a274141ae4b9952254b177a@dlr.de>
 <84c7f9ba-91c4-58f2-f4e0-94828ac2a5bc@gmail.com>
 <de238b3f8bf447be9393e5b22d13b97f@dlr.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <de238b3f8bf447be9393e5b22d13b97f@dlr.de>
Message-ID-Hash: RZJC4EG6NGJOJQXHNSZHJW6GMF5Y6CZL
X-Message-ID-Hash: RZJC4EG6NGJOJQXHNSZHJW6GMF5Y6CZL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200 group delay variations
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RZJC4EG6NGJOJQXHNSZHJW6GMF5Y6CZL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6148679500017333500=="

This is a multi-part message in MIME format.
--===============6148679500017333500==
Content-Type: multipart/alternative;
 boundary="------------xaVdOKo43O111Vmku70aTysT"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------xaVdOKo43O111Vmku70aTysT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-09 01:32, Emanuel.Staudinger@dlr.de wrote:
>
> Hi Marcus,
>
> Thanks for thoughts on this. We also believe that is has to do with=20
> the calibration mechanism of the AD9361, due to the very low=20
> sub-sample delay change.
>
> Any thoughts from the Ettus team? Is there a way to retrieve=20
> calibration information from the RFIC in UHD? This could help to=20
> identify if there is a correlation between calibration setting and the=20
> group delay change.
>
> Best regards,
>
> Emanuel
>
>
Since UHD is an API that strives to provide an *abstraction* from the=20
hardware, the RFIC details are not exposed
 =C2=A0 through the usual UHD API.=C2=A0=C2=A0 You will need to dive into=
 the UHD=20
source code=C2=A0 and into the low-level AD9361
 =C2=A0 driver to extract any of that information.


--------------xaVdOKo43O111Vmku70aTysT
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-09 01:32,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:Emanuel.Staudi=
nger@dlr.de">Emanuel.Staudinger@dlr.de</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:de238b3f8bf447be9393e5b22d13b97f@dlr.de">
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}p.MsoListParagraph, li.MsoListParagraph, div.=
MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}p.msonormal0, li.msonormal0, div.msono=
rmal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.E-MailFormatvorlage19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}span.E-MailFormatvorlage20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0cm;}ul
	{margin-bottom:0cm;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi Marcus,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks for thoughts on this. We also
          believe that is has to do with the calibration mechanism of
          the AD9361, due to the very low sub-sample delay change.<o:p></=
o:p></p>
        <p class=3D"MsoNormal">Any thoughts from the Ettus team? Is there
          a way to retrieve calibration information from the RFIC in
          UHD? This could help to identify if there is a correlation
          between calibration setting and the group delay change.<o:p></o=
:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
        <p class=3D"MsoNormal">Emanuel<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <br>
      </div>
    </blockquote>
    Since UHD is an API that strives to provide an *abstraction* from
    the hardware, the RFIC details are not exposed<br>
    =C2=A0 through the usual UHD API.=C2=A0=C2=A0 You will need to dive i=
nto the UHD
    source code=C2=A0 and into the low-level AD9361<br>
    =C2=A0 driver to extract any of that information.<br>
    <br>
    <br>
  </body>
</html>

--------------xaVdOKo43O111Vmku70aTysT--

--===============6148679500017333500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6148679500017333500==--
