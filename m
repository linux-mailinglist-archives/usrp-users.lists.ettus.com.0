Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BA961693A
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 17:37:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2F5DA38416D
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 12:37:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667407048; bh=CSqhygcNlTVfA8Mckl6gNXqjbEBWxhUQRQSqkWLoSHw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=xmQgm1yh/42l8PgduakzxRIaqJwXqT8VVS22DAJWz+rTi6mMQDgJ+Z7L5VeDfZGws
	 XVo+DtaALzqkfpVzk+gpwzJ0pgS9PRTg6qL1dXM7MF+qFom2cH/qCJVcOc3tzbWEIm
	 sgNHnPSDYwxbc1BQFc/C7qqe5lAtPOVTId2qRNr7lmSeHxzP4wqY8nKTHaiMuK2jPO
	 oPO+VfJOmturZ9E+OFgHuKvh/A7JP97SlKYlV3bdAsqwFgACY6/Q7xg2ygQr2tfV0p
	 EVVf43F8eIVvHL8Sd1xzU6p2+qVLf3xB92iz5/EyzOjRfV8QUBbwokw0FSMkXF7enG
	 GSMB3j+Q1ojsA==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 8888D383EF5
	for <usrp-users@lists.ettus.com>; Wed,  2 Nov 2022 12:29:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jAtmG8l2";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id g10so5539827qkl.6
        for <usrp-users@lists.ettus.com>; Wed, 02 Nov 2022 09:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yHmLaeADheQ4AphkBKnsyqgUyLNoWBLHRLvUqVWEL0I=;
        b=jAtmG8l2iwUHzPXDlz3R/aN4fta8xEwe0qsEClXWLZx4Wi0oC3afhTqFFEkaRTEgxO
         fmRM0WUfdk2i46NptrvR+yGZnWMKngdMezfPhn/bkvOzio2Ja0ozMUmHVHJbIWRPzTtm
         KsPVrUBx8YrEXQgagLCM00rnz4izJw3zShBX2xYLJJzOqkFzJMXdA1akp7U6ARv79Iqu
         TD50Rdj7iYS9EYPBeW7mWKKYC3aLh3a1CiJKJDKxHU9ArsHslFFjU+ybof1LLKiobtMV
         trmyXius6p0/zbpmgFR1gCsgT4DPdZAXitYJbYFHmmE+NuK547QnAup9H2TQK4VUtFmM
         Xv7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yHmLaeADheQ4AphkBKnsyqgUyLNoWBLHRLvUqVWEL0I=;
        b=pSEbMUYfdHgeiA06fD4/rkqHrPxJs51rttgQccF/Oj2ChUmqgtgp7E0H8XbPEO3xHs
         7zQHACugUIOOfBeDIh2sgQoVVPs9pE4dsNRC6D7lWL/tSNDj5sWICpTKcH2yVEmi4us3
         Xd6fdCvvL3znnDnM0qTtui1FEhiVFBazB6dZMBAyuie50iPhYNw+eVeo/gRRAVOSQdrQ
         uAKZckku+CvZ59Gvgna4AGL7dO9HV1Q5IrfXq7eAIIj0wmpAMa7kPv4xu5+cyB9ox0SB
         emZzlQW/HGZbyHuJdQA3ymS/j3jeHeDSWO6QJUYFu8XzI6xInxF/Gqwt6787z57e+FIp
         649A==
X-Gm-Message-State: ACrzQf3CQSN6cPe9jBv81L9uXf9dKLvvdMSVGJjF7JrEcIa9LFcwFnm7
	O4Sdl3netH3Ngo50l+EWNbXd+yRXerg=
X-Google-Smtp-Source: AMsMyM6rbfEQSYTm5w0a1zOkRQZuus4ycTXgLpGjYer3kcyCRjYv/uFrTPtWQFN5KGVKADJUE25QpQ==
X-Received: by 2002:ae9:f50a:0:b0:6e3:3b4f:2ab1 with SMTP id o10-20020ae9f50a000000b006e33b4f2ab1mr18162041qkg.314.1667406552700;
        Wed, 02 Nov 2022 09:29:12 -0700 (PDT)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id v5-20020a05620a0f0500b006bba46e5eeasm8838748qkl.37.2022.11.02.09.29.11
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 09:29:12 -0700 (PDT)
Message-ID: <595477b5-f658-c92e-23b8-ed962b6c743d@gmail.com>
Date: Wed, 2 Nov 2022 12:29:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <PH1P110MB1633522B87A4411653915131B5399@PH1P110MB1633.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PH1P110MB1633522B87A4411653915131B5399@PH1P110MB1633.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: EVUOPXFGVYA3UIWTVYGUSPTNPHCBW47A
X-Message-ID-Hash: EVUOPXFGVYA3UIWTVYGUSPTNPHCBW47A
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: examples using N310 with ext LO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EVUOPXFGVYA3UIWTVYGUSPTNPHCBW47A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2963994276632085383=="

This is a multi-part message in MIME format.
--===============2963994276632085383==
Content-Type: multipart/alternative;
 boundary="------------ah0NB8xIZZnrdi0iKQsCxXr0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ah0NB8xIZZnrdi0iKQsCxXr0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 02/11/2022 12:09, Scott Burchfield wrote:
>
> Hi,
>
> Are there any updates on this problem.=C2=A0 I normally try not to repl=
y to=20
> old threads, but I am seeing the same the same spectral mirroring Rob=20
> described earlier.=C2=A0 My setup is also the same as Rob=E2=80=99s.
>
> I have tracked some newer threads that mentioned disabling=20
> TX_QEC_INIT, but I am still seeing the mirroring after disabling QEC.
>
> https://www.mail-archive.com/usrp-users@lists.ettus.com/msg07489.html
>
> Thanks,
>
> Scott
>
It seems to me that if you use an external LO, that LO has to go through=20
the phase-splitter on the mixer, and that phase-split
 =C2=A0 is subject to errors, so turning off QEC may not be that=20
desirable--although I think the mixer on the N310 (using an AD9371)
 =C2=A0 is a 2XLO, so the phase error should be very very small.

Do the unwanted sidebands change with LO level?


> _____________________________________
> The information contained in this e-mail and any attachments from=20
> Integrated Solutions for Systems may contain confidential and/or=20
> proprietary information, and is intended only for the named recipient=20
> to whom it was originally addressed. If you are not the intended=20
> recipient, any disclosure, distribution, or copying of this e-mail or=20
> its attachments is strictly prohibited. If you have received this=20
> e-mail in error, please notify the sender immediately by return e-mail=20
> and permanently delete the e-mail and any attachments.
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------ah0NB8xIZZnrdi0iKQsCxXr0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02/11/2022 12:09, Scott Burchfield
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PH1P110MB1633522B87A4411653915131B5399@PH1P110MB1633.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Are there any updates on this problem.=C2=A0=
 I
          normally try not to reply to old threads, but I am seeing the
          same the same spectral mirroring Rob described earlier.=C2=A0 M=
y
          setup is also the same as Rob=E2=80=99s.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I have tracked some newer threads that
          mentioned disabling TX_QEC_INIT, but I am still seeing the
          mirroring after disabling QEC.<o:p></o:p></p>
        <p class=3D"MsoNormal"><a
href=3D"https://www.mail-archive.com/usrp-users@lists.ettus.com/msg07489.=
html"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://www.mail-archive.com/usrp-users@lists.ettus.com/msg07489.html</a><o:p=
></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
        <p class=3D"MsoNormal">Scott</p>
      </div>
    </blockquote>
    It seems to me that if you use an external LO, that LO has to go
    through the phase-splitter on the mixer, and that phase-split<br>
    =C2=A0 is subject to errors, so turning off QEC may not be that
    desirable--although I think the mixer on the N310 (using an AD9371)<b=
r>
    =C2=A0 is a 2XLO, so the phase error should be very very small.<br>
    <br>
    Do the unwanted sidebands change with LO level?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:PH1P110MB1633522B87A4411653915131B5399@PH1P110MB1633.NAMP110.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
      </div>
      <div style=3D"" font-size:9pt;=3D"" font-family:=3D""
        ?calibri?,sans-serif;??=3D"">____________________________________=
_<br>
        The information contained in this e-mail and any attachments
        from Integrated Solutions for Systems may contain confidential
        and/or proprietary information, and is intended only for the
        named recipient to whom it was originally addressed. If you are
        not the intended recipient, any disclosure, distribution, or
        copying of this e-mail or its attachments is strictly
        prohibited. If you have received this e-mail in error, please
        notify the sender immediately by return e-mail and permanently
        delete the e-mail and any attachments.</div>
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

--------------ah0NB8xIZZnrdi0iKQsCxXr0--

--===============2963994276632085383==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2963994276632085383==--
