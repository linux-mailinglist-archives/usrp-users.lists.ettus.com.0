Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E11A93CFC4
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jul 2024 10:44:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 684513858C0
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jul 2024 04:44:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721983455; bh=8ip2sUuxGUc2w0ijY4JNPPJEGFc/1qLyRZpXiMWw2X8=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=WXiG6garWTT7dSzf0zVALP3J3iVT3tN6UOXfz4UhxJfqcFEsM8wsqH9pNcn0Zy9AD
	 rC510eEBi/3eAEx5q/KeTnfjoFXCeCLwH2sF0ODr/C39i3tNQgqLosoK1Kp2yQAQwJ
	 cXjiyloW3Af24IhtFn/yeQU8rvZ4NVhQ0BfiGRVFiZy7yRc5+H4Sttd0maNdaCAedr
	 rUFqbUt9uNJZ6IKHiEYLoC94B5gFSiux4Ag3/Mcd6oPZSTOPQ5WhcKDEkufHhWaof9
	 VEFKattNaGCCMStIcb07K/UKhIGNZo0PnGyaIrekHWm2G6Ek+DcXF39xkPlGJGdrRE
	 DTepIsLXuextg==
Received: from sfmail01.tubitak.gov.tr (sfmail01.tubitak.gov.tr [193.140.80.192])
	by mm2.emwd.com (Postfix) with ESMTPS id 699F738513A
	for <usrp-users@lists.ettus.com>; Fri, 26 Jul 2024 04:44:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=tubitak.gov.tr header.i=@tubitak.gov.tr header.b="H4OkHPmG";
	dkim-atps=neutral
X-ASG-Debug-ID: 1721983437-0f24755d0121d750001-5wTQH4
Received: from mta01.tubitak.gov.tr (mta01.tubitak.gov.tr [193.140.13.215]) by sfmail01.tubitak.gov.tr with ESMTP id aOgcypwbUkzxwQjm (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO) for <usrp-users@lists.ettus.com>; Fri, 26 Jul 2024 11:43:57 +0300 (EAT)
X-Barracuda-Envelope-From: emre.yildiz@tubitak.gov.tr
X-Barracuda-Effective-Source-IP: mta01.tubitak.gov.tr[193.140.13.215]
X-Barracuda-Apparent-Source-IP: 193.140.13.215
Received: from localhost (localhost [127.0.0.1])
	by mta01.tubitak.gov.tr (Postfix) with ESMTP id 3F928182D39CC
	for <usrp-users@lists.ettus.com>; Fri, 26 Jul 2024 11:43:57 +0300 (+03)
Received: from mta01.tubitak.gov.tr ([127.0.0.1])
 by localhost (mta01.tubitak.gov.tr [127.0.0.1]) (amavis, port 10032)
 with ESMTP id fj0t_UKvcm5N for <usrp-users@lists.ettus.com>;
 Fri, 26 Jul 2024 11:43:57 +0300 (+03)
Received: from localhost (localhost [127.0.0.1])
	by mta01.tubitak.gov.tr (Postfix) with ESMTP id 0791C182D39EB
	for <usrp-users@lists.ettus.com>; Fri, 26 Jul 2024 11:43:56 +0300 (+03)
DKIM-Filter: OpenDKIM Filter v2.10.3 mta01.tubitak.gov.tr 0791C182D39EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tubitak.gov.tr;
	s=3CB53094-0179-11EB-B19A-889BD1D29365; t=1721983437;
	bh=BUzfz2Z37DEnx+9WDi1yPzEQ6cCdoGCzenNIYyCh6vU=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=H4OkHPmG2abbITFyq5x+H/OWY7ux6i7mVCtpKUYTcLfSphz9oDrGiw4ixoEoEA3ws
	 3MavEvcym9gLuVUrAludFH4BNvl9RlfKJALyyYxBySA+/+52pUgHmMHgZtZzoavX+T
	 8ybl4Hhcj53SEUnp3Su1tb696dIrThO5tHodJnCs0YrUoDveIPZ8Mvh4OQQ0a64E2J
	 UEmSQ8ip5MXx8b3eumFw/mMHU+pyx1Qfgro2iegO7OlzVOHRxcOJ4MNOt9aoBrcWkq
	 HaoYwQ16yNhAMzT5bYOHHnr5C0Vdq5LYf1GrzIlriGTFcfDJUO6KtCbDnSyAUk3eCA
	 MK4DXnRjFdw2A==
Received: from mta01.tubitak.gov.tr ([127.0.0.1])
 by localhost (mta01.tubitak.gov.tr [127.0.0.1]) (amavis, port 10026)
 with ESMTP id bjDvRuaqaE5P for <usrp-users@lists.ettus.com>;
 Fri, 26 Jul 2024 11:43:56 +0300 (+03)
Received: from mail03.tubitak.gov.tr (mail03.tubitak.gov.tr [10.250.10.121])
	by mta01.tubitak.gov.tr (Postfix) with ESMTP id CAF24182D39CC
	for <usrp-users@lists.ettus.com>; Fri, 26 Jul 2024 11:43:56 +0300 (+03)
Date: Fri, 26 Jul 2024 11:43:56 +0300 (TRT)
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <1185905888.18769541.1721983436583.JavaMail.zimbra@tubitak.gov.tr>
MIME-Version: 1.0
X-ASG-Orig-Subj: Run time error
Thread-Index: Q4mEo52yf8GswCmWd8qaZ52x3TpFiQ==
Thread-Topic: Run time error
X-Barracuda-Connect: mta01.tubitak.gov.tr[193.140.13.215]
X-Barracuda-Start-Time: 1721983437
X-Barracuda-Encrypted: TLS_AES_256_GCM_SHA384
X-Barracuda-URL: https://193.140.80.192:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at tubitak.gov.tr
X-Barracuda-Scan-Msg-Size: 2082
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0027 1.0000 -2.0032
X-Barracuda-Spam-Score: -2.00
X-Barracuda-Spam-Status: No, SCORE=-2.00 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.128141
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Message-ID-Hash: 6DA5Z6XX6YTGBREL7XRW4LVYZERXFRWZ
X-Message-ID-Hash: 6DA5Z6XX6YTGBREL7XRW4LVYZERXFRWZ
X-MailFrom: emre.yildiz@tubitak.gov.tr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Run time error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6DA5Z6XX6YTGBREL7XRW4LVYZERXFRWZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?Emre_YILDIZ_=28B=C4=B0LGEM_=C4=B0LTAREN=29_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: Emre YILDIZ =?utf-8?Q?=28B=C4=B0LGEM_=C4=B0LTAREN=29?= <emre.yildiz@tubitak.gov.tr>
Content-Type: multipart/mixed; boundary="===============5413866131346197226=="

--===============5413866131346197226==
Content-Type: multipart/alternative;
	boundary="=_8226a945-8333-4b84-8ed7-ba023b1c444e"

--=_8226a945-8333-4b84-8ed7-ba023b1c444e
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Dear usrp users and Ettus support team, 

I have usrp e320 and I did not load any image on it yet (default mode). 
I set my network settings as follows: 

IP:192.168.10.1 
NETMASK:255.255.255.0 
GATEWAY:0.0.0.0 
MTU:1500 

When I send ping to address 192.168.10.2 , I could receive packets successfully. However, when I wrote the following command: 

uhd_usrp_probe --args "addr=192.168.10.2" 

I got the following error message: 

RuntimeError: rpc::timeout: Timeout of 2000ms while calling RPC function 'set_device_id' 

Then I changed the args as mgmt_addr=192.168.10.2,type=e3xx,product=e320,serial=33CB10C,claimed=False,addr=192.168.10.2 I still got the same error. 

I am using UHD 4.6. How can I fix that error can you please help me with that? 

Best regards. 

Emre 


--=_8226a945-8333-4b84-8ed7-ba023b1c444e
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: arial, helvetica, sans-serif; font-s=
ize: 12pt; color: #000000"><div>Dear usrp users and Ettus support team,<br>=
<br>I have usrp e320 and I did not load any image on it yet (default mode).=
 <br>I set my network settings as follows:<br></div><div><br>IP:192.168.10.=
1<br></div><div>NETMASK:255.255.255.0<br>GATEWAY:0.0.0.0<br data-mce-bogus=
=3D"1"></div><div>MTU:1500 <br data-mce-bogus=3D"1"></div><div><br data-mce=
-bogus=3D"1"></div><div>When I send ping to address 192.168.10.2 , I could =
receive&nbsp; packets successfully. However, when I wrote the following com=
mand:</div><div>&nbsp;<br data-mce-bogus=3D"1"></div><div>uhd_usrp_probe --=
args "addr=3D192.168.10.2"<br><br data-mce-bogus=3D"1"></div><div>I got the=
 following error message:<br data-mce-bogus=3D"1"></div><div><br data-mce-b=
ogus=3D"1"></div><div>RuntimeError: rpc::timeout: Timeout of 2000ms while c=
alling RPC function 'set_device_id'<br><br data-mce-bogus=3D"1"></div><div>=
Then I changed the args as&nbsp; mgmt_addr=3D192.168.10.2,type=3De3xx,produ=
ct=3De320,serial=3D33CB10C,claimed=3DFalse,addr=3D192.168.10.2 I still got =
the same error.<br><br>I am using UHD 4.6. How can I fix that error can you=
 please help me with that?<br><br>Best regards.<br><br>Emre<br><br data-mce=
-bogus=3D"1"></div></div></body></html>
--=_8226a945-8333-4b84-8ed7-ba023b1c444e--

--===============5413866131346197226==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5413866131346197226==--
