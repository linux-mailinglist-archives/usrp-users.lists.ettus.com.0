Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DAE9D8992
	for <lists+usrp-users@lfdr.de>; Mon, 25 Nov 2024 16:43:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 142B73860BD
	for <lists+usrp-users@lfdr.de>; Mon, 25 Nov 2024 10:43:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732549384; bh=8fzsoDe5Ky4xTK9SDfizhIVRxiMKYWmVacNISuZptCw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=NJoAeRI8Be9lyGR18xoMR4xIx83qv53Zlae7ELWqdL0aJb0wUbNUAgZbqbm95Cxqg
	 hKxhaP2rUCmRsVURO/jjGePfCpzJHEOnvlM2PzRi/PIAFmJ2GARJ95Z7sMIE48PRmY
	 1zjM07mkHfSdH+WoC+Q3yFF5vlvircGRVfowPnQBHtdqBJpn9rvRUUJC/l2k6K/PFl
	 pdFIy9enyuc+UQTVCbWJMAUf7h4ZqEQW5VjMvPvIixbqjwJyc0L1A/KmpClaVaY7FR
	 238mTp2/G8NOkI9pSFD17Z12oUOrG/ywRpFZxJa/fZrYmvHrSpg/vRNLOVR4Gh7j63
	 109k6Mgw1uzlw==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 9FD1A385CDB
	for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2024 10:42:43 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mlu/sp+M";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6d4531d1309so24528976d6.0
        for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2024 07:42:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732549363; x=1733154163; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Au2PMSGhgYndf7mA3naLSh50vkwa7We5UfDUNUBRikI=;
        b=mlu/sp+Msl2N5o5IVHn7uWIbrL39yNR/QVl0D5AQkCURfzGYJRepEJolMssXnHGw7C
         ql1B+93ziY/Mqq8k4k3vhrzr60sm2g3dg10Hm9YOXchTby4Jlg5YD3a8lbMthV/PhBXT
         JMHhAI4k5HQFupgom0B0nisLllKv77tEgbA/9+QS3c4dwfDb7KRx9z8M75XB2q1dKMZJ
         0lhDaZoD+u32y1btyQ0Q9wEccFAfBiWzBFXf1ieSlnJiePnCrcWsgQjBfEZzzY6CVdVm
         F31gqzr7tht9V8xpKRKBhQtCm3U9DoU8Abb52f6pCSwGUlgqiSgGRd5aJ2YTeQockJHs
         idYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732549363; x=1733154163;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Au2PMSGhgYndf7mA3naLSh50vkwa7We5UfDUNUBRikI=;
        b=oQJRMjTYf7jvICGPg1b3jH9IngkAxHdY1NINgV5Qhm/kKBk2TyEKa3vNrqzKQKU5Lx
         5FW4NgOB9g1ULi89c5lRzkq4oJP6E1UrljCs9i5H6bmKOTSpX3bON9acvQw9d0pgOqNV
         8/v2AU4p7Ss3JbdYVXCCX3Xw7rnDOK99BjQir0XlKSLOcRniThuEU9bz2a+y/JEefUCZ
         AgmwUwo9rdOZ2v84b713LKsLn73DzI8+Ne+lTKNW9dX2m9DMJWzHeo8bGsprsdVLWj31
         wfXSLrCeWxarTBBXZBtHg+eHG6MYEY1ncCATxOfkyGMJSG+ru1iOEjfCzZShUE83mvni
         oECA==
X-Gm-Message-State: AOJu0Yy0DhKog2Dq08pAd4/P0R52KHDhwz6dBcpgtuFpKgTrTWJ6oC4/
	Zu1vluzERUgkPaYoRF/PBxMWe2l78JY9zOSCJozFajUT4XXH8m6I1XaC0w==
X-Gm-Gg: ASbGncs1pZBym+UXWTOwW5Wc3uIJk8fHRERizpI/mdSTJ6znDi3EpUvKfuXylNvyTY4
	C/JnGFwxSWSKVFdRyunEAru/hLuUy9EyPLp84T1I+2jcdVopjNHIf1mr4nNkXBAWcZSLqfH8YkD
	+YgvX4NVhS5i/dSHeKdvi0DPc6hyYQq80Hona/UWEbFqZIJYa42W0kf9HnP/rZpgMerEZe/mkRt
	pOcHvXMBYpP5HY3iAm0sBIPyPQKxGZ5ARWEdgITG+2IBkCRP62BQh75NfmB
X-Google-Smtp-Source: AGHT+IFFSD864ZDPK9YKH/WtnGCuvGwzY089NjmkxGufT1Qw1rjXHAXRk61dPxg7xolUxSYbou4abg==
X-Received: by 2002:a05:6214:19c6:b0:6cb:3643:3370 with SMTP id 6a1803df08f44-6d450fe7cdamr234736956d6.23.1732549362604;
        Mon, 25 Nov 2024 07:42:42 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b66ede6892sm63903685a.70.2024.11.25.07.42.42
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 07:42:42 -0800 (PST)
Message-ID: <b0d6b991-58d3-42b2-a489-9b6d3211bf50@gmail.com>
Date: Mon, 25 Nov 2024 10:42:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <uNhyXyxxNRdT2GUXZF6G8AGP1ssxTC2lNBS1SIGE@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <uNhyXyxxNRdT2GUXZF6G8AGP1ssxTC2lNBS1SIGE@lists.ettus.com>
Message-ID-Hash: HLHKBWAZSSQFANVZXFIPZNM7CC3F5MPT
X-Message-ID-Hash: HLHKBWAZSSQFANVZXFIPZNM7CC3F5MPT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Signal Distortion and Phase Issues with USRP B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HLHKBWAZSSQFANVZXFIPZNM7CC3F5MPT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3007096165258645818=="

This is a multi-part message in MIME format.
--===============3007096165258645818==
Content-Type: multipart/alternative;
 boundary="------------PGGozQRzOsUbJsYIG8HFfF5u"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------PGGozQRzOsUbJsYIG8HFfF5u
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 25/11/2024 07:12, yibindeng66@outlook.com wrote:
>
> I think I=E2=80=99ve found the problem. My data was of type |np.complex=
128|,=20
> and perhaps the USRP only used part of it or treated one sample as=20
> two? When I changed the data type to |np.complex64|, the issue seemed=20
> to be resolved. Thanks again for your help!
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Indeed, UHD doesn't support np.complex128.=C2=A0 It will have unpacked it=
 as=20
np.complex64, which means it will absolutely
 =C2=A0 have treated one sample as two.


--------------PGGozQRzOsUbJsYIG8HFfF5u
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 25/11/2024 07:12,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yibindeng66@ou=
tlook.com">yibindeng66@outlook.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:uNhyXyxxNRdT2GUXZF6G8AGP1ssxTC2lNBS1SIGE@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I think I=E2=80=99ve found the problem. My data was of type <cod=
e>np.complex128</code>,
        and perhaps the USRP only used part of it or treated one sample
        as two? When I changed the data type to <code>np.complex64</code>=
,
        the issue seemed to be resolved. Thanks again for your help!</p>
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
    Indeed, UHD doesn't support np.complex128.=C2=A0 It will have unpacke=
d it
    as np.complex64, which means it will absolutely<br>
    =C2=A0 have treated one sample as two.<br>
    <br>
    <br>
  </body>
</html>

--------------PGGozQRzOsUbJsYIG8HFfF5u--

--===============3007096165258645818==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3007096165258645818==--
