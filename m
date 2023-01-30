Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BD06817B5
	for <lists+usrp-users@lfdr.de>; Mon, 30 Jan 2023 18:36:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 39DC9383C8E
	for <lists+usrp-users@lfdr.de>; Mon, 30 Jan 2023 12:36:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675100166; bh=ZcQv0McRgWvHQ+XMBmxYW2J1XJwJHtLkU/RrW14A07c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qwVx/8RLYIzlNe/wtsxU8J6F9aEf4fSutilF62IuKwEZ9s5S+XnxlUIVg7MWeaA3e
	 /QRKN8YewvfFA9GpFBIPX9xUthd/NBbmY80t3v2g6K+5M9DukXHFNf7jWgKx2Jf7ju
	 V5h4XEA1aVHIPH22z+9cii9ZUbvPavxmIq4cbZJ0OL5XEF6sSXNuQqkA+74G1apzeu
	 OfcGEfkLFqrAbCPdXBJby7BTTJrS0k2tfy6rWNOAtUbXRGqHwxJRTLk3quhLnTqMZY
	 /MQ95R9CIRaQE227YX3N4ygIbuQSCy/QmEAVXosaoRE0VILxIYAhckT7Te3bhw4mTS
	 N3Xk9xjMK4y/Q==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 57CD03800AE
	for <usrp-users@lists.ettus.com>; Mon, 30 Jan 2023 12:34:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RTnSuKlQ";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id z9so10802803qtv.5
        for <usrp-users@lists.ettus.com>; Mon, 30 Jan 2023 09:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SEuDgAoRRtyRnVNNSgn9zAOjxr8hQavgpV1sr9NtJfQ=;
        b=RTnSuKlQEt0XxRvLVXjUki1I1b2KriKCkY4UvVjJwqGWD4MLnnNKxaeroqBBqauMy8
         3Gn2ImYKGiRHV4U0gOKiYwC/jjmaDOIy/WUut2QkGLTGskAieTJ1lXmfjHOToYBkAAjk
         of2f4q8Zen/nMybq1lmm7w8MTmMeNOP4qW6YwcPF8SF326/Cx+wJRXscxU/7g/3wsex0
         yAw/qIzVGhdOQ4woiisqpxEsc0PtXdHpyPPKO0DHbZNc87B1wh6FAawEgOOncg98Jy7I
         2JwHzkLjq08/us5Ik9t+kQUB0hBR8vhZS7XMWb95LWLF6HfC+X10rvOlz4WgoBtc1wt+
         khOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SEuDgAoRRtyRnVNNSgn9zAOjxr8hQavgpV1sr9NtJfQ=;
        b=OC32Ch95gyoJDm/mnRypW4cOvf0Da9z5WRQirrfZelOIYatIxbuOOGml/fHJnAqqiB
         6+qchYceQbnjzkkkRX9ZjbDAOYr64k4FpsN+EzyXr3HsZHJlwYKIsK1FbSk8MGMj1lA6
         5Qnlo5wK2QPQsE0MfQ49d9C+B2mbxLE3vvr455oK12nQj/9Ib0klJsMrZONpGRKjzE9R
         mrs0iEz5D3mTDoChzJ37cLjnAKzt2PKsgP0QlhCOskT0blfBQs/afi+3A8RdBW5UAWYJ
         iwJw68UuITrI/6tGYtziWMZzzededj+3leSb9m6+/iNz2g5hCky6cObftheEI6CWNjbJ
         5OAg==
X-Gm-Message-State: AO0yUKVGH6OIQ/PkjZ14ku1EGFmvdk/6U/YnNyA6w7Ehyr0J9sV1PopW
	Nr2YJZEzUUjoPAbNRxhkicGqpk+J5D0=
X-Google-Smtp-Source: AK7set+hn2a2b+/VmCUyc6/j83BBHA4zCj0EXx8i9CH98yjH3WFZTojolrW1j75H2gVKDWTWhDwcrA==
X-Received: by 2002:a05:622a:54a:b0:3b8:5199:f84a with SMTP id m10-20020a05622a054a00b003b85199f84amr13447479qtx.3.1675100083506;
        Mon, 30 Jan 2023 09:34:43 -0800 (PST)
Received: from [192.168.2.175] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id x18-20020ac85392000000b0039cba52974fsm8305173qtp.94.2023.01.30.09.34.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jan 2023 09:34:43 -0800 (PST)
Message-ID: <a47f4280-4631-da0a-cc88-41a01d3b1b6a@gmail.com>
Date: Mon, 30 Jan 2023 12:34:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <dfc469eb206ff1215b4c729a728f9c09@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <dfc469eb206ff1215b4c729a728f9c09@mail.gmail.com>
Message-ID-Hash: Y7RP3B4ZGKG3BIIRBMRVSUBRL53ZLK7Z
X-Message-ID-Hash: Y7RP3B4ZGKG3BIIRBMRVSUBRL53ZLK7Z
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: syncing system clock to gpsdo
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y7RP3B4ZGKG3BIIRBMRVSUBRL53ZLK7Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3156276346038384754=="

This is a multi-part message in MIME format.
--===============3156276346038384754==
Content-Type: multipart/alternative;
 boundary="------------qYu0ZhtBOMo0wf9LVAjVRZjm"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------qYu0ZhtBOMo0wf9LVAjVRZjm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 30/01/2023 12:08, Ryan Retting wrote:
>
> Any advise?
>
> Thanks!
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 -Ryan
>
I have a query in to Ettus/NI R&D on this, but so far no response.

The last time I had to do this, on an E310 (several years ago), I recall=20
installing NTPD from source.


> *From:* Ryan Retting <ryan@chaosinc.com>
> *Sent:* Thursday, January 26, 2023 10:03 AM
> *To:* 'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com>
> *Subject:* syncing system clock to gpsdo
>
> Hello,
>
> I have the N320 configured with the gpsdo.
>
> I=E2=80=99m SSHed into the N320 and running directly on the N320.
>
> I set clock_source & time_source to gpsdo in /etc/uhd/mpm.conf
>
> /usr/lib/uhd/examples/sync_to_gps
>
> Runs successfully:
>
>
> Waiting for reference lock...LOCKED
>
> GPS Locked
>
> USRP time: 1674755734.000000000
>
> GPSDO time: 1674755734.000000000
>
> SUCCESS: USRP time synchronized to GPS time
>
> So, everything appears to be syncing correctly on the FPGA side.
>
> However, =E2=80=9Cdate=E2=80=9D returns the wrong UTC time.
>
> I don=E2=80=99t see anything in the ettus documentation for syncing the=
 system=20
> time in the N320 (not an external host).
>
> I don=E2=80=99t see chrony or ntpd installed.
>
> gpsd --help shows Time Service features enabled.
>
> What=E2=80=99s the recommended approach to syncing the Linux system tim=
e from=20
> the integrated GPS within the N320?
>
> Thanks,
>
> -Ryan
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------qYu0ZhtBOMo0wf9LVAjVRZjm
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 30/01/2023 12:08, Ryan Retting
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:dfc469eb206ff1215b4c729a728f9c09@mail.gmail.com">
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
	font-family:"Calibri",sans-serif;}span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style>
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Any advise?</p>
        <p class=3D"MsoNormal">Thanks!</p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -Ryan</p>
      </div>
    </blockquote>
    I have a query in to Ettus/NI R&amp;D on this, but so far no
    response.<br>
    <br>
    The last time I had to do this, on an E310 (several years ago), I
    recall installing NTPD from source.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:dfc469eb206ff1215b4c729a728f9c09@mail.gmail.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <div>
          <div style=3D"border:none;border-top:solid #e1e1e1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Ryan Retting &lt;<a
                href=3D"mailto:ryan@chaosinc.com" moz-do-not-send=3D"true=
"
                class=3D"moz-txt-link-freetext">ryan@chaosinc.com</a>&gt;
              <br>
              <b>Sent:</b> Thursday, January 26, 2023 10:03 AM<br>
              <b>To:</b> '<a href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a>'
              &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a>&gt;<br>
              <b>Subject:</b> syncing system clock to gpsdo</p>
          </div>
        </div>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">Hello,</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">I have the N320 configured with the gpsdo.=
</p>
        <p class=3D"MsoNormal">I=E2=80=99m SSHed into the N320 and runnin=
g
          directly on the N320.</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">I set clock_source &amp; time_source to
          gpsdo in /etc/uhd/mpm.conf</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">/usr/lib/uhd/examples/sync_to_gps </p>
        <p class=3D"MsoNormal">Runs successfully:</p>
        <p class=3D"MsoNormal" style=3D"margin-left:.5in"><br>
          Waiting for reference lock...LOCKED</p>
        <p class=3D"MsoNormal" style=3D"margin-left:.5in">GPS Locked</p>
        <p class=3D"MsoNormal" style=3D"margin-left:.5in">USRP time:
          1674755734.000000000</p>
        <p class=3D"MsoNormal" style=3D"margin-left:.5in">GPSDO time:
          1674755734.000000000</p>
        <p class=3D"MsoNormal" style=3D"margin-left:.5in">=C2=A0</p>
        <p class=3D"MsoNormal" style=3D"margin-left:.5in">SUCCESS: USRP t=
ime
          synchronized to GPS time</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">So, everything appears to be syncing
          correctly on the FPGA side.</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">However, =E2=80=9Cdate=E2=80=9D returns th=
e wrong UTC time.</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">I don=E2=80=99t see anything in the ettus
          documentation for syncing the system time in the N320 (not an
          external host).</p>
        <p class=3D"MsoNormal">I don=E2=80=99t see chrony or ntpd install=
ed.</p>
        <p class=3D"MsoNormal">gpsd --help shows Time Service features
          enabled.</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">What=E2=80=99s the recommended approach to=
 syncing
          the Linux system time from the integrated GPS within the N320?<=
/p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">Thanks,</p>
        <p class=3D"MsoNormal" style=3D"text-indent:.5in">-Ryan</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">=C2=A0</p>
        <p class=3D"MsoNormal">=C2=A0</p>
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

--------------qYu0ZhtBOMo0wf9LVAjVRZjm--

--===============3156276346038384754==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3156276346038384754==--
