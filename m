Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F23141970D
	for <lists+usrp-users@lfdr.de>; Mon, 27 Sep 2021 17:01:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE900384334
	for <lists+usrp-users@lfdr.de>; Mon, 27 Sep 2021 11:01:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="oTGdXTV1";
	dkim-atps=neutral
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id D5C9F38392E
	for <usrp-users@lists.ettus.com>; Mon, 27 Sep 2021 11:00:59 -0400 (EDT)
Received: by mail-qt1-f176.google.com with SMTP id c20so16907285qtb.2
        for <usrp-users@lists.ettus.com>; Mon, 27 Sep 2021 08:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=8LeF/6mcthsC2qEzEpI4M/fjm3ogknnsrVazYWxAEaY=;
        b=oTGdXTV1LfpEk5PrusQfLctVLMLZ/y6xXJO6PzTL10gb+hPMJkA3ldzvfD2FXydpym
         twNxkewa7ggbXbsv+cQrEjmx9qNlLUTNoJ8Ww1LxEuBD6sBHxv07rWOkp+N2qOg8jHno
         zFVX/929PkH0RuD0bVA37M+gnWx0/S+jLJfUBYZo2EL4DgSjwqWG4XuMKg/N5FF+D9zp
         gRxLcQLUJQHlsMicFVqddRBo/aYIPWTzF02G2UlpwEjRSMsWHyyglGEUuPX9iHKcut6z
         ly440aQd8ItROsAYsXdFaf/nC6tnUDN3+G1GGzEm0I4TLBYsmXGDQO6HMaNMAOE6fpEG
         QoWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=8LeF/6mcthsC2qEzEpI4M/fjm3ogknnsrVazYWxAEaY=;
        b=1AFswNSStjz5hYyMtnwVtW4fJEOgr+AmfhCGf5QFK597Xs8SXFWToRsw0e4buevzLs
         VPAfkLNSvdmZUVWm2NfHVJATJhgq32ncZmCG8C0QINlS6NG0g7JIExzxdo2baauINXVZ
         hNi27+1B4YoFPhCdUMckz+ZuuTYCCpRbXKAR8JDuv/emhixJexhccJKHQugRsX4GJwIb
         UB9ItECPA+S5zm+OmYvSJ95A6D8tpdkKM1lPFFV0mt99qO0j+12k+CBiE6strgOyl8rO
         HhgB8U3NCDHee7TiDes2wF4vpf1AUIfEa2YGcLmHgosWayf8MKzcM4lxD90cS18Biofh
         /j0w==
X-Gm-Message-State: AOAM533vjFDUX/haLi0MnxZ2UfJcZS1UMkn3YAqJxq6sexzif3XI+uk7
	3QtkNEQE3m2v4iuwF80JJNjK8m94g3qPLw==
X-Google-Smtp-Source: ABdhPJxEfSosvHg5O6VrciQHRAvElaLuNfKLPXo3tHY644dc8vU9Xzd4A1PUjjyjP4CtfeWudvE6jg==
X-Received: by 2002:ac8:7110:: with SMTP id z16mr258818qto.183.1632754859066;
        Mon, 27 Sep 2021 08:00:59 -0700 (PDT)
Received: from [192.168.2.244] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id u12sm11293883qkk.109.2021.09.27.08.00.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Sep 2021 08:00:58 -0700 (PDT)
To: Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <yvihFszum0xbmZ1alvfvUJLHqDePaIDR6hXw7IPGiw@lists.ettus.com>
 <f033c3497b9948beb010df9452c3184a@komro.net>
 <b6ffe3ea-cc05-a9e0-482a-62c4ef7983e6@gmail.com>
 <1ee6a256cd214bb89085fcd4c3b9c381@komro.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <dc64e705-7b7d-b438-3ee2-5535ce894024@gmail.com>
Date: Mon, 27 Sep 2021 11:00:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1ee6a256cd214bb89085fcd4c3b9c381@komro.net>
Content-Language: en-US
Message-ID-Hash: MHFUSB3PE53GSODEUMJ24GDWLFMQZ5J4
X-Message-ID-Hash: MHFUSB3PE53GSODEUMJ24GDWLFMQZ5J4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help_Failed to build UHD in Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MHFUSB3PE53GSODEUMJ24GDWLFMQZ5J4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4654755885617933417=="

This is a multi-part message in MIME format.
--===============4654755885617933417==
Content-Type: multipart/alternative;
 boundary="------------017BC589E0B7E8354B1F32E2"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------017BC589E0B7E8354B1F32E2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-27 10:26 a.m., Thangaraj Mukara Dhakshinamoorthy wrote:
>
> Hallo Marcus,
>
> Thank you very much! I changed the static IP address as mentioned in=20
> the guidelines. Now I can ping successfully but can=E2=80=99t execute t=
he=20
> commands =E2=80=9A*uhd_find_devices*=E2=80=98 or =E2=80=9A*uhd_usrp_pro=
be*=E2=80=98! I guess this is=20
> due to mismatch in UHD version between host PC and USRP, or?
>
> __
>
Try using an explicit device address string:

uhd_usrp_probe --args type=3Dn3xx,product=3Dn320

When you don't give a device address or use "find", the code has to use=20
an IP BROADCAST packet, which in many situations doesn't work.

--------------017BC589E0B7E8354B1F32E2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-27 10:26 a.m., Thangaraj
      Mukara Dhakshinamoorthy wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1ee6a256cd214bb89085fcd4c3b9c381@komro.net">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.E-MailFormatvorlage19
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}span.HTMLVorformatiertZchn
	{mso-style-name:"HTML Vorformatiert Zchn";
	mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert";
	font-family:Consolas;}span.E-MailFormatvorlage22
	{mso-style-type:personal-reply;
	font-family:"Verdana",sans-serif;
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
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Hallo
            Marcus,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Thank
            you very much! I changed the static IP address as mentioned
            in the guidelines. Now I can ping successfully but can=E2=80=99=
t
            execute the commands =E2=80=9A<b><span
                style=3D"background:yellow;mso-highlight:yellow">uhd_find=
_devices</span></b>=E2=80=98
            or =E2=80=9A<span style=3D"background:yellow;mso-highlight:ye=
llow"> <b>uhd_usrp_probe</b></span>=E2=80=98!
            I guess this is due to mismatch in UHD version between host
            PC and USRP, or?
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><u><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p><span
                  style=3D"text-decoration:none">=C2=A0</span></o:p></spa=
n></u></p>
      </div>
    </blockquote>
    Try using an explicit device address string:<br>
    <br>
    uhd_usrp_probe --args type=3Dn3xx,product=3Dn320<br>
    <br>
    When you don't give a device address or use "find", the code has to
    use an IP BROADCAST packet, which in many situations doesn't work.<br=
>
  </body>
</html>

--------------017BC589E0B7E8354B1F32E2--

--===============4654755885617933417==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4654755885617933417==--
