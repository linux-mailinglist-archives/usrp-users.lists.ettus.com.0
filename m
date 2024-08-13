Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 108BC9506F1
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2024 15:55:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E1A103855D1
	for <lists+usrp-users@lfdr.de>; Tue, 13 Aug 2024 09:55:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723557308; bh=YJDGP7JX9I/J7syYNhZNn1rwYTPaZamqUNLB3b07nM8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qYgJauidnlcaTDHKp4ud7taTUVnAg+lqKr0TGDWQEZpLd+Uiu/u8LN8JL/bSJXYXu
	 /wk90NVx65+kW9DhGiG88jiI92TgGI3Z1i8AigqaFNfvVsZ24rdKA6jqbTyki5zOUr
	 YAkjS1gMfj5p7BvhK2+7i0lZZL2r2l+R9ZOlGmTwXiDaoD3vfXRvjFlWG+3Lv01viv
	 X5N6u1j3hP6VZmOXr7Z6LzC1GXnkHd1Bop1TsZMUivKXrXF3lMzKyt/+ZwDDJo122S
	 eSGKM0YiR2MprKufykRBDSg5A2uZJ7NWmX53xVonCNAmaTDQpmRyIpHC1FEfHT3yko
	 D0l/OsyCWROTw==
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id E92443853FA
	for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2024 09:54:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="R17TH0Ge";
	dkim-atps=neutral
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6bb84ac8facso27019566d6.1
        for <usrp-users@lists.ettus.com>; Tue, 13 Aug 2024 06:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723557294; x=1724162094; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xd1w10IdOjUf5MzJlJ4kRMyEWt+A3l5+1Coa6N4zMec=;
        b=R17TH0Ge0Kjrt4cngRrVqjICkJZuOr27MSlAcmR5jPEY2QYWT01W/LNdrsfDiI/LjW
         HU6/ejcfmxVQ4W09s10fVnbEqP4deEP2RKs3jFON1ebzo/bwy/rMWIQj145J05xE/ENz
         ShRTF9ur9vUbt1UspmbsptqVfNA4qKIw+6sBdgwKW+CfKKfRQZgjEvuRuhaif1lGrCM1
         eTEmJ7/VrguSHqFlafc9VQujAx1E8Afg90YjbBUWzcpNSoyxxkop5m70H0S5wx1G0H59
         0bXo6lOANTubiX7BWuoAWz8rpJimFex/cuYTZKzTaDBtPlNb5naySnBqoQjn7IBdh6Fw
         /VrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723557294; x=1724162094;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Xd1w10IdOjUf5MzJlJ4kRMyEWt+A3l5+1Coa6N4zMec=;
        b=GHzI3Z5ztgRotsnGcELuu2kCUXxhaw+MYA4nP2X8vfNHTX7OdKn8XScQeUMQLURvkx
         dFRnL3XA2qqBir2VKPNh2ljiFAM9MtzPj6wLnVvY5kpDsu7OE4julH50TxLdNyaMO0P2
         61B7lZrE8zDE2I380Ui0gdY0i1xKXa5v2GobQlyJTmX2n8Kk5Vn0fgVOzYNOv6MKKFvG
         ZNs/KgOlCk9HA3z35svKAfr/5RF4CK/BBdKOmvBtUFu77/S6JeHK37O2Ff1Az0SoPh1d
         uILgLhnmfrjrb2rJI1PEx9W+rllQ62F3rk2s2dV3Cl/OnDDVTtX11r0RAtWXWq0SSNJS
         i0gg==
X-Gm-Message-State: AOJu0YyZ2hc5mVHNkNed14n4XHrQKmtDyg2zNs+/rgYOETnfogsuvMur
	aXbWkIRg7mKsBC9cJN+sOGhDRKugi219n5lAZ2rJG7OksxVKYUbMGJoYfg==
X-Google-Smtp-Source: AGHT+IGST9s0wmZZvDgwm0eOCl4wBvfe/yo8dpcmiEIbHxj2OfFfAoRTRT77qAngZQORtlGZv3cq3w==
X-Received: by 2002:a05:6214:598b:b0:6b5:da50:ac28 with SMTP id 6a1803df08f44-6bf4f89d741mr35530046d6.38.1723557294039;
        Tue, 13 Aug 2024 06:54:54 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6bd82c5f349sm34306056d6.13.2024.08.13.06.54.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Aug 2024 06:54:53 -0700 (PDT)
Message-ID: <84320f82-be18-47b9-92be-24339e6b1dc5@gmail.com>
Date: Tue, 13 Aug 2024 09:54:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAL4V06r9bLo+Wo-JPP4H70hwdJNJCy-m1ER5xwoXp7KHQkryBQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAL4V06r9bLo+Wo-JPP4H70hwdJNJCy-m1ER5xwoXp7KHQkryBQ@mail.gmail.com>
Message-ID-Hash: XPJYFA3LDJUYPVJMJ4UEIRUTIIEWG3LF
X-Message-ID-Hash: XPJYFA3LDJUYPVJMJ4UEIRUTIIEWG3LF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reg. N210 FPGA modification
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XPJYFA3LDJUYPVJMJ4UEIRUTIIEWG3LF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4768003926849325135=="

This is a multi-part message in MIME format.
--===============4768003926849325135==
Content-Type: multipart/alternative;
 boundary="------------r704R0OiOESm0x1cj1djPp55"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------r704R0OiOESm0x1cj1djPp55
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/08/2024 08:39, Brajesh wrote:
> Hello all,
> I am Brajesh and working on Ettus Research N210 FPGA board=20
> modifications. While doing so, I am facing some issues which are=20
> listed below,
>
>     i. How to implement Verilog code ( available at following GitHub
>     link ) on N210's ( Ettus Research ) FPGA ,
>
>         https://github.com/EttusResearch/uhd/tree/master/fpga/usrp2/top=
/N2x0
>
>     ii. How to customize the data rate of the above GitHub link. I am
>     trying to make the data rate ( via connector to PC/Laptop ) as
>     1-bit, 2-bit, 4- bit, 8-bit, 16-bit(default), 32-bit and 64-bit.
>
>     iii. Once N210's FPGA is modified with above modifications, how to
>     check the correctness of modified=C2=A0FPGA of N210. What I mean he=
re
>     is, methodologies ( standalone ) to check faithfulness=C2=A0of N210=
's
>     FPGA ( modified ) without daughter boards.
>
>
> For the same, I kindly request your valuable suggestions. If you are=20
> busy enough or not the right person, I kindly request you to direct me=20
> to the exact person.
> Warm regards,
> Brajesh
This guide might help some:

https://files.ettus.com/manual/md_usrp2_build_instructions.html

But the tone of your questions suggests that you aren't already familiar=20
with the tools and techniques of FPGA development,
 =C2=A0 and if so, no amount of casual advice given here can bridge that =
gap.



--------------r704R0OiOESm0x1cj1djPp55
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/08/2024 08:39, Brajesh wrote:<br=
>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAL4V06r9bLo+Wo-JPP4H70hwdJNJCy-m1ER5xwoXp7KHQkryBQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hello all,
        <div>I am Brajesh and working on Ettus Research N210 FPGA board
          modifications. While doing so, I am facing some issues which
          are listed below,</div>
        <blockquote
          style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
          <div>i. How to implement Verilog code ( available at following
            GitHub link ) on N210's ( Ettus Research ) FPGA ,</div>
        </blockquote>
        <blockquote
          style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
          <blockquote
            style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
            <div><a
href=3D"https://github.com/EttusResearch/uhd/tree/master/fpga/usrp2/top/N=
2x0"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">https://github.com/EttusR=
esearch/uhd/tree/master/fpga/usrp2/top/N2x0</a></div>
          </blockquote>
        </blockquote>
        <blockquote
          style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
          <div>ii. How to customize the data rate of the above GitHub
            link. I am trying to make the data rate ( via connector to
            PC/Laptop ) as 1-bit, 2-bit, 4- bit, 8-bit, 16-bit(default),
            32-bit and 64-bit.</div>
        </blockquote>
        <blockquote
          style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">
          <div>iii. Once N210's FPGA is modified with above
            modifications, how to check the correctness of modified=C2=A0=
FPGA
            of N210. What I mean here is, methodologies ( standalone )
            to check faithfulness=C2=A0of N210's FPGA ( modified ) withou=
t
            daughter boards.</div>
        </blockquote>
        <div><br>
        </div>
        <div>For the same, I kindly request your valuable suggestions.
          If you are busy enough or not the right person, I kindly
          request you to direct me to the exact person.=C2=A0</div>
        <div>Warm regards,</div>
        <div>Brajesh<br>
        </div>
      </div>
    </blockquote>
    This guide might help some:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/md_usrp2_build_instructions.html">https://files.ettus.com/manual/md_=
usrp2_build_instructions.html</a><br>
    <br>
    But the tone of your questions suggests that you aren't already
    familiar with the tools and techniques of FPGA development,<br>
    =C2=A0 and if so, no amount of casual advice given here can bridge th=
at
    gap.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAL4V06r9bLo+Wo-JPP4H70hwdJNJCy-m1ER5xwoXp7KHQkryBQ@mail.gmai=
l.com"><span
      style=3D"white-space: pre-wrap">
</span></blockquote>
    <br>
  </body>
</html>

--------------r704R0OiOESm0x1cj1djPp55--

--===============4768003926849325135==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4768003926849325135==--
