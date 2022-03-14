Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B045A4D8A8E
	for <lists+usrp-users@lfdr.de>; Mon, 14 Mar 2022 18:11:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D1232384D2F
	for <lists+usrp-users@lfdr.de>; Mon, 14 Mar 2022 13:11:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dgBBHtuK";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id A9B453845E4
	for <usrp-users@lists.ettus.com>; Mon, 14 Mar 2022 13:10:41 -0400 (EDT)
Received: by mail-qk1-f176.google.com with SMTP id q4so13291569qki.11
        for <usrp-users@lists.ettus.com>; Mon, 14 Mar 2022 10:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=8sK9lwaPtTJHHmxcNaa3thhgOI9KIBgLIG3y0XRxA78=;
        b=dgBBHtuKSH35DPXSQP9SZM6kiUg37byIZgnPLqWOryI/RJiAt6NTy9SD4chF+sS3hp
         x2/sn1kovIu4qHywxS4ZUNPf2R6n91f1SneQzDf7zX2agi1w0RkRzZTn6VV3MItr40XV
         /s+YrRHIOu/v7Zfp17oANpMcm8knUc1L5EzmHHqNhD4UsucMVvSTuykSkcrVyNj8ls4a
         CkMP9liBBVo6I+GuNGmu8CKIl3BEnmiCodDu74y/0shlyTqRlfqhr6D0OhSjCrFIjG0O
         XzmpVFSmnk6UkjpR5L2he3wNq7OtDBAZ8N/5W1FzJQ7ROaWY0W5eMNxRpbseaIoID9CJ
         2q4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=8sK9lwaPtTJHHmxcNaa3thhgOI9KIBgLIG3y0XRxA78=;
        b=7uKih0i3YbQjxxKJksC1ehkQP9Y8hMLKITo5zG3YWGPH5f4ACmUsVXcMeX/vDbE6mr
         uuJXGpiR9BAFxQRxc8mfwbxRifCXTGb92ScWpNiU8cH7IEV/MQdjE36+/NxNxUfLsV7M
         KVQggMdsJ6rUGmiNAs+nRenR9dAr1ZqUU5uXEPrCmHL7T1WUcCQCtNkNOl/Gw6lFsS5w
         3v/YeQ22RdKJo00Tnk5Bel8D+XIYodHy/h0PIuSPhMI3xa4vGWckeWrGPnNA4I6HrA/9
         +aIQpQ/7ElDnyn6ChBQvBuq+FbsumQW95Q/87Cw6JDLME6O+TNSJLK0o4DjyK/g17LA+
         07/w==
X-Gm-Message-State: AOAM533G8kaNuQcHe/XYF+TvH9bkHq8W/tD1dYhXdPin6nWQGSbbpdUn
	vbmiu4C8oFOI8CjZqEovq2i6KDKr2yM=
X-Google-Smtp-Source: ABdhPJw362HlBWHY7JwdQQI9iSkZbHlmrgMxL4+IijTxpm7ZFYMqVlKjUp6AhNs3+ueSk0OP6eUx+w==
X-Received: by 2002:a37:3d5:0:b0:67b:335d:59c3 with SMTP id 204-20020a3703d5000000b0067b335d59c3mr15392799qkd.739.1647277840847;
        Mon, 14 Mar 2022 10:10:40 -0700 (PDT)
Received: from [192.168.2.211] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id n8-20020ac85a08000000b002e06aa02021sm11626373qta.49.2022.03.14.10.10.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 10:10:40 -0700 (PDT)
Message-ID: <01953b1c-1d1e-f3a9-5117-eb2dd9b4f24d@gmail.com>
Date: Mon, 14 Mar 2022 13:10:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <0316677e8257462d9f3fb4864d053d16@gmvnsl.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <0316677e8257462d9f3fb4864d053d16@gmvnsl.com>
Message-ID-Hash: 7P6JYBNPEJYVSBZ4GO4KWEPXJCNXOPY7
X-Message-ID-Hash: 7P6JYBNPEJYVSBZ4GO4KWEPXJCNXOPY7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E312 auto static IP on cable connection
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7P6JYBNPEJYVSBZ4GO4KWEPXJCNXOPY7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3464649089397702813=="

This is a multi-part message in MIME format.
--===============3464649089397702813==
Content-Type: multipart/alternative;
 boundary="------------34SJuqQIflMUkafprFAB0vSh"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------34SJuqQIflMUkafprFAB0vSh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-03-14 12:56, David Scott wrote:
>
> Hi all,
>
> We are trying to use the USRP E312 with ssh over ethernet. I am 
> setting a static IP with
>
> ifconfig eth0 xxx.xxx.xxx.xxx netmask xxx.xxx.xxx.xxx up
>
> Which works fine, connecting to the USRP with static IP address set on 
> my laptop.
>
> The issue is that we need to disconnect the ethernet to test 
> transmission on a drone. When we reconnect the ethernet cable the ip 
> address is not re-established. I have to connect with serial cable and 
> re-run the above command to bring the ethernet back up.
>
> Is there a way to have this done automatically on the E312? It does 
> not appear to have network-manager installed (like e.g. Ubuntu). I 
> have modified /etc/init.d/interfaces but it seems to ignore this file 
> completely, not even using it to set IP on system boot.
>
> Any ideas?
>
> Kind regards,
> David
>
>
The interface is managed by Network Manager, so it takes over at device 
state transitions, and by default is setup for DHCP.

For earlier system images, this applies:

https://files.ettus.com/manual_archive/release_003_009_007/html/page_usrp_e3x0.html#e3xx_network_static

For newer (3.15 and later) system images, see this thread here:

https://www.mail-archive.com/usrp-users@lists.ettus.com/msg11872.html


--------------34SJuqQIflMUkafprFAB0vSh
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-03-14 12:56, David Scott wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:0316677e8257462d9f3fb4864d053d16@gmvnsl.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <p>Hi all,=C2=A0<br>
          <br>
          We are trying to use the USRP E312 with ssh over ethernet. I
          am setting a static IP with=C2=A0<br>
          <br>
          ifconfig eth0 xxx.xxx.xxx.xxx netmask xxx.xxx.xxx.xxx up<br>
          <br>
          Which works fine, connecting to the USRP with static IP
          address set on my laptop.=C2=A0<br>
          <br>
          The issue is that we need to disconnect the ethernet to test
          transmission on a drone. When we reconnect the ethernet cable
          the ip address is not re-established. I have to connect with
          serial cable and re-run the above command to bring the
          ethernet back up.=C2=A0<br>
          <br>
          Is there a way to have this done automatically on the E312? It
          does not appear to have network-manager installed (like e.g.
          Ubuntu). I have modified /etc/init.d/interfaces but it seems
          to ignore this file completely, not even using it to set IP on
          system boot.=C2=A0<br>
          <br>
          Any ideas?<br>
          <br>
          Kind regards,<br>
          David</p>
        <br>
      </div>
    </blockquote>
    The interface is managed by Network Manager, so it takes over at
    device state transitions, and by default is setup for DHCP.<br>
    <br>
    For earlier system images, this applies:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
_archive/release_003_009_007/html/page_usrp_e3x0.html#e3xx_network_static=
">https://files.ettus.com/manual_archive/release_003_009_007/html/page_us=
rp_e3x0.html#e3xx_network_static</a><br>
    <br>
    For newer (3.15 and later) system images, see this thread here:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://www.mail-archive.com/u=
srp-users@lists.ettus.com/msg11872.html">https://www.mail-archive.com/usr=
p-users@lists.ettus.com/msg11872.html</a><br>
    <br>
    <br>
  </body>
</html>

--------------34SJuqQIflMUkafprFAB0vSh--

--===============3464649089397702813==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3464649089397702813==--
