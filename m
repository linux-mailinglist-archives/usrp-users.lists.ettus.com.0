Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E563770377
	for <lists+usrp-users@lfdr.de>; Fri,  4 Aug 2023 16:48:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54352384BC3
	for <lists+usrp-users@lfdr.de>; Fri,  4 Aug 2023 10:48:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691160513; bh=XSTOZnXuAiDOSzYILuwLZfmR8SvAZq2c1st5yJdoSAk=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=fQMDqlcKyw94P3jg6tZm86g5WJ2H7VLk7deumMzRDudHJWyPYKro4H/lRrQR3RMfE
	 DtS1uP5F3WNQ4txcOH1XyNOHj399rTjVs3sx6EvKjNPNdPgFfyWyYeyYkVOIhr62Ti
	 N1ysQi//7AxnY4c61gsfDk5wdGO5sc13TDv/yudUDV9SxP1SPSGQdxGVzd5tzDEMjL
	 J6+H+XOc/8XORn1OPYLxaUzAVJj1gclfHtuK377nXQj4Zq9kFcdkWZjhm85eDxI0Ah
	 YEP5m2OSajfpQzTFH2x6qLCD9vlkSQwG4XMJ7Y3xU3ptCYxRztkG1lut85Yv1I1CHL
	 w/HdZj/aq6Yqw==
Received: from mail-yw1-f227.google.com (mail-yw1-f227.google.com [209.85.128.227])
	by mm2.emwd.com (Postfix) with ESMTPS id 3825A384B66
	for <usrp-users@lists.ettus.com>; Fri,  4 Aug 2023 10:47:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gotenna.com header.i=@gotenna.com header.b="ofRfnHsa";
	dkim-atps=neutral
Received: by mail-yw1-f227.google.com with SMTP id 00721157ae682-583e91891aeso23981297b3.1
        for <usrp-users@lists.ettus.com>; Fri, 04 Aug 2023 07:47:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691160475; x=1691765275;
        h=to:subject:message-id:date:from:mime-version:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BSA00L4dmNTdG3FXsR3u5txvBnu2hegn+NSLT+/klaI=;
        b=WaDvc9o7rGnoUA4tfXOJfBCx/LDfEMT1Ilx4VFez5PYAFnWmdInDzUuLDe6lAvn4mq
         zUIv9R7zFZvz9OM/EVSoDTOz5wiEzwbB5ngNyzHPL8I7oAik/yJv1TYqsmjLrqxjHpiU
         7EdEUkTtuSU1oQM1WTKIur9koj3QvRjJ1lMuD3HnQN8jzWAlM4Es5zLHXk4PJJM1JuyM
         pVG3JfC6oVVpfVd8Q6WA1AY8QghQa8d5jvjSRxtBvUBs8et5l1/vlbvd03YG4zvGXEqJ
         YPZGMXycO+YUmFjb5sa97uJJvHVu+FpazCZ+gZ2Gl9sGWJWUiZa0wkYweRTT0yMi/vzQ
         uZiw==
X-Gm-Message-State: AOJu0YyVfcQQCtCRGdfqP94yFwIBzSfl8m0amZfBBb9GCg66sQnsa8ag
	XVocgcKBDAjKT3oJuOLo2SJLxHPxrnoRl1mG3z/WFXpTOqqaXrQOeIqXUw==
X-Google-Smtp-Source: AGHT+IHjqv2mzcgGZbW6qIGTjFOL0WVjKscsJWut2dTiU8ECzyY1+AHXYUsV+F8jDZUIJuRZ9ln1xdDw9WHq
X-Received: by 2002:a81:8704:0:b0:583:9018:29ec with SMTP id x4-20020a818704000000b00583901829ecmr1930959ywf.32.1691160475612;
        Fri, 04 Aug 2023 07:47:55 -0700 (PDT)
Received: from us2.smtp.exclaimer.net (us2.smtp.exclaimer.net. [104.209.35.28])
        by smtp-relay.gmail.com with ESMTPS id y70-20020a81a149000000b00583d1003200sm421833ywg.52.2023.08.04.07.47.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Aug 2023 07:47:55 -0700 (PDT)
X-Relaying-Domain: gotenna.com
Received: from mail-ot1-f71.google.com (209.85.210.71) by
	 us2.smtp.exclaimer.net (104.209.35.28) with Exclaimer Signature Manager
	 ESMTP Proxy us2.smtp.exclaimer.net (tlsversion=TLS12,
	 tlscipher=TLS_ECDHE_WITH_AES256_SHA1); Fri, 4 Aug 2023 14:47:55 +0000
X-ExclaimerHostedSignatures-MessageProcessed: true
X-ExclaimerProxyLatency: 11879739
X-ExclaimerImprintLatency: 1405381
X-ExclaimerImprintAction: 7b6c89a0729d48c1b9b8e6fb1c894722
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-6bc56f23c65so3549237a34.2
        for <usrp-users@lists.ettus.com>; Fri, 04 Aug 2023 07:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gotenna.com; s=google; t=1691160473; x=1691765273;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BSA00L4dmNTdG3FXsR3u5txvBnu2hegn+NSLT+/klaI=;
        b=ofRfnHsaqE6tFzU5noxofKyzyBP/TzYMnG84fZEwWJcr3KebrVvr0qbtpw78+DP3Aa
         rqABkLQgOPfv5pWY7MWg65FSwSBlwPhbGvS17qw858dV88biSjYJ2LoDBvaX8nboiwFG
         s8T6h0UmQ9jyE/fC+IHPxQFWdw5fK4Gpf/XHBwc90nJ5WCy5+tAdaT8E+sz1bYaytYIE
         8V+RZEy81pElvboHPwTP7m8tGZ4xiUykLUXyqyJbJ6+bjD3AKnmdnxe6KXslhIZDAlUS
         ESjJexYyL0E6siiqqUAUWdJa8q8IEH/pKSFL+prL7znyjhg5Jn2ddzfiyLua2a3lD6WY
         qpYw==
X-Received: by 2002:a9d:7a5a:0:b0:6b9:9f84:dc8b with SMTP id z26-20020a9d7a5a000000b006b99f84dc8bmr2139709otm.19.1691160473262;
        Fri, 04 Aug 2023 07:47:53 -0700 (PDT)
X-Received: by 2002:a9d:7a5a:0:b0:6b9:9f84:dc8b with SMTP id
 z26-20020a9d7a5a000000b006b99f84dc8bmr2139693otm.19.1691160472988; Fri, 04
 Aug 2023 07:47:52 -0700 (PDT)
MIME-Version: 1.0
From: Maxim Belotserkovsky <maxim@gotenna.com>
Date: Fri, 4 Aug 2023 09:47:42 -0500
Message-ID: <CA+7S2fYo6EBFRKWLyEwDox5LQGSKMU9UaVkT2KWC45d+x3fQvw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: OYVEC5XMUEWNQ7NIIQOQGCAVBONQX3KF
X-Message-ID-Hash: OYVEC5XMUEWNQ7NIIQOQGCAVBONQX3KF
X-MailFrom: maxim@gotenna.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Questions about using B200 mini-i with Windows apps (Windows 11)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OYVEC5XMUEWNQ7NIIQOQGCAVBONQX3KF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8613041832560225236=="

--===============8613041832560225236==
Content-Type: multipart/alternative; boundary="0000000000004044ab060219fb3e"

--0000000000004044ab060219fb3e
Content-Type: text/plain; charset="UTF-8"

Hi. I've successfully used my B200 mini-i under GNU radio in a ubuntu
container. I've recently found a need to use simple routines just to
send/receive canned data samples from Windows. There are some example
utility programs that got installed a while back when I first installed the
UHD drive, which are located under "C:\Program Files\UHD\lib\uhd\examples".
I've successfully used "rx_samples_to_file" from Windows CMD shell to
receive usable data transmitted from an external RF source. However, when I
try using any of the transmit routines, such as "tx_sampes_from_file" or
"tx_waveforms" (including just sending a canned SINE waveform), nothing
happens - all I get when I hook up the TX output to the scope is just
background noise. I know it's not the physical device, because it still
works with GR. For example, I've used this:
"tx_waveforms --wave-type SINE --wave-freq 1.0e3 --freq 70.0e6 --rate 1.0e6
--gain 20 --bw 200.0e3".
Thanks

-- 
Maxim Belotserkovsky
maxim@gotenna.com
<https://gotenna.com/>

--0000000000004044ab060219fb3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi. I&#39;ve successfully used my B200 mini-i under GNU ra=
dio in a ubuntu container. I&#39;ve recently found a need to use simple rou=
tines just to send/receive canned data=C2=A0samples from Windows. There are=
 some example utility programs that got installed a while=C2=A0back when I =
first installed the UHD drive, which are located under &quot;C:\Program Fil=
es\UHD\lib\uhd\examples&quot;. I&#39;ve successfully=C2=A0used &quot;rx_sam=
ples_to_file&quot; from Windows CMD shell to receive usable data transmitte=
d from an external RF source. However, when I try using any of the transmit=
 routines, such as &quot;tx_sampes_from_file&quot; or &quot;tx_waveforms&qu=
ot; (including just sending a canned SINE waveform), nothing happens - all =
I get when I hook up the TX output to the scope is just background noise. I=
 know it&#39;s not the physical device, because it still works with GR. For=
 example, I&#39;ve used this:=C2=A0<div>&quot;tx_waveforms --wave-type SINE=
 --wave-freq 1.0e3 --freq 70.0e6 --rate 1.0e6 --gain 20 --bw 200.0e3&quot;.=
=C2=A0 =C2=A0</div><div>Thanks<br><div><div><br></div><span class=3D"gmail_=
signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr" style=3D"font-size:1px;=
direction:ltr"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" styl=
e=3D"width:100%;font-size:1px"><tbody><tr style=3D"font-size:0"><td align=
=3D"left" style=3D"vertical-align:top"><table cellpadding=3D"0" cellspacing=
=3D"0" border=3D"0" style=3D"width:0;font-size:0"><tbody><tr style=3D"font-=
size:0"><td align=3D"left"><table cellpadding=3D"0" cellspacing=3D"0" borde=
r=3D"0" style=3D"font-size:0;color:#000001;font-style:normal;font-weight:70=
0;white-space:nowrap"><tbody><tr style=3D"font-size:13.33px"><td align=3D"l=
eft" style=3D"vertical-align:top;font-family:Arial">Maxim=C2=A0Belotserkovs=
ky<span style=3D"font-family:remialcxesans;font-size:1px;color:#ffffff;line=
-height:1px"><span style=3D"font-family:&#39;template-aLaXcd5FEeqLAwANOhMLN=
A&#39;"></span><span style=3D"font-family:&#39;zone-1&#39;"></span><span st=
yle=3D"font-family:&#39;zones-AQ&#39;"></span></span></td></tr></tbody></ta=
ble></td></tr></tbody></table></td></tr><tr style=3D"font-size:0"><td align=
=3D"left" style=3D"vertical-align:top"><table cellpadding=3D"0" cellspacing=
=3D"0" border=3D"0" style=3D"font-size:0"><tbody><tr style=3D"font-size:0">=
<td align=3D"left" style=3D"padding:0 0 0.7px;vertical-align:top"><table ce=
llpadding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"font-size:0;color:#=
939598;font-style:normal;font-weight:400;white-space:nowrap"><tbody><tr sty=
le=3D"font-size:13.33px"><td align=3D"left" style=3D"vertical-align:top;fon=
t-family:Arial"><a href=3D"mailto:maxim@gotenna.com" target=3D"_blank">maxi=
m@gotenna.com</a></td></tr></tbody></table></td></tr></tbody></table></td><=
/tr><tr style=3D"font-size:0"><td align=3D"left" style=3D"vertical-align:to=
p"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"font-si=
ze:0;line-height:normal"><tbody><tr style=3D"font-size:0"><td align=3D"left=
" style=3D"padding:1px 0 0;vertical-align:top"><a href=3D"https://gotenna.c=
om/" style=3D"text-decoration:none" target=3D"_blank"><img src=3D"https://g=
otenna-marketing-files.s3.amazonaws.com/gotenna-email-signature.png" height=
=3D"34" border=3D"0" alt=3D"" style=3D"height:34px;min-height:34px;max-heig=
ht:34px;font-size:0"></a></td></tr></tbody></table></td></tr></tbody></tabl=
e></div></div></div></div></div>

--0000000000004044ab060219fb3e--

--===============8613041832560225236==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8613041832560225236==--
