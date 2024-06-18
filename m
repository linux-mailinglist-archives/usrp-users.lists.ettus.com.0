Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE6090C140
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2024 03:27:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6FC9D38537B
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2024 21:27:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718674032; bh=d6O4eYCasoSbGEc4Aoi3OiVT+w7uIj7cwxB52S50/r4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=fH+gvk+Y+QNCD9vcqEs/5OiSJJ8i/YFFqcGHJA02bdcor1XAtV7ufeNetIcdOgLXz
	 UaOufcyOBgYEEr9i/7BgNQESANwp1InIUxDDsh52z/7JiLogsi2ur8LQgPotPYXn1n
	 a+RQBOkkn8HRcXTW3GJ/burkhAqvn3Ul3p1ECNRJEoOzdzl3sH3rt46ecOfjp9rNg7
	 44LyOYEUymRFKD0DX+jXtTt4Ij/UwFIGSWPxv3cNm09jneXElWbnXOrUEc1jovW9Tt
	 kBBZ2PGjHitIkDzj2dLBn1ix/RtebrfxhfP8G6KBOpb9kdEtJxd6SFkqxHJNBAAdPB
	 7QFXXCogW/hgg==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 9DCA03852F4
	for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 21:26:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gqm/0fZM";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6b06b78e716so30959966d6.3
        for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 18:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718674018; x=1719278818; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3crOIUJ83d/sF8G0OSngYVDUo3a9Ze0OrSolhGn7F+c=;
        b=gqm/0fZMtI4k+UDAXPHZfcSmCc65cUn0GpLW/kFLGEBQSaHiAGEusXGtlRsPWDSYGS
         Mh9AG2IaWIsbVfamoMSx/IfUm9QDkUUqzTMfkSD9lGial25yIPFtxGgenfok1qKpMd05
         WRiI4WS3YKTUHDcVGoBcMqMIcQf2dT8xc7efNCe11Q6g10yGem7KHJVm0JdV6BZiXlAq
         C47MpTWYTp1Dzi46N8ZPJrhs280UXqzANVh2W6NByzR8Y3mSOY39wpR8RpJM6p3WkGrx
         R405+8P9tI0ik7jqvzjWPGzxyueGB2xUB4vNt9nk+9GD4HhV956+1by4Z0IMeB6dmuEg
         LbNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718674018; x=1719278818;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3crOIUJ83d/sF8G0OSngYVDUo3a9Ze0OrSolhGn7F+c=;
        b=oV73isWoTeuo6UamjP20T0m3phsp0t3ui05QdJmCqMb3oU4tV/f913zyzXU18BKf16
         hW9Dg7WLbPJ79aLSm0pkIH37zlsGRh9N9KAY6cI0D6PbiSbcRzNKF2aOv8uD+FYrix0o
         9CYahths+4DjjC8NP/EAyGe8IhOcaKr0r4oyM0EsJJBnZB+0k4rAFEPen+uqrl+q9Fnk
         sJ35I5nYNsW7UM6Cx/DoHYS4CHwhT16WD/qqMHvb/YB6kO3ayZAEOC1KrWAl0oqB9LaH
         50YYvIAEc8TF2cEfIa2LHspO8rDVg7qzI1evrCWeAF3edne3UsLxXYLtRhn35VQH1fa+
         4d5A==
X-Gm-Message-State: AOJu0YwC/oudJrk7zcHHWisKCAs24iwhfReJdGfNEe0MZRHKv9i/RQf1
	ZBp5ZeufLDpBACaSHDn5sq5S7cqgm+PJgorF/9PsrVrix1pnmaQO2HJj1w==
X-Google-Smtp-Source: AGHT+IFimbF+ph0eeL0TTFvr2cM0wPAlgjQVoAlFNO3UfJrDjfG4+q3XlCFm6ojo7DxEROPgDo7qXw==
X-Received: by 2002:ad4:4e82:0:b0:6b0:789f:9ce2 with SMTP id 6a1803df08f44-6b2afc7931dmr111193616d6.2.1718674017610;
        Mon, 17 Jun 2024 18:26:57 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-441ef4fe986sm52059311cf.33.2024.06.17.18.26.56
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jun 2024 18:26:57 -0700 (PDT)
Message-ID: <8d1ae2ca-87fc-452f-b807-98dbae3d6c77@gmail.com>
Date: Mon, 17 Jun 2024 21:26:46 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <a6Wv2vNjKK9miqOQYxIMzCmWBembWN1FXYDSSBVXCU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <a6Wv2vNjKK9miqOQYxIMzCmWBembWN1FXYDSSBVXCU@lists.ettus.com>
Message-ID-Hash: 7IJHEE5LKP6HBKANSSFS7A7X3IBEJCX6
X-Message-ID-Hash: 7IJHEE5LKP6HBKANSSFS7A7X3IBEJCX6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7IJHEE5LKP6HBKANSSFS7A7X3IBEJCX6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0348242054379060633=="

This is a multi-part message in MIME format.
--===============0348242054379060633==
Content-Type: multipart/alternative;
 boundary="------------4P0S56nwmVM0KJ8z37ljm0RS"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------4P0S56nwmVM0KJ8z37ljm0RS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/06/2024 21:16, cjohnson@serranosystems.com wrote:
>
> I hacked the code to set the DATA_FRAME_MAX_SIZE =3D 8500, half-way=20
> between 8000 and MTU 9000.
>
> Then I made sure to set the send_frame_size=3Drecv_frame_size=3D8700,=20
> which is equal, and over the MAX_SIZE.It still picks 8144. You can see=20
> below.
>
> I added a bunch of debug of the intermediate variables.
>
> $~/uhd-4.6.0.0/host/build/examples$ ./tx_samples_c -a=20
> "type=3Dx300,addr=3D192.168.40.2,send_frame_size=3D8700,recv_frame_size=
=3D8700"
>
> |Creating USRP with args=20
> "type=3Dx300,addr=3D192.168.40.2,send_frame_size=3D8700,recv_frame_size=
=3D8700"...|
> |[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;=20
> UHD_4.6.0.0-1-ga9f0b4c7|
> |[INFO] [X300] X300 initialization sequence...|
> |[INFO] [X300] user_frame_size.send_frame_size: 8700|
> |[INFO] [X300] x300::DATA_FRAME_MAX_SIZE: 8500|
> |[INFO] [X300] std::min(user_frame_size.send_frame_size,=20
> x300::DATA_FRAME_MAX_SIZE): 8500|
> |[INFO] [X300] max_send_frame_size: 8500|
> |[INFO] [X300] min_recv_frame_size: 8144|
> |[INFO] [X300] min_send_frame_size: 8144|
> |[INFO] [X300] Maximum frame size: 8144 bytes.|
> |[WARNING] [X300] You requested a receive frame size of (8700) but=20
> your NIC's max frame size is (8144).Please verify your NIC's MTU=20
> setting using 'ip link' or set the recv_frame_size argument=20
> appropriately.UHD will use the auto-detected max frame size for this=20
> connection.|
> |[WARNING] [X300] You requested a send frame size of (8700) but your=20
> NIC's max frame size is (8144).Please verify your NIC's MTU setting=20
> using 'ip link' or set the send_frame_size argument appropriately.UHD=20
> will use the auto-detected max frame size for this connection.|
> |[WARNING] [X300] For the 192.168.40.2 connection, UHD recommends a=20
> send frame size of at least 8500 for best|
> |performance, but your configuration will only allow 8144.This may=20
> negatively impact your maximum achievable sample rate.|
> |Check the MTU on the interface and/or the send_frame_size argument.|
> |[WARNING] [X300] For the 192.168.40.2 connection, UHD recommends a=20
> receive frame size of at least 8500 for best|
> |performance, but your configuration will only allow 8144.This may=20
> negatively impact your maximum achievable sample rate.|
> |Check the MTU on the interface and/or the recv_frame_size argument.|
> |[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a|
> |[INFO] [X300] Radio 1x clock: 200 MHz|
> |Setting TX Rate: 200000000.000000...|
> |Actual TX Rate: 200000000.000000...|
> |Setting TX Gain: 0.000000 db...|
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Well, as Wade pointed out, the MTU limit in the FPGA is 8192.=C2=A0 I don=
't=20
know whether the UHD 'stack' is using PMTUD, or
 =C2=A0 some other technique.=C2=A0=C2=A0 With PMTUD (Path MTU Discovery)=
, even if your=20
NIC MTU is 9000, with PMTUD, things will
 =C2=A0 be configured for the largest MTU that the path can actually=20
support.=C2=A0 In this case, with the FPGA supporting a max
 =C2=A0 of 8192, the numbers quoted make sense...


--------------4P0S56nwmVM0KJ8z37ljm0RS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/06/2024 21:16,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:cjohnson@serra=
nosystems.com">cjohnson@serranosystems.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:a6Wv2vNjKK9miqOQYxIMzCmWBembWN1FXYDSSBVXCU@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I hacked the code to set the DATA_FRAME_MAX_SIZE =3D 8500,
        half-way between 8000 and MTU 9000.</p>
      <p>Then I made sure to set the
        send_frame_size=3Drecv_frame_size=3D8700, which is equal, and ove=
r
        the MAX_SIZE.It still picks 8144. You can see below.</p>
      <p>I added a bunch of debug of the intermediate variables.</p>
      <p> $~/uhd-4.6.0.0/host/build/examples$ ./tx_samples_c -a
        "type=3Dx300,addr=3D192.168.40.2,send_frame_size=3D8700,recv_fram=
e_size=3D8700"</p>
      <pre><code>Creating USRP with args "type=3Dx300,addr=3D192.168.40.2=
,send_frame_size=3D8700,recv_frame_size=3D8700"...</code></pre>
      <pre><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;=
 UHD_4.6.0.0-1-ga9f0b4c7</code></pre>
      <pre><code>[INFO] [X300] X300 initialization sequence...</code></pr=
e>
      <pre><code>[INFO] [X300] user_frame_size.send_frame_size: 8700</cod=
e></pre>
      <pre><code>[INFO] [X300] x300::DATA_FRAME_MAX_SIZE: 8500</code></pr=
e>
      <pre><code>[INFO] [X300] std::min(user_frame_size.send_frame_size, =
x300::DATA_FRAME_MAX_SIZE): 8500</code></pre>
      <pre><code>[INFO] [X300] max_send_frame_size: 8500</code></pre>
      <pre><code>[INFO] [X300] min_recv_frame_size: 8144</code></pre>
      <pre><code>[INFO] [X300] min_send_frame_size: 8144</code></pre>
      <pre><code>[INFO] [X300] Maximum frame size: 8144 bytes.</code></pr=
e>
      <pre><code>[WARNING] [X300] You requested a receive frame size of (=
8700) but your NIC's max frame size is (8144).Please verify your NIC's MT=
U setting using 'ip link' or set the recv_frame_size argument appropriate=
ly.UHD will use the auto-detected max frame size for this connection.</co=
de></pre>
      <pre><code>[WARNING] [X300] You requested a send frame size of (870=
0) but your NIC's max frame size is (8144).Please verify your NIC's MTU s=
etting using 'ip link' or set the send_frame_size argument appropriately.=
UHD will use the auto-detected max frame size for this connection.</code>=
</pre>
      <pre><code>[WARNING] [X300] For the 192.168.40.2 connection, UHD re=
commends a send frame size of at least 8500 for best</code></pre>
      <pre><code>performance, but your configuration will only allow 8144=
.This may negatively impact your maximum achievable sample rate.</code></=
pre>
      <pre><code>Check the MTU on the interface and/or the send_frame_siz=
e argument.</code></pre>
      <pre><code>[WARNING] [X300] For the 192.168.40.2 connection, UHD re=
commends a receive frame size of at least 8500 for best</code></pre>
      <pre><code>performance, but your configuration will only allow 8144=
.This may negatively impact your maximum achievable sample rate.</code></=
pre>
      <pre><code>Check the MTU on the interface and/or the recv_frame_siz=
e argument.</code></pre>
      <pre><code>[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Re=
v 0.929a</code></pre>
      <pre><code>[INFO] [X300] Radio 1x clock: 200 MHz</code></pre>
      <pre><code>Setting TX Rate: 200000000.000000...</code></pre>
      <pre><code>Actual TX Rate: 200000000.000000...</code></pre>
      <pre><code>Setting TX Gain: 0.000000 db...</code></pre>
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
    Well, as Wade pointed out, the MTU limit in the FPGA is 8192.=C2=A0 I
    don't know whether the UHD 'stack' is using PMTUD, or<br>
    =C2=A0 some other technique.=C2=A0=C2=A0 With PMTUD (Path MTU Discove=
ry), even if
    your NIC MTU is 9000, with PMTUD, things will<br>
    =C2=A0 be configured for the largest MTU that the path can actually
    support.=C2=A0 In this case, with the FPGA supporting a max<br>
    =C2=A0 of 8192, the numbers quoted make sense...<br>
    <br>
    <br>
  </body>
</html>

--------------4P0S56nwmVM0KJ8z37ljm0RS--

--===============0348242054379060633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0348242054379060633==--
