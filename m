Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCE84885BD
	for <lists+usrp-users@lfdr.de>; Sat,  8 Jan 2022 21:01:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EBE643849B9
	for <lists+usrp-users@lfdr.de>; Sat,  8 Jan 2022 15:01:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ilsEg1PV";
	dkim-atps=neutral
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 9B184384EA8
	for <usrp-users@lists.ettus.com>; Sat,  8 Jan 2022 15:00:16 -0500 (EST)
Received: by mail-oi1-f171.google.com with SMTP id r131so13322753oig.1
        for <usrp-users@lists.ettus.com>; Sat, 08 Jan 2022 12:00:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:date:message-id:subject:from:to:user-agent;
        bh=7OQiaKDfhIB1+qPWsEkvBSa8N+2v2UxfcQXiO7+eYpA=;
        b=ilsEg1PVYYvYAfLLRhJWAtMHhUco9jLD3gmsPnS3+6zgExSDlmuymheIzD7JOXik3K
         LJTiCc1it3MvKfcpwZS554L4AjAWGXQ3wvVlPwjV/RzSSjEC+sOKn52hLeYMAhjwhM45
         YiAohkfePwGtAaNjgasv7q1UcRQYAFaHqADlF6n0SKb1cHqCD0zT3/+OQH6wHfo30ZuD
         F3XEGvx/zsEIYhiQbdOKoLHuqLtXT/7afYmqADchIZHnCw7HnZi2vJ+8spQf1o0HPmlE
         yW5mceZagvnVXrRZUx//1WMLUstjtQhxBhe6psoMjgoUOdyaMqTg8eCr5ookcaPyLsiz
         06Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :user-agent;
        bh=7OQiaKDfhIB1+qPWsEkvBSa8N+2v2UxfcQXiO7+eYpA=;
        b=gEoY9uOACEw4nD8Ypw3ClAPraEireRXkqYR7HZ5Z8L2qBw9uPAkWdJ55w1yR0zxlMa
         8WdnTqXREqwA9OsqFTCzULMLMRmeb3gCW8b+Rhw9nbxnLN9p9GU7Who3gysDjj8oZ2KK
         o+QZn6TwqjxSORY/MFhrShDDkoOEABB05Locw1ZfWy36Kvo+8+kDT0tAvjlCPy8Up4HK
         E+xSkgp/1YKVN3WqyKtoPKIBN+TsCbsfveeDEGbXPqdcScBac8ewjwYMxjqJ6idZogCb
         zCynOvladbEUUhozNaQwV/TYolyvxATcK2KxT5lrBHbeaWTBLMRp9RyHGXQYv9Pjle9I
         ZZ7Q==
X-Gm-Message-State: AOAM5325K8tuzeIvGL1hUq7JS5Ma8iH2XDYYpgHYf2zmfM8oA2Z5t3Af
	vMe9/L+nTsBgsvvANwMPnXNrAbwVLw8=
X-Google-Smtp-Source: ABdhPJzhFCMTIUSg3UbOcDwQN5/3ZDKvx7fiKg12XJb2mwyl+ERatIcnGVyMnKWXYLR9fvxzh27bBg==
X-Received: by 2002:a05:6808:200d:: with SMTP id q13mr1061083oiw.9.1641672015453;
        Sat, 08 Jan 2022 12:00:15 -0800 (PST)
Received: from [192.168.1.129] (47-218-105-159.bcstcmta04.res.dyn.suddenlink.net. [47.218.105.159])
        by smtp.gmail.com with ESMTPSA id j13sm411451oil.42.2022.01.08.12.00.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Jan 2022 12:00:15 -0800 (PST)
MIME-Version: 1.0
Date: Sat, 08 Jan 2022 14:00:04 -0600
Message-ID: <Mailbird-82239a9a-b4c6-49d0-861f-6d5fbadd0d3e@gmail.com>
From: "page heller" <pageheller@gmail.com>
To: "zhou via USRP-users" <usrp-users@lists.ettus.com>
User-Agent: Mailbird/2.9.58.0
X-Mailbird-ID: Mailbird-82239a9a-b4c6-49d0-861f-6d5fbadd0d3e@gmail.com
Message-ID-Hash: HYOJMJF76B7LUPMKR366QKLMC3N6X2LX
X-Message-ID-Hash: HYOJMJF76B7LUPMKR366QKLMC3N6X2LX
X-MailFrom: pageheller@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] FPGA utilizaton summary for B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HYOJMJF76B7LUPMKR366QKLMC3N6X2LX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0284011788236069713=="

--===============0284011788236069713==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_61234026.333031419540"

------=_NextPart_61234026.333031419540
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Is there a command to print the FPGA utilization summary for an B210? I'm l=
ooking to print a report like that shown in=C2=A0https://kb.ettus.com/B200/=
B210/B200mini/B205mini#B210_5 [https://kb.ettus.com/B200/B210/B200mini/B205=
mini#B210_5]. -page
------=_NextPart_61234026.333031419540
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-family: Ar=
ial;color: #000000;text-align: left" dir=3D"ltr">Is there a command to prin=
t the FPGA utilization summary for an B210? I'm looking to print a report l=
ike that shown in&nbsp;<a href=3D"https://kb.ettus.com/B200/B210/B200mini/B=
205mini#B210_5" title=3D"Click to open in a new window or tab=0Ahttps://kb.=
ettus.com/B200/B210/B200mini/B205mini#B210_5" style=3D"font-family: Arial, =
Helvetica, sans-serif;font-size: 13px">https://kb.ettus.com/B200/B210/B200m=
ini/B205mini#B210_5</a>. -page<div class=3D"mb_sig"></div></div>
------=_NextPart_61234026.333031419540--

--===============0284011788236069713==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0284011788236069713==--
