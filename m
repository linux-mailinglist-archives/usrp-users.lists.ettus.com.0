Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 853D944EB65
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 17:31:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C9A713840EC
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 11:31:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Uthrrqw+";
	dkim-atps=neutral
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 65CC3383B35
	for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 11:30:13 -0500 (EST)
Received: by mail-qt1-f179.google.com with SMTP id n15so9012659qta.0
        for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 08:30:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=EWnefxi9PhJRyrXh3hfeyyGY2nz22a/JlAya3cFFPjI=;
        b=Uthrrqw+vd1mh/FBkZCp0VpsknP43aWS8WCnJGq61ZxIA2fCV77ibreqcWBickcTGU
         UxV5iKEdvC4fTMH1EtWuqLvCaYumY207C9VkJ1cARExWpFmWhfMwkddPs4EgFtvgvv2j
         FEEeC3LsMAfhmsgHaf24UzsExnzYHWJT6jyGPCvOYvRnumEMy0MVzAVCBUM6fmYPTTFX
         ZiB0Ue19JsKg7Cjzl5gp9MFF9BEFd0+48EWv2i83E+oHloUCuPhbskeThQ7+zn5Z428j
         wnMQOEg8RSd8Q/F1J8F8j3D+O5eVbUkrHK7bxhX7Ed+2NexNWmJTdPBAi/k3VEUDFRYO
         vW9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=EWnefxi9PhJRyrXh3hfeyyGY2nz22a/JlAya3cFFPjI=;
        b=tP7Huye9xFkSsj7Cr85OSwfYhseTy/c6WcVL1lW/xhsV/arjsPaVFge/8o+t3K8jau
         RFiF5WEbemkGRhxUR2grI5Fy4+3KbuFMdbbw5Zx2C4TAla0sm3TKphawRzSTW6yHcQfo
         5rhpsXD4dXecHefx7zBCXg4ewQlyZ+xk+imlljmr9kTlWVgDODis9CqMJ8GiNpNkwZQP
         PZSTO4u1LjfuXoBxHcvXMzA2j29UJ0Mr+hWmz85qf4m3j1xcI9iYeWu5S4vHVEWAk+J4
         gTvjd2aib74ABzQBOq3Z/Y1DxnpwaCvrZlRGwCDFV7v1zYGcDSMcqaz9Ea9egaKLnQDb
         TKnw==
X-Gm-Message-State: AOAM532edloSfymkEAxJsYMOAmH/d/MQW0mQny83c0NtcFmAO9n2BZYZ
	aMcGBaBIuYJud14K7vBSevKuI1qBDlI=
X-Google-Smtp-Source: ABdhPJx/zc7R+pqT+QhkH6ZLv76JVnlY5UJ7ZY2hNZlS3OZGC3AeH+bSOVol2tPzkTONcCzhBSC3HQ==
X-Received: by 2002:ac8:5991:: with SMTP id e17mr13138620qte.344.1636734612523;
        Fri, 12 Nov 2021 08:30:12 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id e12sm3035017qtj.13.2021.11.12.08.30.11
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Nov 2021 08:30:12 -0800 (PST)
Message-ID: <1662a21b-c4fc-aa9e-ccb3-bf5d41560e5b@gmail.com>
Date: Fri, 12 Nov 2021 11:30:11 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAB__hTT2dcHqDV-OKN9konwjX-5ru1DicuVjU1gsjYPf+CGz1A@mail.gmail.com>
 <CAL7q81vYb9ktOTQb=CfhtEM26dK3cHOe-xE41jD=gWhQniKfVA@mail.gmail.com>
 <CAB__hTQxDvfrm5Qr4vHmy_4mKYSKOAO+8oYqT37f5poqKjtiMg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTQxDvfrm5Qr4vHmy_4mKYSKOAO+8oYqT37f5poqKjtiMg@mail.gmail.com>
Message-ID-Hash: 75PTUBEFHQHC5AEXDLY5LDZGWP3B7N22
X-Message-ID-Hash: 75PTUBEFHQHC5AEXDLY5LDZGWP3B7N22
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 file system problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/75PTUBEFHQHC5AEXDLY5LDZGWP3B7N22/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4996695143164278856=="

This is a multi-part message in MIME format.
--===============4996695143164278856==
Content-Type: multipart/alternative;
 boundary="------------z0L5i3k2ekjmV597W30G6U7K"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------z0L5i3k2ekjmV597W30G6U7K
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-12 10:37, Rob Kossler wrote:
> Thanks Jonathon,
> This morning, I discovered that after writing the file system image=20
> with bmaptool,
>
>   * if I immediately pull the SD card from the host card reader and
>     insert it into the E310, it boots up ok
>   * If I instead pull the SD card and re-insert it right away in the
>     host card reader (to force auto-remount), do nothing, then click
>     to eject the SD card and insert in the E310. It does not boot up!=C2=
=A0
>     The host (Ubuntu 20.04) must do something to the SD card by simply
>     mounting and ejecting the SD card. Perhaps it has something to do
>     with the Data partition being an expandable partition?
>
> Any ideas on this? The reason for wanting to re-mount the SD card in=20
> the host system right away is to configure the=20
> /data/network/eth0.network interface to change it from DHCP to Static=20
> IP. At first I speculated that re-writing this file on the host was=20
> causing the issue, but later I determined that just the mount/eject=20
> sequence causes the problem.
>
> Also, any ideas on how I can fix the "date/time" so that it doesn't=20
> always come up "Aug 6"?
>
> Rob
>
So, there's a DS1139 RTC chip, which is an garden-variety RTC chip used=20
in designs all over the place.=C2=A0 The linux rtc-1307 kernel driver kno=
ws=20
about this chip.

HOWEVER, it requires a battery to maintain time, and near as I can tell,=20
the only battery in the E310 universe is with the E312 "UPS" battery.=C2=A0=
 I=20
don't see any evidence
 =C2=A0 that there's a separate, small, back-up battery for the RTC in th=
e=20
plain E310.


--------------z0L5i3k2ekjmV597W30G6U7K
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-12 10:37, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQxDvfrm5Qr4vHmy_4mKYSKOAO+8oYqT37f5poqKjtiMg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Thanks Jonathon,
        <div>This morning, I discovered that after writing the file
          system image with bmaptool,</div>
        <div>
          <ul>
            <li>if I immediately pull the SD card from the host card
              reader and insert it into the E310, it boots up ok</li>
            <li>If I instead pull the SD card and re-insert it right
              away in the host card reader (to force auto-remount), do
              nothing, then click to eject the SD card and insert in the
              E310. It does not boot up!=C2=A0 The host (Ubuntu 20.04) mu=
st
              do something to the SD card by simply mounting and
              ejecting the SD card. Perhaps it has something to do with
              the Data partition being an expandable partition?</li>
          </ul>
          <div>Any ideas on this? The reason for wanting to re-mount the
            SD card in the host system right away is to configure the
            /data/network/eth0.network interface to change it from DHCP
            to Static IP. At first I speculated that re-writing this
            file on the host was causing the issue, but later I
            determined that just the mount/eject sequence causes the
            problem.</div>
        </div>
        <div><br>
        </div>
        <div>Also, any ideas on how I can fix the "date/time" so that it
          doesn't always come up "Aug 6"?</div>
        <div><br>
        </div>
        <div>Rob</div>
        <br>
      </div>
    </blockquote>
    So, there's a DS1139 RTC chip, which is an garden-variety RTC chip
    used in designs all over the place.=C2=A0 The linux rtc-1307 kernel
    driver knows about this chip.<br>
    <br>
    HOWEVER, it requires a battery to maintain time, and near as I can
    tell, the only battery in the E310 universe is with the E312 "UPS"
    battery.=C2=A0 I don't see any evidence<br>
    =C2=A0 that there's a separate, small, back-up battery for the RTC in=
 the
    plain E310.<br>
    <br>
    <br>
  </body>
</html>
--------------z0L5i3k2ekjmV597W30G6U7K--

--===============4996695143164278856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4996695143164278856==--
