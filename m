Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 123DE65C5A5
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 19:04:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E058B38431D
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 13:04:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672769074; bh=jNaOn0NCoRlXaVEwLQ7TisJx2aIgj2e4keNJScTGJ5w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=r68QvpPe2oFNXRfrYhRw2lxLxcMN5tFppfbf1OX21qYhr2/8c0yGn7d15tFdiqg+H
	 jsreYZkrMmGPuMJ6pqWF5RUHvqAYT2CJY/gn319Uz9TDIVsZ4NX/AftecRmAmboyar
	 McUclvdyhZ60xa57K16q90nMep0Mv/vBwnCC4RRdBOcvV3okxJTgfo8c3NmTc3IlYU
	 aIB0ig/3wu6c0Y50y5+7uPE1vXbUaT4IMtF98xVeZtyBP5BHP7TwRAU3TlsVdoq4gH
	 IE/G3cewdcA/BniKtqgR7u5lOasWmSRD2g+A5/LVzDivLmcCPjm1MGgiz1DhacmPZh
	 kkqMHNCkjjjng==
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 76C8938422B
	for <usrp-users@lists.ettus.com>; Tue,  3 Jan 2023 13:03:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KBrn/h1t";
	dkim-atps=neutral
Received: by mail-oi1-f180.google.com with SMTP id o66so27699700oia.6
        for <usrp-users@lists.ettus.com>; Tue, 03 Jan 2023 10:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LXkKuLtCvums+BS39I1JAYRUmRuhW0b1mTIr4l1AdtI=;
        b=KBrn/h1tZqdHYzF0m3+xHZIeMA6lIyfVsOU1zh0hqSGOdNaxW9iDptuCQwIgHsQc3X
         PARz5b4x8O6iCG98LZ3JniYR0t5HGyGuTzuWHX9gdWEFEzDpVWH6nLINmnluqqvQgF9o
         UXJ/4477UAKcPAvGXdGf/l1or+/tg0nztLgRiPuXXnWK0YTaOYgjo72DtXG6ZJJehUjd
         EAN120wyLC/LerT9TdsCLUi/1M33cKpY2kq0S+RXU48OZ1uBV5Qfrkpt5ubWCYYGRlrE
         oBIp5T5wUsVHYClJ8940B6m9o8wlFJ/XAXRRsNORJznp27BycR0wZ1S4Xns1trrLLYtM
         TNOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LXkKuLtCvums+BS39I1JAYRUmRuhW0b1mTIr4l1AdtI=;
        b=zcfVRKqN6l/gTbI5ie9noMj9DzR+GPiPUMaaHc1i3e3Gk2T7unLhte4PJpltddoREM
         y0cV1psZJQ0QXh9liPulEv+DXrsjpUp/4dFuyHaSGRAaB1DUyKW7Y4DR10DkeIgz1Xkc
         qULg67OK/dSCxc5kLocrzWIwlr405wRgD+IzK0jhmqt+SHd6w+KrFwJzKUCci2wxna4c
         fZVIBHN0LS8NdNkhYETsgln/8R5vqDqlJOw50xZsnMQKvIGq2Su7DvYoPNQz+fAynS41
         TzkxjKD/GohKnBNKFcZ7SB+VlYe6XHIr+FDdRQ+9oYfzY43jWas2yGDXRep8HP9+F3Pb
         XvEA==
X-Gm-Message-State: AFqh2kpsPI6EKqwzeDOsjC2dDywglwnllT10YCgqTkMYXmMhZ+arF0q4
	/g4QAOo0W9gbd8KmiVJD7QB8YaluXa8=
X-Google-Smtp-Source: AMrXdXtJBsz/ce+CKabLz+j01R3WSpFVUtDEI7hv/tmhYsTp4zHdLb1Wq/eEX7cxp8MyoCwNn5T1ZA==
X-Received: by 2002:a05:6808:1983:b0:35e:c8d9:5946 with SMTP id bj3-20020a056808198300b0035ec8d95946mr26081542oib.46.1672768982521;
        Tue, 03 Jan 2023 10:03:02 -0800 (PST)
Received: from [192.168.2.193] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id x17-20020a05620a449100b006fc2e2198easm22861879qkp.95.2023.01.03.10.03.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jan 2023 10:03:02 -0800 (PST)
Message-ID: <e986046c-7281-d4b5-6bc0-067942cc12a3@gmail.com>
Date: Tue, 3 Jan 2023 13:03:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Tw8IjE6vV1f8jS724ptiIK8G4uU8WZ9RNGKr4RLzWDQ@lists.ettus.com>
 <1969689752.2620757.1672759492639@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1969689752.2620757.1672759492639@mail.yahoo.com>
Message-ID-Hash: 3QEHUXVZVRKWAWGDL3E4VSINGEKQMOCX
X-Message-ID-Hash: 3QEHUXVZVRKWAWGDL3E4VSINGEKQMOCX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to save USRP log into buffer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3QEHUXVZVRKWAWGDL3E4VSINGEKQMOCX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5856263510574716607=="

This is a multi-part message in MIME format.
--===============5856263510574716607==
Content-Type: multipart/alternative;
 boundary="------------uTofLcecmrfpiyQR08EbzmK4"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------uTofLcecmrfpiyQR08EbzmK4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/01/2023 10:24, zhou via USRP-users wrote:
> Hi,
>
> Happy New Year!
>
> I am using X310. Our application prints some log information. 
> Meanwhile, UHD also prints log information. Currently, all the logs 
> are streamed to a file. Saving log to file involves access to HD which 
> is a low-speed device. I want to save all logs into RAM first; then 
> only at spare time or after testing, the logs will be saved to file. I 
> think this will improve the speed and reliability of our application.
>
> My questions are:
> - how to save UHD logs into a buffer which is allocated in my code?
> - how to maintain the time order between UHD logs and the logs 
> generated by my code?
>
> Thanks,
> Hongwei
>
Have you looked at:

https://kb.ettus.com/The_UHD_logging_facility



--------------uTofLcecmrfpiyQR08EbzmK4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 03/01/2023 10:24, zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1969689752.2620757.1672759492639@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp34e534c4yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Happy New Year!</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I am using X310. Our
          application prints some log information. Meanwhile, UHD also
          prints log information. Currently, all the logs are streamed
          to a file. Saving log to file involves access to HD which is a
          low-speed device. I want to save all logs into RAM first; then
          only at spare time or after testing, the logs will be saved to
          file. I think this will improve the speed and reliability of
          our application.=C2=A0</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">My questions are:</div>
        <div dir=3D"ltr" data-setdir=3D"false">- how to save UHD logs int=
o a
          buffer which is allocated in my code?=C2=A0</div>
        <div dir=3D"ltr" data-setdir=3D"false">- how to maintain the time
          order between UHD logs and the logs generated by my code?</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks,</div>
        <div dir=3D"ltr" data-setdir=3D"false">Hongwei</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
      </div>
    </blockquote>
    Have you looked at:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/The_U=
HD_logging_facility">https://kb.ettus.com/The_UHD_logging_facility</a><br=
>
    <br>
    <br>
    <br>
  </body>
</html>

--------------uTofLcecmrfpiyQR08EbzmK4--

--===============5856263510574716607==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5856263510574716607==--
