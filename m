Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B58BB426BDE
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 15:44:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC43138488B
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 09:44:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fhNCENjR";
	dkim-atps=neutral
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id D384C3847E3
	for <usrp-users@lists.ettus.com>; Fri,  8 Oct 2021 09:43:55 -0400 (EDT)
Received: by mail-qk1-f178.google.com with SMTP id g21so9393255qki.11
        for <usrp-users@lists.ettus.com>; Fri, 08 Oct 2021 06:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=yXAqnUWjOauMWnSMhF76laH8vqpJn+E/6JDum2Sm3EE=;
        b=fhNCENjRCZ/B/2E1i8qFo2zoP6Zj14jqdtRrwB7/Z4KU6/P+RyZ1Yhe4Zhn02rG2gm
         +0iYsK2GCOPSLIfavKhA9jgnnZWW0jtNacI1hFqQKwRsQpd7505FfcW0EEdeGg+2nJum
         bqQhBrxmPfIdGUqS9iGGJ5Bit4CNt3r5McxxtZmq/2HcqD86NBp3v/UhPXm+LQ8QK/eu
         0xB4Uw0/bt6Yl5hYwunYOoyI9ELvY5VjCluSzY8of5JVdLq8KkOzyNJpIWuXQkMstUQc
         pMs+5IMNyv/bKvJbMJ/blQbXxjh9kYEm0DIW18cFjlfKrayvYu/5RaN0FKeHkRy/Dhrs
         X3YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=yXAqnUWjOauMWnSMhF76laH8vqpJn+E/6JDum2Sm3EE=;
        b=cqq8frt7qA1nsVTb55a6BTHGC8QRNrXT1L5yG8bJLpDts3V32oM5GXdaxo8vFFGCKq
         /+7lS4DMveSvA5XZAZQsJRyFPAxMwjyZKYONvVcGPgYkbhkj9vsYgXQ3p++gMdHphnk0
         o8eMReImtETlBAc8L5wr+VSnvVrXssX/PL72gc8WC59emMBbIuRkv5irHkh9pPxb0WLt
         zPLzBs5maGEcq3zpR+4g1EvnJLoh9gp/3JZh26v4a1o9+lvB57kJlB6TGSyWw62uK7rE
         YpTiKQf5KZytRyvT/9kiZv/yofYRshZ201k4lYCoSqa8MDmglWIdbYMsTy8OZX+dhdUD
         x6/g==
X-Gm-Message-State: AOAM532YAL1Qgg87vdKW8fN39SZCdUr6LydASLU7iP0ECTSDcPBrctWH
	54Q8Y14u2jyCRteOa1r6Qpq9zkcHcjc=
X-Google-Smtp-Source: ABdhPJx14FQ8sF/wOeLWEOp8LWfHaYEVlc1la43kGDwf0d+T/0YM8Hs+fgSSIFcmhhW08scRiUn2Sw==
X-Received: by 2002:ae9:dc84:: with SMTP id q126mr3061546qkf.128.1633700635130;
        Fri, 08 Oct 2021 06:43:55 -0700 (PDT)
Received: from [192.168.2.253] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id c6sm2345686qtx.72.2021.10.08.06.43.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Oct 2021 06:43:54 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <7K2pj4EW5Eoa1fgH0mUuDdejmP10OEa0P2hqRhsqI@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <705524ce-7490-9c99-f861-d7fd8a6deb06@gmail.com>
Date: Fri, 8 Oct 2021 09:43:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <7K2pj4EW5Eoa1fgH0mUuDdejmP10OEa0P2hqRhsqI@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: 3VAUVISPC4YDDEMX4Z4FRMCG6O6ZGQDY
X-Message-ID-Hash: 3VAUVISPC4YDDEMX4Z4FRMCG6O6ZGQDY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Possible to change the name of an N320?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3VAUVISPC4YDDEMX4Z4FRMCG6O6ZGQDY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3999495943529636497=="

This is a multi-part message in MIME format.
--===============3999495943529636497==
Content-Type: multipart/alternative;
 boundary="------------98C202E8C8D3555BD33CC505"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------98C202E8C8D3555BD33CC505
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-08 8:47 a.m., jason@gardettoengineering.com wrote:
>
> I have a series of N320s sprinkled across our lab and I would like to=20
> change their names so it is clear where they are located (as opposed=20
> to keeping a list of which serial number is where), is this possible?=20
> i could have sworn I could do this with a different Ettus device in=20
> the past, but I can=E2=80=99t recall which one. I know some of them cou=
ld have=20
> their hostnames changed, but I don=E2=80=99t think that it is possible =
to do=20
> that statically on the N320. Thoughts?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
You're probably referring to this:

https://files.ettus.com/manual/page_identification.html

But also, because N3xx devices are also Linux computers, they'll have an=20
/etc/hostname just like any other Linux/Unix/BSD machine, and
 =C2=A0 they can have their IP addresses change also;

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updat=
ing_the_Network_Configurations



--------------98C202E8C8D3555BD33CC505
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-08 8:47 a.m.,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:jason@gardetto=
engineering.com">jason@gardettoengineering.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:7K2pj4EW5Eoa1fgH0mUuDdejmP10OEa0P2hqRhsqI@lists.ettus.c=
om">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I have a series of N320s sprinkled across our lab and I would
        like to change their names so it is clear where they are located
        (as opposed to keeping a list of which serial number is where),
        is this possible? i could have sworn I could do this with a
        different Ettus device in the past, but I can=E2=80=99t recall wh=
ich
        one. I know some of them could have their hostnames changed, but
        I don=E2=80=99t think that it is possible to do that statically o=
n the
        N320. Thoughts?</p>
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
    You're probably referring to this:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_identification.html">https://files.ettus.com/manual/page_identi=
fication.html</a><br>
    <br>
    But also, because N3xx devices are also Linux computers, they'll
    have an /etc/hostname just like any other Linux/Unix/BSD machine,
    and <br>
    =C2=A0 they can have their IP addresses change also;<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_N300=
/N310/N320/N321_Getting_Started_Guide#Updating_the_Network_Configurations=
">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Upd=
ating_the_Network_Configurations</a><br>
    <br>
    <br>
  </body>
</html>

--------------98C202E8C8D3555BD33CC505--

--===============3999495943529636497==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3999495943529636497==--
