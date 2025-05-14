Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA506AB7677
	for <lists+usrp-users@lfdr.de>; Wed, 14 May 2025 22:12:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 599453861C4
	for <lists+usrp-users@lfdr.de>; Wed, 14 May 2025 16:12:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747253538; bh=16J3i8TE4enx6AqQ3nz57kg5F2rQ7CBRlg07a+qwoUk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Qtpou1ZziUrX5IluKNcae6YmXOGP97aw5gNg2nYm9/+Dj+vfDZu0XlBFBzSOwSkU2
	 1Rgu+DjudZbmb6wvz5TUpayGRNP5CeRBD1Nv51skrX4ngNh9Gym97dhLJdoWMk50p/
	 HC5cViGypZROtgmqLhTh5XoRji8Lv0apnogxdzOCBPTluVRzJ3OUk+9IuPU/P+k6uh
	 lDBgdKmrgEgDdT5p7ghwZ9TAj3ZIV1JqpMbFFxx/kjeMJbUNybmXx+fNsLig0hrSza
	 KjafdWeQL6AXWUnkCGJg2TklTGFSra6k3YSA9ylK3Sa9QqRLFuU1eO7Mvrv0wwxNQl
	 i68GKhMnZ4uvg==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 4B371385A87
	for <usrp-users@lists.ettus.com>; Wed, 14 May 2025 16:11:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mCqJUoax";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ace94273f0dso35314766b.3
        for <usrp-users@lists.ettus.com>; Wed, 14 May 2025 13:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747253497; x=1747858297; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yqB9Iz/S0zOdL6j3keKo3Gouk5eLVUt6rVVQFOTNLN4=;
        b=mCqJUoax0axn32y83Yt6xe6NgB2ZyQu4X/GHYlQR3QhN6WD2NnCZeXubI40fb6kLWz
         ZlaV9YnTl8OIVIoduoI41rV5T/vdDifMKja5ezZiuJuJFSQ7PvMHQg5Y267SVDfSLnxD
         M2pdgDDGj54YHF/omKPGQPB2B/k1xo3364JMpQ9bdUg4omn6hnwIVn73ZTt+bXYLZOOk
         +/r4D8Wmvdday5bV/aFhYIm2YviSRa+hO1Z8TQjt0rzx0uB0QYHq+ycZYIbC5GVtpGge
         2O15YzMy4HeMUdzYjhsjvdIhv4XyNxAKTiERrgx/yzYanEW6+z1y8fz5PG9PBcj6hVOr
         9lpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747253497; x=1747858297;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yqB9Iz/S0zOdL6j3keKo3Gouk5eLVUt6rVVQFOTNLN4=;
        b=wYlklMdyzqCFNjG77KyYQwWdrpvEXrqvxYKuio8ECFs5NgRAtDmvmJ6088x+dqWcRC
         FBfW1OSZl5lhZ0OyMHrKMHDsEqh2im/gSRUF8qwU6URVphDr3+YNansImhIu+mVFgIkW
         xlM7lKhAG5/LdEn/TzquSJuQnqSbc7ixvCMDVnX4muW4/Teuq8KRYcMBo84PwOANw0fG
         dIB6v4p2Gh+dZb+rWUp0QiLap+MG9AV3Nc74purHtcCDPnle5I7yoE58rDnYr8TWVf/4
         Z2Ei/JHirMpcVqC6Jd9mLX4AboYCeQPz6JA8dkitwCdG9848UfshJGN3m65JtAz6UmpL
         7yNA==
X-Forwarded-Encrypted: i=1; AJvYcCXedqJ9gpaq8i7x6kXKFOjIdqzIB1FWpIcQj9pXHZBrULsVvmLkXlERRh7PAsPJ4/HqpDUzNcyB+/YW@lists.ettus.com
X-Gm-Message-State: AOJu0Yxe737CzoqB34kD/+UnG4F/MWJPP2ch87Al8RMYUBBI9V2Zj3Ut
	a1zRT6A8VC/5jbVXTor2/7sAi8kdVbLXav3VATmGcQkLVHCM1l/1HGdqvw==
X-Gm-Gg: ASbGnctF566zbRnJgqK1SG4Vbxvirq+0xeqJ6nCoKaQfG2MBHof7TQeRzQeXMwIJ1vd
	UZHiPeFhVr0/FYbWGKnMEBN4XPh+su+S3282pJLnH+QUL1e3/II4lt8N8umE3gOAwQ7Tgaa5bqz
	zWp45w7+O1S2FwKjZLe5dNvhkGuCqcI9OO2xcIormpytg7EiIV+khPHdUci4ytCMBs5VuUSnobP
	3RevxdbZ3SvGNN+a9KWAGkz91BSXC9pfsEUakl18qivVCYmLpiWpjuLBXH+XUxr0uV2Kvk2wxzX
	02Wy92miW7lhDueBu0yj1T/zHI5xzVHRUcPNH1rTn4NliuuYD7/erbJ1I5oaQggS8MNr1KSTlbz
	3FhPojvKVqqfyTKq/L4KtErhcpnBnvmqCwNwqaEcBrA==
X-Google-Smtp-Source: AGHT+IFzXXh6TzBM2Wiebgy3O66eYm5vKhGScf1o1hfNDLJyEdzTQmoAhFIrB7FtmYhc0jDQjxMzkw==
X-Received: by 2002:a17:907:7f28:b0:ad1:f880:5796 with SMTP id a640c23a62f3a-ad4f72411ffmr412361066b.33.1747253496881;
        Wed, 14 May 2025 13:11:36 -0700 (PDT)
Received: from [192.168.10.55] (host-95-249-235-24.retail.telecomitalia.it. [95.249.235.24])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad2197bd224sm1002188066b.148.2025.05.14.13.11.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 13:11:36 -0700 (PDT)
Message-ID: <ef669644-e4c8-4b3a-93bf-1f65b1f89763@gmail.com>
Date: Wed, 14 May 2025 22:11:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Amsel, Lars" <lars.amsel@emerson.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <voC9QJV0N8NKBLnaXrJNzT6RLg22DVDfDllhAETU7A@lists.ettus.com>
 <CO6PR10MB56014184DD4F8BB453E47EAA8C96A@CO6PR10MB5601.namprd10.prod.outlook.com>
Content-Language: en-GB
From: carmix <carmixdev@gmail.com>
In-Reply-To: <CO6PR10MB56014184DD4F8BB453E47EAA8C96A@CO6PR10MB5601.namprd10.prod.outlook.com>
Message-ID-Hash: PUUURUZAZ45J2PLEIF24B2VOFO564JUO
X-Message-ID-Hash: PUUURUZAZ45J2PLEIF24B2VOFO564JUO
X-MailFrom: carmixdev@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Tx example with RFNoC missing
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PUUURUZAZ45J2PLEIF24B2VOFO564JUO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8819973475472274268=="

This is a multi-part message in MIME format.
--===============8819973475472274268==
Content-Type: multipart/alternative;
 boundary="------------tCh3iDYd0Jun3S5PIONVKVPB"
Content-Language: en-GB

This is a multi-part message in MIME format.
--------------tCh3iDYd0Jun3S5PIONVKVPB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Yes, it is a good starting point indeed, but for example if one doesn't=20
use the replay block it is not clear how to do the frequency tune.

I had to discover myself that it is possible to send the tune request=20
action also from the streamer and not from the replay block.

For someone starting with the project it is not so clear.


Regards,


C.

On 13/05/2025 08:52, Amsel, Lars wrote:
>
> Hi,
>
> Have you had a look into rfnoc_replay_samples_from_file.cpp? It shows=20
> basic TX setup and also utilizes the replay block.
>
> Regards
>
> Lars
>
> *NI***
>
> =09
>
> =09
>
> =09
>
> *Lars Amsel*
> Principal Software Engineer
> SDR
> Test & Measurement Group
>
> +49351206931427 | _ni.com <https://www.ni.com/>_
>
> *From:*carmixdev@gmail.com <carmixdev@gmail.com>
> *Sent:* Montag, 12. Mai 2025 15:48
> *To:* usrp-users@lists.ettus.com
> *Subject:* [EXTERNAL] [USRP-users] Tx example with RFNoC missing
>
> Hi, I noticed that on the UHD repository examples there isn=E2=80=99t a=
n=20
> example that shows how to setup a TX streaming using RFNoC. There is=20
> the example for the RX but not the one with TX.
>
> There=E2=80=99s an example for the replay block, but it can=E2=80=99t b=
e used for=20
> transmitting a big file for instance.
>
> I searched through the mailing list and found some posts of user that=20
> attached some rfnoc_tx_from_file, but they did it in 2018 and it was=20
> on UHD 3, it obviously doesn=E2=80=99t work on UHD 4.
>
> Could someone post a simple example of transmitting from file using=20
> RFNoC 4?
>
> Maybe it is considered trivial, but it could help as a reference.
>
> Personally I tried to write a sample code, but as I stated in another=20
> thread I=E2=80=99m not sure it is working correctly.
>
> Could anyone help here?
>
--------------tCh3iDYd0Jun3S5PIONVKVPB
Content-Type: multipart/related;
 boundary="------------RpiC0b0kpL5cFXI0oEKGZYcG"

--------------RpiC0b0kpL5cFXI0oEKGZYcG
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Yes, it is a good starting point indeed, but for example if one
      doesn't use the replay block it is not clear how to do the
      frequency tune.</p>
    <p>I had to discover myself that it is possible to send the tune
      request action also from the streamer and not from the replay
      block.</p>
    <p>For someone starting with the project it is not so clear.</p>
    <p><br>
    </p>
    <p>Regards,</p>
    <p><br>
    </p>
    <p>C.<br>
    </p>
    <div class=3D"moz-cite-prefix">On 13/05/2025 08:52, Amsel, Lars wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CO6PR10MB56014184DD4F8BB453E47EAA8C96A@CO6PR10MB5601.namprd10=
=2Eprod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
=2Eshape {behavior:url(#default#VML);}
</style><![endif]-->
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Aptos;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US"
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US">Hi,<o:p=
></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US"><o:p>=C2=
=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US">Have yo=
u
            had a look into rfnoc_replay_samples_from_file.cpp? It shows
            basic TX setup and also utilizes the replay block.
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US"><o:p>=C2=
=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US">Regards=
<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US"><o:p>=C2=
=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US">Lars<o:=
p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US"><o:p>=C2=
=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US"><o:p>=C2=
=A0</o:p></span></p>
        <table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0"
          cellpadding=3D"0" width=3D"450"
          style=3D"width:337.5pt;border-collapse:collapse">
          <tbody>
            <tr style=3D"height:75.0pt">
              <td width=3D"100" valign=3D"top"
style=3D"width:75.0pt;padding:.75pt .75pt .75pt .75pt;height:75.0pt">
                <table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D=
"0"
                  cellpadding=3D"0" width=3D"100"
                  style=3D"width:75.0pt;border-collapse:collapse">
                  <tbody>
                    <tr style=3D"height:60.0pt">
                      <td width=3D"80"
style=3D"width:60.0pt;padding:.75pt .75pt .75pt .75pt;height:60.0pt">
                        <p class=3D"MsoNormal" align=3D"center"
                          style=3D"text-align:center"><b><span
style=3D"font-size:27.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black"><img
                                width=3D"90" height=3D"90"
                                style=3D"width:.9375in;height:.9375in"
                                id=3D"Picture_x0020_1322068996"
src=3D"cid:part1.eTVwkmT5.lRB69NE8@gmail.com" alt=3D"NI" class=3D""></spa=
n></b><b><span
style=3D"font-size:27.0pt;font-family:&quot;Arial&quot;,sans-serif"><o:p>=
</o:p></span></b></p>
                      </td>
                      <td width=3D"20"
style=3D"width:15.0pt;padding:.75pt .75pt .75pt .75pt;height:60.0pt">
                        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">=C2=A0<o:p></o:p></span></p>
                      </td>
                    </tr>
                    <tr style=3D"height:15.0pt">
                      <td width=3D"80"
style=3D"width:60.0pt;padding:.75pt .75pt .75pt .75pt;height:15.0pt">
                        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">=C2=A0<o:p></o:p></span></p>
                      </td>
                      <td width=3D"20"
style=3D"width:15.0pt;padding:.75pt .75pt .75pt .75pt;height:15.0pt">
                        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">=C2=A0<o:p></o:p></span></p>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
              <td width=3D"350" valign=3D"top"
style=3D"width:262.5pt;padding:.75pt .75pt .75pt .75pt;height:75.0pt">
                <p class=3D"MsoNormal" style=3D"margin-bottom:4.5pt"><b><=
span
                      lang=3D"EN-US"
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">Lars
                      Amsel</span></b><span lang=3D"EN-US"
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black"><br>
                    Principal Software Engineer<br>
                    SDR<br>
                    Test &amp; Measurement Group<o:p></o:p></span></p>
                <p class=3D"MsoNormal" style=3D"margin-bottom:4.5pt"><spa=
n
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">+4935=
1206931427
                    |
                  </span><u><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black"><a
                        href=3D"https://www.ni.com/" target=3D"_blank"
                        title=3D"https://www.ni.com"
                        moz-do-not-send=3D"true"><span style=3D"color:bla=
ck">ni.com</span></a></span></u><span
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black"><o:p></o:p></span></p>
              </td>
            </tr>
          </tbody>
        </table>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
><o:p>=C2=A0</o:p></span></p>
        <div
style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm 0cm=
 0cm">
          <p class=3D"MsoNormal"><b><span lang=3D"EN-US"
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">Fro=
m:</span></b><span
              lang=3D"EN-US"
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:carmix=
dev@gmail.com">carmixdev@gmail.com</a> <a class=3D"moz-txt-link-rfc2396E"=
 href=3D"mailto:carmixdev@gmail.com">&lt;carmixdev@gmail.com&gt;</a>
              <br>
              <b>Sent:</b> Montag, 12. Mai 2025 15:48<br>
              <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> [EXTERNAL] [USRP-users] Tx example with
              RFNoC missing<o:p></o:p></span></p>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><spa=
n
style=3D"font-size:1.0pt;font-family:&quot;Arial&quot;,sans-serif;color:w=
hite"><o:p></o:p></span></p>
        </div>
        <div>
          <p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><spa=
n
              style=3D"font-size:1.0pt;color:white"><o:p></o:p></span></p=
>
        </div>
        <p>Hi, I noticed that on the UHD repository examples there isn=E2=
=80=99t
          an example that shows how to setup a TX streaming using RFNoC.
          There is the example for the RX but not the one with TX.<o:p></=
o:p></p>
        <p>There=E2=80=99s an example for the replay block, but it can=E2=
=80=99t be used
          for transmitting a big file for instance.<o:p></o:p></p>
        <p>I searched through the mailing list and found some posts of
          user that attached some rfnoc_tx_from_file, but they did it in
          2018 and it was on UHD 3, it obviously doesn=E2=80=99t work on =
UHD 4.<o:p></o:p></p>
        <p>Could someone post a simple example of transmitting from file
          using RFNoC 4?<o:p></o:p></p>
        <p>Maybe it is considered trivial, but it could help as a
          reference.<o:p></o:p></p>
        <p><img border=3D"0" id=3D"_x0000_i1025"
src=3D"data:text/plain;base64,I2luY2x1ZGUgPGlvc3RyZWFtPgojaW5jbHVkZSA8dWh=
kL3R5cGVzL3R1bmVfcmVxdWVzdC5ocHA+CiNpbmNsdWRlIDx1aGQvdXNycC9tdWx0aV91c3Jw=
LmhwcD4KI2luY2x1ZGUgPHVoZC91dGlscy9zYWZlX21haW4uaHBwPgojaW5jbHVkZSA8dWhkL=
3V0aWxzL3RocmVhZC5ocHA+CiNpbmNsdWRlIDx1aGQvcmZub2MvYmxvY2tfaWQuaHBwPgojaW=
5jbHVkZSA8dWhkL3Jmbm9jL2R1Y19ibG9ja19jb250cm9sLmhwcD4KI2luY2x1ZGUgPHVoZC9=
yZm5vYy9tYl9jb250cm9sbGVyLmhwcD4KI2luY2x1ZGUgPHVoZC9yZm5vYy9yYWRpb19jb250=
cm9sLmhwcD4KI2luY2x1ZGUgPHVoZC9yZm5vYy9yZXBsYXlfYmxvY2tfY29udHJvbC5ocHA+C=
iNpbmNsdWRlIDx1aGQvcmZub2NfZ3JhcGguaHBwPgojaW5jbHVkZSA8ZnN0cmVhbT4KCiNkZW=
ZpbmUgQlVGRkVSU0laRSA4MTkyCnVzaW5nIG5hbWVzcGFjZSBzdGQ7CgppbnQgVUhEX1NBRkV=
fTUFJTihpbnQgYXJnYywgY2hhciogYXJndltdKQp7CiAgICBjb25zdCBkb3VibGUgcmF0ZSA9=
IDYuMjVlNjsgICAgICAgICAgICAgICAgICAgICAvLyBTYW1wbGUgcmF0ZQogICAgY29uc3QgZ=
G91YmxlIGZyZXEgPSA4NjguNWU2OyAgICAgICAgICAgICAgICAgICAvLyBDZW50ZXIgZnJlcX=
VlbmN5CiAgICBjb25zdCBkb3VibGUgZ2FpbiA9IDEwOyAgICAgICAgICAgICAgICAgICAgICA=
vLyBUWCBnYWluCiAgICBjb25zdCBzdHJpbmcgZGV2aWNlX2FkZHIgPSAidHlwZT14MzAwLGFk=
ZHI9MTkyLjE2OC40MC4yIjsgICAgICAgICAgLy8gRGVmYXVsdCAoZmlyc3QgZGV2aWNlKQogI=
CAgY29uc3Qgc3RyaW5nIGZpbGVuYW1lID0gInJhd2lxLnNjMTYiOwogICAgCiAgICB1aGQ6On=
Jmbm9jOjpyZm5vY19ncmFwaDo6c3B0ciBncmFwaDsKICAgIHVoZDo6cmZub2M6OmJsb2NrX2l=
kX3QgcmFkaW9fY29udHJvbF9pZDsKICAgIHVoZDo6cmZub2M6OnJhZGlvX2NvbnRyb2w6OnNw=
dHIgcmFkaW9fY29udHJvbCA7CiAgICB1aGQ6OnJmbm9jOjpibG9ja19pZF90IGR1Y19jb250c=
m9sX2lkOwogICAgdWhkOjpyZm5vYzo6ZHVjX2Jsb2NrX2NvbnRyb2w6OnNwdHIgZHVjX2Nvbn=
Ryb2wgOwoKICAgIGdyYXBoID0gdWhkOjpyZm5vYzo6cmZub2NfZ3JhcGg6Om1ha2UoZGV2aWN=
lX2FkZHIuY19zdHIoKSk7CgogICAgcmFkaW9fY29udHJvbF9pZCA9IHVoZDo6cmZub2M6OmJs=
b2NrX2lkX3QoMCwgIlJhZGlvIiwgMSkgOwogICAgcmFkaW9fY29udHJvbCA9IGdyYXBoLT5nZ=
XRfYmxvY2s8dWhkOjpyZm5vYzo6cmFkaW9fY29udHJvbD4ocmFkaW9fY29udHJvbF9pZCkgOw=
ogICAgcmFkaW9fY29udHJvbC0+c2V0X3R4X2dhaW4oZ2FpbiwwKTsKICAgIHJhZGlvX2NvbnR=
yb2wtPnNldF90eF9mcmVxdWVuY3koZnJlcSwwKTsKICAgIGlmKCAhcmFkaW9fY29udHJvbCAp=
IHsKICAgICAgICBjb3V0IDw8ICJFUlJPUjogRmFpbGVkIHRvIGZpbmQgUmFkaW8gQmxvY2sgQ=
29udHJvbGxlciEiIDw8IGVuZGwgOwogICAgfQogICAgY291dCA8PCAiVXNpbmcgcmFkaW8gIi=
A8PCByYWRpb19jb250cm9sX2lkIDw8IGVuZGwgOwoKICAg"
            moz-do-not-send=3D"true">Personally I tried to write a sample=

          code, but as I stated in another thread I=E2=80=99m not sure it=
 is
          working correctly.<o:p></o:p></p>
        <p>Could anyone help here?<o:p></o:p></p>
      </div>
    </blockquote>
  </body>
</html>
--------------RpiC0b0kpL5cFXI0oEKGZYcG
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Id: <part1.eTVwkmT5.lRB69NE8@gmail.com>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAZAAAAGQCAYAAACAvzbMAAAACXBIWXMAAAsTAAALEwEAmpwY
AAAE9GlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlk
PSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9i
ZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgOS4xLWMwMDIgNzkuYTZhNjM5
NjhhLCAyMDI0LzAzLzA2LTExOjUyOjA1ICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9
Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRl
c2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20v
eGFwLzEuMC8iIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIg
eG1sbnM6cGhvdG9zaG9wPSJodHRwOi8vbnMuYWRvYmUuY29tL3Bob3Rvc2hvcC8xLjAvIiB4
bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RF
dnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZUV2ZW50IyIg
eG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgMjUuOSAoTWFjaW50b3NoKSIgeG1w
OkNyZWF0ZURhdGU9IjIwMjQtMDctMDNUMTE6NTk6MTQrMDI6MDAiIHhtcDpNb2RpZnlEYXRl
PSIyMDI0LTA3LTAzVDExOjU5OjU4KzAyOjAwIiB4bXA6TWV0YWRhdGFEYXRlPSIyMDI0LTA3
LTAzVDExOjU5OjU4KzAyOjAwIiBkYzpmb3JtYXQ9ImltYWdlL3BuZyIgcGhvdG9zaG9wOkNv
bG9yTW9kZT0iMyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDoxMTUzN2E0ZS04Zjk3LTQ5
OTItOTI1ZS02ZjhkZDFkNTA4YWUiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MTE1Mzdh
NGUtOGY5Ny00OTkyLTkyNWUtNmY4ZGQxZDUwOGFlIiB4bXBNTTpPcmlnaW5hbERvY3VtZW50
SUQ9InhtcC5kaWQ6MTE1MzdhNGUtOGY5Ny00OTkyLTkyNWUtNmY4ZGQxZDUwOGFlIj4gPHht
cE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY3JlYXRlZCIg
c3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDoxMTUzN2E0ZS04Zjk3LTQ5OTItOTI1ZS02Zjhk
ZDFkNTA4YWUiIHN0RXZ0OndoZW49IjIwMjQtMDctMDNUMTE6NTk6MTQrMDI6MDAiIHN0RXZ0
OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCAyNS45IChNYWNpbnRvc2gpIi8+IDwv
cmRmOlNlcT4gPC94bXBNTTpIaXN0b3J5PiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRG
PiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pigfu+MAAFg9SURBVHic7d13eFxn
mffx7ynTZ9SLZcu23Etc49ixkzg9JCGN0CEsnaUssMAC20JfYNldlqUu7PLSlxI6KSSk92o7
jnuVZcuyujSafur7xxnJsuMiHUtW8f25LmETa+Y8085vnnYfhd/efhdQCzgIIYQQp6cCzTpw
w1i3RAghxISzUgUOj3UrhBBCTDgH1bFugRBCiIlJAkQIIYQvEiBCCCF8kQARQgjhiwSIEEII
XyRAhBBC+CIBIoQQwhcJECGEEL5IgAghhPBFAkQIIYQvEiBCCCF8kQARQgjhiwSIEEIIXyRA
hBBC+CIBIoQQwhcJECGEEL5IgAghhPBFAkQIIYQvEiBCCCF8kQARQgjhiwSIEEIIXyRAhBBC
+CIBIoQQwhcJECGEEL5IgAghhPBFAkQIIYQvEiBCCCF8kQARQgjhiwSIEEIIXyRAhBBC+CIB
IoQQwhcJECGEEL5IgAghhPBFAkQIIYQvEiBCCCF8kQARQgjhiwSIEEIIXyRAhBBC+CIBIoQQ
whcJECGEEL5IgAghhPBFAkQIIYQvEiBCCCF8kQARQgjhiwSIEEIIXyRAhDgV1RnrFggxbkmA
CHEyCpSYOuB6/0cIcQwJECFORLeosDS+2DmVkKuCao11i4QYdyRAhDieAuByc6qEy/IJbs6W
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
oAIH/j/L7ZCFIewZrAAAAABJRU5ErkJggg==

--------------RpiC0b0kpL5cFXI0oEKGZYcG--

--------------tCh3iDYd0Jun3S5PIONVKVPB--

--===============8819973475472274268==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8819973475472274268==--
