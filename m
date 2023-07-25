Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B16BC761AF4
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jul 2023 16:08:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2848384BD7
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jul 2023 10:08:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690294110; bh=w5vuI7rXuupLcyfSjWwcp8py4gplGNoLmfCsn4+YwKk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nONLIRzVjVcNks8o3H/X3/+sef/ROcCCbhcH9VPLTAWe4bF/+sAR88tEvwI2ewNVM
	 5l7lngU+YSdum75BGgBGBWbxsO20+dTtN4H/5FrIlgXmTGeSP4lbrIGP6KmUg8WcVx
	 HLYOOjEntYXDaqj3B5a4CM61TGsaC9pBaHEq7ZU1H88WzwtfBn5CxbvRQWco4sevHQ
	 /TeVr8Min5PN+1kwkYyy18vD5KgaM76k3tt/NKTYTPV9oUwYaMrialHRYbyoH9H6VM
	 RgUOuqnhwiuw6HRm8JZJQ14BRytzIKlHv9H+6DeT5c+PeXNjBnQXKdQQ2OwmeCtvsu
	 qBaN0nM66NCHA==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 03928384B8A
	for <usrp-users@lists.ettus.com>; Tue, 25 Jul 2023 10:07:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="rMDBe8d4";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-766b22593faso390290085a.2
        for <usrp-users@lists.ettus.com>; Tue, 25 Jul 2023 07:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690294071; x=1690898871;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9d5ontjwLegK4RB/bqln8Ybcdk6f+VLRDZii9kf6mlw=;
        b=rMDBe8d4S+ueX2q6+BgWy9U5ZuOoPMo1wAWvZVIY3ejOb46HfRWcQNLCocbmWUEfC1
         IuQz2WanzCuOa+hJsJnK/D2c978goc2SIDhggMqTPqia/GeP4qg87DgY4oBvcgGxZsIv
         r4+k1bQ6MNy7lm3oGK/I4Wx3vfVNPxaX5XaVyeKkr0OJVXke9+IZBMe8VeTV3QTkUPuf
         +Cn6A8jX2MUduQOBpsA8MrS4BcottRXVl0E8N7feyy/lqdg9MX6OTqDk6PqbeVo6b5WH
         12pQrBARVzN+tYq+Vg1iFikoVwgaSAsN2xD3lT5Bb1ROUwKRTTLmvWrc0m5XznjYFmC6
         DIgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690294071; x=1690898871;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9d5ontjwLegK4RB/bqln8Ybcdk6f+VLRDZii9kf6mlw=;
        b=h8o6Ml1kTl8aEBgTPdIi87APDumJ2I6Psxvl1KSpyFdP2tMR/b4rukuaL7B+Yr98Gf
         PgLQovN+CS9pILlMv1ghG344G68SjkeuKNCm8ex+b8h1il0Mm2zEQNhnJEL9vokJRMxj
         fEIiPoB5AyOWO5l+RGFaheEnN7n2XaMHMdRJ0QtMmZeAS6wRiS/SlzVqXYAlXw0rDa3V
         EaPjD9cSnRIOJYl1fbjn5HB1rFgbfP2npCv2oR6iyZurm9bwKOdbKS1w63hpv2/toWWS
         hD1RQBXVgt5BAIz8HdjZmnu6nrTNM7XCm7x5yXwLAcexMvttE6XfxFJ57kCu1YBwu3It
         g1Uw==
X-Gm-Message-State: ABy/qLbFukciQIEkhXKfOhOBUQfsIWj+R/dojHP8fMNc6yvN6iCwv11j
	e7yAc/mMhG0Fc/wJ+Sz1hgk=
X-Google-Smtp-Source: APBJJlGz5U/N8wo0kExB1w3FBcodmf4vj1MPbeoeMb1Mwv2nlLELeJFnM5tErouzG+VxrSFFvVWjNQ==
X-Received: by 2002:a05:620a:472a:b0:768:1285:bdb9 with SMTP id bs42-20020a05620a472a00b007681285bdb9mr3144743qkb.30.1690294071512;
        Tue, 25 Jul 2023 07:07:51 -0700 (PDT)
Received: from [192.168.2.196] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id dc8-20020a05620a520800b00767c76b2c38sm3662658qkb.83.2023.07.25.07.07.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jul 2023 07:07:51 -0700 (PDT)
Message-ID: <869eda01-0b8b-58df-a404-d3787e1854a6@gmail.com>
Date: Tue, 25 Jul 2023 10:07:42 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: "Tillson, Bob (US)" <robert.tillson@baesystems.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <64bfd3da.c80a0220.fd289.5fc6SMTPIN_ADDED_MISSING@mx.google.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <64bfd3da.c80a0220.fd289.5fc6SMTPIN_ADDED_MISSING@mx.google.com>
Message-ID-Hash: U3N6MWKIJUH6TUUH333M7WGLELGDDUCU
X-Message-ID-Hash: U3N6MWKIJUH6TUUH333M7WGLELGDDUCU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Network Link Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U3N6MWKIJUH6TUUH333M7WGLELGDDUCU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7593946995543932922=="

This is a multi-part message in MIME format.
--===============7593946995543932922==
Content-Type: multipart/alternative;
 boundary="------------UbxnFPQqbO0PeEn807pr8xOL"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------UbxnFPQqbO0PeEn807pr8xOL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 25/07/2023 09:53, Tillson, Bob (US) wrote:
>
> Thanks for all your suggestions, turns out we do have multiple X310s=20
> actually not working all in the same rack, and its not just the NICs L
>
> Everything is appropriate and I kinda fell into an internet trap of=20
> many reports of X710s not forming link, which I was thinking there may=20
> be some hidden knowledge of how to overcome based on past experiences.
>
> Thanks again,
>
Thanks for replying, but your reply is a bit ambiguous.=C2=A0=C2=A0 Did y=
ou get=20
them going again?


> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Monday, July 24, 2023 1:31 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: Network Link Issue
>
> *_External Email Alert_*
>
> *This email has been sent from an account outside of the BAE Systems=20
> network.*
>
> Please treat the email with caution, especially if you are requested=20
> to click on a link, decrypt/open an attachment, or enable macros.=C2=A0=
 For=20
> further information on how to spot phishing, access =E2=80=9CCybersecur=
ity=20
> OneSpace Page=E2=80=9D and report phishing by clicking the button =E2=80=
=9CReport=20
> Phishing=E2=80=9D on the Outlook toolbar.
>
> On 24/07/2023 13:20, Tillson, Bob (US) via USRP-users wrote:
>
>     Yeah, I know it worked in the past, but I am unclear on the
>     pedigree since then=E2=80=A6
>
>     It does apply to all devices L
>
> Well, if you're not getting link lights on ANY of the devices plugged=20
> into that NIC, I'd be suspicious of the NIC.=C2=A0 If you aren't
> =C2=A0 getting link on any of them, either the NIC has been hard progra=
mmed=20
> (via ethtool) to the wrong PHY rate, or the NIC
> =C2=A0 is broken.
>
> Which cables are you using?=C2=A0 Which port on the X310 machines?=C2=A0=
=C2=A0 SFP0=20
> is 1GBit with the default firmware, and 10GBit
> =C2=A0 otherwise.
>
>
>
>     *From:* Marcus D. Leech <patchvonbraun@gmail.com>
>     <mailto:patchvonbraun@gmail.com>
>     *Sent:* Monday, July 24, 2023 1:09 PM
>     *To:* usrp-users@lists.ettus.com
>     *Subject:* [USRP-users] Re: Network Link Issue
>
>     *_External Email Alert_*
>
>     *This email has been sent from an account outside of the BAE
>     Systems network.*
>
>     Please treat the email with caution, especially if you are
>     requested to click on a link, decrypt/open an attachment, or
>     enable macros.=C2=A0 For further information on how to spot phishin=
g,
>     access =E2=80=9CCybersecurity OneSpace Page=E2=80=9D and report phi=
shing by
>     clicking the button =E2=80=9CReport Phishing=E2=80=9D on the Outloo=
k toolbar.
>
>     On 24/07/2023 12:16, Tillson, Bob (US) via USRP-users wrote:
>
>         I have 4 X310s running 3.14.1 (I know, an ancient version)
>         attached to a computer with Ubuntu 20.04.
>
>         The NIC is an intel X710 4 port NIC running latest driver
>         (2.22.20) and latest NVM firmware (7.1).
>
>         When I connect the dual ended NIC cable (typical ettus part),
>         I get no link lights on host or x310, so obviously no
>         connection to host.
>
>         I know this has happened in a very small number of cases
>         before, just hoping someone has maybe found a solution, like
>         the magic config setting on the X710 NIC or something like that=
?
>
>         Obviously I would like to not have to upgrade as it is quite
>         impactful at this moment and unclear it would actually fix the
>         problem.
>
>         Any thoughts?
>
>         Thanks,
>
>     To clarify -- this is a configuration that *stopped working*?=C2=A0=
 Or
>     a brand-new configuration that you're trying to get working?
>
>     Does this apply to all your devices, or just one?
>
>
>
>
>     _______________________________________________
>
>     USRP-users mailing list --usrp-users@lists.ettus.com
>
>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>

--------------UbxnFPQqbO0PeEn807pr8xOL
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 25/07/2023 09:53, Tillson, Bob (US)
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:64bfd3da.c80a0220.fd289.5fc6SMTPIN_ADDED_MISSING@mx.google.co=
m">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}@font-face
	{font-family:"Lucida Sans Unicode";
	panose-1:2 11 6 2 3 5 4 2 2 4;}@font-face
	{font-family:"Times New Roman \,serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}span.EmailStyle23
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
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks for a=
ll
            your suggestions, turns out we do have multiple X310s
            actually not working all in the same rack, and its not just
            the NICs
          </span><span style=3D"font-family:Wingdings;color:#1F497D">L</s=
pan><span
            style=3D"color:#1F497D"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Everything i=
s
            appropriate and I kinda fell into an internet trap of many
            reports of X710s not forming link, which I was thinking
            there may be some hidden knowledge of how to overcome based
            on past experiences.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks again=
,</span></p>
      </div>
    </blockquote>
    Thanks for replying, but your reply is a bit ambiguous.=C2=A0=C2=A0 D=
id you
    get them going again?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:64bfd3da.c80a0220.fd289.5fc6SMTPIN_ADDED_MISSING@mx.google.co=
m">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
              <b>Sent:</b> Monday, July 24, 2023 1:31 PM<br>
              <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> [USRP-users] Re: Network Link Issue<o:p></o=
:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <table class=3D"MsoNormalTable"
style=3D"width:97.0%;margin-left:5.4pt;border-collapse:collapse;border:no=
ne"
            width=3D"97%" cellspacing=3D"0" cellpadding=3D"0" border=3D"1=
">
            <tbody>
              <tr style=3D"height:21.2pt">
                <td style=3D"width:97.0%;border:solid red
                  1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.2pt"
                  width=3D"97%" valign=3D"top">
                  <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;margin-bottom:4.0pt;text-align:center;ba=
ckground:white"
                    align=3D"center">
                    <strong><u><span
style=3D"font-size:13.5pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:red">External
                          Email Alert</span></u></strong><span
                      style=3D"font-size:12.0pt"><o:p></o:p></span></p>
                </td>
              </tr>
              <tr style=3D"height:21.2pt">
                <td style=3D"width:15.0in;border:solid red
                  1.0pt;border-top:none;padding:0in 5.4pt 0in
                  5.4pt;height:21.2pt" width=3D"549" valign=3D"top">
                  <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:3.0pt;margin-right:0in;margin-bottom:4.0pt;ma=
rgin-left:0in;text-align:center;background:white"
                    align=3D"center">
                    <strong><span
style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:black">This
                        email has been sent from an account outside of
                        the BAE Systems network.</span></strong><o:p></o:=
p></p>
                  <p class=3D"MsoNormal"
                    style=3D"mso-margin-top-alt:auto;margin-bottom:4.0pt;=
text-align:center"
                    align=3D"center">
                    <span style=3D"font-size:7.5pt">Please treat the emai=
l
                      with caution, especially if you are requested to
                      click on a link, decrypt/open an attachment, or
                      enable macros.=C2=A0 For further information on how=
 to
                      spot phishing, access =E2=80=9CCybersecurity OneSpa=
ce
                      Page=E2=80=9D and report phishing by clicking the b=
utton
                      =E2=80=9CReport Phishing=E2=80=9D on the Outlook to=
olbar.</span><o:p></o:p></p>
                </td>
              </tr>
            </tbody>
          </table>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          <div>
            <p class=3D"MsoNormal">On 24/07/2023 13:20, Tillson, Bob (US)
              via USRP-users wrote:<o:p></o:p></p>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Yeah, I
                know it worked in the past, but I am unclear on the
                pedigree since then=E2=80=A6</span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span style=3D"color:#1F497D">=C2=A0</=
span><o:p></o:p></p>
            <p class=3D"MsoNormal"><span style=3D"color:#1F497D">It does
                apply to all devices </span>
              <span style=3D"font-family:Wingdings;color:#1F497D">L</span=
><o:p></o:p></p>
          </blockquote>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:12.0pt;font-family:&quot;Times New
              Roman&quot;,serif">Well, if you're not getting link lights
              on ANY of the devices plugged into that NIC, I'd be
              suspicious of the NIC.=C2=A0 If you aren't<br>
              =C2=A0 getting link on any of them, either the NIC has been
              hard programmed (via ethtool) to the wrong PHY rate, or
              the NIC<br>
              =C2=A0 is broken.<br>
              <br>
              Which cables are you using?=C2=A0 Which port on the X310
              machines?=C2=A0=C2=A0 SFP0 is 1GBit with the default firmwa=
re, and
              10GBit<br>
              =C2=A0 otherwise.<br>
              <br>
              <br>
              <br>
              <o:p></o:p></span></p>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal"><span style=3D"color:#1F497D">=C2=A0</=
span><o:p></o:p></p>
            <div>
              <div style=3D"border:none;border-top:solid #E1E1E1
                1.0pt;padding:3.0pt 0in 0in 0in">
                <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech <a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    moz-do-not-send=3D"true">
                    &lt;patchvonbraun@gmail.com&gt;</a> <br>
                  <b>Sent:</b> Monday, July 24, 2023 1:09 PM<br>
                  <b>To:</b> <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">usrp-users@lists.ettus.com</a><br>
                  <b>Subject:</b> [USRP-users] Re: Network Link Issue<o:p=
></o:p></p>
              </div>
            </div>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <div>
              <table class=3D"MsoNormalTable"
                style=3D"width:97.0%;margin-left:5.4pt;border-collapse:co=
llapse"
                width=3D"97%" cellspacing=3D"0" cellpadding=3D"0" border=3D=
"0">
                <tbody>
                  <tr style=3D"height:21.2pt">
                    <td style=3D"width:97.0%;border:solid red
                      1.0pt;padding:0in 5.4pt 0in 5.4pt;height:21.2pt"
                      width=3D"97%" valign=3D"top">
                      <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;margin-bottom:4.0pt;text-align:center;ba=
ckground:white"
                        align=3D"center">
                        <strong><u><span
style=3D"font-size:13.5pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:red">External
                              Email Alert</span></u></strong><o:p></o:p><=
/p>
                    </td>
                  </tr>
                  <tr style=3D"height:21.2pt">
                    <td style=3D"width:15.0in;border:solid red
                      1.0pt;border-top:none;padding:0in 5.4pt 0in
                      5.4pt;height:21.2pt" width=3D"549" valign=3D"top">
                      <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:3.0pt;margin-right:0in;margin-bottom:4.0pt;ma=
rgin-left:0in;text-align:center;background:white"
                        align=3D"center">
                        <strong><span
style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:black">This
                            email has been sent from an account outside
                            of the BAE Systems network.</span></strong><o=
:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;margin-bottom:4.=
0pt;text-align:center"
                        align=3D"center">
                        <span style=3D"font-size:7.5pt">Please treat the
                          email with caution, especially if you are
                          requested to click on a link, decrypt/open an
                          attachment, or enable macros.=C2=A0 For further
                          information on how to spot phishing, access
                          =E2=80=9CCybersecurity OneSpace Page=E2=80=9D a=
nd report
                          phishing by clicking the button =E2=80=9CReport
                          Phishing=E2=80=9D on the Outlook toolbar.</span=
><o:p></o:p></p>
                    </td>
                  </tr>
                </tbody>
              </table>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              <div>
                <p class=3D"MsoNormal">On 24/07/2023 12:16, Tillson, Bob
                  (US) via USRP-users wrote:<o:p></o:p></p>
              </div>
              <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                <p class=3D"MsoNormal">I have 4 X310s running 3.14.1 (I
                  know, an ancient version) attached to a computer with
                  Ubuntu 20.04.<o:p></o:p></p>
                <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                <p class=3D"MsoNormal">The NIC is an intel X710 4 port NI=
C
                  running latest driver (2.22.20) and latest NVM
                  firmware (7.1).<o:p></o:p></p>
                <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                <p class=3D"MsoNormal">When I connect the dual ended NIC
                  cable (typical ettus part), I get no link lights on
                  host or x310, so obviously no connection to host.<o:p><=
/o:p></p>
                <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                <p class=3D"MsoNormal">I know this has happened in a very
                  small number of cases before, just hoping someone has
                  maybe found a solution, like the magic config setting
                  on the X710 NIC or something like that?<o:p></o:p></p>
                <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                <p class=3D"MsoNormal">Obviously I would like to not have
                  to upgrade as it is quite impactful at this moment and
                  unclear it would actually fix the problem.<o:p></o:p></=
p>
                <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                <p class=3D"MsoNormal">Any thoughts?<o:p></o:p></p>
                <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                <p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
                <p class=3D"MsoNormal"><span
                    style=3D"font-size:12.0pt;font-family:&quot;Times New
                    Roman ,serif&quot;,serif">=C2=A0</span><o:p></o:p></p=
>
              </blockquote>
              <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                  style=3D"font-size:12.0pt;font-family:&quot;Times New
                  Roman ,serif&quot;,serif">To clarify -- this is a
                  configuration that *stopped working*?=C2=A0 Or a brand-=
new
                  configuration that you're trying to get working?<br>
                  <br>
                  Does this apply to all your devices, or just one?<br>
                  <br>
                  <br>
                </span><o:p></o:p></p>
            </div>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;font-family:&quot;Times New
                Roman&quot;,serif"><br>
                <br>
                <o:p></o:p></span></p>
            <pre>_______________________________________________<o:p></o:=
p></pre>
            <pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@=
lists.ettus.com" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext"=
>usrp-users@lists.ettus.com</a><o:p></o:p></pre>
            <pre>To unsubscribe send an email to <a href=3D"mailto:usrp-u=
sers-leave@lists.ettus.com" moz-do-not-send=3D"true" class=3D"moz-txt-lin=
k-freetext">usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
          </blockquote>
          <p class=3D"MsoNormal"><span
              style=3D"font-size:12.0pt;font-family:&quot;Times New
              Roman&quot;,serif"><o:p>=C2=A0</o:p></span></p>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------UbxnFPQqbO0PeEn807pr8xOL--

--===============7593946995543932922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7593946995543932922==--
