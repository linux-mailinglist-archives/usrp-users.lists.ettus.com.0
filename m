Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D39248593F4
	for <lists+usrp-users@lfdr.de>; Sun, 18 Feb 2024 03:07:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30958384A51
	for <lists+usrp-users@lfdr.de>; Sat, 17 Feb 2024 21:07:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708222040; bh=H9S3U7IfgzYkq6IHo+fZwHSTsRQEaTE4kuKhthSFHZM=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=QKzSiiD/tHj2DfCxaHfhryki7lm9HwL66lRpTIP1z9E4ScXweRXK5jIvEuHYyqd/u
	 wr6Dk8A/lM7Ua61JUpF7WaZ5DwVNeTamT7/Vt7NwpX5hZ3GJ4dYiWaDI245+Zhab9w
	 Jd+plPQSEOQg/iIcNYO2+T5k2F4yadmv9PCDKHFoSR0aiSLY9QmeBemlXwsZOh2r5s
	 7id2wtcP07EZmCpZC1Xhv4Gp/X/rsbBFdrLcAEwIk1rvxOjos9wRAOXPzGl9eatunt
	 Ao/GlJW3AWA4uzwDfknkAYQtaYtXRTZh8lx/xGBlViBbfn+zal0mTP963b0DA/9Z14
	 WTcJQvo/6gT8Q==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id EE9103845BD
	for <usrp-users@lists.ettus.com>; Sat, 17 Feb 2024 21:06:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a2B0wmmh";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-68f54a65ae2so2128916d6.0
        for <usrp-users@lists.ettus.com>; Sat, 17 Feb 2024 18:06:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708222004; x=1708826804; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kwxJhfBYccQ6gLNg3kdmptO9AC6e7tJ82a3bLNsSwqE=;
        b=a2B0wmmhITFlHqTgf68oyDPr5K7jxGVD878uZ2s5Dlil6+gw5bWj1ALDOIW7PCejgx
         /VUgF0M9iIjIlbEx0DhnPG4qj/LLybiHklwy42ZG9c2jGVT6FTmgq6W0aqS+BCle1Mo3
         IysRtL6ON1pr/CeIFLaCZayruoTOy+30rGv/X9uHRFE/cBszchUGknAKgFtcKgn/3FqM
         9WYbEbzAnbjRX/woWk58bK1OgJelmLSVr8lv4YvNVg/cvYdalrZpNmoxLV5ip/17iuxh
         FbqP1Wmmbrn/gN25gRpBHCuVm6dn7ys0jKriQN/Tjiug8PPgpIxCv/s3PCSrhyIPV2wU
         joAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708222004; x=1708826804;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kwxJhfBYccQ6gLNg3kdmptO9AC6e7tJ82a3bLNsSwqE=;
        b=uXU98Sg1xc8wJkzKRq99cwGiDxv8yGXFX7LvoF4mUqeQ+w+kRbioMTHzavPtK1nzuG
         vhZ6g1uqcIXLgsj4eNbWX2LBki2E1esdmbJ0e55NJaHlko/7oJ0QogIO/eoHqN3wFA8k
         U4Tmv7v/Nwqt4vhz6CkW8lSzqGk/+WKTAQoBeje8r2Lb5+jcxzNgXnr+5R6fx266Peva
         aXnEOrBm0o4mrKmPKNyA/SwcuQXZEswNpRoY2Iw0dOsTmMP2rYmIAExP2ZL316zZB4i6
         6cu6pWyadXmWwaMem0lP04hVllXOC0rPvss6eiLu5IhrFk/UWhBxySEOGsYN6LEKbK2/
         BLtg==
X-Gm-Message-State: AOJu0YzUcooSJ0iWUcMR21y0ZWOMD4/vLexrtWf0ynwe0AcNEBMXmA1w
	Nm3RYTudNazxThOL9aMRYOmpGJOf1ZO5XZIUaB9sNvtNAjshR19G
X-Google-Smtp-Source: AGHT+IHTW9IyYNuLc9x5YSDN1+EEySe3YJ6rQvk7nSv++S5hszi+oCy1ybXZOvcqyqSin4Dm183/gQ==
X-Received: by 2002:a0c:e3c3:0:b0:68c:425b:ea9 with SMTP id e3-20020a0ce3c3000000b0068c425b0ea9mr9435342qvl.42.1708222004029;
        Sat, 17 Feb 2024 18:06:44 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id lb27-20020a056214319b00b0068f3078de86sm1623417qvb.76.2024.02.17.18.06.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Feb 2024 18:06:43 -0800 (PST)
Message-ID: <93f5109d-df1e-43b5-9a9c-64c783c60ca0@gmail.com>
Date: Sat, 17 Feb 2024 21:06:35 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jim Grubb <jimgrubb@me.com>
References: <b0fa9b2c-15fa-4fe9-94a6-75fa153d2163@me.com>
 <00e1bdc5-7342-4819-9fce-2a8b83fb5e8f@gmail.com>
 <87917179-2A59-48CA-AF3E-25976AD826D5@me.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <87917179-2A59-48CA-AF3E-25976AD826D5@me.com>
Message-ID-Hash: THTAAMH5KLYTK4Q6JR3UZTCRPR2BDBNK
X-Message-ID-Hash: THTAAMH5KLYTK4Q6JR3UZTCRPR2BDBNK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem getting USRP B205mini-i running
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/THTAAMH5KLYTK4Q6JR3UZTCRPR2BDBNK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7924097899084607622=="

This is a multi-part message in MIME format.
--===============7924097899084607622==
Content-Type: multipart/alternative;
 boundary="------------5BdbL7y0hEhRI3SiOj8YAyb7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------5BdbL7y0hEhRI3SiOj8YAyb7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/02/2024 20:58, Jim Grubb wrote:
>
> This part I=E2=80=99m a bit confused on.  I added the ettus repository =
which has earlier versions of libuhd, but only has the 4.6 version of uhd=
-tools.  If I try to install one of the earlier versions of libuhd with t=
he 4.6 uhd-tools, it causes a conflict and won=E2=80=99t install. I was a=
ble to find a .deb file for uhd-tools 4.4 but is is failing when I try to=
 install it.
>
> Any advice on how to install an earlier version would be appreciated.
>
> Thank you for your kind assistance!
> Best,
> Jim
>
For Ubuntu 22.04, Ubuntu packages recent-enough versions of Gnu Radio=20
and UHD, so that you don't need to use the
 =C2=A0 special Ettus repo with bleeding-edge UHD.=C2=A0=C2=A0 The codeba=
se for the=20
B2xx series hasn't really changed in quite some time.

I have a 22.04 system (typing on one right now) that just has packages=20
from the Ubuntu repositories without having to use
 =C2=A0 the Ettus PPAs.


--------------5BdbL7y0hEhRI3SiOj8YAyb7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/02/2024 20:58, Jim Grubb wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:87917179-2A59-48CA-AF3E-25976AD826D5@me.com"><br>
      <pre class=3D"moz-quote-pre" wrap=3D"">This part I=E2=80=99m a bit =
confused on.  I added the ettus repository which has earlier versions of =
libuhd, but only has the 4.6 version of uhd-tools.  If I try to install o=
ne of the earlier versions of libuhd with the 4.6 uhd-tools, it causes a =
conflict and won=E2=80=99t install. I was able to find a .deb file for uh=
d-tools 4.4 but is is failing when I try to install it.

Any advice on how to install an earlier version would be appreciated.

Thank you for your kind assistance!
Best,
Jim

</pre>
    </blockquote>
    For Ubuntu 22.04, Ubuntu packages recent-enough versions of Gnu
    Radio and UHD, so that you don't need to use the<br>
    =C2=A0 special Ettus repo with bleeding-edge UHD.=C2=A0=C2=A0 The cod=
ebase for the
    B2xx series hasn't really changed in quite some time.<br>
    <br>
    I have a 22.04 system (typing on one right now) that just has
    packages from the Ubuntu repositories without having to use<br>
    =C2=A0 the Ettus PPAs.<br>
    <br>
    <br>
  </body>
</html>

--------------5BdbL7y0hEhRI3SiOj8YAyb7--

--===============7924097899084607622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7924097899084607622==--
