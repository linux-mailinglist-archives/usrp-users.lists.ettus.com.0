Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32174707480
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 23:45:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E27C43848A7
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 17:45:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684359957; bh=hVyTNNLetp+huP0dLsHsfxsPzQniH5zplwyH+iheUi0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Od9cvDZNNMaumXzUfRXC0Z5uJwOrU1nbeuVZitebYMZ6wKHv/SbgjL+O5uPcKNTWm
	 lsYmK9DXyBFIPjkA5T3XIsGgHUboraaaVntKCcieVYX4TwZ7JF83CaUkKojUAfapJD
	 pG65iWO0bHplpwc5Le7Vq0uFQFeX4sBqms0zZWcVpHqZeDSIZOapbaYSHwpU83al21
	 WTK/2ulJOLyRx79ekrKOKT32k/yvIgXBJIDKnR78UxZf3sJNpswHGyzYIhCXuQeZ+m
	 uSJEdae08cVFdx3THEqG5D0ybM9asxwyOHsPcZfx0L22DvMxsGWnMptO86yEPv80r7
	 jenbZu9cuaeNA==
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 90341384886
	for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 17:44:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dPZKaHgF";
	dkim-atps=neutral
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-6ab13810d34so986279a34.0
        for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 14:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684359898; x=1686951898;
        h=user-agent:references:in-reply-to:to:from:subject:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sdvfABgxAF0U/UXkhMUw6jX/KyBkCwcK3tJaptMo44Y=;
        b=dPZKaHgFKhthN3gqpxPMvguZoaAjH7zgWMsNuxvU3/zSeFSyCcqzRKmcCRmWkhZ0VZ
         rS6Vfhnf7LAzBuMJaSSyF7Ros/qkXbyWo48r40ozmloTHMvrkhsUYqWomkt539wDrYVl
         tYoT5MM622Ln7GqupUdMFTTyRfaheG9BcRg32/j63ZgP1VHb+U6BbN8qdEDff9qHSucJ
         3SFZoRQ8VX/0uyvBY1EXVPx0dylayy7nDBP1usvxTVk3NzpbKQTpVireGj/bE9Q0iMSi
         SIvsqBNm+EBl70aMnbSzqx8qDbGjDL0Ots/v6CN3R+cddWGJHHXzrQuI2+KdgG4822Hy
         L18w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684359898; x=1686951898;
        h=user-agent:references:in-reply-to:to:from:subject:message-id:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sdvfABgxAF0U/UXkhMUw6jX/KyBkCwcK3tJaptMo44Y=;
        b=bMsYxc/8HIiZKClYz2tWNOZ/zEtuQIPfRV3bQsN5gNpFitVpsnfSx4LAwq1FQ6BiIO
         3GEpBJu+/Lz6eJwumOBdUjWrlGfm7Bi6Ao0J+X7Szopn3l8Xrbn5Rbxx7t2uPQoa1/cW
         U1k8m7mrrf8w55NZk1QesudatB2YwZfsU1KoEGn3wSYu5oUj1+Z+Ci9WyzDpq8vx0tTO
         biYP/aT+34XxWQNU0Aj6dBRGRcLf6c6S9DrrcTkp0x2ZXV8qF/EugXdJrJRMO3u60fmq
         Xz0jacH0OxJ/712Q3vO4tdPiH1yulPXIhcIDSMtaXy8xClE9gND+IztQtWZd6SQqZ0SV
         ZwKg==
X-Gm-Message-State: AC+VfDwDj4niHFDzd8HPoawkgCY3m+o37BDJ5jabEEJEd1lMPCJbP+UI
	vWjXGGVco5tZHz02G1bVZBRstJwe5+s=
X-Google-Smtp-Source: ACHHUZ5jVT/l4L32YQyEgI2kN5CS8jmRHkp39aX8ATBdLxIzteHREIDEOi8dQy5gsyvM5WrmjKbbyA==
X-Received: by 2002:a05:6830:128f:b0:6ab:3c48:a42 with SMTP id z15-20020a056830128f00b006ab3c480a42mr125575otp.15.1684359897652;
        Wed, 17 May 2023 14:44:57 -0700 (PDT)
Received: from [192.168.4.55] ([47.186.160.129])
        by smtp.gmail.com with ESMTPSA id z16-20020a05683020d000b006ab3463bfc8sm54843otq.39.2023.05.17.14.44.56
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 May 2023 14:44:56 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 17 May 2023 16:44:46 -0500
Message-ID: <Mailbird-092cc2ec-6757-4a73-937a-ec4ef2393dca@gmail.com>
From: "page heller" <pageheller@gmail.com>
To: =?utf-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>,
 "Rob Kossler via USRP-users" <usrp-users@lists.ettus.com>
In-Reply-To: <19ec85dc-d4cc-4b21-855e-2f9760c37e61@ettus.com>
References: <Mailbird-70cf993e-2702-42fa-a6a2-fed6e2bd4416@gmail.com>
 <19ec85dc-d4cc-4b21-855e-2f9760c37e61@ettus.com>
User-Agent: Mailbird/2.9.74.0
X-Mailbird-ID: Mailbird-092cc2ec-6757-4a73-937a-ec4ef2393dca@gmail.com
Message-ID-Hash: 7I6NQ4A6BHD5HANSUR4SY2DMKIGXW5HM
X-Message-ID-Hash: 7I6NQ4A6BHD5HANSUR4SY2DMKIGXW5HM
X-MailFrom: pageheller@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ubuntu and USRP
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7I6NQ4A6BHD5HANSUR4SY2DMKIGXW5HM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6820654085570949552=="

--===============6820654085570949552==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_61732477.904836594249"

------=_NextPart_61732477.904836594249
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks. Looks like I'm getting significantly behind in versions. -p
On 5/17/2023 1:23:42 PM, Marcus M=C3=BCller <marcus.mueller@ettus.com> wrot=
e:
Hi Page,
not quite sure which problems you're referring to, but in general, UHD has =
only been getting better :) So, I'd recommend you use a current long-time s=
upported version of Ubuntu, i.e., Ubuntu 22.04LTS.
Best regards,
Marcus

On 17.05.23 19:30, page wrote:

For some time I have been using a B-210 in research and development. I have=
n't been active on the list for a awhile. I recall someone citing problems =
using Ubuntu 20.x with USRP. As a result, I'm still using Ubuntu 18.x, whic=
h has been working fine. Have the problems with using Ubuntu 20.x been reso=
lved? Is anyone having further trouble with the latest versions?

--

page heller
[dab2ce89-121d-4ba4-b1f7-a53493beaca6]

_______________________________________________ USRP-users mailing list -- =
usrp-users@lists.ettus.com [mailto:usrp-users@lists.ettus.com] To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com [mailto:usrp-users-lea=
ve@lists.ettus.com]
------=_NextPart_61732477.904836594249
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<body><div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-fami=
ly: Arial;color: #000000;text-align: left" dir=3D"ltr">
                                        Thanks. Looks like I'm getting sign=
ificantly behind in versions. -p<div class=3D"mb_sig"></div><blockquote cla=
ss=3D'history_container' type=3D'cite' style=3D'border-left-style:solid;bor=
der-width:1px; margin-top:20px; margin-left:0px;padding-left:10px;'>
                        <p style=3D'color: #AAAAAA; margin-top: 10px;'>On 5=
/17/2023 1:23:42 PM, Marcus M=C3=BCller &lt;marcus.mueller@ettus.com&gt; wr=
ote:</p><div style=3D'font-family:Arial,Helvetica,sans-serif'>
    <p>Hi Page,</p>
    <p>not quite sure which problems you're referring to, but in
      general, UHD has only been getting better :) So, I'd recommend you
      use a current long-time supported version of Ubuntu, i.e., Ubuntu
      22.04LTS.</p>
    <p>Best regards,<br>
      Marcus<br>
    </p>
    <div class=3D"moz-cite-prefix">On 17.05.23 19:30, page wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:Mailbird-70cf993e-2702-42fa-a6a2-=
fed6e2bd4416@gmail.com">
      
      <div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-fami=
ly: Arial;color: #000000;text-align: left" dir=3D"ltr">For some time I have=
 been using a B-210 in research
        and development. I haven't been active on the list for a awhile.
        I recall someone citing problems using Ubuntu 20.x with USRP. As
        a result, I'm still using Ubuntu 18.x, which has been working
        fine. Have the problems with using Ubuntu 20.x been resolved? Is
        anyone having further trouble with the latest versions?<br>
        <div><span style=3D"font-size: 10pt">--</span><br>
        </div>
        <div class=3D"mb_sig">
          <div>page heller</div>
        </div>
      </div>
      <img class=3D"mailbird" style=3D"border:0; width:1; height:1; display:
        none;" alt=3D"dab2ce89-121d-4ba4-b1f7-a53493beaca6" moz-do-not-send=
=3D"true" width=3D"1" height=3D"1"></img>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">______________________________=
_________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" href=
=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.c=
om</a>
</pre>
    </blockquote>
  </div></blockquote>
                                        </div></body>
------=_NextPart_61732477.904836594249--

--===============6820654085570949552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6820654085570949552==--
