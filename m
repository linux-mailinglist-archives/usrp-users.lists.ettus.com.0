Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0E876412C
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jul 2023 23:30:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 460FB384BEB
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jul 2023 17:30:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690407041; bh=AOWncXEELCHml8DRIpR2+zjR6BR3V0FbyRaR5Zr6oW8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=z7u0bigpnirn6lymyVnVmM74Z6LJvG5iG98GGVQHUEZjLRs/wFAd1gY4CVSF5gNo0
	 RuIeXFypNgYlTvNk2XuWJzYSUBuKGPwiQekqlwKBuRXGRRkPS5AJGDP/57KLzYdKgW
	 G/i5KxmlyFiPxI0x6it/U1Csv4m65EDEWCU9TuGNoyT211zJzGNgu/cz08LcbORptr
	 D/z6o+4AZxQJs3xJxMyFYxqXWfm1F+++Q6r+MkMir/hSDsfmQ7/CGs3IYGS20h0ei6
	 EIphhfYtxEROveYhau4Pj4BGI44Aedpk/bmkapeDkmKDWIxtQPYZ7th81vIvsOCEZC
	 CkmQRLbLeYrsg==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 74728384B02
	for <usrp-users@lists.ettus.com>; Wed, 26 Jul 2023 17:30:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YdUUb1lb";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-403ea0a50f7so1188731cf.1
        for <usrp-users@lists.ettus.com>; Wed, 26 Jul 2023 14:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690407003; x=1691011803;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p3P1zkEB232NRAe3sf8qMzZH4GeiQVGIBfa6z0i9KIc=;
        b=YdUUb1lboY9lQWe1dVh48AJdFXIDYrJuUQ+1k3YfeHhkwMP4DNkBgimAjmHEm6bCdS
         QvL+uAAaGndzGvQhu0YM0eV6Qeynqy266xHSh+btADremN9f8fI2iwyvkVct/x6cHo9v
         899WV72H3KLUFgkOMyRkgPLV3AAep4CIq/0M8yi9WebXf40cW/FpaKyX1sHsyu3g1tYk
         x6mCZpFM8lvd7he1LMwIrU7vu6AOr0X8jUR3HaPQ8NQcBisErb/KoKPbSs9hXrScqMOl
         teqhqNZSQS4NwW8sI2yDD9u3Xrqv3ANHNxR9QEK3cOw0tY94s31DjYYjGHiu4UIVXzjr
         i0Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690407003; x=1691011803;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=p3P1zkEB232NRAe3sf8qMzZH4GeiQVGIBfa6z0i9KIc=;
        b=hBI4xQ5gOFovHfVvDWUACCqoPmG8Db2xvBLcxTWpY1HlGG+/j981BxFMqW/Y4pZwU+
         CR3pDb+1wzk7ZBGbHyj4q3J+YHBfMC9/C9jDGfB2tUs8sXs/hSplb2LL47ry66YGF2uP
         bRF7n7QBjAcGOuSYPcWC1XuNkXTNB7WhabW2hABE2/Gmg0PREFKhlQfPhwxs8r7B8yuu
         tRftDEW2Q6SowkM3RI0YQeWGZ6yvc51B+zZV8/UmwvXkhMIocUWMn85JwUAq8396oZRz
         v7RMCvSLuhw2XKFrpv4p4VKngg1DjBCnYCsUTBGD4K8p7l4x6EFac21aqf36Us2rYrcx
         KLYQ==
X-Gm-Message-State: ABy/qLb6nE+iiTvuZEqmRJV+zaHajcWwJN4Vx1karD1s7Fb6T32bOyT+
	Jnw+/hRd1qZ/+a/goSku+QNyg2rkwFo=
X-Google-Smtp-Source: APBJJlHocpTvk2P0H4x35drhF+bx3y097eC3q087XbnkwRF6GGcfwtnQaJ4s55naB4Jzu5faWrcKcQ==
X-Received: by 2002:ac8:5b43:0:b0:403:9bcc:7c9a with SMTP id n3-20020ac85b43000000b004039bcc7c9amr4625362qtw.47.1690407002729;
        Wed, 26 Jul 2023 14:30:02 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id g8-20020ac87748000000b0040549add997sm4568595qtu.71.2023.07.26.14.30.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jul 2023 14:30:02 -0700 (PDT)
Message-ID: <ad84ae31-517b-89f3-c4b4-936343939747@gmail.com>
Date: Wed, 26 Jul 2023 17:29:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: David J Li <dli@mitre.org>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <PH0PR09MB7433546CE3D5D14F18D7005DA800A@PH0PR09MB7433.namprd09.prod.outlook.com>
 <85f24be9-3286-b80d-4eed-27cf5fae5bf7@gmail.com>
 <PH0PR09MB7433E43091B0FE111D4D2F74A800A@PH0PR09MB7433.namprd09.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PH0PR09MB7433E43091B0FE111D4D2F74A800A@PH0PR09MB7433.namprd09.prod.outlook.com>
Message-ID-Hash: AAD5P2KSHL5T452CTDXIHJLNCJLQWHSG
X-Message-ID-Hash: AAD5P2KSHL5T452CTDXIHJLNCJLQWHSG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: N310 correct choice for coherent 4 channel RX w/ 1 TX ?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AAD5P2KSHL5T452CTDXIHJLNCJLQWHSG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2152525363597449493=="

This is a multi-part message in MIME format.
--===============2152525363597449493==
Content-Type: multipart/alternative;
 boundary="------------eMC1YNIdmcQZN9t7QPvfkqLs"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------eMC1YNIdmcQZN9t7QPvfkqLs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/07/2023 17:17, David J Li wrote:
>
> Thanks for the suggestion, Marcus. The N320 and N321 are only both 2=20
> TX/RX devices as far as I can tell, so to satisfy 4 RX, 1 TX it looks=20
> like I would need 2 devices. Do you happen to know if there is any=20
> official documentation on using the external LO for the N310 hidden=20
> somewhere on the Ettus wiki? The 5 GHz external LO initial input=20
> requirement doesn=E2=80=99t seem to be documented anywhere as far as I =
can tell.
>
It is the case that there are some app-notes needed for the N310,=20
including the "5GHz Lore" -- this requirement comes, from
 =C2=A0 what I understand, from the AD9371 data-sheet.

There are folks on this list who have used the external LO on N310=20
successfully, including (I believe, please correct me if I'm
 =C2=A0 wrong) Rob Kossler.


> *From:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Wednesday, July 26, 2023 4:51 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [EXT] [USRP-users] Re: N310 correct choice for coherent 4=20
> channel RX w/ 1 TX ?
>
> ZjQcmQRYFpfptBannerEnd
>
> On 26/07/2023 16:47, David J Li wrote:
>
>     Hi all,
>
>     I=E2=80=99m currently using a USRP N310 for an application that req=
uires
>     coherent 4 channel RX w/ the ability to TX on 1 channel as well.
>     In the past, I=E2=80=99ve used USRP X310s to do 4 channel coherent =
RX and
>     found the calibration process for that to be relatively straight
>     forward using the TwinRX cards. It was simply phase aligned input
>     signals into each RX port and computing the constant phase offset
>     between channels and just adjusting for that factor in my
>     processing digitally.
>
>     My understanding is that this is more complicated w/ the N310. The
>     procedure as I understand is that during initialization the N310
>     external LO needs to be set at 5 GHz. After initialization, the
>     external LO can be set to 2 times the desired center freq, but
>     that there is still a 180 deg ambiguity between channels which
>     would need to be figured out via calibration w/ a phase aligned
>     input signal. Is this correct? Is there some way to shorten or
>     optimize this procedure?
>
> The phase ambiguity arises from the 2XLO mixing in the RFIC chips, and=20
> there's no way around it.
>
> You might look at the N320/N321 family for multi-channel coherent=20
> TX/RX applications.
>
>
>     Second question would be if the process is simpler on different
>     USRP models akin to how the X310 w/ TwinRX cards work where you
>     just need to compute some calibration values once at powerup and
>     afterwards those values hold pretty true for a long time as long
>     as your gain/center freq don=E2=80=99t change. Having the requireme=
nt of
>     being able to TX on at least 1 channel prevents me from using an
>     X310 w/ TwinRX cards.
>
>     Thanks,
>
>     -David
>
>
>
>     _______________________________________________
>
>     USRP-users mailing list --usrp-users@lists.ettus.com
>
>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>

--------------eMC1YNIdmcQZN9t7QPvfkqLs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/07/2023 17:17, David J Li wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PH0PR09MB7433E43091B0FE111D4D2F74A800A@PH0PR09MB7433.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}a:link, span.MsoHyperlink
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
	font-family:"Consolas",serif;
	mso-ligatures:standardcontextual;}span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Thanks for the suggestion, Marcus. The N32=
0
          and N321 are only both 2 TX/RX devices as far as I can tell,
          so to satisfy 4 RX, 1 TX it looks like I would need 2 devices.
          Do you happen to know if there is any official documentation
          on using the external LO for the N310 hidden somewhere on the
          Ettus wiki? The 5 GHz external LO initial input requirement
          doesn=E2=80=99t seem to be documented anywhere as far as I can =
tell.</p>
      </div>
    </blockquote>
    It is the case that there are some app-notes needed for the N310,
    including the "5GHz Lore" -- this requirement comes, from<br>
    =C2=A0 what I understand, from the AD9371 data-sheet.<br>
    <br>
    There are folks on this list who have used the external LO on N310
    successfully, including (I believe, please correct me if I'm<br>
    =C2=A0 wrong) Rob Kossler.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:PH0PR09MB7433E43091B0FE111D4D2F74A800A@PH0PR09MB7433.namprd09=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div style=3D"border:none;border-top:solid #E1E1E1
          1.0pt;padding:3.0pt 0in 0in 0in">
          <p class=3D"MsoNormal"><b><span style=3D"mso-ligatures:none">Fr=
om:</span></b><span
              style=3D"mso-ligatures:none"> Marcus D. Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
              <br>
              <b>Sent:</b> Wednesday, July 26, 2023 4:51 PM<br>
              <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> [EXT] [USRP-users] Re: N310 correct choice
              for coherent 4 channel RX w/ 1 TX ?<o:p></o:p></span></p>
        </div>
        <div>
          <p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><spa=
n
              style=3D"font-size:1.0pt"><o:p>=C2=A0</o:p></span></p>
          <p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><spa=
n
              style=3D"font-size:1.0pt"><o:p>=C2=A0</o:p></span></p>
          <p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><spa=
n
              style=3D"font-size:1.0pt;color:white">ZjQcmQRYFpfptBannerEn=
d<o:p></o:p></span></p>
        </div>
        <div>
          <p class=3D"MsoNormal">On 26/07/2023 16:47, David J Li wrote:<o=
:p></o:p></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">I=E2=80=99m currently using a USRP N310 =
for an
            application that requires coherent 4 channel RX w/ the
            ability to TX on 1 channel as well. In the past, I=E2=80=99ve=
 used
            USRP X310s to do 4 channel coherent RX and found the
            calibration process for that to be relatively straight
            forward using the TwinRX cards. It was simply phase aligned
            input signals into each RX port and computing the constant
            phase offset between channels and just adjusting for that
            factor in my processing digitally.
            <o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">My understanding is that this is more
            complicated w/ the N310. The procedure as I understand is
            that during initialization the N310 external LO needs to be
            set at 5 GHz. After initialization, the external LO can be
            set to 2 times the desired center freq, but that there is
            still a 180 deg ambiguity between channels which would need
            to be figured out via calibration w/ a phase aligned input
            signal. Is this correct? Is there some way to shorten or
            optimize this procedure?
            <o:p></o:p></p>
        </blockquote>
        <p class=3D"MsoNormal"><span style=3D"mso-ligatures:none">The pha=
se
            ambiguity arises from the 2XLO mixing in the RFIC chips, and
            there's no way around it.<br>
            <br>
            You might look at the N320/N321 family for multi-channel
            coherent TX/RX applications.<br>
            <br>
            <br>
            <o:p></o:p></span></p>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">Second question would be if the process
            is simpler on different USRP models akin to how the X310 w/
            TwinRX cards work where you just need to compute some
            calibration values once at powerup and afterwards those
            values hold pretty true for a long time as long as your
            gain/center freq don=E2=80=99t change. Having the requirement=
 of
            being able to TX on at least 1 channel prevents me from
            using an X310 w/ TwinRX cards.<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
          <p class=3D"MsoNormal">-David<o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"mso-ligatures:none"><br>
              <br>
              <o:p></o:p></span></p>
          <pre>_______________________________________________<o:p></o:p>=
</pre>
          <pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@li=
sts.ettus.com" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">u=
srp-users@lists.ettus.com</a><o:p></o:p></pre>
          <pre>To unsubscribe send an email to <a href=3D"mailto:usrp-use=
rs-leave@lists.ettus.com" moz-do-not-send=3D"true" class=3D"moz-txt-link-=
freetext">usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
        </blockquote>
        <p class=3D"MsoNormal"><span style=3D"mso-ligatures:none"><o:p>=C2=
=A0</o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------eMC1YNIdmcQZN9t7QPvfkqLs--

--===============2152525363597449493==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2152525363597449493==--
