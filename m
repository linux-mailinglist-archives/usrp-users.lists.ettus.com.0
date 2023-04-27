Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E16BE6F0C41
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 21:03:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 080843848C8
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 15:03:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682622221; bh=2Pyzhqqrji0JPLPum8cjN+z1xWTmRbjrpQvXulxBJvs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mr25GkUQ9g/07+WWIIxDVjJbA/wWiPPk/zXBVUmmR9Wl24jx0PHvEwgUmDnbfD6E4
	 lrxIZJSOGFrjfsuOyDxnz6zJ9WnX77hG4jbO51XBgr4/i99h78+MCd79yFkOTjF9Od
	 2xGjwYNPY4cBc+Aiz3NLBj742/OrbibUNg7cBXzyqE8gAPoOhMfs3o8fyvf5EaGQre
	 5noEpiIQAx2kKx1vm8/4C/YVbm/Gbt9kWonsbMJj1W7LBf7L7lwHlz/DZyb4yTC3Z+
	 xRjOs1rvfvZAd7cLhxEerL01YakosmdoCuTHyWEj3Iy4cUISMsLVzLaL7FqY8kZe6u
	 y+7j3FBPBf1JQ==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 90907383A2B
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 15:02:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="o9Ygk7Pw";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-3ef49c15454so41574181cf.0
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 12:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682622168; x=1685214168;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kayuhowQv8fe+ILmVszapKWAIcnb/qRtD3wFuQCUxKU=;
        b=o9Ygk7PwNFOTPBfETJUYxk2A/dxCHOirx8UYa/4vQmBMolvG8olbziy3UA/yLQtOXL
         40wsf1gROPOOaGjE3TXE3Wl9dzbTmRsRTlPCG4vXlOoGhDMl+e2j/ivc39eWTJigFQT8
         85Ywihlms7E/ot0kqe5kz2QBPeI4voMesV1yi24ZIObY1wJQtNCMU1BNUNHI22Vb4Lq7
         TJ+Q6tDqDKcIBPNPvS9uZMn/dPk8VC8YU8hN7/gyDOy7BTQ+/DEali+n7llhndjK+iW5
         LMNXKpZgGbioXFjKK+xnWWrvuQy2tCwlmqPaFJnIey0CmiZWx0l95at6iotpc9vZR/et
         h0mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682622168; x=1685214168;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kayuhowQv8fe+ILmVszapKWAIcnb/qRtD3wFuQCUxKU=;
        b=X5NDj0YQuBqohSAEnwT57p41TNvWFPd+7mikoZlbxHs/eoo297DsndYNASMXE/JIcZ
         gZ0fNRT8DPfBVv4SQ+kD++kO5HVmaOd/tq81e0qNhfz3kLtRAuKrAu7gdv3eXYRxPk+N
         6aJK/3fZzpuNdQyqKN/HHRNQ+0CMzBd8BCIi2k0Yq9nMujwQnr0v68tyvzgwYpH7Byew
         +E0zn6MCLYIRqhdnvsLZXFcr3BYaRLIbAF+rWO3ZRHSBYRNvL5vRcSrwV8ijkzsdy8Dc
         pw3eszzowPjQTxY22CIF14cLkn77+aR933u8LHC3J5OPQ0SSe/zy5B/rGkMGphmXZRy3
         s56g==
X-Gm-Message-State: AC+VfDxjXbuTFDAcCI7pjXWkqA/MwEPFGJZ0NZw6I1ZumAENyd1sok+0
	jLRmyIJis1Vm1A/APe13AMHMBRB3wKQ=
X-Google-Smtp-Source: ACHHUZ5G25yO0qPqDYlOd45r3J8mgGtIba4loLJ6h4+tw831RMS//jotogMkJ2ccQcVRUBGolHHziA==
X-Received: by 2002:a05:622a:1451:b0:3ef:2f99:ed43 with SMTP id v17-20020a05622a145100b003ef2f99ed43mr4881301qtx.13.1682622168446;
        Thu, 27 Apr 2023 12:02:48 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id r7-20020ac87ee7000000b003edfb5d7637sm6413662qtc.73.2023.04.27.12.02.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 12:02:48 -0700 (PDT)
Message-ID: <5b8397a7-8a15-8e3e-dafd-a84fac5bb2a4@gmail.com>
Date: Thu, 27 Apr 2023 15:02:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <168262165492.26612.1332912116917643534@mm2.emwd.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <168262165492.26612.1332912116917643534@mm2.emwd.com>
Message-ID-Hash: P6GBEZOB3DGB27W7S4URRNI75ESOEOE5
X-Message-ID-Hash: P6GBEZOB3DGB27W7S4URRNI75ESOEOE5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: A2D bit depth vs IQ
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P6GBEZOB3DGB27W7S4URRNI75ESOEOE5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3021033307077012307=="

This is a multi-part message in MIME format.
--===============3021033307077012307==
Content-Type: multipart/alternative;
 boundary="------------8eszbjsX2vyFlK1YmKLh0u09"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8eszbjsX2vyFlK1YmKLh0u09
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/04/2023 14:54, Tillson, Bob (US) via USRP-users wrote:
>
> Thanks for the response Marcus.
>
> This looks like it is converting the wire format to the host format.
>
> I was wondering about a bit before that when the A2D delivers to the=20
> FPGA if there was any logic within that performed any mapping (lets=20
> assume I asked for sc16 samples with a 12 bit A2D)=E2=80=A6
>
> The other Marcus also brought up that there is some futzing going on=20
> as well because typically the A2D sees more BW than the requested=20
> sample rate, etc=E2=80=A6
>
> My guess is every radio is different and you need to get into the=20
> nickers of the firmware/A2D interface to understand exactly what is=20
> going on=E2=80=A6
>
>
Well, to a first order, yes, every radio is different.

But in the USRP space, the A2D resolution is converted to a standardized=20
"wire format" before being sent to the host.
 =C2=A0 The host library then takes that and converts it into the desired=
=20
host format.

The samples coming out of the ADC are usually filtered and down-sampled=20
using a DDC (Digital Downconverter) that
 =C2=A0 provides a bandwidth towards the host that is generally alias-fre=
e at=20
the programmed sample rate.

Yes, the ADC nearly always "sees" more bandwidth than the desired sample=20
rate, but there's generally enough dynamic
 =C2=A0 range that the DDC filters can still produce a quality down-sampl=
ed=20
product towards the host.

Most USRP configurations are arranged so that the analog bandwidth ahead=20
of the ADC is at about 80% or less of
 =C2=A0 the relevant Nyquist=C2=A0 bandwidth for the ADC rate.

Most applications don't really need to care about the details.=C2=A0 You =
ask=20
for a given sample-rate (subject to the
 =C2=A0 sample-rates available on that particular hardware) and the USRP=20
delivers that as a "clean" complex-sampled
 =C2=A0 bandwidth.


--------------8eszbjsX2vyFlK1YmKLh0u09
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/04/2023 14:54, Tillson, Bob (US)
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:168262165492.26612.1332912116917643534@mm2.emwd.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:"Lucida Sans Unicode";
	panose-1:2 11 6 2 3 5 4 2 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}pre
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
	font-family:"Times New Roman",serif;}span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.EmailStyle24
	{mso-style-type:personal-compose;
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
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks for t=
he
            response Marcus.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">This looks l=
ike
            it is converting the wire format to the host format.<o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">I was wonder=
ing
            about a bit before that when the A2D delivers to the FPGA if
            there was any logic within that performed any mapping (lets
            assume I asked for sc16 samples with a 12 bit A2D)=E2=80=A6<o=
:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">The other
            Marcus also brought up that there is some futzing going on
            as well because typically the A2D sees more BW than the
            requested sample rate, etc=E2=80=A6<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">My guess is
            every radio is different and you need to get into the
            nickers of the firmware/A2D interface to understand exactly
            what is going on=E2=80=A6<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <br>
      </div>
    </blockquote>
    Well, to a first order, yes, every radio is different.<br>
    <br>
    But in the USRP space, the A2D resolution is converted to a
    standardized "wire format" before being sent to the host.<br>
    =C2=A0 The host library then takes that and converts it into the desi=
red
    host format.<br>
    <br>
    The samples coming out of the ADC are usually filtered and
    down-sampled using a DDC (Digital Downconverter) that<br>
    =C2=A0 provides a bandwidth towards the host that is generally alias-=
free
    at the programmed sample rate.<br>
    <br>
    Yes, the ADC nearly always "sees" more bandwidth than the desired
    sample rate, but there's generally enough dynamic<br>
    =C2=A0 range that the DDC filters can still produce a quality
    down-sampled product towards the host.<br>
    <br>
    Most USRP configurations are arranged so that the analog bandwidth
    ahead of the ADC is at about 80% or less of<br>
    =C2=A0 the relevant Nyquist=C2=A0 bandwidth for the ADC rate.<br>
    <br>
    Most applications don't really need to care about the details.=C2=A0 =
You
    ask for a given sample-rate (subject to the<br>
    =C2=A0 sample-rates available on that particular hardware) and the US=
RP
    delivers that as a "clean" complex-sampled<br>
    =C2=A0 bandwidth.<br>
    <br>
    <br>
  </body>
</html>

--------------8eszbjsX2vyFlK1YmKLh0u09--

--===============3021033307077012307==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3021033307077012307==--
