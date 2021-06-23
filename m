Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA5F3B1F4E
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jun 2021 19:19:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E2C19383E9E
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jun 2021 13:19:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XJtrCQAq";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 12A47384335
	for <usrp-users@lists.ettus.com>; Wed, 23 Jun 2021 13:16:49 -0400 (EDT)
Received: by mail-qk1-f176.google.com with SMTP id o6so7098509qkh.4
        for <usrp-users@lists.ettus.com>; Wed, 23 Jun 2021 10:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=xp7U1ghe0GE7MAyOgoM9bWXiDZuLNSO9zjaHvP2lVPY=;
        b=XJtrCQAqUzyGXz0cMavvs9Pz1T+JhFMVbeJJ60QFoFC+EvObzPGeqCtGTjZ+3W+6oQ
         Van66XH/hB5MLDrfpzzL3bXBDoioy67caLOajEIjt5wBdPlykLA2v9vEoearsZbOUptx
         NyfoLBAFoY3BjFiICbsZDAimlILVZJ24sRN8oMDQB7+WhOzc4HdwGUCf9468yycqDTWL
         Wa2jsfvI56qKNBa0gDjyNzI8c4JIgZsIGKTLlrWng0iFmBkc0BT5IWKBJTzU2R+nHE7c
         nDQq2zFZSMV+hwP4TjCClrAtcnZmqMSFxp/op++++neM1HJZVY0f3n9JFGUI1PtaXAc3
         RzbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=xp7U1ghe0GE7MAyOgoM9bWXiDZuLNSO9zjaHvP2lVPY=;
        b=sbsVBuknWsde2Ws52QiNwb/hJ6z+rsifZ9Cw5ZV3DHny/zJKA7Lr+nQY6VSuCwWlG1
         OaW1HdslmRWRh92o53aV9LVnhhWOdxcKpye/VEUckIlmnvebgkus+KJqeGI+zMws/Sdt
         /XF+vGHK1KyOg6XP1/Yk4IOBnKiTU7udOf0NUiorihRRZ0TAnwWK+/ifxu6S/lL0sHQ6
         U1sgkcZ52eF4Sr9DmEXWQTUJ10qZ+bRzeBVoGNTjW8YNkDzAnTzC037gOl12qX9bbJnK
         RVtebQ1l5GzT4q9doH232huq9R3+rqt6Zqe4pc3fPCcYwZaOrpoHu2P41b84c0PNNuz+
         1QkA==
X-Gm-Message-State: AOAM531bLpTHxB/JvtWKy8hX/wce7ExHJn9Yl27v8udGJxr0c46Z1oV7
	DlJEDJQ8nDumbJPrzFthkpFUfxKMNMWugg==
X-Google-Smtp-Source: ABdhPJykZwn97okeNiQJ1m6KpfJrPHPttAGCDsivSboR4rE4ekb3oOm8qxY9Jwn1OiZLADzWlqV+kw==
X-Received: by 2002:a37:79c6:: with SMTP id u189mr1137728qkc.0.1624468609354;
        Wed, 23 Jun 2021 10:16:49 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id d9sm325908qko.110.2021.06.23.10.16.48
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Jun 2021 10:16:48 -0700 (PDT)
Message-ID: <60D36C7F.3020905@gmail.com>
Date: Wed, 23 Jun 2021 13:16:47 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV" <Carl.L.Wolsieffer@erdc.dren.mil>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <8324554fce67426fb14b18bdae01dbc1@erdc.dren.mil> <B2DC157F-B2E7-41B1-AFF9-C3EFD78A9FD9@gmail.com> <f213af2fc7f74d8693641ca55b265bf6@erdc.dren.mil> <26e308d40b4244ecbbe48a5c53a399bf@erdc.dren.mil> <60D24B01.6070203@gmail.com> <da56dd742aed402980cfe40bc4e34798@erdc.dren.mil>
In-Reply-To: <da56dd742aed402980cfe40bc4e34798@erdc.dren.mil>
Message-ID-Hash: I7YVKLW623QF67M6W4VXTS3G7K7D3NLZ
X-Message-ID-Hash: I7YVKLW623QF67M6W4VXTS3G7K7D3NLZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: intermittent TX error using DPDK and x310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I7YVKLW623QF67M6W4VXTS3G7K7D3NLZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0548720330787729088=="

This is a multi-part message in MIME format.
--===============0548720330787729088==
Content-Type: multipart/alternative;
 boundary="------------000604040509020206010300"

This is a multi-part message in MIME format.
--------------000604040509020206010300
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 06/22/2021 04:52 PM, Wolsieffer, Carl L. ERDC-RDE-CRL-NH CIV wrote:
>
> At lower rates, say 20Msps, the warning appears to go away outside of=20
> DPDK, but if I run it at 200Msps (outside of DPDK) it can still show=20
> up (along with a few U=E2=80=99s of course)
>
>
What MTU are you using at the higher rates?  This may be just a network=20
hardware issue, and your network hardware needs
  a bit of performance tweaking.

--------------000604040509020206010300
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 06/22/2021 04:52 PM, Wolsieffer,
      Carl L. ERDC-RDE-CRL-NH CIV wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:da56dd742aed402980cfe40bc4e34798@erdc.dren.mil"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Du=
tf-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Times New Roman \,serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">At lower rat=
es,
            say 20Msps, the warning appears to go away outside of DPDK,
            but if I run it at 200Msps (outside of DPDK) it can still
            show up (along with a few U=E2=80=99s of course)<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <br>
      </div>
    </blockquote>
    What MTU are you using at the higher rates?=C2=A0 This may be just a
    network hardware issue, and your network hardware needs<br>
    =C2=A0a bit of performance tweaking.<br>
  </body>
</html>

--------------000604040509020206010300--

--===============0548720330787729088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0548720330787729088==--
