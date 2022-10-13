Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF9A5FDB79
	for <lists+usrp-users@lfdr.de>; Thu, 13 Oct 2022 15:49:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B4B68383E62
	for <lists+usrp-users@lfdr.de>; Thu, 13 Oct 2022 09:49:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665668992; bh=2ql+opwKFsnx0zWOyTQVcylS/OWl30BSmwMzm9Xn6rM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mycJ85sV83Si9F34EkZwqS/Wksegnf3k8eWI/WhzSMcm3pkfbvlgKREfvwDLbw9wB
	 4iCmTrav1pSXDrYLqtCZRpqbKerF/QYdZWRV9yg/dDIQ4ywFqdz/KjOZQdehGqA0LR
	 B7yFzZWvgkjK/SyzaAKsktKH2LJMPwoT21YP8AURMwqk4rUSr2WjIDnUiaidtL+BHs
	 Q0Aw7V/iHAlKsIUqIbizX6za3JTHCnoFqgO3KbRZCjaDuqAqbVpThh8F1e9Eo26cu4
	 caMjXf1JhVHwIFFAXlD2vJth8ZvNhJtrjLobykoEpzMnqwVxSwW6kvLXh/M+1ibaes
	 gQsYX5SoqRaxg==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id CA07D380937
	for <usrp-users@lists.ettus.com>; Thu, 13 Oct 2022 09:48:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Xdbyhiuk";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id mx8so1285013qvb.8
        for <usrp-users@lists.ettus.com>; Thu, 13 Oct 2022 06:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jQQRhBfjw88LHNN9Qsp/CCUh7XETLhvtTLQiZHwSTAc=;
        b=XdbyhiukZ+4mTGf64j34nI5+8+0ux2LC/Asg+M7bdn155o9lzXqC298vGBkH3Bl6wZ
         MWEugW3S7JOaQSbhjwrEcZ1v1LJmDhGJ4x4sSCis2JozwRhxphpdOrC8Lge/undK+7rL
         KIxmBdS+xMYslAQzcWpM4Ho5TBMiFwmIOv+YIG1Q+daDhI6lXq5Fmj5adAQYNRQBsN7p
         KOnhcJicqHMMTMFkTIToUNuQWIlAmsn96OnMKo61lOJq3dAbPJ5uno/C+Bl7Upaneeib
         mYaSupQnoF98pS3b6NmSucc6dmzCfokGgPI6yT9FIaQHYYiMTVUylKZ2kinlAu+n82kg
         zMvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jQQRhBfjw88LHNN9Qsp/CCUh7XETLhvtTLQiZHwSTAc=;
        b=jIb1uzJ8/qkiM+2F7wTwVVZRQrvrZT5dShDhvF2+4WzcM2qEc9hUTBP8MTbVhvsQyD
         x5q7fNygW33YvbCURAq2fPq7IYDaVnRS1k3fg+b4thXEiJODciqVq11PzJp/TuM4WXyz
         VKu4rTcA32imRQbh/RRlXJ6FiDNaVHXBQH6LxcIB/DIun0orDKm8ElDx2TRnfdAmrQlA
         oSFspUwkwQ1F3DfbApMc7g1e+o2CrcdEEpO2PaE7Or+2ywIE5gYVC+wMvKDL0sO2msg7
         VqqKuQfBb/+aFq9nZ4SRknIG/TTbVi1nKYRiLh2tATmfVCKAl8VM5qF8bs0s1UKHqOEN
         s8Rw==
X-Gm-Message-State: ACrzQf2Xdix5k+ZgrfC5LhafAGR+um1ito7ztqbccQmQ+FK5Vnxr7w6A
	Gepk3vZw8YBbSh9WwW4DFcsgb1FSX7Y=
X-Google-Smtp-Source: AMsMyM6enV4qPjTjJLCW7609zQ+IABJyT0LATfs7f+2N/Af8XncMJ3C/C/RXPSEc5f3w9wEuHz7zCA==
X-Received: by 2002:a0c:aa04:0:b0:4b4:525e:c98a with SMTP id d4-20020a0caa04000000b004b4525ec98amr10393531qvb.95.1665668882050;
        Thu, 13 Oct 2022 06:48:02 -0700 (PDT)
Received: from [192.168.2.186] (bras-base-smflon1825w-grc-09-174-93-2-50.dsl.bell.ca. [174.93.2.50])
        by smtp.googlemail.com with ESMTPSA id 126-20020a370684000000b006ec5238eb97sm13976359qkg.83.2022.10.13.06.48.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Oct 2022 06:48:01 -0700 (PDT)
Message-ID: <6c889a47-626f-7e3d-2186-67bee6eefe4d@gmail.com>
Date: Thu, 13 Oct 2022 09:48:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAJhOL6cgJEweaMDkZJ0PKe2aSjpoC52cib_e4VaWZD9_01ogmw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAJhOL6cgJEweaMDkZJ0PKe2aSjpoC52cib_e4VaWZD9_01ogmw@mail.gmail.com>
Message-ID-Hash: L6FJ366PI5YXKX2ASRPNZ2HVUOABBHMK
X-Message-ID-Hash: L6FJ366PI5YXKX2ASRPNZ2HVUOABBHMK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: commercial support
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L6FJ366PI5YXKX2ASRPNZ2HVUOABBHMK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6253321484809820546=="

This is a multi-part message in MIME format.
--===============6253321484809820546==
Content-Type: multipart/alternative;
 boundary="------------80wPgO9WfqGBSmsOTpBgY34Q"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------80wPgO9WfqGBSmsOTpBgY34Q
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-10-13 07:48, Kevin Williams wrote:
> Hi Guys,
>
> Is it possible to buy commercial=C2=A0support for the usrp/rfnoc ip?
>
> I have a fairly complex project which=C2=A0is not easy to break down in=
to=20
> specific, single, questions on a mailing list.
>
> Kind regards, Kevin
>
> --=20
> Kevin Williams
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
I would contact sales to see about a commercial support contract. My=20
understanding is that NI-branded USRPs can be covered
 =C2=A0 under NI's standard support contracts.


--------------80wPgO9WfqGBSmsOTpBgY34Q
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-10-13 07:48, Kevin Williams
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAJhOL6cgJEweaMDkZJ0PKe2aSjpoC52cib_e4VaWZD9_01ogmw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi Guys,
        <div><br>
        </div>
        <div>Is it possible to buy commercial=C2=A0support for the usrp/r=
fnoc
          ip?</div>
        <div><br>
        </div>
        <div>I have a fairly complex project which=C2=A0is not easy to br=
eak
          down into specific, single, questions on a mailing list.</div>
        <div><br>
        </div>
        <div>Kind regards, Kevin<br clear=3D"all">
          <div><br>
          </div>
          -- <br>
          <div dir=3D"ltr" class=3D"gmail_signature"
            data-smartmail=3D"gmail_signature">Kevin Williams</div>
        </div>
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
    I would contact sales to see about a commercial support contract.=C2=A0
    My understanding is that NI-branded USRPs can be covered<br>
    =C2=A0 under NI's standard support contracts.<br>
    <br>
    <br>
  </body>
</html>

--------------80wPgO9WfqGBSmsOTpBgY34Q--

--===============6253321484809820546==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6253321484809820546==--
