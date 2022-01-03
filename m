Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D8848378B
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 20:28:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA688385181
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 14:28:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="oEnJOXSk";
	dkim-atps=neutral
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 2F664385127
	for <usrp-users@lists.ettus.com>; Mon,  3 Jan 2022 14:27:40 -0500 (EST)
Received: by mail-qt1-f181.google.com with SMTP id p19so31416192qtw.12
        for <usrp-users@lists.ettus.com>; Mon, 03 Jan 2022 11:27:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=xU6Ik1keOJBfGkRPx4MiB9jaDJEbBKm1eNeYt5s2+aw=;
        b=oEnJOXSkFZBNuOqBu+PG3L+6ZmW17ZaShJnHxed4JJ+P5OlvHyV6sQzdapYRL9kRrb
         4ddfdr+/Bp6j+q0jXkDNf42jTTBR4Y5WL1wiwVDMaZ9/RHq2damwylr2nsRCvWIhmc1V
         hde8Sze+5sYEScdHkqcrHrIVxF514zgbvKfHW1WXRX8FdS093wfpwpW8lNs5NmsaoZkM
         s8MfEhoMSaT46RoX9idXAw7cq+7qURhQZLJ9XB6Y9nPElxLfjTsaAtZup3JrW0pTzz76
         CVWn4Huf4Ah8RvSeH7uzK2rVCmlVLWYD97ArqKFAboWCj3K5i2js87/1viK6op/qTaK3
         LWqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=xU6Ik1keOJBfGkRPx4MiB9jaDJEbBKm1eNeYt5s2+aw=;
        b=jltIDNiT3uTivhoyTGG54IA6Wiqlgdr+PIAnRAjoSRJ8VComQ4ZxtwLpuZbsM3/jw2
         keYB22lIYShzRwcu/Lk1OkBfFqqjFUiJUOY1lP0tOoNZQ/OJyFmzThWm8yPjBImOJtBS
         Om/+MSO+kqHIQ2VqAqkmR8cF6W7ypg2bHvkOeLPDsiMKdGtURB+ggT/gOj0ExuhES6ej
         iKYwidxExvwWX76kof4dNWvuqLlSO6HvP3ses4HJ/Xwhn2BSlFLPMp8buTDjuLOONvxq
         V8TsLZ2LODHNvHYhYsN5+fS4sTG1OJNrDBT1iE6bEfXF7Cpzm2YMRQ7CutvYj91W6vWl
         eKDg==
X-Gm-Message-State: AOAM530uHOxZFPJuOAnHvWZ6OFffcXX3ddY/ZaMte8xluaQXwJuUNlvK
	tN/QRV+S4UzVbnS20rLzdgr1c9DalWAZ6Q==
X-Google-Smtp-Source: ABdhPJxYsVXnoyzr6jJSsyCC4kwSSRIPDr/tf5m8vwZVawkepuu8WtKyS7w/WJz9KzxhjjgUvTFl0Q==
X-Received: by 2002:ac8:5e4f:: with SMTP id i15mr41988120qtx.408.1641238059344;
        Mon, 03 Jan 2022 11:27:39 -0800 (PST)
Received: from [192.168.2.187] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id d17sm29924173qtb.71.2022.01.03.11.27.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 11:27:39 -0800 (PST)
Message-ID: <a6c2c2c9-d830-d535-6366-46eb6848a0da@gmail.com>
Date: Mon, 3 Jan 2022 14:27:38 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <0d17457db86b43fd856f7b8c2c3071fb@oc11expo22.exchange.mit.edu>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <0d17457db86b43fd856f7b8c2c3071fb@oc11expo22.exchange.mit.edu>
Message-ID-Hash: NFSDTESIFQPVB3APSXBUUS26LDH6V6MU
X-Message-ID-Hash: NFSDTESIFQPVB3APSXBUUS26LDH6V6MU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Propagating late and overflow messages in software
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NFSDTESIFQPVB3APSXBUUS26LDH6V6MU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2734939521966665109=="

This is a multi-part message in MIME format.
--===============2734939521966665109==
Content-Type: multipart/alternative;
 boundary="------------YtU0D00oHlYdsrJWuGV0qb9I"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------YtU0D00oHlYdsrJWuGV0qb9I
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-03 14:16, Richard Joseph Muri wrote:
>
> Hello,
>
> I have a Linux C++ application using UHD 3.13 and an x310 USRP.=20
> Occasionally my host machine sends a late packet to the USRP,=20
> resulting in UHD printing an =E2=80=9CL=E2=80=9D to stdout, or the host=
 machine drops=20
> some packets, resulting in UHD printing a =E2=80=9CD=E2=80=9D to stdout=
.
>
> I would like prevent printing these messages to stdout, and instead=20
> add my own mechanism for tracking errors. Is there an officially=20
> support way to do this? I found a page about UHD logging=20
> (https://files.ettus.com/manual/page_logging.html), which claims =E2=80=
=9CUHD=20
> itself never prints to stdout=E2=80=9D, which seems in conflict with th=
e=20
> overflow notes documentation=20
> (https://files.ettus.com/manual/page_general.html#general_ounotes).
>
> One workaround I could do is use fork() to spawn a separate process=20
> for my multi_usrp object and monitor its stdout/stderr from my parent=20
> application. Currently I create my multi_usrp object in its own thread=20
> rather than spawning another process, which would be preferable.
>
> Thanks!
>
> Richard
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
This answers part of your question:

https://files.ettus.com/manual/page_general.html#general_ounotes_underrun

UHD pushes an async message when any of those events occur on transmit.

https://files.ettus.com/manual/classuhd_1_1tx__streamer.html#a14eef202de5=
a15bb72a149a7891af208

You call this on the streamer.=C2=A0=C2=A0 There is a now-deprecated vers=
ion of=20
this on the multi_usrp object as well, but using the call on the=20
streamer is preferred.

Also, I'd suggest upgrading your UHD to at least 3.15


--------------YtU0D00oHlYdsrJWuGV0qb9I
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-03 14:16, Richard Joseph
      Muri wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:0d17457db86b43fd856f7b8c2c3071fb@oc11expo22.exchange.mi=
t.edu">
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
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
        <p class=3D"MsoNormal">Hello,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I have a Linux C++ application using UHD
          3.13 and an x310 USRP. Occasionally my host machine sends a
          late packet to the USRP, resulting in UHD printing an =E2=80=9C=
L=E2=80=9D to
          stdout, or the host machine drops some packets, resulting in
          UHD printing a =E2=80=9CD=E2=80=9D to stdout.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I would like prevent printing these
          messages to stdout, and instead add my own mechanism for
          tracking errors. Is there an officially support way to do
          this? I found a page about UHD logging (<a
            href=3D"https://files.ettus.com/manual/page_logging.html"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://files.ettus.com/manual/page_logging.html</a>),
          which claims =E2=80=9CUHD itself never prints to stdout=E2=80=9D=
, which seems
          in conflict with the overflow notes documentation (<a
            href=3D"https://files.ettus.com/manual/page_general.html#gene=
ral_ounotes"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://files.ettus.com/manual/page_general.html#general_ounotes</a>).
          <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">One workaround I could do is use fork() to
          spawn a separate process for my multi_usrp object and monitor
          its stdout/stderr from my parent application. Currently I
          create my multi_usrp object in its own thread rather than
          spawning another process, which would be preferable.<o:p></o:p>=
</p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
        <p class=3D"MsoNormal">Richard<o:p></o:p></p>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    This answers part of your question:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/page_general.html#general_ounotes_underrun">https://files.ettus.com/manu=
al/page_general.html#general_ounotes_underrun</a><br>
    <br>
    UHD pushes an async message when any of those events occur on
    transmit.<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/classuhd_1_1tx__streamer.html#a14eef202de5a15bb72a149a7891af208">https:/=
/files.ettus.com/manual/classuhd_1_1tx__streamer.html#a14eef202de5a15bb72=
a149a7891af208</a><br>
    <br>
    You call this on the streamer.=C2=A0=C2=A0 There is a now-deprecated =
version
    of this on the multi_usrp object as well, but using the call on the
    streamer is preferred.<br>
    <br>
    Also, I'd suggest upgrading your UHD to at least 3.15<br>
    <br>
    <br>
  </body>
</html>
--------------YtU0D00oHlYdsrJWuGV0qb9I--

--===============2734939521966665109==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2734939521966665109==--
