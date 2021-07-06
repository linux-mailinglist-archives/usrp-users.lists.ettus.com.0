Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEB43BC4A3
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 03:40:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 09FF6383EC2
	for <lists+usrp-users@lfdr.de>; Mon,  5 Jul 2021 21:40:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="BGQQkryK";
	dkim-atps=neutral
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 2026D383E9E
	for <usrp-users@lists.ettus.com>; Mon,  5 Jul 2021 21:39:26 -0400 (EDT)
Received: by mail-wr1-f48.google.com with SMTP id n9so6702518wrs.13
        for <usrp-users@lists.ettus.com>; Mon, 05 Jul 2021 18:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=L9BNobK6l9af3Vh6iupU4mvxsiJTJvSV6UJhxYTSJRw=;
        b=BGQQkryKpK1hvDvM5y05Yubalkkm2r26q5BxpfzXhzGkVCVBQXM9IgUkQW18eYhwLL
         FK3FSp9AF8UAjUpT5vO0hEpbq/Lf4DE6puiXLtw+a+a3G7/7BofGg7oTL5cB3o6hgulB
         9IsSKFtLqxdNZi6NWnplYUUgKleS/SyWSsVcKlLzJrQMOk7GwDTYX1piVRGq0gaX+3iY
         BhSTOl6A6AVbpFSH6kEO2xQj1fO0047SLrJmiR8A4BiN9XEpDU4kJaoCBkhsjSmM1ffE
         sC7ktxyG6RcZ8meE8RswC2cJ1KJmKBLliFw+F3w4kNBhD68CXOQZ8XLeFg1RtDVTthEo
         1LVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=L9BNobK6l9af3Vh6iupU4mvxsiJTJvSV6UJhxYTSJRw=;
        b=FsdiZ1U8w/wbmbaNgoEzGViwpKHzrcEEd5iAP7SLTELI9bAmGIdLgHnVbpDb+yXiY3
         POsHzEG6FW+dTgjVJo+JxJNt3veNe0QwAbkUT6tBvp0YMKotGjqinQZTyoZLcQ4yO+Iz
         6HP04lPHe0A2FEHcgUDLUCW5u3wjDttB/owgu8bkSGy/oflmXTD4UxaXt0E8qWI3ZMV5
         7OsHS1fQNQY6lnkCYQG9tOEk7T4h1cojf0IWmmLiAUJK2DAlPh3MjdknMj6lxeRZa/kU
         OO1EXOlwXiR+RtKcDVp28FxdcT8E531JzTBSWKL+q4mDLecQPboEf3Orx0mOyAqpVuz/
         t3Bw==
X-Gm-Message-State: AOAM532yRm3X6C5wPiWWSLBSKwjkMZ0ubA1MVqayqhxyNmRtEm8wAFVh
	HHZrD0RV3RoYQCj8Vi7M0Ueg6SC+JhJzpTGFNkDy+3vNzapcfwTU
X-Google-Smtp-Source: ABdhPJxt/FLWLhq6SDCSGuKe2C5fk7TpWn9mNYArywVvoALLNowqN8sTky0o2md/n0zR2GMpvcd1IhPCoe9GWY+YfaU=
X-Received: by 2002:adf:f2d1:: with SMTP id d17mr262804wrp.254.1625535564641;
 Mon, 05 Jul 2021 18:39:24 -0700 (PDT)
MIME-Version: 1.0
From: Dario Pennisi <dario@iptronix.com>
Date: Tue, 6 Jul 2021 03:39:13 +0200
Message-ID: <CAKHaR3kM-b7J03CfmH9enfbXJnE6cJEBhmQ+08y-xQXjA87-yw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: KSCXVK5R2EDOPKQ5VT3TZ2SZN6ER5OSW
X-Message-ID-Hash: KSCXVK5R2EDOPKQ5VT3TZ2SZN6ER5OSW
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC internal MTU on N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KSCXVK5R2EDOPKQ5VT3TZ2SZN6ER5OSW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3772619242504034715=="

--===============3772619242504034715==
Content-Type: multipart/alternative; boundary="000000000000e6862805c66a7d20"

--000000000000e6862805c66a7d20
Content-Type: text/plain; charset="UTF-8"

Hi,
i wrote a custom block and i'm trying to output packets that are around the
size of the MAX MTU directly from my block. since packets have to be
handled by Zynq's ARM i understand the MTU i have to consider is the one
for int0 which is 8000. my block's MTU is set to 10 which, considering a
chdr width of 64 bits makes 8192 bytes if i'm not wrong. When i try to
generate packets of more than 1500 bytes i start to get very bad errors
such as:

[ERROR] [STREAMER] The receive transport caught a value exception.
ValueError: Bad CHDR header or invalid packet length.
gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received error
ERROR_CODE_BAD_PACKET (Code: 0xf)

is there any hard limit on CHDR packet size? is there any setting anywhere
in the code that limits the length of a packet?
note that i set noc shell to automatically calculate packet lengths as i
set SIDEBAND_AT_END to 1.
thanks,

Dario Pennisi

--000000000000e6862805c66a7d20
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi,<div>i wrote a custom=
 block and i&#39;m trying to output packets that are around the size of the=
 MAX MTU directly from my block. since packets have to be handled by Zynq&#=
39;s ARM i understand the MTU i have to consider is the one for int0 which =
is 8000. my block&#39;s MTU is set to 10 which, considering a chdr width of=
 64 bits makes 8192 bytes if i&#39;m not wrong. When i try to generate pack=
ets of more than 1500 bytes i start to get very bad errors such as:</div><d=
iv><div><br></div><div>[ERROR] [STREAMER] The receive transport caught a va=
lue exception.</div><div>ValueError: Bad CHDR header or invalid packet leng=
th.</div><div>gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block rece=
ived error ERROR_CODE_BAD_PACKET (Code: 0xf)</div></div><div><br></div><div=
>is there any hard limit on CHDR packet size? is there any setting anywhere=
 in the code that limits the length of a packet?</div><div>note that i set =
noc shell to automatically calculate packet lengths as i set SIDEBAND_AT_EN=
D to 1.</div><div>thanks,</div><div><br clear=3D"all"><div><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0)=
;font-family:Calibri,sans-serif;font-size:13.3333px">Dario Pennisi</span><b=
r style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.333=
3px"><br></div></div></div></div></div></div></div>

--000000000000e6862805c66a7d20--

--===============3772619242504034715==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3772619242504034715==--
