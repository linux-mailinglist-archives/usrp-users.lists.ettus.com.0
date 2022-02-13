Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3B04B39ED
	for <lists+usrp-users@lfdr.de>; Sun, 13 Feb 2022 08:23:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7C24E385846
	for <lists+usrp-users@lfdr.de>; Sun, 13 Feb 2022 02:23:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SZq8kZAo";
	dkim-atps=neutral
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mm2.emwd.com (Postfix) with ESMTPS id E0E4D385826
	for <usrp-users@lists.ettus.com>; Sun, 13 Feb 2022 02:22:11 -0500 (EST)
Received: by mail-yb1-f181.google.com with SMTP id o19so37092808ybc.12
        for <usrp-users@lists.ettus.com>; Sat, 12 Feb 2022 23:22:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=x1h9WkjkQ/e/UE6NUP+2qQX2K9w2o9UTVBoyKm5CZMc=;
        b=SZq8kZAoVrnB72x2W9+Pd0sHzYPj0uL1U8/M4rKuG9uBfS717CiESS3f7iDm+yNkqr
         SevmJWGJhsMCpvqf2UUUNgeU5E4zMPY6b6pc4AFlVeu6nRHbIQdUaaz8qknqzWNvINC+
         n8YKTYnIuJX1h8jqy7DU/yPbLxXzRam3c2wTNurLsIhAtXwKi15wLt7DreQ6WLymwXHe
         lU2vmbg67HYyUFKpCJeskzdDapBXG6S1JjMFnaRDbeTtggx44gjVEn8ReCaXWI3tKkcG
         WoQRhaZ4SKBIYvdvc/uZIxAmaGcooo7Dmkek0N7Hi1OpeuZXGSb1qP9LBKLgyPh2SFl+
         UsEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=x1h9WkjkQ/e/UE6NUP+2qQX2K9w2o9UTVBoyKm5CZMc=;
        b=zkXY8amq2qLxnzWYiBZaRfwZI7+yLCi1aoY9K+OvsgkMNidNEC5QtaDGDo2SuSDcO1
         VwTz+bUAzQ7qaWsJ/fF8d7czkbEgfh8tlTdj1NwDNJ4bM02g4UTYc4+T1YxHJSJ9Ja0o
         8XAbddWHhuiu47Kjv2q1SfdqPyrxzqPloCJz5LgHKJhinPOYm1c37qKP+HpLW+BDNVPS
         qAQQrWgTghmL4aBOkSB6JSwr8mecILxsb/pSk0M9GfP1Wq7jGEfpepTFC1UOzNvXHeBb
         lIoTJblXi+tC1e/zwHI3JxGGcDBPYCYgf0B0rm5LradvLxto9Cf3JU+NzVeev1cv0g3B
         7nlg==
X-Gm-Message-State: AOAM532nhBgbZAr48hJV5dgfjbX2zPMFxFRxvMzVaGQXXKh2uAoypNe/
	aoX+kKZzMYb3sP8OhCQUlXdo6jQD+hWY4nvGG1rN3UHWErbBOOBY
X-Google-Smtp-Source: ABdhPJyTA3IB9+9q3jl5jArwwbu5PWSa0WKLSMWRso8qQEVqIMXDngwHlOChp+yp3U3k529xkuvYvoCOSr7G/iVDzbo=
X-Received: by 2002:a0d:ed47:: with SMTP id w68mr9022102ywe.420.1644736930494;
 Sat, 12 Feb 2022 23:22:10 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Sun, 13 Feb 2022 10:51:32 +0330
Message-ID: <CAA=S3Pt2bDbj6K8WGi1dh1=nxdGtgibAuB9UYP376kB4t_iDqQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 7TBZ76LMOHUSX56H7AHH6BAEBQVXTHRD
X-Message-ID-Hash: 7TBZ76LMOHUSX56H7AHH6BAEBQVXTHRD
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to create the RFNOC block gain for other RFNOC image cores...Default is for X310, but I want to be x300?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7TBZ76LMOHUSX56H7AHH6BAEBQVXTHRD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8439277301245592064=="

--===============8439277301245592064==
Content-Type: multipart/alternative; boundary="0000000000007dbbb105d7e12846"

--0000000000007dbbb105d7e12846
Content-Type: text/plain; charset="UTF-8"

How to create the RFNOC block gain for other RFNOC image cores...Default is
for X310, but I want to be x300?
When I created a new RFNOC module with the below commands, the RFNNOC image
core is x310 (my Gnuradio 3.8.1, UHD 4.1.0.5).
$rfnocmodtool newmod transceiver
$cd rfnoc-transceiver
$ rfnocmodtool add gain

*You can icores folder list, you are seeing that default is x310, with
which command I can change to other RFNOC like x300 and son ...*
thnaks in advance

$:~/fnoc-transceiver/rfnoc/icores$ ls
CMakeLists.txt                  x310_rfnoc_image_core.vh
gain_x310_rfnoc_image_core.yml  x310_static_router.hex
x310_rfnoc_image_core.v

--0000000000007dbbb105d7e12846
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">How to create the RFNOC block gain for other RFNOC image c=
ores...Default is for X310, but I want to be x300?<br><div>When I created a=
 new RFNOC module with the below commands, the=C2=A0RFNNOC image core is x3=
10 (my Gnuradio 3.8.1, UHD 4.1.0.5).</div><div><span style=3D"color:rgb(72,=
70,91);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Ro=
boto,&quot;Helvetica Neue&quot;,Arial,&quot;Noto Sans&quot;,sans-serif,&quo=
t;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&=
quot;,&quot;Noto Color Emoji&quot;;font-size:15px">$rfnocmodtool newmod tra=
nsceiver</span><br style=3D"box-sizing:border-box;color:rgb(72,70,91);font-=
family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;H=
elvetica Neue&quot;,Arial,&quot;Noto Sans&quot;,sans-serif,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;=
Noto Color Emoji&quot;;font-size:15px"><span style=3D"color:rgb(72,70,91);f=
ont-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&qu=
ot;Helvetica Neue&quot;,Arial,&quot;Noto Sans&quot;,sans-serif,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&q=
uot;Noto Color Emoji&quot;;font-size:15px">$cd rfnoc-transceiver</span><br =
style=3D"box-sizing:border-box;color:rgb(72,70,91);font-family:-apple-syste=
m,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;=
,Arial,&quot;Noto Sans&quot;,sans-serif,&quot;Apple Color Emoji&quot;,&quot=
;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&qu=
ot;;font-size:15px"><span style=3D"color:rgb(72,70,91);font-family:-apple-s=
ystem,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&q=
uot;,Arial,&quot;Noto Sans&quot;,sans-serif,&quot;Apple Color Emoji&quot;,&=
quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoj=
i&quot;;font-size:15px">$ rfnocmodtool add gain</span><br></div><div><span =
style=3D"color:rgb(72,70,91);font-family:-apple-system,BlinkMacSystemFont,&=
quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,&quot;Noto Sans=
&quot;,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,=
&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:15px"><b=
r></span></div><div><span style=3D"color:rgb(72,70,91);font-family:-apple-s=
ystem,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&q=
uot;,Arial,&quot;Noto Sans&quot;,sans-serif,&quot;Apple Color Emoji&quot;,&=
quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoj=
i&quot;;font-size:15px"><b>You can icores folder list, you are seeing that =
default is x310, with which command I can change to other RFNOC like x300 a=
nd son ...</b></span></div><div><span style=3D"color:rgb(72,70,91);font-fam=
ily:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,&quot;Helv=
etica Neue&quot;,Arial,&quot;Noto Sans&quot;,sans-serif,&quot;Apple Color E=
moji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Not=
o Color Emoji&quot;;font-size:15px">thnaks in advance</span></div><div><spa=
n style=3D"color:rgb(72,70,91);font-family:-apple-system,BlinkMacSystemFont=
,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,Arial,&quot;Noto Sa=
ns&quot;,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot=
;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:15px">=
<br></span></div><div>$:~/fnoc-transceiver/rfnoc/icores$ ls<br>CMakeLists.t=
xt =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0x310_rfnoc=
_image_core.vh<br>gain_x310_rfnoc_image_core.yml =C2=A0x310_static_router.h=
ex<br>x310_rfnoc_image_core.v<br></div></div>

--0000000000007dbbb105d7e12846--

--===============8439277301245592064==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8439277301245592064==--
