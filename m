Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA2575FDBF
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jul 2023 19:31:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5BFC8380A0C
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jul 2023 13:31:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690219873; bh=73fUSAsmsfe9cRFZkJO8vH5kRkzce1CU7FM0yTF4Qi4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Jp9iQLI1hlWjR5IPOqmvHo/f9pPwIkaTBvnHbjXjRd/ic8aFfSdKePQolAWl7TbXP
	 q3X+CrgyaEnDU7tpaWdBvcU7ug6XES0JyJ1BfXu61mUU52gD/wRQsA8OFGIapLrCyK
	 ERxTD/qVtukxtE9u55SiV9rHD3YnCtrbu1Leq+kpOt6kdKads9ajMgZEhbRKFnMtgJ
	 DVy0gppaWR3Wgs9issImIq/i4EyOyR3nqb4JZCsFiHNsNUHkSbgc+gBICjUy1lcjna
	 Y7gNYlPNxwqZx/NL1jR1E5GGM9AIsql0f6K04iGu2iRxKUBBP/zt7pif3OOsXYTRvJ
	 olrFFE7hDo8gA==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 271CA380A0C
	for <usrp-users@lists.ettus.com>; Mon, 24 Jul 2023 13:30:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="P4+mR13w";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-403a72df0a6so25690641cf.2
        for <usrp-users@lists.ettus.com>; Mon, 24 Jul 2023 10:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690219855; x=1690824655;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iinQc56qGSvxnbwbzJpGhQ1UaCy4QwTaBBYAFyMfnts=;
        b=P4+mR13woIqhOAGB6j8cpHqzmd9FAsUTLUtv1kFhpA/fMWk+e7jnot2ptN5Nw512f6
         ZpiJGeiKejJjokGZDA8uaaPrKPo/YcLa2SPsoFHyxuwF2yD8CzZoO8jQlfU78iYiI8im
         JcBDWpiKYMTO7XCL7aqXMUBHhfDKnAgAiteL6hwRGl21Exl20nB3dR3Hqp4CcW1CbMLl
         M6t4HNHov66QHeH6nVRPdA/yAPDIZc07ZHMRy+yXpudjPe3RubWD3YX8HfkCVP0fh1YP
         M46p2yG5ycQwPj4a2NWUeCGtbDYy5nveqMMyTs40xNLSokIQ11RIcNWXir5rO46cECiu
         3dqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690219855; x=1690824655;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iinQc56qGSvxnbwbzJpGhQ1UaCy4QwTaBBYAFyMfnts=;
        b=Z2Y9cPAqvIviaCk06I5k0laHHVn5dSSsnwbBObqLQmUWW1ZdIvxICJzLnVu6nhRxkM
         iBCeaeOR/16+pXsw6ZqdPHbgdIXX3JmUixuJgNpQRAyTi7CHDz7JpWK9h63700ZBdRoi
         rGYACqSXzFI6B2fCWZPwA9EP/Pzsb9fXVeUuDT1UErg4fNqSOXkvO/bXIaNNLwyjNFYD
         ewupeFNibnEiqTsv3iXvU2xpqQ1MRWthLfauH/1jD3BPnyylEY3CKnjoBL/7NIfHqT/7
         tVinueLq+FQo3K4Iel+uutn6bPWdNxQozzZVBSFxXJ0xVtPE+C0BQBuAsg8IdVTS68qY
         1z3A==
X-Gm-Message-State: ABy/qLb9EBWI7AMb8IREG/SXr/QXSWoCK5WQHNvMP7gueT3wONcGrATr
	xPEyatFyBUPB40XW7jZJ4PDJrNNcIww=
X-Google-Smtp-Source: APBJJlEa6f23Mgz+9TFu0jVb2DUuGHSkAi16+yvZGInYaHw40z8vJDXsbyyX74ZLilHxDHj+alXRhg==
X-Received: by 2002:a05:622a:54:b0:400:84e2:74d8 with SMTP id y20-20020a05622a005400b0040084e274d8mr518678qtw.25.1690219855362;
        Mon, 24 Jul 2023 10:30:55 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id c16-20020ac87d90000000b004054fbf9273sm2446745qtd.80.2023.07.24.10.30.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jul 2023 10:30:55 -0700 (PDT)
Message-ID: <1f8320cc-8605-97f3-638d-803f40a1a41e@gmail.com>
Date: Mon, 24 Jul 2023 13:30:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <169021927423.4399.6815917824348768255@mm2.emwd.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <169021927423.4399.6815917824348768255@mm2.emwd.com>
Message-ID-Hash: DAWACSZXLUCUHBDFYH7PZS3CCAEHQTT6
X-Message-ID-Hash: DAWACSZXLUCUHBDFYH7PZS3CCAEHQTT6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Network Link Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DAWACSZXLUCUHBDFYH7PZS3CCAEHQTT6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7221185282630828933=="

This is a multi-part message in MIME format.
--===============7221185282630828933==
Content-Type: multipart/alternative;
 boundary="------------ikF5g31Dupc6xPfpxPu1dH8x"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ikF5g31Dupc6xPfpxPu1dH8x
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 24/07/2023 13:20, Tillson, Bob (US) via USRP-users wrote:
>
> Yeah, I know it worked in the past, but I am unclear on the pedigree=20
> since then=E2=80=A6
>
> It does apply to all devices L
>
Well, if you're not getting link lights on ANY of the devices plugged=20
into that NIC, I'd be suspicious of the NIC.=C2=A0 If you aren't
 =C2=A0 getting link on any of them, either the NIC has been hard program=
med=20
(via ethtool) to the wrong PHY rate, or the NIC
 =C2=A0 is broken.

Which cables are you using?=C2=A0 Which port on the X310 machines?=C2=A0=C2=
=A0 SFP0 is=20
1GBit with the default firmware, and 10GBit
 =C2=A0 otherwise.


> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Monday, July 24, 2023 1:09 PM
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
> On 24/07/2023 12:16, Tillson, Bob (US) via USRP-users wrote:
>
>     I have 4 X310s running 3.14.1 (I know, an ancient version)
>     attached to a computer with Ubuntu 20.04.
>
>     The NIC is an intel X710 4 port NIC running latest driver
>     (2.22.20) and latest NVM firmware (7.1).
>
>     When I connect the dual ended NIC cable (typical ettus part), I
>     get no link lights on host or x310, so obviously no connection to
>     host.
>
>     I know this has happened in a very small number of cases before,
>     just hoping someone has maybe found a solution, like the magic
>     config setting on the X710 NIC or something like that?
>
>     Obviously I would like to not have to upgrade as it is quite
>     impactful at this moment and unclear it would actually fix the
>     problem.
>
>     Any thoughts?
>
>     Thanks,
>
> To clarify -- this is a configuration that *stopped working*?=C2=A0 Or =
a=20
> brand-new configuration that you're trying to get working?
>
> Does this apply to all your devices, or just one?
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------ikF5g31Dupc6xPfpxPu1dH8x
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 24/07/2023 13:20, Tillson, Bob (US)
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:169021927423.4399.6815917824348768255@mm2.emwd.com">
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
	{font-family:"Lucida Sans Unicode";
	panose-1:2 11 6 2 3 5 4 2 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}p.msonormal0, li.msonormal0, div.msonormal0
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
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Yeah, I know=
 it
            worked in the past, but I am unclear on the pedigree since
            then=E2=80=A6<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">It does appl=
y
            to all devices </span>
          <span style=3D"font-family:Wingdings;color:#1F497D">L</span></p=
>
      </div>
    </blockquote>
    Well, if you're not getting link lights on ANY of the devices
    plugged into that NIC, I'd be suspicious of the NIC.=C2=A0 If you are=
n't<br>
    =C2=A0 getting link on any of them, either the NIC has been hard
    programmed (via ethtool) to the wrong PHY rate, or the NIC<br>
    =C2=A0 is broken.<br>
    <br>
    Which cables are you using?=C2=A0 Which port on the X310 machines?=C2=
=A0=C2=A0 SFP0
    is 1GBit with the default firmware, and 10GBit<br>
    =C2=A0 otherwise.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:169021927423.4399.6815917824348768255@mm2.emwd.com">
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
              <b>Sent:</b> Monday, July 24, 2023 1:09 PM<br>
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
            <p class=3D"MsoNormal">On 24/07/2023 12:16, Tillson, Bob (US)
              via USRP-users wrote:<o:p></o:p></p>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal">I have 4 X310s running 3.14.1 (I know,
              an ancient version) attached to a computer with Ubuntu
              20.04.<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">The NIC is an intel X710 4 port NIC
              running latest driver (2.22.20) and latest NVM firmware
              (7.1).<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">When I connect the dual ended NIC cabl=
e
              (typical ettus part), I get no link lights on host or
              x310, so obviously no connection to host.<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">I know this has happened in a very
              small number of cases before, just hoping someone has
              maybe found a solution, like the magic config setting on
              the X710 NIC or something like that?<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">Obviously I would like to not have to
              upgrade as it is quite impactful at this moment and
              unclear it would actually fix the problem.<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">Any thoughts?<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;font-family:&quot;Times New
                Roman&quot;,serif"><o:p>=C2=A0</o:p></span></p>
          </blockquote>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"font-size:12.0pt;font-family:&quot;Times New
              Roman&quot;,serif">To clarify -- this is a configuration
              that *stopped working*?=C2=A0 Or a brand-new configuration =
that
              you're trying to get working?<br>
              <br>
              Does this apply to all your devices, or just one?<br>
              <br>
              <o:p></o:p></span></p>
        </div>
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

--------------ikF5g31Dupc6xPfpxPu1dH8x--

--===============7221185282630828933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7221185282630828933==--
