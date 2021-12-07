Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5F746B0AB
	for <lists+usrp-users@lfdr.de>; Tue,  7 Dec 2021 03:34:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 520F3384B21
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 21:34:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NC5G3q1Z";
	dkim-atps=neutral
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 160CC38452F
	for <usrp-users@lists.ettus.com>; Mon,  6 Dec 2021 21:33:02 -0500 (EST)
Received: by mail-qt1-f170.google.com with SMTP id n15so12985236qta.0
        for <usrp-users@lists.ettus.com>; Mon, 06 Dec 2021 18:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=T0UEMTAJb+QEYQTOJZacfhukSKVBM4yQdZf4J+BQ5ts=;
        b=NC5G3q1Z2L7pch2skamgofeDN14HpSCELNJBUSCouZCzybl0/MRwoR7KSSP7O1zY7U
         p5Kp23C7TjoEIY/XgXQeWmXPQvgegztzqyg4eAhEHTVpy+WHjvLXcEp8KUFuhnQZ+v3v
         pkyYdj8vrvleKEWPRE/RSZAScpsXXYMomvU0jr4Fzn4yfVwoVrsrOAfGN9SKUIqZiE6Q
         vuN/qMWQrP0d/jJcDy10XhyP446omY8xc2sMQkPfw+5HhAuVTY0W1WEUikWydjxpNIDc
         Vfv+w0OrTGCrVRYssy0mB3+cRCM9lenN/qetXdjBgFz4axp5+hlI2bniTaiBW74afqMu
         YMQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=T0UEMTAJb+QEYQTOJZacfhukSKVBM4yQdZf4J+BQ5ts=;
        b=ntLvVXE8sVFB4tNXRdTXek9RCwIghL3zM9Rj1V50V2k5Nsf0Rs5LFr9Blx4B7/AMs+
         T/GugYPOap8HBgfVDL4ZWRRJYaNu40rz5/4NGp0ukVkSVTkpY+Ox59HLe9H7jXMGEwxN
         Dwk8HLd/aTmgb3cC5D+rbI8KkWOOmMADhDCSZph+/Vr/msmGvBs0gGEx3DQXVOR5P9kN
         s+wtDmXqRndJKxSA/7o6cNkgRm6W8nrQlAMwAGoIxP+sXaOOqHV30Rl8GGdUSxclNCg1
         pvdLFznR7/mwB4tz2mKCBx/kU/HXOt2Qpa/CZMw3gQM+lsgdRMBZaFrULCU53pzkkLeH
         xNUQ==
X-Gm-Message-State: AOAM531Xfi+soBqEsJIspK/aOfd05MDbdwgyjHe4n06YJQ/9bzt28vOB
	SH0jpEv/0utMMQYAKFSggSP9r+J5Jd0=
X-Google-Smtp-Source: ABdhPJxjqfWhWNApvSOUCEvx/6GUJkPIXRJNHTsvbnzkNc77mB/ln0W67hPdLZ3Ox2IN/n3gTpQuBQ==
X-Received: by 2002:ac8:7f13:: with SMTP id f19mr45680307qtk.423.1638844382036;
        Mon, 06 Dec 2021 18:33:02 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id bi39sm7445913qkb.127.2021.12.06.18.33.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 18:33:01 -0800 (PST)
Message-ID: <cf59345d-91bf-6cdc-f575-10af594a317d@gmail.com>
Date: Mon, 6 Dec 2021 21:33:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <ls1ryHQ4dmIOjjxsxzagIdsn1imgf88MImehXTUebM@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <ls1ryHQ4dmIOjjxsxzagIdsn1imgf88MImehXTUebM@lists.ettus.com>
Message-ID-Hash: ZZHGISUP4XJZDSQ67GYYOYVUJCWDEI4I
X-Message-ID-Hash: ZZHGISUP4XJZDSQ67GYYOYVUJCWDEI4I
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: (B210) UHD Error : Exception caught in safe-call
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZZHGISUP4XJZDSQ67GYYOYVUJCWDEI4I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3783891331960486573=="

This is a multi-part message in MIME format.
--===============3783891331960486573==
Content-Type: multipart/alternative;
 boundary="------------GOqJDm5crpCTrn4vIkDLxaEB"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------GOqJDm5crpCTrn4vIkDLxaEB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-06 21:30, condicionjohnexekiel@gmail.com wrote:
>
> First and foremost, thank you for attending my question.
> Yes, it occurs to another USB port and also to another computer based=20
> on what I tried to isolate any hardware problem.
> Kindly explain to me what do you mean by *=E2=80=9CsrsLTE is provoking =
a=20
> firmware bug=E2=80=9D*, I=E2=80=99m quite confused if it=E2=80=99s just=
 a hardware problem=20
> that is causing it, since I tried to connect and disconnect it from=20
> the port and the process run with no error. Thank you very much.
>
>
It's likely not a hardware issue, per se, but rather than srsLTE is=20
using the device in such a way that some Firmware/FPGA bug is provoked,=20
and this causes the B2xx to enter
 =C2=A0 a "hung" state until you unplug/replug its USB cable, thus causin=
g a=20
complete reset of the device.

Are you powering the device just from the USB cable, or are you also=20
using external power?


--------------GOqJDm5crpCTrn4vIkDLxaEB
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-06 21:30,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:condicionjohne=
xekiel@gmail.com">condicionjohnexekiel@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:ls1ryHQ4dmIOjjxsxzagIdsn1imgf88MImehXTUebM@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>First and foremost, thank you for attending my question.<br>
        Yes, it occurs to another USB port and also to another computer
        based on what I tried to isolate any hardware problem.<br>
        Kindly explain to me what do you mean by <strong>=E2=80=9CsrsLTE =
is
          provoking a firmware bug=E2=80=9D</strong>, I=E2=80=99m quite c=
onfused if it=E2=80=99s
        just a hardware problem that is causing it, since I tried to
        connect and disconnect it from the port and the process run with
        no error. Thank you very much.</p>
      <br>
    </blockquote>
    It's likely not a hardware issue, per se, but rather than srsLTE is
    using the device in such a way that some Firmware/FPGA bug is
    provoked, and this causes the B2xx to enter<br>
    =C2=A0 a "hung" state until you unplug/replug its USB cable, thus cau=
sing
    a complete reset of the device.<br>
    <br>
    Are you powering the device just from the USB cable, or are you also
    using external power?<br>
    <br>
    <br>
  </body>
</html>
--------------GOqJDm5crpCTrn4vIkDLxaEB--

--===============3783891331960486573==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3783891331960486573==--
