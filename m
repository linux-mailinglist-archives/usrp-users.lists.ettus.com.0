Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BF1A67B66
	for <lists+usrp-users@lfdr.de>; Tue, 18 Mar 2025 18:53:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1459138612E
	for <lists+usrp-users@lfdr.de>; Tue, 18 Mar 2025 13:53:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742320429; bh=XLXCEus86uB5FOsbaUPgLzL5KOseIPriNr+4/JXhrrI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Mwmosw951D88/9+8lZD96ZAU0NHq91OQFL2jg91yyfcMXSHO7lF1wXpyWWJyA/uIy
	 1SaJ8gLZTu5ACcchM1T2VH+iLmlp8EYWKQeZ3oqF6DSPDkP0G/3y2uRc7rxR1ERaKj
	 efpQ3wCgN2waZHKjl+EByjZckaTJi+Zy+GLWc2j5fuph9Ah5jfCnKUrgHdsiKZaocj
	 iS4+JvgSVORYFOqBHV2Lx+EBu/cP23sUb0tiX+luRtu8WbDUt4s04prtJstBo9pv/H
	 kUc8+UvWKqu8AKtV4Qz8Vao5TWlr9w7ABJeS84TacJqIgEC6HydVOIV09ApJbNc4QQ
	 gsAv2uznZQ8eg==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 64404385E7E
	for <usrp-users@lists.ettus.com>; Tue, 18 Mar 2025 13:53:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZAoaYg3G";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-6ddcff5a823so42053456d6.0
        for <usrp-users@lists.ettus.com>; Tue, 18 Mar 2025 10:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742320386; x=1742925186; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MQjZO88cmeBDkJGxTlr2Q+/iWOxJON9cZpuvqU75cyc=;
        b=ZAoaYg3G0aci5FyxyuGN/5EXMGGflHCTud/tyz14CG9OXsVCP3YgdlQGlpxLpXT2l1
         K0xgCbEWdQueR5BEGtu/vRFlNT/9nx6hO9sgprelQTPNNGb6U7KKDW/HX59vYkub6fFt
         DAcJsD96iLfwiW0eo2ZttzbdZPthxZYIMEzUSMDAMdqt9BCP/goaEu6IjHXvIoKieDtw
         Miq3h3PaXoKSfyXW5cGhjyAELdcMQU2GnmpNuinxsrnLr5s6eT3Eafgli3PrwwI30C70
         TRxdSmdjgxtm5v2zH9cUEi/9oxWeA3BGl3cJn3VbZfa3kug5raKgkDjV464VG98mG148
         B22Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742320386; x=1742925186;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MQjZO88cmeBDkJGxTlr2Q+/iWOxJON9cZpuvqU75cyc=;
        b=Hvms3RDZ1Y2kSAtSqo2Oiwf0BTN2c6Ag0pCE+ynP00eT+lnyxFwRBwyWp4iV2/37Pv
         3IPGAWBBwi+/fAqDHUKbuBxW1/aS62enD8HScx1E+rBY850AfsJDl1yjGg7h1404g1dC
         CD2nnSClaRwPqFVM+y/BAF+byZem4r/p3c6Y9vXscSGLa02cvHiRlf6K+DoeEhuOudBs
         CELf6BRU9C2yXJjHoku1mBtR31c8se2CVsGDQ0PgiRTycWUjgnBdYfoKsLPoNCkR+uXY
         gohQ2ZowY2bSF2zQUIoP6VZ4oMRLQ6eOTiZcYIWt/vFhGd3mH5LL25GSZQ0QoXtKffMX
         MWQA==
X-Forwarded-Encrypted: i=1; AJvYcCVlIvOL7LFxKQPb9tl5NumYyRjBz/xWP+DQrLxwMtnDWUfoUQ5/Lgb4SkKOW4NvWOuZ6EG6Qv8wOIMi@lists.ettus.com
X-Gm-Message-State: AOJu0Yyov8A1RQil42VyLgR7n+EYLDWu88/xxiTr1id39aRduavdrMaW
	fvktRswbJ50wkI1Yh7p8oSWoQjheSYSJ4ggFmIlbe405ylgcZKBp
X-Gm-Gg: ASbGncs1ME4H5pmoLbVxGKnWURv5YE/Zc/wBykocXGLEfXlq1yurJMbTsrp6ACFi55Y
	JPxez5xBbLpRo+YFfoYnKPdrtSnAmpMEHTZue58N3bpv3yv3e7a98POLcZNUI+7eSH79RwfZ4E4
	J9vR/MbUGUedVdwX06qyJhHMnCONhYWWvgaEd3T5h7KU+3u9PHatD/auk8VcW1kU5uDutr3yUb0
	DxEdJJzBPNqTAIdSrIt+bS9Pxaja3SyOZF9DlrVUqnZMQKFxOqV/OL+Y8WG6DWGC/uPVNk5L+GZ
	prmmKH+wV2amvBojSHzc4c3EDtfO75+lJ3Qu1rr9XrIQAZq4S0a7izE=
X-Google-Smtp-Source: AGHT+IHwNOHRLvGwQf1SrpKUQOcIiQGuiwnEBeKeo6abYqu7l6TpJ2D5ZMAfZNbg3wl3wJYnB4bIkA==
X-Received: by 2002:a05:6214:d49:b0:6e6:602f:ef68 with SMTP id 6a1803df08f44-6eaea9e0a17mr265509166d6.10.1742320385696;
        Tue, 18 Mar 2025 10:53:05 -0700 (PDT)
Received: from [192.168.2.170] ([142.115.37.13])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6eade330ec4sm70055756d6.84.2025.03.18.10.53.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 10:53:05 -0700 (PDT)
Message-ID: <322c520a-ffff-4aa4-9b35-edb4ace0048d@gmail.com>
Date: Tue, 18 Mar 2025 13:52:54 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Mann, John - 0662 - MITLL" <mannj@ll.mit.edu>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <PH1P110MB1284A18AA8E3648865C3393B98DEA@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
 <CAB__hTTSg4sSkG8e=qEdH=45PK6-YjjJ1OzaHrSoz4kP1YnJZQ@mail.gmail.com>
 <PH1P110MB12840A71C2828F114E7C46B398DEA@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
 <618135a3-f5d7-4bc2-bf19-6f388e86a014@gmail.com>
 <PH1P110MB1284E44B4902108006F82AA398DEA@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PH1P110MB1284E44B4902108006F82AA398DEA@PH1P110MB1284.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: IKEHVZPHHAIOZLRJUHIQYGRHARGHSUS2
X-Message-ID-Hash: IKEHVZPHHAIOZLRJUHIQYGRHARGHSUS2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: How to record all 4 channels from an X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IKEHVZPHHAIOZLRJUHIQYGRHARGHSUS2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4585152493934095174=="

This is a multi-part message in MIME format.
--===============4585152493934095174==
Content-Type: multipart/alternative;
 boundary="------------0NJ3Qi4BqVzQO4MJKJ0LagUp"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0NJ3Qi4BqVzQO4MJKJ0LagUp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 18/03/2025 13:48, Mann, John - 0662 - MITLL wrote:
>
> Thanks Marcus,
>
> Your recommended syntax seems to have fixed my syntax and channel=20
> number errors.=C2=A0 I thought the subdev specs were set for each daugh=
ter=20
> board, and since each board has 2 channels, I had only been specifying=20
> 2 suibdevs for each.
>
> I was still getting this error:
>
> =C2=A0 File "/home/jo13815/./Record_4Chan_X410.py", line 60, in __init_=
_
>
> self.uhd_usrp_source_0.set_rx_agc(False, 0)
>
> RuntimeError: RuntimeError: NotImplementedError: set_rx_agc() is not=20
> supported on this radio!
>
> After commenting out the set_rx_agc function calls, the script now=20
> seems to run fine, and I get 4 data files.=C2=A0 I still need to check =
out=20
> the files to make sure they look correct, but they seem to be the=20
> correct size!
>
> John
>
If you leave that parameter at "Default" rather than explicitly=20
"Enabled" or "Disabled", the code to set the rx_agc won't
 =C2=A0 get generated.


> Try a subdev spec of:
>
> A:0 A:1 B:0 B:1
>
> Make sure you've set the source block to use 4 channels, also what=20
> device address and args are you using?
>
> Do you get any error messages?=C2=A0=C2=A0 Please share them here.
>

--------------0NJ3Qi4BqVzQO4MJKJ0LagUp
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 18/03/2025 13:48, Mann, John - 0662
      - MITLL wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PH1P110MB1284E44B4902108006F82AA398DEA@PH1P110MB1284.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
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
        <p class=3D"MsoNormal">Thanks Marcus,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Your recommended syntax seems to have fixe=
d
          my syntax and channel number errors.=C2=A0 I thought the subdev
          specs were set for each daughter board, and since each board
          has 2 channels, I had only been specifying 2 suibdevs for
          each.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I was still getting this error:<o:p></o:p>=
</p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">=C2=A0 File
          "/home/jo13815/./Record_4Chan_X410.py", line 60, in __init__<o:=
p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0
          self.uhd_usrp_source_0.set_rx_agc(False, 0)<o:p></o:p></p>
        <p class=3D"MsoNormal">RuntimeError: RuntimeError:
          NotImplementedError: set_rx_agc() is not supported on this
          radio!<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">After commenting out the set_rx_agc
          function calls, the script now seems to run fine, and I get 4
          data files.=C2=A0 I still need to check out the files to make s=
ure
          they look correct, but they seem to be the correct size!<o:p></=
o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">John</p>
      </div>
    </blockquote>
    If you leave that parameter at "Default" rather than explicitly
    "Enabled" or "Disabled", the code to set the rx_agc won't<br>
    =C2=A0 get generated.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:PH1P110MB1284E44B4902108006F82AA398DEA@PH1P110MB1284.NAMP110.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Try a subde=
v
          spec of:<br>
          <br>
          A:0 A:1 B:0 B:1<br>
          <br>
          Make sure you've set the source block to use 4 channels, also
          what device address and args are you using?<br>
          <br>
          Do you get any error messages?=C2=A0=C2=A0 Please share them he=
re.<br>
          <br>
          <o:p></o:p></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------0NJ3Qi4BqVzQO4MJKJ0LagUp--

--===============4585152493934095174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4585152493934095174==--
